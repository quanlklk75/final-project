@extends("frontend.master")
@section("content")
    <div class="content-box_contact conatct_right">
        <form name="FormDatHang" method="post" action="{{ route('register') }}">
            @csrf
            <div class="contact_bottom">
                <div class="row" style="width: 100%">
                    <div class="input">
                        <input type="text" class="clsip" name="name" required="" placeholder="Họ và tên">
                    </div>
                    <div class="clear"></div>
                </div><!---row---->

                <div class="row" style="width: 100%">
                    <div class="input">
                        <input type="email" class="clsip" name="email" required="" placeholder="Email">
                    </div>
                    <div class="clear"></div>
                </div><!---row---->
                <div class="row" style="width: 100%">
                    <div class="input">
                        <input type="password" class="clsip" name="password" required="" placeholder="Mật khẩu">
                    </div>
                    <div class="clear"></div>
                </div><!---row---->

                <div class="row width100pt">
                    <div class="input"><input type="submit" name="frmSubmit" id="frmSubmit" class="btn-gui btn-success"
                                              value="Đăng kí">
                        <input type="reset" class="btn-gui btn-success" value="Nhập lại">
                    </div>
                    <div class="clear"></div>
                </div><!---row---->
            </div>
        </form>
        <div class="clear"></div>
    </div>
@endsection
