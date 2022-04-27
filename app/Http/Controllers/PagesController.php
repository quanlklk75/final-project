<?php

namespace App\Http\Controllers;

use App\Order;
use App\Post;
use App\Product;
use Illuminate\Http\Request;
use DB;
use Cart;
use Illuminate\Support\Facades\Auth;

class PagesController extends Controller
{
    public function home()
    {
        return view("frontend.pages.home");
    }

    public function getDetailProduct($id)
    {
        $product = Product::find($id);
        return view("frontend.pages.product-detail", compact('product'));
    }

    public function getDanhMucSanPham($id)
    {
        $product_cate = Product::where('cate_id', $id)->orderby('id', 'DESC')->paginate(6);
        $cate = DB::table('categories')->where('id', $id)->first();
        return view('frontend.pages.danh-muc-san-pham', compact('product_cate', 'cate'));
    }

    public function search(Request $request)
    {
        $product = Product::where([
            ['name', 'LIKE', '%' . $request->key . '%'],
        ])->paginate(5);
        $key = $request->key;
        return view("frontend.pages.search", compact('product', 'key'));
    }

    public function getPostDetail($id)
    {
        $post = Post::where('id', '=', $id)->first();
        return view('frontend.pages.post-detail', compact('post'));
    }

    public function danhSachTin()
    {
        $posts = Post::OrderBy('id', 'DESC')->paginate(10);
        return view('frontend.pages.danh-sach-tin-tuc', compact('posts'));
    }

    public function checkout()
    {
        $cartContent = Cart::getContent()->sort();
        if (auth()->guard('web')->user()) {
            return view('frontend.pages.checkout', compact('cartContent'));

        }
        return redirect()->route('login');
    }

    public function purchaseHistory()
    {
        $orders = Order::where('email', Auth::user()->email)->orderBy("id", "DESC")->get();
        return view('frontend.pages.lich-su-mua-hang', compact('orders'));
    }

    public function purchaseHistoryDetail($id)
    {
        $orders = Order::where("id", $id)->first();
//        dd($orders);
        return view('frontend.pages.chi-tiet-lich-su-mua-hang', compact('orders'));
    }

}
