@extends("backend.master")
@section("title-page", "Dashboard")

@section('content')
    @include('messages')
    <div class="row">

        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
                <?php $cate_count = DB::table("categories")->count(); ?>
                <div class="inner">
                    <h3>{{ $cate_count }}</h3>

                    <p>Category </p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="{{ route('cates.list') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <?php $products= DB::table("products")->count(); ?>
            <div class="small-box bg-green">
                <div class="inner">
                    <h3>{{ $products }}</h3>

                    <p>Product</p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="{{ route('products.list') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <?php $posts = DB::table("posts")->count(); ?>
                <div class="inner">
                    <h3>{{ $posts }}</h3>

                    <p>News</p>
                </div>
                <div class="icon">
                    <i class="ion ion-ios-news"></i>
                </div>
                <a href="{{ route('posts.list') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>


        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <?php $orders = DB::table("orders")->count(); ?>
                <div class="inner">
                    <h3>{{ $orders }}</h3>

                    <p>Order</p>
                </div>
                <div class="icon">
                    <i class="ion ion-ios-cart"></i>
                </div>
                <a href="{{ route('order.list') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <?php $contact = DB::table("contacts")->count(); ?>
                <div class="inner">
                    <h3>{{ $contact }}</h3>

                    <p>Contact list </p>
                </div>
                <div class="icon">
                    <i class="fa fa-contact"></i>
                </div>
                <a href="{{ route('contact.list') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <?php $customers = DB::table("customers")->count(); ?>
                <div class="inner">
                    <h3>{{ $customers }}</h3>

                    <p>Customer</p>
                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="{{ route('customers.list') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>
@endsection
