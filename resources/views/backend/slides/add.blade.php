@extends('backend.master')
@section("title-page", "Manage slides")
@section("title-description", "Add")
@section('content')
    <?php $open = "slides"?>
    <div class="col-md-7">
        <form action="{{ route('slides.post_add') }}" method="post"  enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Links</label>
                <input type="text" name="link" class="form-control" placeholder="link" required>
            </div>

            <div class="form-group">
                <label for="">Image </label>
                <input type="file" name="images" class="form-control" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>

@endsection
