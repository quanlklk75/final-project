<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddPostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [

            'name' => 'required|unique:posts,title',
            'description' => 'required',
            'images' => 'required',
            'contents' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Post title cannot be empty',
            'name.unique' => 'Post title already exists',
            'description.required'  => 'The short description of the post cannot be blank',
            'images.required'  => 'Please choose a representative image',
            'contents.required'  => 'Please enter the article content',
        ];
    }
}
