@extends("frontend.master")
@section("content")


    <div class="features_items"><!--features_items-->
        <h2 class="title text-center">NEW PRODUCT</h2>
        <?php $product_news = DB::table('products')->where('status', 1)->orderBy('id', 'DESC')->limit('9')->get() ?>
        @foreach($product_news as $item)
            <div class="col-sm-4">
                <div class="product-image-wrapper">
                    <div class="single-products" style="height: 428px;">
                        <div class="productinfo text-center">
                            <a href="{{ route('products.get_detail', $item->id) }}">
                                <img src="{{ asset('uploads/products/'.$item->image) }}" alt=""/>
                            </a>
                            @if($item->promotion > 0)
                            <h4 class="pro-price-del" style="color: #939393">
                                <del class="compare-price">{{number_format($item->price)}}₫</del>
                            </h4>
                            @endif
                            <h2>{{ number_format($item->price*(100 - $item->promotion)/100, 0, ',','.') }}</h2>

                            <p><a style="color: #696763"
                                  href="{{ route('products.get_detail', $item->id) }}">{{$item->name}}</a></p>
                            <button type="button" class="btn btn-default add-to-cart"><a style="color: #696763"
                                                                                         href="{{ route('products.get_detail', $item->id) }}"><i
                                        class="fa fa-eye"></i>See details</a></button>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div><!--features_items-->


    <div class="recommended_items"><!--recommended_items-->
        <h2 class="title text-center">HOT PRODUCTS
        </h2>
        <?php $sp_hot = DB::table('products')->where('hot', '=', 1)->where('status', 1)->limit(9)->get();  ?>

        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="item active">
                    @foreach($sp_hot as $key => $item)
                        @if($key < 3)
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products" style="height: 428px;">
                                        <div class="productinfo text-center">
                                            <img src="{{ asset('uploads/products/'.$item->image) }}" alt=""/>
                                            <h2>{{ number_format($item->price,0,'.','.') }}</h2>
                                            <p><a style="color: #696763"
                                                  href="{{ route('products.get_detail', $item->id) }}">{{$item->name}}</a>
                                            </p>
                                            <button type="button" class="btn btn-default add-to-cart"><a
                                                    style="color: #696763"
                                                    href="{{ route('products.get_detail', $item->id) }}"><i
                                                        class="fa fa-eye"></i>Xem chi tiết</a></button>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        @endif
                    @endforeach

                </div>
                <div class="item">
                    @foreach($sp_hot as $key => $item)
                        @if($key > 3)
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products" style="height: 428px;">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="{{ asset('uploads/products/'.$item->image) }}" alt=""/>
                                                <h2>{{ number_format($item->price,0,'.','.') }}</h2>
                                                <p><a style="color: #696763"
                                                      href="{{ route('products.get_detail', $item->id) }}">{{$item->name}}</a>
                                                </p>                                            <a href="#"
                                                                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add to cart</a>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        @endif
                    @endforeach
                </div>
            </div>
            <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                <i class="fa fa-angle-left"></i>
            </a>
            <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                <i class="fa fa-angle-right"></i>
            </a>
        </div>
    </div><!--/recommended_items-->

@endsection
