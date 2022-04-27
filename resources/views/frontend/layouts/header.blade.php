<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> +84 777 8863 222</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> quannmgcs18644@fpt.edu.vn</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="{{ asset('/') }}"><img src="{{ asset('images/home/logoHeader.png') }}" alt=""/></a>
                    </div>

                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <?php  $cartContent = Cart::getContent()->sort(); ?>

                            <li><a href="{{ route('cart') }}"><i class="fa fa-shopping-cart"> {{ $cartContent->count() }}</i> Cart</a></li>
                            @if(!auth()->guard('web')->user())
                                <li class=""><a href='{{ route('login') }}'>Login</a></li>
                            @else
                                <li class=""><a href='{{ route('purchase.history') }}'><i class="fas fa-history"></i>Purchase history
                                    </a></li>
                                <li class=""><a href='{{ route('logout') }}'><i class="fa fa-sign-out"></i>Logout</a></li>

                            @endif

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <?php $cates = DB::table('categories')->get(); ?>

                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="/" class="">Home</a></li>
                            </li>
                            <li><a href="{{ route('get.list_post') }}">News</a></li>

                            <li><a href="{{ route('get_contact') }}">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <form class="search_form" method="POST" action="{{ route('search') }}">
                        @csrf
                    <div class="search_box pull-right">
                        <input type="text" placeholder="Search"/>
                    </div>
                    </form>


                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->
