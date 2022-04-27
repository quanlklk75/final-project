<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddProductRequest extends FormRequest
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
            'cate_id' => 'required|not_in:0',
            'name' => 'required|unique:products,name',
            'description' => 'required',
            'images'  => 'required',

        ];
    }

    public function messages()
    {
        return [
            'cate_id.not_in' =>'Please select a category',
            'name.required' => 'Product name cannot be empty',
            'name.unique' => 'Product name already exists',
            'description.required'  => 'Product description cannot be empty',
            'images.required'  => 'Please choose a representative image',
        ];
    }
}
