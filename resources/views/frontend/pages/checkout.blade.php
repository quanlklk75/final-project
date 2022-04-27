@extends('frontend.master')

@section("content")
    <section id="cart_items">
        <div class="container">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="/">Home</a></li>
                    <li class="active">Shopping Cart</li>
                </ol>
            </div>
            <div class="table-responsive cart_info">
                <table class="table table-condensed">
                    <thead>
                    <tr class="cart_menu">
                        <td class="image">Item</td>
                        <td class="description"></td>
                        <td class="price">Price</td>
                        <td class="quantity">Quantity</td>
                        <td class="total">Total</td>
                        <td></td>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($cartContent as $item)
                        <?php $product = DB::table('products')->where('id', '=', $item->id)->first(); ?>

                        <tr>
                            <td>
                                <a href=""><img style="width: 150px; height: 100px"
                                                src="{{ asset('uploads/products/'.$product->image) }}" alt=""></a>
                            </td>
                            <td class="cart_description">
                                <p>{{ $item->name }}</p>
                                <p>Web ID: {{ $item->id }}</p>
                            </td>
                            <td class="cart_price">
                                <p>{{ number_format($item->price, 0, ',', '.') }}đ</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <div class="floatleft">
                                        <input class="cart_quantity_input inputsoluong floatleft" type="text"
                                               name="quantity" value="{{ $item->quantity }}" autocomplete="off"
                                               size="2">
                                    </div>
                                    <div style="padding-left: 20px" id_pro="{{ $item->id }}"
                                         class="floatleft width50 btn-update-cart">
                                        <button style="padding: 3px 10px;    margin-left: 10px;" name="submit"
                                                type="submit" class="btn_df btn_table_td_rf_del btn-sm">
                                            <i class="fa fa-refresh"></i></button>
                                    </div>
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">{{ number_format($item->price * $item->quantity, 0, ',', '.') }}
                                    đ</p>
                            </td>
                            <td class="cart_delete">
                                <a id_pro="{{ $item->id }}" class="cart_quantity_delete btn_df btn_table_td_rf_del"
                                   href=""><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                    @endforeach
                    <tr>
                        <td colspan="7" class="textright_text">
                            <div class="sum_price_all" style="font-size: 20px">
                                <span class="text_price">Total money</span>:
                                <span class="text_price color_red">{{ number_format(Cart::getSubTotal(), 0, '.', ',') }} đ</span>
                            </div>
                        </td>


                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="shopper-informations" style="margin-bottom: 70px">
                <div class="row">
                    <div class="col-sm-8">
                    </div>
                    <div class="col-sm-8">
                        <div class="shopper-info">
                            <p>Customer information</p>
                            <form method="post" action="{{ route('order.post_order') }}">
                                @csrf
                                <input name="name" required="" type="text" placeholder="Full name"
                                       value="@if(auth()->guard('web')->user()){{ auth()->guard('web')->user()->name }} @endif">
                                <input name="phone" required="" type="text" placeholder="Phone">
                                <input name="email" required="" type="email" placeholder="Email">
                                <input name="address" required="" type="text" placeholder="Address">

                                <button class="btn btn-primary" type="submit">Payment on delivery</button>

                            </form>
                            <br>
                            <a href="{{route('get-payment-online')}}" class="btn btn-primary" type="submit">Online payment
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection

@section("script")
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function () {
            var url = "{{ route('cart.update_cart') }}";
            $(".btn-update-cart").on("click", function () {
                var id = $(this).attr('id_pro');
                var qty = parseInt($(this).prev('div[class="floatleft"]').find('input[name="quantity"]').val());

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

            $(".btn_df").on("click", function () {
                var id = $(this).attr('id_pro');
                var url = "{{ route('cart.remove_cart') }}";
                $.ajax({


                    type: "POST",
                    url: url,
                    data: {id: id},
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

