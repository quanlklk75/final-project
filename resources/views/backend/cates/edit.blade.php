@extends('backend.master')
@section("title-page", "Quản lý danh mục")
@section("title-description", "Sửa danh mục")
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
        <form action="{{ route("cates.post_edit", $data['id']) }}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="form-group">
                <label for="">Danh mục cha</label>
                <select name="sltCate" id="" class="form-control">
                    <option value="0">--ROOT--</option>

                    <?php MenuMulti_menu($cat, 0, $str = '---| ', $data['parent_id']); ?>
                </select>
            </div>

            <div class="form-group">
                <label for="">Tên danh mục </label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Tên danh mục..."
                       value="{{$data['name']}}">
            </div>

            <div class="form-group">
                <label for="">Tiêu đề Seo
                </label>
                <input id="title_page" type="text" name="seo_title" class="form-control"
                       placeholder="Tiêu đề Seo" value="{{ $data['seo_title'] }}">
            </div>

            <div class="form-group">
                <label for="">Mô tả Seo

                </label>
                <textarea name="seo_description" id="seo_description" cols="30" rows="2" class="form-control"
                          placeholder="Mô tả seo">{{$data['seo_description']}}</textarea>

            </div>

            <div class="form-group">
                <label for="">Seo keyword

                </label>
                <textarea name="seo_keyword" id="seo_keyword" cols="30" rows="2" class="form-control"
                          placeholder="Mô tả seo">{{$data['seo_keyword']}}</textarea>

            </div>

            <div class="form-group">
                <label for="">Trạng thái</label><br>
                <label class="radio-inline"><input type="radio" name="status" value="1"
                                                   @if($data->status == 1) checked @endif>Hiển thị</label>
                <label class="radio-inline"><input type="radio" name="status" value="0"
                                                   @if($data->status == 0) checked @endif>Không</label>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Lưu lại</button>

                <button type="reset" class="btn btn-default">Làm mới</button>
            </div>

        </form>
    </div>
@endsection
