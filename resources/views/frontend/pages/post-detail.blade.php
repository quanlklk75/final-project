@extends("frontend.master")
@section("content")


    <div class="title news_detail" style="margin-bottom: 60px">
        <h1>{{ $post->title }}</h1>
        <div class="clear"></div>
    </div>
    <div class="content_page content-bg-white">
        <p>{!! $post->content !!}</p>
    </div>


@endsection
