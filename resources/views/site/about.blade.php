@extends('site.layouts.app-main')
<style>
p{
    text-align: justify !important;text-justify: inter-word!important;
}
</style>
@section('content')

    <main id="main" style="margin-top: 110px!important;">
        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs mb-1">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center" style="float: right;">
                    <ol dir="rtl" class="">
                        <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                        <li> عن الجمعية</li>
                    </ol>
                </div>
            </div>
        </section><!-- End Breadcrumbs Section -->

        <!-- ======= Features Section ======= -->
        <section id="features" class="features">
            <div class="container" data-aos="fade-up">
                <div class="row">
                    <div class="col-lg-6 order-2 order-lg-1" data-aos="fade-right">
                        <div class="icon-box mt-5 mt-lg-0 text-right" dir="rtl">
                            <h3 style="color: #11723A; font-size: 30px!important;font-weight: bold;">
                                {{$about_content->title}}
                            </h3>
                            <hr style="width: 150px; border: 1px solid #11723A;opacity: 1!important;">
                            <p style="line-height: 2;;font-size: 16px;font-weight: bold;color: #000!important;align-content: center">
                                {{$about_content->description}}
                            </p>
                            <div class="row" dir="rtl">
                                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                                    <i class="bx bx-receipt"></i>
                                    <h4>{{$about_content->paragraph_one_title}}</h4>
                                    <br>
                                    <p style="text-align: justify;text-justify: inter-word;">
                                        {{$about_content->paragraph_one_text}}
                                    </p>
                                </div>
                                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                                    <i class="bx bx-cube-alt"></i>
                                    <h4>{{$about_content->paragraph_two_title}}</h4>
                                    <br>
                                    <p style="text-align: justify;text-justify: inter-word;">
                                        {{$about_content->paragraph_two_text}}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 text-center order-1 order-lg-1" data-aos="fade-left">
                        <img src="{{URL::asset($settings->logo)}}"
                             style="width: 80%!important;height: auto!important;" alt="" />
                    </div>
                </div>

            </div>
        </section><!-- End Features Section -->


    </main><!-- End #main -->

    @include('site.layouts.common.footer')
@endsection
<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
<script>
    $(document).ready(function () {

    });
</script>
