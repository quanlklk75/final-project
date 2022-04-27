@extends('backend.master')
@section("title-page", "Quản lý sản phẩm")
@section("title-description", "Thêm phiên bản sản phẩm")
@section('content')
    <?php $open = "products"?>
    <form action="{{ route('products.post_add_variants', $id) }}" method="post">
        @csrf
        <div class="form-group col-md-4">
            <label for="">Tên phiên bản</label>
            <input name="name_variant" type="text" class="form-control" placeholder="Tên phiên bản">
        </div>

        <div class="form-group col-md-4">
            <label for="">Giá</label>
            <input name="price" type="text" class="form-control" placeholder="Giá">
        </div>

        <div class="form-group col-md-4">
            <label for="">Số lượng</label>
            <input name="qty" type="text" class="form-control" placeholder="Số lượng">
        </div>

        <div class="form-group col-md-12">
            <button type="submit" class="btn btn-primary">Thêm</button>
        </div>
    </form>
@endsection
