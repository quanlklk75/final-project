<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <ul class="sidebar-menu" data-widget="tree">
            <li class="">
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>

                </a>

            </li>

            <li class="treeview @if(isset($open) && $open == 'cates') active menu-open @endif">
                <a href="#">
                    <i class="fa fa-table"></i> <span>Manage categories</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{ route('cates.get_add') }}"><i class="fa fa-circle-o"></i> Add category
                        </a></li>
                    <li><a href="{{ route('cates.list') }}"><i class="fa fa-circle-o"></i> List</a></li>
                </ul>
            </li>

            <li class="treeview @if(isset($open) && $open == 'products') active menu-open @endif">
                <a href="#">
                    <i class="fa fa-table"></i> <span>Product Management
</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
{{--                    <li><a href="{{ route('products.get_add') }}"><i class="fa fa-circle-o"></i> Thêm sản phẩm</a></li>--}}
                    <li><a href="{{ route('products.list') }}"><i class="fa fa-circle-o"></i> List</a></li>
                </ul>
            </li>

            <li class="treeview @if(isset($open) && $open == 'order') active menu-open @endif">
                <a href="#">
                    <i class="fa fa-shopping-cart"></i> <span>Order Management
</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{ route('order.list') }}"><i class="fa fa-circle-o"></i> All orders
                        </a></li>
                    <li><a href="{{ route('order.da_thanh_toan') }}"><i class="fa fa-circle-o"></i>The order has been paid
                        </a></li>
                    <li><a href="{{ route('order.chua_thanh_toan') }}"><i class="fa fa-circle-o"></i> Unpaid order
                        </a></li>
                </ul>
            </li>

            <li class="treeview @if(isset($open) && $open == 'posts') active menu-open @endif">
                <a href="#">
                    <i class="fa fa-table"></i> <span>News management
</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{ route('posts.get_add') }}"><i class="fa fa-circle-o"></i>Add news</a></li>
                    <li><a href="{{ route('posts.list') }}"><i class="fa fa-circle-o"></i>News list
                        </a></li>
                </ul>
            </li>

            <li class="treeview @if(isset($open) && $open == 'contact') active menu-open @endif">
                <a href="#">
                    <i class="fa fa-table"></i> <span>Contact Management
</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{ route('contact.list') }}"><i class="fa fa-circle-o"></i> Contact list</a></li>
                </ul>
            </li>
            <li>
                <a href="{{ route('customers.list') }}">
                    <i class="fa fa-th"></i> <span>Customer management </span>
                    <span class="pull-right-container">
            </span>
                </a>
            </li>

            <li class="treeview @if(isset($open) && $open == 'slides') active menu-open @endif">
                <a href="#">
                    <i class="fa fa-table"></i> <span>Manage slides</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{ route('slides.get_add') }}"><i class="fa fa-circle-o"></i> Add</a></li>
                    <li><a href="{{ route('slides.list') }}"><i class="fa fa-circle-o"></i> List slides</a></li>
                </ul>
            </li>

{{--            <li class="treeview @if(isset($open) && $open == 'slides') active menu-open @endif">--}}
{{--                <a href="#">--}}
{{--                    <i class="fa fa-table"></i> <span>Thống kế, báo cáo</span>--}}
{{--                    <span class="pull-right-container">--}}
{{--              <i class="fa fa-angle-left pull-right"></i>--}}
{{--            </span>--}}
{{--                </a>--}}
{{--                <ul class="treeview-menu">--}}
{{--                    <li><a href="{{ route('report.list') }}"><i class="fa fa-circle-o"></i> Thống kê bán hàng</a></li>--}}
{{--                    <li><a href="{{ route('report.thong_ke_thang') }}"><i class="fa fa-circle-o"></i> Thống kê doanh thu</a></li>--}}

{{--                </ul>--}}
{{--            </li>--}}


            <li class="treeview @if(isset($open) && $open == 'warehouse') active menu-open @endif">
                <a href="#">
                    <i class="fa fa-table"></i> <span>Warehouse</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{ route('warehouse.get_add') }}"><i class="fa fa-circle-o"></i> Enter Warehouse</a></li>
                    <li><a href="{{ route('warehouse.list') }}"><i class="fa fa-circle-o"></i> Inventory</a></li>
                </ul>
            </li>

{{--            <li>--}}
{{--                <a href="{{ route('contact.list') }}">--}}
{{--                    <i class="fa fa-th"></i> <span>Quản lý feedback</span>--}}
{{--                    <span class="pull-right-container">--}}

{{--            </span>--}}
{{--                </a>--}}
{{--            </li>--}}

{{--            <li class="treeview @if(isset($open) && $open == 'slides') active menu-open @endif">--}}
{{--                <a href="#">--}}
{{--                    <i class="fa fa-table"></i> <span>Quản lý slides</span>--}}
{{--                    <span class="pull-right-container">--}}
{{--              <i class="fa fa-angle-left pull-right"></i>--}}
{{--            </span>--}}
{{--                </a>--}}
{{--                <ul class="treeview-menu">--}}
{{--                    <li><a href="{{ route('slides.get_add') }}"><i class="fa fa-circle-o"></i> Thêm slide</a></li>--}}
{{--                    <li><a href="{{ route('slides.list') }}"><i class="fa fa-circle-o"></i> Danh sách</a></li>--}}
{{--                </ul>--}}
{{--            </li>--}}

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
