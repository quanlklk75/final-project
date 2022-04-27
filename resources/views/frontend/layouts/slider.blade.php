<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <?php $slides = DB::table('slides')->get(); ?>

                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        @foreach($slides as $index=>$item)
                        <li data-target="#slider-carousel" data-slide-to="{{ $index }}" class="@if($index == 0){{"active"}}@endif"></li>
                        @endforeach

                    </ol>

                    <div class="carousel-inner">
                        @foreach($slides as $index=>$item)

                        <div class="item @if($index == 0) {{ 'active' }} @endif">
                                <img src="{{ asset('uploads/slides/'.$item->image) }}" class="girl img-responsive" alt=""/>
                        </div>

                        @endforeach
                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->
