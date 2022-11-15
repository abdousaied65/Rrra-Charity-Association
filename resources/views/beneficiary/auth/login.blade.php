@extends('site.dash_layouts.app-main')
<style>
    form label, form a {
        font-size: 15px !important;
    }

    .input-group-prepend {
        width: 40px;
        font-size: 15px;
        text-align: center;
        padding-top: 15px;
        border-radius: 0 !important;
        background: #ddd;
    }

    .input-group-text {
        border-radius: 0 !important;
        height: 100% !important;
    }

</style>
@section('content')
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs" style="margin-top: 130px!important;">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center" style="float: right;">
                <ol dir="rtl" class="">
                    <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                    <li> تسجيل دخول عضو</li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="login contact" style="padding: 40px!important;" dir="rtl">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-12 col-xs-12">
                    <div class="alert alert-danger alert-md text-center mt-4 mb-4">
                        <a class="text-center" href="{{route('beneficiary.register')}}">
                            ليس لديك حساب. يرجى الضغط هنا لإنشاء حساب جديد
                        </a>
                    </div>
                    <div class="login-form login-area">
                        <h5 style="border-radius: 0;" class="alert alert-md alert-info text-center mb-4">
                            تسجيل الدخول العضويات
                        </h5>
                        @if (session('success'))
                            <div class="alert alert-success" role="alert">
                                {{ session('success') }}
                            </div>
                        @endif
                        @if (session('error'))
                            <div class="alert alert-danger text-center" role="alert">
                                {{ session('error') }}
                            </div>
                        @endif
                        <form id="myForm" class="login-form" method="POST" action="{{route('beneficiary.login')}}">
                            @csrf
                            <div class="form-group mt-1 mb-3">
                                <label class="d-block mb-2" for="sender-email">البريد الالكترونى </label>
                                <input dir="ltr" required type="text"
                                       class="form-control form-control-lg @if(count($errors) > 0) is-invalid @endif"
                                       name="email"
                                       placeholder=" البريد الالكترونى  " value="{{old('email')}}">
                                @if (count($errors) > 0)
                                    @foreach ($errors->all() as $error)
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $error }}</strong>
                                            </span>
                                    @endforeach
                                @endif
                            </div>
                            <div class="form-group mt-1 mb-3">
                                <label class="d-block mb-2" for="password">
                                    كلمة المرور
                                </label>
                                <div class="input-group mb-3" dir="ltr">
                                    <div class="input-group-prepend showPassword">
                                        <span class="input-group-text" id="basic-addon1">
                                            <i class="fa fa-eye basic-addon1"></i>
                                        </span>
                                    </div>
                                    <input minlength="8" id="password" type="password"
                                           class="form-control form-control-lg @error('password') is-invalid @enderror text-left"
                                           dir="ltr" name="password" required placeholder="كلمة المرور"
                                           aria-describedby="basic-addon1">
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <div class="row">
                                    <div class="col-lg-6 col-sm-12 pull-right text-right">
                                        <input id="checkedall" style="display: inline!important;" type="checkbox"
                                               name="remember" checked>
                                        <label for="checkedall" style="display: inline!important;">تذكرنى</label>
                                    </div>
                                    <div class="col-lg-6 col-sm-12 pull-left" dir="ltr">
                                        <a href="{{route('beneficiary.password.request')}}">هل نسيت كلمة
                                            المرور ؟</a>
                                    </div>
                                </div>

                            </div>

                            <div class="text-center">
                                <button button type="submit">تسجيل الدخول</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
    <script>
        $(".showPassword").click(function () {
            if ($("#password").attr("type") == "password") {
                $("#password").attr("type", "text");
                $(".showPassword").find('i.fa').toggleClass('fa-eye fa-eye-slash');
            } else {
                $("#password").attr("type", "password");
                $(".showPassword").find('i.fa').toggleClass('fa-eye fa-eye-slash');
            }
        });
    </script>
@endsection
