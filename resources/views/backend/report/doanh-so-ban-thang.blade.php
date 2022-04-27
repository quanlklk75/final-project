@extends('backend.master')
@section("title-page", "Thống kế")
@section("title-description", "Doanh thu tháng $thang năm 2020")
@section('content')
    <!--    --><?php //$open = "slides"?>
    <?php $now = Carbon\Carbon::now();
    ?>
    <form action="{{ route('report.post_ban_hang') }}" method="post">
        @csrf
        <input value="{{ $now->month }}" type="number" min="1" max="12" name="thang">
        <button type="submit">Thống kê</button>
    </form>
    <div class="table table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Mã sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Số lượng bán</th>
                <th>Tổng tiền</th>

            </tr>
            </thead>
            <tbody>
            @foreach($data as $item)
            <tr>
                <td>{{ $item->id }}</td>
                <td>{{ $item->product->name }}</td>
                <td>{{ $item->qty }}</td>
                <td>{{ number_format($item->product->price * $item->qty, 0, ',', '.') }} đ</td>


            </tr>
            @endforeach


            </tbody>
        </table>
    </div>

@endsection
