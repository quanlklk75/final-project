@extends("frontend.master")
@section("content")
    <div class="blog-post-area" style="margin-bottom: 60px">
        <h2 class="title text-center">NEWS</h2>
        @foreach($posts as $item)

        <div class="single-blog-post">
            <h3><a style="color: #696763" href="{{ route('post.detail', ['id' =>$item->id, 'slug' => $item->slug]) }}">{{ $item->title }}</a></h3>
            <div class="post-meta">
                <ul>
                    <li><i class="fa fa-calendar"></i> {{date('d-m-Y', strtotime($item->created_at))}}</li>
                </ul>
            </div>
            <a href="{{ route('post.detail', ['id' =>$item->id, 'slug' => $item->slug]) }}">
                <img src="{{ asset('uploads/posts/'.$item->image) }}" alt="">
            </a>
            {!! $item->description !!}
            <a class="btn btn-primary" href="{{ route('post.detail', ['id' =>$item->id, 'slug' => $item->slug]) }}">Read more</a>
        </div>

        @endforeach
        {{ $posts->links() }}

    </div>
@endsection
