@extends('backend.master')
@section("title-page", "Slider management")
@section("title-description", "Edit Slider")
@section('content')
    <?php $open = "slides"?>
    <div class="col-md-7">
        <form action="{{ route('slides.post_edit', $slides->id) }}" method="post"  enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Links</label>
                <input type="text" name="link" class="form-control" placeholder="link" required value="{{ $slides->links }}">
            </div>

            <div class="form-group">
                <label for="">Hình ảnh </label><br>
                <img src="{{ asset('uploads/slides/'.$slides->image) }}" alt="" width="250px" height="150px">

                <br><br>
                <input type="file" name="images" class="form-control">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Lưu lại</button>
            </div>
        </form>
    </div>

@endsection
