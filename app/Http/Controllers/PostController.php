<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddPostRequest;
use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::orderBy('id', 'desc')->paginate(10);
        return view("backend.posts.list", compact('posts'));
    }

    public function getAdd()
    {

        return view("backend.posts.add");
    }

    public function postAdd(AddPostRequest $request)
    {


        $posts = new Post();
        $posts->title = $request->name;
        $posts->slug = str_slug($request->name);
        $posts->description = $request->description;
        $posts->content = $request->contents;
        $posts->hot = $request->hot;

        if ($request->hasFile('images')) {
            $f = $request->file('images')->getClientOriginalName();
            $filename = time() . '_' . $f;
            $posts->image = $filename;
            $request->file('images')->move('uploads/posts/', $filename);
        }

        $posts->save();
        return redirect()->route('posts.list')->with('success', 'Add successful posts');
    }

    public function getEdit($id)
    {
        $post = Post::find($id);
        return view("backend.posts.edit", compact("post"));
    }

    public function postEdit(Request $request, $id)
    {
        $posts = Post::find($id);
        $posts->title = $request->name;
        $posts->slug = str_slug($request->name);
        $posts->description = $request->description;
        $posts->content = $request->contents;
        $posts->hot = $request->hot;
        if ($request->hasFile('images')) {
            $file = $request->file('images');
            $file_name = time() . '.' . $file->getClientOriginalExtension();
//            $file->move('uploads/rooms', $file_name);
            $file->move(public_path() . '/uploads/posts/', $file_name);
            $path = public_path() . "/uploads/posts/" . $posts->image;
            unlink($path);
            $posts->image = $file_name;
        }
        $posts->save();
        return redirect()->route('posts.list')->with('success', 'Edit post successfully');
    }

    public function getdel($id)
    {
        $posts = Post::find($id);
        $path = public_path() . "/uploads/posts/" . $posts->image;
        unlink($path);
        $posts->delete($id);
        return redirect()->route('posts.list')->with('success', 'Post deleted successfully');
    }
}
