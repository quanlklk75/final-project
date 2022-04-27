@extends('backend.master')
@section("title-page", "Quản lý sản phẩm")
@section("title-description", "Danh sách phiên bản")
@section('content')
    <?php $open = "products"?>

    <div class="form-group">
        <a href="{{ route('products.get_add_variants', $id) }}" class="btn btn-primary pull-right">Thêm phiên bản</a>
    </div>
    <br><br>
    <div class="form-group">
        <input class="form-control" id="myInput" type="text" placeholder="Search..">

    </div>
    <?php $id_pro = $id; ?>
    <div class="table table-responsive">
        @include("messages")
        <h2 class="text-success">Các phiên bản sản phẩm </h2>
        <table class="table table-striped" id="myTable">
            <thead>
            <tr>
                <th>STT</th>
                <th>Tên </th>
             
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>
            <?php $stt = 1; ?>
            @foreach($variants as $item)
                <tr>
                    <td style="width: 50px;">{{$stt++ }}</td>
                    <td>{{ $item->name }}</td>
                    <td>{{ number_format($item->price, 0,'','.') }} <sup>đ</sup></td>

                    <td>{{ $item->qty }}</td>

                    <td>
                        <a href="" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i> Sửa</a>
                        <a onclick="return confirm('Bạn chắc chắn xóa ?')" href="{{ route('products.delete_variants', ['id'=>$id_pro, 'id_variants' =>$item->id]) }}" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Xóa</a>

                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

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
