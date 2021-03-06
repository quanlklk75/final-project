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
            str = str.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/g, "a");
            str = str.replace(/??|??|???|???|???|??|???|???|???|???|???/g, "e");
            str = str.replace(/??|??|???|???|??/g, "i");
            str = str.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/g, "o");
            str = str.replace(/??|??|???|???|??|??|???|???|???|???|???/g, "u");
            str = str.replace(/???|??|???|???|???/g, "y");
            str = str.replace(/??/g, "d");
            str = str.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/g, "A");
            str = str.replace(/??|??|???|???|???|??|???|???|???|???|???/g, "E");
            str = str.replace(/??|??|???|???|??/g, "I");
            str = str.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/g, "O");
            str = str.replace(/??|??|???|???|??|??|???|???|???|???|???/g, "U");
            str = str.replace(/???|??|???|???|???/g, "Y");
            str = str.replace(/??/g, "D");
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
