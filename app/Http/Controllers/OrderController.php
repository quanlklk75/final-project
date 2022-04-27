<?php

namespace App\Http\Controllers;

use App\Mail\SendMail;
use App\Order;
use App\Product;
use Illuminate\Http\Request;
use Cart;
use Mail;
use App\OrderDetail;

class OrderController extends Controller
{
    public function postOrder(Request $request)
    {
        $order = new Order();

        $cartContent = Cart::getContent()->sort();
//        dd($cartContent);
        $order->qty = $cartContent->count();
        $order->total = Cart::getSubTotal();
        $order->type = 'cod';
        $order->status = 0;

        $order->note = $request->note;
        $order->name = $request->name;
        $order->phone = $request->phone;
        $order->address = $request->address;
        $order->email = $request->email;
        $order->save();
        $id_order = $order->id;


        foreach ($cartContent as $row) {
            $detail = new OrderDetail();
            $id_pro = $row->id;
            $product = Product::find($id_pro);
            $pro_qty = $product->qty;
            $product->qty = $pro_qty-$row->quantity;
            $product->save();
            $detail->pro_id = $row->id;
            $detail->qty = $row->quantity;
            $detail->order_id = $id_order;
            $detail->save();
        }
        Cart::clear();
        echo "<script>alert('Saved order information successfully');location.href='/'</script>";

//        return redirect()->route('pages.home');

    }

    public function index()
    {
        $orders = Order::orderBy("id", "DESC")->paginate(10);

        return view("backend.orders.list", compact('orders'));
    }

    public function xacNhanThanhToan($id)
    {
        $orders = Order::find($id);
        $orders->status = 1;
        $data['emails'] = $orders->email;
        $emails = $data['emails']??'';
        \Mail::to($emails)->send(new \App\Mail\SendMail(['emails' => $emails]));
        $orders->save();
        return redirect()->back()->with('success', 'Order confirmation successful payment');

    }


    public function getdel($id)
    {
        $orders = Order::find($id);
        $orders->delete();
        return redirect()->back()->with('success', 'Deleted order successfully');
    }

    public function donHangDaThanhToan()
    {
        $orders = Order::orderBy("id", "DESC")->where("status", 1)->paginate(10);
// gui mail don hàng
//        Mail::to($orders->email)->send(new SendMail($orders));

        return view("backend.orders.da-thanh-toan", compact('orders'));
    }

    public function donHangChuaThanhToan()
    {
        $orders = Order::orderBy("id", "DESC")->where("status", 0)->paginate(10);

        return view("backend.orders.chua-thanh-toan", compact('orders'));
    }

    public function getDetail($id)
    {
        $orders = Order::where("id", $id)->first();
        return view("backend.orders.detail", compact('orders'));
    }
}
