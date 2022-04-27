@extends('backend.master')
@section("title-page", "Manage categories")
@section("title-description", "Add new category")
@section('content')
    <?php $open = "cates"?>
    <script>
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
        };
    </script>


    <div class="col-md-8">
        @include("messages")
        <form action="{{ route("cates.post_add")}}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Name</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Name..."
                       value="{{old('name')}}">
            </div>

            <div class="form-group">
                <label for="">Title Seo

                </label>
                <input id="title_page" type="text" name="seo_title" class="form-control"
                       placeholder="Title Seo" value="{{ old('seo_title') }}">
            </div>

            <div class="form-group">
                <label for="">Description Seo

                </label>
                <textarea name="seo_description" id="seo_description" cols="30" rows="2" class="form-control"
                          placeholder="Description Seo"></textarea>

            </div>

            <div class="form-group">
                <label for="">Seo keyword

                </label>
                <textarea name="seo_keyword" id="seo_keyword" cols="30" rows="2" class="form-control"
                          placeholder="Mô tả seo"></textarea>

            </div>

            <div class="form-group">
                <label for="">Status</label><br>
                <label class="radio-inline"><input type="radio" name="status" value="1" checked>Display</label>
                <label class="radio-inline"><input type="radio" name="status" value="0">Hide</label>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save</button>

                <button type="reset" class="btn btn-default">Reset</button>
            </div>

        </form>
    </div>
@endsection
