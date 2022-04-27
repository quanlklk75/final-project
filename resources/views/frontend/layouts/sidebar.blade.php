<div class="left-sidebar">
    <h2>Category</h2>
    <div class="panel-group category-products" id="accordian"><!--category-productsr-->
        <?php $cates = DB::table('categories')->get(); ?>
        @foreach($cates as $item)

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a  href="{{ route('sanpham.getdanhmuc',['id' => $item->id, 'slug' => $item->slug]) }}">

                            {{$item->name}}
                        </a>
                    </h4>
                </div>
            </div>
        @endforeach
    </div><!--/category-products-->


    <div class="shipping text-center"><!--shipping-->
        <img src="{{ asset('images/home/shipping.jpg') }}" alt=""/>
    </div><!--/shipping-->

</div>
