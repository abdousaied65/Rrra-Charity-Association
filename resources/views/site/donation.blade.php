@extends('site.layouts.app-main')
<style>

    label{
        display: block;
        margin-bottom: 5px!important;
        font-size: 14px!important;
    }
    .form-control ,.btn{
        font-size: 14px!important;
        padding: 10px!important;
        border-radius: 1px !important;
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
                        <li>
                            صفحة التبرع
                        </li>
                    </ol>
                </div>
            </div>
        </section><!-- End Breadcrumbs Section -->

        <!-- ======= Features Section ======= -->
        <section id="features" class="features">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="icon-box mt-5 mt-lg-0 text-right" dir="rtl">
                            <h3 style="color: #11723A; font-size: 30px!important;font-weight: bold;">
                                {{$donation_content->title}}
                            </h3>
                            <hr style="width: 150px; border: 1px solid #11723A;opacity: 1!important;">
                            <p style="line-height: 2;;font-size: 16px;font-weight: bold;color: #000!important;align-content: center">
                                {{$donation_content->description}}
                            </p>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="icon-box" dir="rtl">
                            <form action="{{route('checkout.store')}}" method="POST">
                                @csrf
                                <div class="row text-center align-content-center justify-content-center">
                                    <div class="col-md-4 mb-3">
                                        <label class="d-block pull-right text-right">المبلغ</label>
                                        <input type="number" dir="ltr" min="1" class="form-control"
                                               placeholder="المبلغ" name="amount" required />
                                    </div>
                                </div>
                                <hr>
                                <div class="bottom text-center">
                                    <button type="submit" style="min-width: 100px!important;" class="btn btn-md btn-success btn-block">
                                        تبرع الآن
                                    </button>
                                </div>
                            </form>
                        </div>
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
