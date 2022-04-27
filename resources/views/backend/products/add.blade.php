@extends('backend.master')
@section("title-page", "Quản lý sản phẩm")
@section("title-description", "Thêm mới sản phẩm")
@section('content')
    <?php $open = "products"?>
    <script>
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
        };
    </script>


    <div class="col-md-10">
        @include("messages")
        <form action="{{ route("products.post_add")}}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="form-group">
                <label for="">Danh mục sản phẩm</label>
                <select name="cate_id" id="" class="form-control">
                    <option value="0">--Chọn danh mục sản phẩm--</option>

                    <?php MenuMulti_menu($data, 0, $str = '---| ', old('cate_id')); ?>

                </select>
            </div>

            <div class="form-group">
                <label for="">Tên sản phẩm </label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Tên sản phẩm..."
                       value="{{old('name')}}">
            </div>
        <div class="form-group">
                <label for="">Gía sản phẩm </label>
                <input type="text" name="price" id="name" class="form-control" placeholder="Gía sản phẩm..."
                       value="{{old('price')}}">
            </div>

   <div class="form-group">
                <label for="">Khuyến mãi % </label>
                <input type="text" name="discount" id="price" class="form-control" placeholder="Khuyến mãi %"
                       value="{{old('discount')}}">
            </div>
            <div class="form-group">
                <label for="">Mô tả sản phẩm </label>
                <textarea name="description" id="" cols="30" rows="10"
                          class="form-control">{{ old('description') }}</textarea>
            </div>

           
            <script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace('description', options);
            </script>


            <div class="form-group">
                <label for="">Hình đại diện </label>
                <input type="file" name="images" class="form-control">
            </div>


            <div class="form-group">
                <label for="">Sản phẩm nổi bật</label><br>
                <label class="radio-inline"><input type="radio" name="hot" value="1">Có</label>
                <label class="radio-inline"><input type="radio" name="hot" value="0" checked>Không</label>
            </div>

            <div class="form-group">
                <label for="">Trạng thái</label><br>
                <label class="radio-inline"><input type="radio" name="status" value="1" checked>Hiển thị</label>
                <label class="radio-inline"><input type="radio" name="status" value="0">Không</label>
            </div>

            <div class="form-group">
                <label for="">Tiêu đề Seo
                </label>
                <input id="title_page" type="text" name="seo_title" class="form-control"
                       placeholder="Seo title" value="{{ old('seo_title') }}">
            </div>


            <div class="form-group">
                <label for="">Mô tả Seo</label>
                <textarea name="seo_description" id="seo_description" cols="30" rows="5" class="form-control"
                          placeholder="Seo description"></textarea>

            </div>

            <div class="form-group">
                <label for="">Seo keyword

                </label>
                <textarea name="seo_keyword" id="seo_keyword" cols="30" rows="2" class="form-control"
                          placeholder="Seo keyword"></textarea>

            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Lưu lại</button>

                <button type="reset" class="btn btn-default">Làm mới</button>
            </div>

        </form>
    </div>
@endsection

@section("script")
        <script>
            $(document).ready(function () {
                $(".btn-add-variants").on("click", function () {
                    $(".variants").append(`<div class="form-group col-md-4">
                    <label for="">Tên phiên bản</label>
                    <input name="name_variant[]" type="text" class="form-control" placeholder="Tên phiên bản">
                </div>

                <div class="form-group col-md-4">
                    <label for="">Giá</label>
                    <input name="price[]" type="text" class="form-control" placeholder="Giá">
                </div>

                <div class="form-group col-md-4">
                    <label for="">Số lượng</label>
                    <input name="qty[]" type="text" class="form-control" placeholder="Số lượng">
                </div>`);
                });

                $(".btn-add-image").on("click", function () {
                    $(".image").append(`<div class="col-md-12"><div class="form-control">
                        <input type="file" name="image_detail[]">
                    </div></div></br></br>`);
                });
            });
        </script>
@endsection
