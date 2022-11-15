@extends('site.dash_layouts.app-main')

@section('content')
    <main id="main" style="margin-top: 110px!important;">
        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs mb-1">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center" style="float: right;">
                    <ol dir="rtl" class="">
                        <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                        <li> نجحت عملية الدفع</li>
                    </ol>
                </div>
            </div>
        </section><!-- End Breadcrumbs Section -->
        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h3 class="text-danger">
                            تمت عملية الدفع بنجاح
                        </h3>
                        <br>
                        @if(isset($success))
                            <div class="alert alert-success  fade show">
                                <button class="close" data-dismiss="alert" aria-label="Close">×</button>
                                {{ $success }}
                            </div>
                        @endif
                        <br>
                        <hr/>
                        <br>
                        @auth('beneficiary-web')
                            <a href="{{route('index')}}" class="btn btn-info btn-md">
                                العودة الى لوحة التحكم
                            </a>
                        @else
                            @if(isset($success))
                                <a href="{{route('beneficiary.login')}}" class="btn btn-info btn-md">
                                    اضغط هنا لتسجيل الدخول
                                </a>
                            @else
                                <a href="{{route('index')}}" class="btn btn-info btn-md">
                                    العودة الى الصفحة الرئيسية
                                </a>
                            @endif
                        @endauth
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection
