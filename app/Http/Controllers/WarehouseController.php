<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class WarehouseController extends Controller
{
    public function getAdd()
    {
        $data = Category::all();
        return view("backend.warehouse.add", compact('data'));
    }

    public function index()
    {
        $products = Product::OrderBy('id', "DESC")->paginate(10);
        return view("backend.warehouse.index", compact('products'));
    }
}
