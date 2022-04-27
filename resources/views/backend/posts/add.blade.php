@extends('backend.master')

@section("title-page", "News management")
@section("title-description", "Add")
@section('content')

    <?php $open = "posts"?>
    <script>
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
        };
    </script>

    <div class="row">
        @include("messages")

        <form action="{{ route("posts.post_add") }}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="col-md-10">


                <div class="form-group">
                    <label for="">Title</label>
                    <input type="text" name="name" id="name" class="form-control" placeholder="Title..."
                           value="{{old('name')}}">
                </div>


                <div class="form-group">
                    <label for="">description</label>
                    <textarea name="description" id="description" cols="30" rows="10" class="form-control">
                          {{ old('description') }}
                    </textarea>
                    <script>
                        // Replace the <textarea id="editor1"> with a CKEditor
                        // instance, using default configuration.
                        CKEDITOR.replace('description', options);
                    </script>
                </div>

                <div class="form-group">
                    <label for="">Content</label>
                    <textarea name="contents" id="content" cols="30" rows="10" class="form-control">
                        {{ old('contents') }}
                    </textarea>
                    <script>
                        // Replace the <textarea id="editor1"> with a CKEditor
                        // instance, using default configuration.
                        CKEDITOR.replace('content', options);
                    </script>
                </div>
                <div class="form-group">
                    <label for="">Hot</label><br>
                    <label class="radio-inline"><input type="radio" name="hot" value="1" >Yes</label>
                    <label class="radio-inline"><input type="radio" name="hot" value="0" checked>Not</label>
                </div>

                <div class="form-group">
                    <label for="">Avata</label>
                    <input type="file" name="images">
                </div>


                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Save</button>

                </div>


            </div>


        </form>
    </div>
@endsection
@section("script")
    <script>
        function xoa_dau(str) {
            str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
            str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
            str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
            str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
            str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
            str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
            str = str.replace(/đ/g, "d");
            str = str.replace(/À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ/g, "A");
            str = str.replace(/È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ/g, "E");
            str = str.replace(/Ì|Í|Ị|Ỉ|Ĩ/g, "I");
            str = str.replace(/Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ/g, "O");
            str = str.replace(/Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ/g, "U");
            str = str.replace(/Ỳ|Ý|Ỵ|Ỷ|Ỹ/g, "Y");
            str = str.replace(/Đ/g, "D");
            str = str.replace(/\s/g, '-');
            return str;
        }

        $(document).ready(function () {

            // $('select').selectpicker();
            $('#name').keyup(function () {
                var name = $(this).val();
                $("#title_page").val(name);
                $("#path").val(xoa_dau(name));
            });
            $("#content-seo").hide();

            $("#show-seo").on("click", function () {
                // alert(3333);
                $("#content-seo").show();
            });
        });


    </script>
@endsection
