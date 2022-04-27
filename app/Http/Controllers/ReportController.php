<?php

namespace App\Http\Controllers;
use App\OrderDetail;
use DB;

use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function index()
    {
        return view('backend.report.list-month');
    }

    public function getBanHangThang(Request $request)
    {
        $thang = $request->thang;
        $data= OrderDetail::whereMonth('created_at', '=', $thang)->get();
        return view('backend.report.doanh-so-ban-thang', compact('data','thang'));
    }

    public function thongKeThang ()
    {
        return view('backend.report.thong-ke-thang');
    }
}
