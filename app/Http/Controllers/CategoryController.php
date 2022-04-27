<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App;
use App\Category;
use App\Http\Requests\AddCateRequest;

class CategoryController extends Controller
{
    public function index()
    {
        $data = Category::paginate(7);

        return view('backend.cates.list', compact('data'));
    }

    public function getAdd()
    {
        $data = Category::all();
        return view("backend.cates.add", compact('data'));
    }

    public function postAdd(AddCateRequest $request)
    {
        $cate = new Category();
        $cate->name = $request->name;
        $cate->slug = str_slug($request->name);
        $cate->status = $request->status;
        $cate->seo_title = $request->seo_title;
        $cate->seo_description = $request->seo_description;
        $cate->seo_keyword = $request->seo_keyword;
        $cate->save();
        return redirect()->route('cates.list')->with('success', 'Thêm danh mục thành công');

    }

    public function getEdit($id)
    {
        $cat = Category::all();
        $data = Category::findOrFail($id);
        return view("backend.cates.edit", compact("data", 'cat'));
    }

    public function postEdit($id, Request $request)
    {
        $cate = Category::findOrFail($id);
        $cate->name = $request->name;
        $cate->slug = str_slug($request->name);
        $cate->status = $request->status;
        $cate->seo_title = $request->seo_title;
        $cate->seo_description = $request->seo_description;
        $cate->seo_keyword = $request->seo_keyword;
        $cate->save();
        return redirect()->route('cates.list')->with('success', 'Editing Successful');
    }

    public function getdel($id)
    {

        $category = Category::findOrFail($id);
        $category->delete();
        return redirect()->route('cates.list')
            ->with('success', 'Delete category successfully');
    }
}

