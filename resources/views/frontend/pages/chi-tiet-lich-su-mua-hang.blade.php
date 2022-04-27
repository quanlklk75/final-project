@extends("frontend.master")
@section("content")
    <div class="blog-post-area" style="margin-bottom: 60px">
        <h2 class="title text-center">Purchase history detail
        </h2>
        <?php
        $order_detail = App\OrderDetail::where('order_id', '=', $orders->id)->get();

        //    $order_detail = DB::table('orders_detail')
        //        ->select('orders_detail.*')
        //        ->join('variants', 'orders_detail.id_variant', '=', 'variants.id')
        //        ->join('products', 'variants.id_product ', '=', 'products.id')
        //        ->where('orders_detail.id_order', $orders->id)
        //        ->get();
        //    dd($order_detail);
        ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="box collapsed-box">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>Product</th>

                                <th class="product_price">Price</th>
                                <th class="product_qty">Amount</th>
                                <th class="product_total">Into money
                                </th>

                            </tr>
                            </thead>
                            <tbody>
                            {{--                        @foreach($order_detail as $item)--}}
                            {{--                            <?php $product = DB::table('products')->where('id', $item->variant['id_product'])->first();--}}
                            {{--                            dd( $item->variant['id_product']);--}}
                            {{--                            ?>--}}

                            @foreach($order_detail as $item)
                                <tr>
                                    <td>
                                        {{$item->product->name}}
                                    </td>
                                    <td>{{ number_format($item->product->price, 0,'','.') }} <sup></sup></td>

                                    <td class="product_qty">x <a href="#" class="edit-item-detail editable editable-click"
                                                                 data-value="1" data-name="qty" data-type="number" min="0"
                                                                 data-pk="183"
                                                                 data-url="https://demo.s-cart.org/sc_admin/order/edit_item"
                                                                 data-title="Quantity"> {{$item->qty}}</a></td>
                                    <td class="product_total item_id_183">{{ number_format($item->product->price * $item->qty, 0,'','.') }} <sup></sup>
                                    </td>
                                    {{--                            <td class="product_tax"><a href="#" class="edit-item-detail editable editable-click" data-value="500" data-name="tax" data-type="number" min="0" data-pk="183" data-url="https://demo.s-cart.org/sc_admin/order/edit_item" data-title="order.tax"> 500</a></td>--}}
                                    {{--                            <td>--}}
                                    {{--                                <span onclick="deleteItem(183);" class="btn btn-danger btn-xs" data-title="Delete"><i class="fa fa-trash" aria-hidden="true"></i></span>--}}
                                    {{--                            </td>--}}
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                    </div>

                </div>
                <h3>Total money: {{ number_format($orders->total, 0,'','.') }} <sup></sup></h3>

            </div>

        </div>
@endsection
