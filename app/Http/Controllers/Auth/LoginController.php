<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        return view('frontend.pages.login');
    }

    public function login(Request $request)
    {

        if (auth()->guard('web')->attempt(['email' => $request->email, 'password' => $request->password])) {

////            dd(auth()->guard('admin')->user());
//            dd("oki");
            return redirect()->intended(route('pages.home'));
        }


        return redirect()->back()->withErrors([ 'Email Or Password are incorrect !']);

    }

    public function logout()
    {
//        return 1111;
        Auth::guard('web')->logout();
        return redirect()->route('login');
    }
}
