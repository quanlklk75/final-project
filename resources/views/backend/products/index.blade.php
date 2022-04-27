@extends('backend.master')
@section("title-page", "Product Management")
@section("title-description", "List of products")
@section('content')
    <?php $open = "products"?>

{{--    <div class="form-group">--}}
{{--        <a href="{{ route('products.get_add') }}" class="btn btn-primary pull-right">Thêm sản phẩm</a>--}}
{{--    </div>--}}
{{--    <br><br>--}}
    <div class="form-group">
        <input class="form-control" id="myInput" type="text" placeholder="Search..">

    </div>
    <div class="table table-responsive">
        @include("messages")
        <table class="table table-striped" id="myTable">
            <thead>
            <tr>
                <th>id</th>
                <th></th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Promotion</th>
{{--                <th>Khuyến mãi từ ngày</th>--}}
{{--                <th>Khuyến mãi đến  ngày</th>--}}

                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($products as $item)
                <tr>
                    <td style="width: 50px;">{{ $item->id }}</td>
                    <td style="width: 50px;"><img src="{{"uploads/products/".$item->image}}" alt="" style="width: 50px;"></td>
                    <td>{{ $item['name'] }}</td>
                    <td>{{ $item->cates['name'] }}</td>
                    <td>{{ number_format($item->price, 0 ,',','.') }}</td>
                    <td>Giảm {{$item->promotion}}%</td>
{{--                    <td>@if($item->promotion > 0) {{ date('d-m-Y', strtotime($item->promotion_day_start))}} @endif</td>--}}
{{--                    <td>@if($item->promotion > 0) {{ date('d-m-Y', strtotime($item->promotion_day_end))}} @endif</td>--}}
                    <td>
                        <a href="{{ route('products.get_edit', $item->id) }}" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i> Edit</a>
                        <a onclick="return confirm('You definitely delete this product ?')" href="{{ route('products.get_delete', $item->id) }}" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Delete</a>

                    </td>
                </tr>
            @endforeach

{{--            <tr>--}}
{{--                <td style="width: 50px;">22</td>--}}
{{--                <td style="width: 50px;"><img src="uploads/products/1593707127_otomazda1 (1).jpg" alt="" style="width: 50px;"></td>--}}
{{--                <td>Dán Kính Ô Tô, Dán Kính Cách Nhiệt}</td>--}}
{{--                <td>Dán kính ô tô</td>--}}
{{--                <td>1.000.000	</td>--}}
{{--                <td>800.000	 đ</td>--}}
{{--                <td>13/07/2020</td>--}}
{{--                <td>25/07/2020</td>--}}

{{--                <td>--}}
{{--                    <a href="" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i> Sửa</a>--}}
{{--                    <a onclick="return confirm('Bạn chắc chắn xóa sản phẩm này ?')" href="" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Xóa</a>--}}

{{--                </td>--}}
            </tbody>
        </table>
        {{ $products->links() }}
    </div>
@endsection
@section("script")
    <script>
        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
@endsection
