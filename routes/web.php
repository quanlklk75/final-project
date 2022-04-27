<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//Route::get('/', function () {
//    return view('frontend.master');
//});

Route::get('/', 'PagesController@home')->name('pages.home');
Route::get('/checkout', 'PagesController@checkout')->name('checkout');
Route::post('/checkout', 'PagesController@postCheckout')->name('post.checkout');

Route::get('/chi-tiet-san-pham/{id}', 'PagesController@getDetailProduct')->name('products.get_detail');
Route::POST('add-cart','CartController@addCart')->name('cart.add_cart');

Route::get('danh-muc/{id}/{slug}','PagesController@getDanhMucSanPham')->name('sanpham.getdanhmuc');

Route::post('/search', 'PagesController@search')->name('search');

Route::get('cart','CartController@getCart')->name('cart');
Route::post('cart-update','CartController@updateCart')->name('cart.update_cart');
Route::post('cart-remove','CartController@removeCart')->name('cart.remove_cart');
Route::GET('cart-remove-all','CartController@removeAll')->name('cart.remove_cart_all');
Route::get('/chi-tiet-tin/{id}/{slug}', 'PagesController@getPostDetail')->name('post.detail');
Route::get('tin-tuc', 'PagesController@danhSachTin')->name('get.list_post');

Route::get('lich-su-mua-hang', 'PagesController@purchaseHistory')->name('purchase.history');

Route::get('chi-tiet-lich-su-mua-hang/{id}', 'PagesController@purchaseHistoryDetail')->name('purchase.history_detail');

Route::get('dang-ki', 'Auth\RegisterController@showRegistrationForm')->name('get.resister');
Route::get('logout', 'Auth\LoginController@logout')->name('logout');

Route::post('order','OrderController@postOrder')->name('order.post_order');
Route::get('lien-he', 'ContactsController@getContact')->name('get_contact');
Route::post('lien-he', 'ContactsController@postContact')->name('post_contact');
Route::post('lien-he', 'ContactsController@postContact')->name('post_contact');
Route::get('thanh-toan-online', 'OnlinePaymentController@index')->name('get-payment-online');

Route::post('vnpay_create_payment', 'OnlinePaymentController@createPayment')->name('vnpay_create_payment');
Route::get('vnpay_return', 'OnlinePaymentController@vnpayReturn')->name('vnpay_return');



Route::group(['prefix' => 'admins', 'middleware' => ['admin']], function () {
    Route::get('/', 'DashboardController@index')->name('admin.dashboard');
    Route::prefix('cates')->group(function () {
        Route::get('/', 'CategoryController@index')->name('cates.list');
        Route::get('/add', 'CategoryController@getAdd')->name('cates.get_add');
        Route::post('/add', 'CategoryController@postAdd')->name('cates.post_add');
        route::get("/edit/{id}", "CategoryController@getEdit")->name("cates.get_edit");
        route::post("/edit/{id}", "CategoryController@postEdit")->name("cates.post_edit");
        route::get("/del/{id}", "CategoryController@getdel")->name("cates.get_delete");
    });
    Route::prefix('products')->group(function () {
        Route::get('/', 'ProductController@index')->name('products.list');
        Route::get('/add', 'ProductController@getAdd')->name('products.get_add');
        Route::post('/add', 'ProductController@postAdd')->name('products.post_add');
        route::get("/edit/{id}", "ProductController@getEdit")->name("products.get_edit");
        route::post("/edit/{id}", "ProductController@postEdit")->name("products.post_edit");
        route::get("/del/{id}", "ProductController@getdel")->name("products.get_delete");
        Route::get('/{id}/variants', 'ProductController@getVariants')->name('products.get_variants');
        Route::get('/{id}/variants/delete/{id_variants}', 'ProductController@deleteVariants')->name('products.delete_variants');

        Route::get('/{id}/aad-variants', 'ProductController@getAddVariants')->name('products.get_add_variants');
        Route::post('/{id}/aad-variants', 'ProductController@postAddVariants')->name('products.post_add_variants');

        route::get("/del/{id}/{id_image}", "ProductController@getdelImageDetail")->name("products.get_delete_image_detail");
    });

    Route::prefix('order')->group(function () {
        Route::get('/', 'OrderController@index')->name('order.list');
        Route::get('/detail/{id}', 'OrderController@getDetail')->name('order.get_detail');
        Route::get('/danh-sach-don-hang-da-thanh-toan', 'OrderController@donHangDaThanhToan')->name('order.da_thanh_toan');
        Route::get('/danh-sach-don-hang-chua-thanh-toan', 'OrderController@donHangChuaThanhToan')->name('order.chua_thanh_toan');

        route::get("/xac-nhan-thanh-toan/{id}", "OrderController@xacNhanThanhToan")->name("order.xac_nhan_thanh_toan");
        route::post("/edit/{id}", "CategoryController@postEdit")->name("cates.post_edit");

        route::get("/del/{id}", "OrderController@getdel")->name("order.get_delete");
    });

    Route::prefix('slides')->group(function () {
        Route::get('/', 'SlideController@index')->name('slides.list');
        Route::get('/add', 'SlideController@getAdd')->name('slides.get_add');
        Route::post('/add', 'SlideController@postAdd')->name('slides.post_add');
        route::get("/edit/{id}", "SlideController@getEdit")->name("slides.get_edit");
        route::post("/edit/{id}", "SlideController@postEdit")->name("slides.post_edit");
        route::get("/del/{id}", "SlideController@getdel")->name("slides.get_delete");

    });

    Route::prefix('posts')->group(function () {
        Route::get('/', 'PostController@index')->name('posts.list');
        Route::get('/add', 'PostController@getAdd')->name('posts.get_add');
        Route::post('/add', 'PostController@postAdd')->name('posts.post_add');
        route::get("/edit/{id}", "PostController@getEdit")->name("posts.get_edit");
        route::post("/edit/{id}", "PostController@postEdit")->name("posts.post_edit");
        route::get("/del/{id}", "PostController@getdel")->name("posts.delete");
        route::get("/changestatuspost", "PostController@changeStatus")->name("posts.change_status");
    });

    Route::prefix('contact')->group(function () {
        Route::get('/', 'ContactsController@index')->name('contact.list');

        route::get("/del/{id}", "ContactsController@getdel")->name("contact.delete");
    });

    Route::prefix('customers')->group(function () {
        Route::get('/', 'CustomerController@index')->name('customers.list');

        route::get("/del/{id}", "CustomerController@getdel")->name("customers.delete");
    });

    Route::prefix('report')->group(function () {
        Route::get('/report-month', 'ReportController@index')->name('report.list');

        Route::post('doanh-so-ban-thang', 'ReportController@getBanHangThang')->name('report.post_ban_hang');

        Route::get('thong-ke-thang', 'ReportController@thongKeThang')->name('report.thong_ke_thang');

        Route::get('/add', 'ReportController@getAdd')->name('report.get_add');
        Route::post('/add', 'ReportController@postAdd')->name('report.post_add');
        route::get("/edit/{id}", "ReportController@getEdit")->name("report.get_edit");
        route::post("/edit/{id}", "ReportController@postEdit")->name("report.post_edit");
        route::get("/del/{id}", "ReportController@getdel")->name("report.get_delete");

    });

    Route::prefix('warehouse')->group(function () {
        Route::get('/', 'WarehouseController@index')->name('warehouse.list');
        Route::get('/add', 'WarehouseController@getAdd')->name('warehouse.get_add');
        Route::post('/add', 'WarehouseController@postAdd')->name('warehouse.post_add');
        route::get("/edit/{id}", "WarehouseController@getEdit")->name("warehouse.get_edit");
        route::post("/edit/{id}", "WarehouseController@postEdit")->name("warehouse.post_edit");
        route::get("/del/{id}", "WarehouseController@getdel")->name("warehouse.get_delete");

    });

});

Route::get('admin-login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
Route::post('admin-login', 'Auth\AdminLoginController@login')->name('post.login_admin');
Route::get('admin-logout', 'Auth\AdminLoginController@logout')->name('admin.logout');
Route::get('admin-logout', 'Auth\AdminLoginController@logout')->name('admin.logout');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/resign-email', 'SendMailController@send_mail')->name('send_mail');
