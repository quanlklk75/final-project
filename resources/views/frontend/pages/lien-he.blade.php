@extends("frontend.master")
@section("content")
    <div id="contact-page" class="container">
        <div class="bg">
            <div class="row">
                <div class="col-sm-8">
                    <div class="contact-form">
                        <h2 class="title text-center">Get In Touch</h2>
                        <div class="status alert alert-success" style="display: none"></div>
                        <form id="main-contact-form" class="contact-form row" name="contact-form" method="post" action="{{ route('post_contact') }}">
                            @csrf
                            <div class="form-group col-md-6">
                                <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" name="phone" class="form-control" required="required" placeholder="Phone">
                            </div>
                            <div class="form-group col-md-12">
                                <input type="email" name="email" class="form-control" required="required" placeholder="email">
                            </div>
                            <div class="form-group col-md-12">
                                <textarea type="text" class="clsipa" name="message" placeholder="Content" rows="10"></textarea>
                            </div>
                            <div class="form-group col-md-12">
                                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="contact-info">
                        <h2 class="title text-center">Contact Info</h2>
                        <address>
                            <p>Baverage meterials.</p>
                            <p>20 Cong Hoa Stress, Ward 12, Tan Binh District, Ho Chi Minh City</p>
                            <p>Viet Nam</p>
                            <p>Mobile: +84 077 788 6322</p>
                            <p>Email: quannmgcs18644@fpt.edu.vn</p>
                        </address>
                        <div class="social-networks">
                            <h2 class="title text-center">Social Networking</h2>
                            <ul>
                                <li>
                                    <a href="https://www.facebook.com/quansuaa"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/watch?v=uoLVHILldo4"><i class="fa fa-youtube"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
