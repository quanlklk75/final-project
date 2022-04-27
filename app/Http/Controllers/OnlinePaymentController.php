<?php

namespace App\Http\Controllers;

use App\Order;
use App\Product;
use Illuminate\Http\Request;
use Cart;
use App\OrderDetail;
use Session;
use Auth;

class OnlinePaymentController extends Controller
{
    public $vnp_TmnCode = "MR8K3KF0"; //Mã website tại VNPAY
    public $vnp_HashSecret = "LRRFWJDNQOGZXIRPWOWKOOCWHEJGEQDF"; //Chuỗi bí mật
    public $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
    public $vnp_Returnurl = "http://localhost:8000/vnpay_return";

    public function index(Request $request)
    {

        return view("frontend.pages.payment");
    }

    public function createPayment(Request $request)
    {


        error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
        $vnp_TxnRef = $request->order_id; 
        $vnp_OrderInfo = $request->order_desc;
        $vnp_OrderType = $request->order_type;
        $vnp_Amount = $request->amount * 100;
        $vnp_Locale = $request->language;
        $vnp_BankCode = $request->bank_code;
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
        $vnp_ExpireDate = $request->txtexpire;
        $_SESSION['address'] = $request->address;

        $_SESSION['name'] = $request->name;
        $_SESSION['phone'] = $request->phone;
        $_SESSION['notes'] = $request->notes;
        $_SESSION['email'] = $request->email;

        $inputData = array(
            "vnp_Version" => "2.0.0",
            "vnp_TmnCode" => $this->vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $this->vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . $key . "=" . $value;
            } else {
                $hashdata .= $key . "=" . $value;
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }
        //security
        $vnp_Url = $this->vnp_Url . "?" . $query;
        if (isset($this->vnp_HashSecret)) {
            $vnpSecureHash = hash_hmac('sha512', $hashdata, $this->vnp_HashSecret);//
            $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;

        }
        $returnData = array('code' => '00'
        , 'message' => 'success'
        , 'data' => $vnp_Url);

        $order = new Order();

        $cartContent = Cart::getContent()->sort();

        $order->qty = $cartContent->count();
        $order->total = Cart::getSubTotal();
        $order->type = 'Online payment';
        $order->note = $request->notes;
        $order->status = 0;

        $order->note = $request->note;
        $order->name = $request->name;
        $order->phone = $request->phone;
        $order->address = $request->address;
        $order->email = $request->email;
        $order->vnp_TxnRef = $request->order_id;
        $order->save();
        $id_order = $order->id;
        foreach ($cartContent as $row) {
            $detail = new OrderDetail();
            $id_pro = $row->id;
            $product = Product::find($id_pro);
            $pro_qty = $product->qty;
            $product->qty = $pro_qty - $row->quantity;
            $product->save();
            $detail->pro_id = $row->id;
            $detail->qty = $row->quantity;
            $detail->order_id = $id_order;
            $detail->save();
        }
        Cart::clear();
        header('Location: ' . $vnp_Url);
        die();
    }

    public function vnpayReturn(Request $request)
    {
        if ($request->vnp_ResponseCode == '00')
        {
            Order::where('vnp_TxnRef', $request->vnp_TxnRef)->update(array('status' => '1'));
        }

        Cart::clear();
        echo "<script>alert('Saved order information successfully');location.href='/'</script>";
    }
}

