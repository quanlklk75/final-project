<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use DB;
use Cart;

class CartController extends Controller
{
    public function addCart(Request $request)
    {

//        dd('eeeeeeeee');
        $pro = Product::where('id', $request->id)->first();
//        dd($request->variant);
        if ($pro->promotion > 0) {
            Cart::add(['id' => $request->id, 'name' => $pro->name, 'quantity' => $request->qty, 'price' => $pro->price*(100 - $pro->promotion)/100]);
        } else {
            Cart::add(['id' => $request->id, 'name' => $pro->name, 'quantity' => $request->qty, 'price' => $pro->price]);

        }


        $cartCollection = Cart::getContent();
    }


    public function getCart()
    {
        $cartContent = Cart::getContent()->sort();
//        dd($cartContent);
        return view('frontend.pages.cart', compact('cartContent'));
    }

    public function updateCart(Request $request)
    {
        Cart::update($request->id, array(

            'quantity' => array(
                'relative' => false,
                'value' => $request->qty
            ),
        ));

    }

    public function removeCart(Request $request)
    {

        Cart::remove($request->id);

    }

    public function removeAll()
    {
        Cart::clear();

        return redirect()->route('cart');
    }

}
