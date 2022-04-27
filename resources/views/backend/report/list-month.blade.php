@extends('backend.master')
@section("title-page", "Thống kế")
@section("title-description", "Danh thu tháng 6 năm 2020")
@section('content')
    <!--    --><?php //$open = "slides"?>
<?php $now = Carbon\Carbon::now();
    ?>
    <form action="{{ route('report.post_ban_hang') }}" method="post">
        @csrf
        <input value="{{ $now->month }}" type="number" min="1" max="12" name="thang">
        <button type="submit">Thống kê</button>
    </form>


@endsection
