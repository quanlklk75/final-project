@extends("frontend.master")
@section("content")
    <div class="list_all_other_page">

        <div class="features_items"><!--features_items-->
            <h2 class="title text-center">Có {{ count($product) }} kết quả tìm kiếm </h2>
            @foreach($product as $item)

                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="{{ asset('uploads/products/'.$item->image) }}" alt="">
                                <h2>{{ number_format($item->price,0,'.','.') }}</h2>
                                <p><a style="color: #696763" href="{{ route('products.get_detail', $item->id) }}">{{$item->name}}</a></p>
                                <button type="button" class="btn btn-default add-to-cart"><a style="color: #696763" href="{{ route('products.get_detail', $item->id) }}"><i class="fa fa-eye"></i>Xem chi tiết</a></button>

                            </div>

                        </div>

                    </div>
                </div>
            @endforeach

            <div class="clear"></div>
        </div>
    </div>
@endsection
