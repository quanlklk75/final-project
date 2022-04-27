@extends("frontend.master")

@section("content")
    <div class="product-details"><!--product-details-->
        <div class="col-sm-5">
            <div class="view-product">
                <img src="{{ asset('uploads/products/'.$product->image) }}" alt="">
            </div>


        </div>
        <div class="col-sm-7">
            <div class="product-information"><!--/product-information-->
                <img src="{{ asset('images/product-details/new.jpg') }}" class="newarrival" alt="">
                <h2>{{$product->name}}</h2>
                <p>Web ID: {{$product->id}}</p>
                @if($product->qty < 1)
                    <h4 class="text-danger">Hết hàng</h4>
                @else
                    <span>
									<span>{{number_format($product->price*(100 - $product->promotion)/100, 0, ',','.')}}₫</span><br>
{{--									<label>Quantity:</label>--}}
									<div>
                                        <button style="width: 28px;height: 33px; font-size: 20px;border: none"
                                                onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty > 1 ) result.value--;return false;"
                                                class="reduced items-count" type="button"> -
                                        </button>

                                        <input type="text" class="input-text qty" title="Qty" value="1" maxlength="12"
                                               id="qty" name="qty" min="1">
                                        <input id="soluongcon" type="text" value="{{ $product->qty }}"
                                               style="display: none">

                                        <button style="width: 28px;height: 33px; font-size: 18px; border: none"
                                                onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"
                                                class="increase items-count count-plus" type="button"> +
                                        </button>
                                    </div>
                    <br>
									<button id="btn-add-cart" pro_id="{{$product->id}}" style="margin-left: 0px"
                                            type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add cart
									</button>
								</span>
                    <p>

                @endif
            </div><!--/product-information-->
        </div>
    </div>
    <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="" data-numposts="5"></div>
    <div class="container" style="max-width: 100%">
        <h2 style="color: #367fa9">Product information</h2>
        <div class="row col-md-12">
            {!! $product->description !!}
        </div>

    </div>
    <div class="container">
    <h2 style="color: #367fa9">Related Products</h2>
    </div>
    <?php $sp_lienquan = DB::table('products')->where('cate_id', $product->cate_id)->limit(12)->get(); ?>
    @foreach($sp_lienquan as $item)

    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products" style="height: 400px">
                <div class="productinfo text-center">
                    <img src="{{ asset("uploads/products/".$item->image) }}" alt="">
                    <h2>{{ number_format($item->price,0,'.','.') }}</h2>
                    <p><a style="color: #696763" href="{{ route('products.get_detail', $item->id) }}">{{$item->name}}</a></p>
                    <button type="button" class="btn btn-default add-to-cart"><a style="color: #696763" href="{{ route('products.get_detail', $item->id) }}"><i class="fa fa-eye"></i>Xem chi tiết</a></button>
                </div>
            </div>
        </div>
    </div>
    @endforeach
@endsection

@section("script")
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function () {

            var url = "{{ route('cart.add_cart') }}";

            $(".count-plus").click(function () {
                var qty = $("#qty").val();
                var soluongcon = $("#soluongcon").val();
                if (parseInt(qty) > parseInt(soluongcon)) {
                    $("#qty").val(soluongcon);
                    alert("Số lượng quá số lượng trong kho")
                }

            });


            $("#btn-add-cart").on("click", function () {
                var id = $(this).attr('pro_id');
                var qty = parseInt($("#qty").val());
                $.ajax({

                    type: "POST",
                    url: url,
                    data: {id: id, qty: qty},
                    success: function (data) {
                        window.location.href = "/cart";

                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            });
        });
    </script>
@endsection
