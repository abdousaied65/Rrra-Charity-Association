@extends('site.dash_layouts.app-main')
<style>
    .input-group-prepend {
        width: 40px;
        font-size: 15px;
        text-align: center;
        padding-top: 10px;
        border-radius: 0 !important;
        height: 45px;
        background: #ddd;
    }

    .form-control {
        height: 45px !important;
    }

    form label, form a {
        font-size: 13px !important;
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
                    <li>استعادة كلمة المرور </li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="login contact" dir="rtl">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-12 col-xs-12">
                    <div class="login-form login-area">
                        @if (session('success'))
                            <div class="alert alert-success" role="alert">
                                {{ session('success') }}
                            </div>
                        @endif
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <strong>الاخطاء :</strong>
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <h3 class="text-center mb-4">
                            اعادة تعيين كلمة المرور العضويات
                        </h3>
                        @if (session('status'))
                            <div class="alert alert-success text-center" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <form id="myForm" method="POST" action="{{ route('beneficiary.password.update') }}">
                            @csrf

                            <input type="hidden" name="token" value="{{ $token }}">

                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">البريد
                                    الالكترونى</label>

                                <div class="col-md-8">
                                    <input id="email" type="email" dir="ltr"
                                           class="form-control text-left @error('email') is-invalid @enderror"
                                           name="email" value="{{ $email ?? old('email') }}" required
                                           autocomplete="email" autofocus>

                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">كلمة المرور</label>

                                <div class="col-md-8">
                                    <input dir="ltr" id="password" type="password"
                                           class="form-control @error('password') is-invalid @enderror" name="password"
                                           required autocomplete="new-password">

                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password-confirm" class="col-md-4 col-form-label text-md-right">تأكيد كلمة
                                    المرور</label>

                                <div class="col-md-8">
                                    <input dir="ltr" id="password-confirm" type="password" class="form-control"
                                           name="password_confirmation" required autocomplete="new-password">
                                </div>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-12 offset-md-12">
                                    <button type="submit" class="btn btn-common">
                                        اعادة تعيين كلمة المرور
                                    </button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
