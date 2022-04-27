<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddCateRequest extends FormRequest
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
            'name' => 'required|unique:categories,name|max:255',
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Category name cannot be empty',
            'name.unique'  => 'Category name already exists',

        ];
    }
}
