<?php

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    public function index()
    {
        $customers = Customer::paginate(15);
        return view("backend.customers.list", compact('customers'));
    }

    public function getdel($id)
    {

        $customers = Customer::find($id);
        $customers->delete();
        return redirect()->route('customers.list')->with('success', 'Delete successfully');
    }
}
