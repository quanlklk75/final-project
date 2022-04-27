@extends("frontend.master")
@section("content")
    <section id="form"><!--form-->
        <div class="container">
            @include("messages")

            <div class="row">

                <div class="col-sm-4 col-sm-offset-1">

                    <div class="login-form"><!--login form-->
                        <h2>Log in
                        </h2>
                        <form method="post" action="{{ route('login') }}">
                            @csrf

                            <input name="email" type="email" placeholder="Email" value="{{ old('email') }}" required>
                            <input name="password" type="password" placeholder="Password" required value="{{ old('password') }}">

                            <button type="submit" class="btn btn-default">Login</button>
                        </form>
                    </div><!--/login form-->
                </div>
                <div class="col-sm-1">
                    <h2 class="or">OR</h2>
                </div>
                <div class="col-sm-4">
                    <div class="signup-form"><!--sign up form-->
                        <h2>Registration
                        </h2>
                        <form  method="post" action="{{ route('register') }}">
                            @csrf

                            <input type="text" class="clsip" name="name" value="{{ old('name') }}" required="" placeholder="Full name">
                            <input type="email" class="clsip" name="email" value="{{ old('email') }}" required="" placeholder="Email">
                            <input type="password" class="clsip" name="password" value="{{ old('password') }}" required="" placeholder="Password">
                            <button type="submit" class="btn btn-default">Signup</button>
                        </form>
                    </div><!--/sign up form-->
                </div>
            </div>
        </div>
    </section>
@endsection
