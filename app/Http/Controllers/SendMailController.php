<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use DB;

class SendMailController extends Controller
{
    public function send_mail(Request $request) {
        $data['emails'] = 'truongvietbg@gmail.com';
        $emails = $data['emails']??'';
        //Gửi mail
        \Mail::to($emails)->send(new \App\Mail\SendMail(['emails' => $emails]));
        Session::flash('flash_message', 'Send message successfully!');
        return view('welcome');
    }
}
