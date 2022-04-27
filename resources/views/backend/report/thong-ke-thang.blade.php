@extends('backend.master')
@section("title-page", "Thống kế doanh thu")
@section("title-description", "Doanh thu các tháng")
@section('content')
    <!--    --><?php //$open = "slides"?>
    <?php $now = Carbon\Carbon::now();
    $thang = $now->month;
    ?>

    <div class="table table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Tháng</th>
                <th>Doanh thu</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <?php $thang1 = DB::table('orders')->whereMonth('created_at', '=', 1)->sum('total'); ?>
                <td>Tháng 1</td>
                <td>{{ number_format($thang1, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang2 = DB::table('orders')->whereMonth('created_at', '=', 2)->sum('total'); ?>
                <td>Tháng 2</td>
                <td>{{ number_format($thang2, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang3 = DB::table('orders')->whereMonth('created_at', '=', 3)->sum('total'); ?>
                <td>Tháng 3</td>
                <td>{{ number_format($thang3, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang4 = DB::table('orders')->whereMonth('created_at', '=', 4)->sum('total'); ?>
                <td>Tháng 4</td>
                <td>{{ number_format($thang4, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang5 = DB::table('orders')->whereMonth('created_at', '=', 5)->sum('total'); ?>
                <td>Tháng 5</td>
                <td>{{ number_format($thang5, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang6 = DB::table('orders')->whereMonth('created_at', '=', 6)->sum('total'); ?>
                <td>Tháng 6</td>
                <td>{{ number_format($thang6, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang7 = DB::table('orders')->whereMonth('created_at', '=', 7)->sum('total'); ?>
                <td>Tháng 7</td>
                <td>{{ number_format($thang7, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang8 = DB::table('orders')->whereMonth('created_at', '=', 8)->sum('total'); ?>
                <td>Tháng 8</td>
                <td>{{ number_format($thang8, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang9 = DB::table('orders')->whereMonth('created_at', '=', 9)->sum('total'); ?>
                <td>Tháng 9</td>
                <td>{{ number_format($thang9, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang10 = DB::table('orders')->whereMonth('created_at', '=', 10)->sum('total'); ?>
                <td>Tháng 10</td>
                <td>{{ number_format($thang10, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang11 = DB::table('orders')->whereMonth('created_at', '=', 11)->sum('total'); ?>
                <td>Tháng 11</td>
                <td>{{ number_format($thang11, 0, ',', '.') }} đ</td>
            </tr>

            <tr>
                <?php $thang12 = DB::table('orders')->whereMonth('created_at', '=', 12)->sum('total'); ?>
                <td>Tháng 12</td>
                <td>{{ number_format($thang12, 0, ',', '.') }} đ</td>
            </tr>
            </tbody>
        </table>
    </div>

@endsection
