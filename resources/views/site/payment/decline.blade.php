@extends('site.dash_layouts.app-main')

@section('content')
    <main id="main" style="margin-top: 110px!important;">
        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs mb-1">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center" style="float: right;">
                    <ol dir="rtl" class="">
                        <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                        <li> فشلت عملية الدفع </li>
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
                            تم رفض عملية الدفع
                        </h3>
                        <br>
                        <hr/>
                        <br>
                        <a href="{{route('index')}}" class="btn btn-info btn-md">
                            العودة الى الصفحة الرئيسية
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection
