<?php

namespace App\Http\Controllers;

use App\Slide;
use Illuminate\Http\Request;

class SlideController extends Controller
{
    public function index()
    {
        $slides = Slide::all();
        return view('backend.slides.list', compact('slides'));
    }

    public function getAdd()
    {
        return view('backend.slides.add');
    }

    public function postAdd(Request $request)
    {
        $slide = new Slide();
        $slide->links = $request->link;
        $file = $request->images;
        $file_name = time() . '.' . $file->getClientOriginalExtension();
        $file->move(public_path().'/uploads/slides/', $file_name);
        $slide->image = $file_name;
        $slide->save();
        return redirect()->route('slides.list')->with('success', 'Successfully added slides');
    }

    public function getEdit($id)
    {
        $slides = Slide::find($id);
        return view('backend.slides.edit', compact('slides'));
    }

    public function postEdit(Request $request, $id)
    {
        $slide = Slide::find($id);
        $slide->links = $request->link;

        if ($request->hasFile('images')) {
            $file = $request->file('images');
            $file_name = time() . '.' . $file->getClientOriginalExtension();
//            $file->move('uploads/rooms', $file_name);
            $file->move(public_path().'/uploads/slides/', $file_name);
            $path = public_path()."/uploads/slides/".$slide->image;
            unlink($path);
            $slide->image = $file_name;
        }
        $slide->save();
        return redirect()->route('slides.list')->with('success', 'Edit slides successfully');
    }

    public function getdel($id)
    {
        $slide = Slide::find($id);
        $path = public_path()."/uploads/slides/".$slide->image;
        unlink($path);
        $slide->delete();
        return redirect()->route('slides.list')->with('success', 'Delete slide successfully');
    }
}
