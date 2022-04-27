@include('frontend.layouts.head')

<body>
@include('frontend.layouts.header')


<section>
    <div class="container">
        <div class="row">
            @if(\Request::route()->getName() == 'pages.home')
                @include('frontend.layouts.slider')

            @endif
            @if(\Request::route()->getName() == 'pages.home' || \Request::route()->getName() == 'get.list_post' || \Request::route()->getName() == 'products.get_detail')
                {{--                @include('frontend.layouts.slider')--}}

                <div class="col-sm-3">
                    @include('frontend.layouts.sidebar')

                </div>
            @endif
            @if(\Request::route()->getName() == 'pages.home' || \Request::route()->getName() == 'get.list_post' || \Request::route()->getName() == 'products.get_detail')

                <div class="col-sm-9 padding-right">
                    @yield("content")
                </div>
            @else
                @yield("content")

            @endif
        </div>
</div>
</section>

@include("frontend.layouts.footer")
@yield('script')
