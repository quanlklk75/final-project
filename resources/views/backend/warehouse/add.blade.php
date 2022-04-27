@extends('backend.master')
@section("title-page", "Warehouse Management")
@section("title-description", "Import")
@section('content')
    <?php $open = "warehouse"?>
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
                <label for="">Category</label>
                <select name="cate_id" id="" class="form-control">
                    <option value="0">--Select a category--</option>

                    <?php MenuMulti_menu($data, 0, $str = '---| ', old('cate_id')); ?>

                </select>
            </div>

            <div class="form-group">
                <label for="">Product name </label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Product name..."
                       value="{{old('name')}}">
            </div>

            <div class="form-group">
                <label for="">Amount </label>
                <input required type="text" name="qty" id="name" class="form-control" placeholder="Amount..."
                       value="{{old('qty')}}">
            </div>
            <div class="form-group">
                <label for="">Price </label>
                <input type="text" name="price" id="name" class="form-control" placeholder="Price..."
                       value="{{old('price')}}">
            </div>

            <div class="form-group">
                <label for="">Promotion % </label>
                <input type="text" name="discount" id="price" class="form-control" placeholder="Promotion %"
                       value="{{old('discount')}}">
            </div>

            <div class="form-group">
                <label for="">Product Description </label>
                <textarea name="description" id="" cols="30" rows="10"
                          class="form-control">{{ old('description') }}</textarea>
            </div>
{{--             <div class="form-group">--}}
{{--                <label for="">Nhà cung cấp</label>--}}
{{--                <input type="text" name="supplier" id="supplier" class="form-control" placeholder="Nhà cung cấp..."--}}
{{--                       value="{{old('supplier')}}">--}}
{{--            </div>--}}
            <script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace('description', options);
            </script>
{{--            <div class="form-group">--}}
{{--                <label for="">Ngày bắt đầu khuyến mãi </label>--}}
{{--                <input type="date" name="promotion_day_start" id="price" class="form-control" placeholder="Ngày bắt đầu khuyến mãi"--}}
{{--                       value="{{old('promotion_day_start')}}">--}}
{{--            </div>--}}
{{--            <div class="form-group">--}}
{{--                <label for="">Ngày kết thúc khuyến mãi </label>--}}
{{--                <input type="date" name="promotion_day_end" id="price" class="form-control" placeholder="Ngày bắt đầu khuyến mãi"--}}
{{--                       value="{{old('promotion_day_end')}}">--}}
{{--            </div>--}}

            <div class="form-group">
                <label for="">Image </label>
                <input type="file" name="images" class="form-control">
            </div>


            <div class="form-group">
                <label for="">Hot</label><br>
                <label class="radio-inline"><input type="radio" name="hot" value="1">Yes</label>
                <label class="radio-inline"><input type="radio" name="hot" value="0" checked>No</label>
            </div>

            <div class="form-group">
                <label for="">Status</label><br>
                <label class="radio-inline"><input type="radio" name="status" value="1" checked>Display</label>
                <label class="radio-inline"><input type="radio" name="status" value="0">Hide</label>
            </div>

            <div class="form-group">
                <label for="">Title Seo
                </label>
                <input id="title_page" type="text" name="seo_title" class="form-control"
                       placeholder="Seo title" value="{{ old('seo_title') }}">
            </div>


            <div class="form-group">
                <label for="">Seo Description</label>
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
                <button type="submit" class="btn btn-primary">Save</button>
            </div>

        </form>
    </div>
@endsection


