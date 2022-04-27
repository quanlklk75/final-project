<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddProductRequest;
use App\ImageDetail;
use Illuminate\Http\Request;
use App\Category;
use App\Product;
use Image;
use App\Variant;

class ProductController extends Controller
{
    public function getAdd()
    {
        $data = Category::all();
        return view("backend.products.add", compact('data'));
    }

    public function postAdd(AddProductRequest $request)
    {
        $product = new Product();
        $product->name = $request->name;
        $product->cate_id = $request->cate_id;
        $product->slug = str_slug($request->name);
        $product->description = $request->description;
        $product->seo_title = $request->seo_title;
        $product->seo_description = $request->seo_description;
        $product->seo_keyword = $request->seo_keyword;
        $product->status = $request->status;
        $product->hot = $request->hot;
        $product->price = $request->price;
        $product->promotion = $request->discount;
        $product->qty = $request->qty;
        $product->supplier = $request->supplier;

        if ($request->hasFile('images')) {
            $f = $request->file('images')->getClientOriginalName();
            $filename = time() . '_' . $f;
//            $request->file('images')->move('uploads/posts/', $filename);
//            $image_resize = Image::make($request->file('images')->getRealPath());
//            $destinationPath = 'uploads/products/';
//            $image_resize->resize(380, 314);
//            $image_resize->save($destinationPath . $filename, 80);
            $request->file('images')->move('uploads/products/', $filename);

            $product->image = $filename;
        }
        $product->save();


        return redirect()->route('products.list')->with('success', 'Add successful products');

    }

    public function getEdit($id)
    {
        $data = Category::all();
        $products = Product::find($id);

        return view("backend.products.edit", compact('products', 'data'));
    }

    public function postEdit(Request $request, $id)
    {
        $product = Product::find($id);
        $product->name = $request->name;
        $product->cate_id = $request->cate_id;
        $product->slug = str_slug($request->name);
        $product->description = $request->description;
        $product->seo_title = $request->seo_title;
        $product->seo_description = $request->seo_description;
        $product->seo_keyword = $request->seo_keyword;
        $product->status = $request->status;
        $product->hot = $request->hot;
        $product->price = $request->price;
        $product->supplier = $request->supplier;
        $product->promotion = $request->discount;
        $product->qty = $request->qty;

        if ($request->hasFile('images')) {
            $f = $request->file('images')->getClientOriginalName();
            $filename = time() . '_' . $f;

//            $request->file('images')->move('uploads/posts/', $filename);

//            $image_resize = Image::make($request->file('images')->getRealPath());
            $destinationPath = 'uploads/products/';
//            $image_resize->resize(380, 314);
//            $image_resize->save($destinationPath . $filename, 80);
            $request->file('images')->move('uploads/products/', $filename);
            $product->image = $filename;
        }

        $product->save();

        return redirect()->route('products.list')->with('success', 'Successful product edit');

    }

    public function getdel($id)
    {
        $product = Product::find($id);
        $path = public_path() . "uploads/products/" . $product->images;
        if (file_exists($path)) {
            unlink($path);
        }

        $product->delete();
        return redirect()->route('products.list')->with('success', 'Delete product successfully');

    }

    public function index()
    {
        $products = Product::OrderBy('id', "DESC")->paginate(10);
        return view("backend.products.index", compact('products'));
    }

    public function getVariants($id)
    {
        $variants = Variant::where('id_product', '=', $id)->get();
//        dd($variants);
        return view("backend.products.variants", compact('variants', 'id'));
    }

    public function getAddVariants($id)
    {

        return view("backend.products.add-variants", compact('id'));
    }


}
