@extends('site.layouts.app-membership')
<style>
    #features {
        background: #f9f9f9;
        margin: 0 !important;
        padding: 10px !important;
    }

    .social_links li {
        display: inline !important;
        margin-left: 15px !important;
    }

    ul.social_links {
        list-style: none;
    }

    ul.social_links li {
        width: 50px;
        height: 50px;
        font-size: 45px;
    }

    .icon-box {
        background: #fff;
        border: 1px solid #eee;
        height: auto !important;
    }

    .badge {
        width: auto !important;
        padding: 10px 40px !important;
        height: 40px !important;
        font-size: 16px !important;
    }

    .badge-success {
        background: green !important;
        color: #fff !important;
        border: 1px solid green !important;
    }

    .badge-danger {
        background: darkred !important;
        color: #fff !important;
        border: 1px solid darkred !important;
    }

    .badge-info {
        background: darkcyan !important;
        color: #fff !important;
        border: 1px solid darkcyan !important;
    }

</style>
@section('content')
    <!-- ======= Features Section ======= -->
    <section id="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="icon-box p-2" dir="rtl">
                        <div  data-aos="fade-up" data-aos-delay="200" class="text-center">
                            <a href="{{route('index')}}">
                                <img style="width: 25%!important;" src="{{asset($settings->logo)}}" alt="">
                            </a>
                        </div>
                        <div  data-aos="fade-up" data-aos-delay="400" class="mt-4 text-center">
                            @if($beneficiary->Status == "تمت الموافقة")
                                <span class="badge badge-success">
                                    العضوية سارية
                                </span>
                            @elseif($beneficiary->Status == "مرفوض")
                                <span class="badge badge-danger">
                                    العضوية منتهية
                                </span>
                            @elseif($beneficiary->Status == "قيد المراجعة")
                                <span class="badge badge-info">
                                    العضوية قيد المراجعة
                                </span>
                            @endif
                        </div>
                        <div  data-aos="fade-up" data-aos-delay="600" class="mt-4 alert alert-primary alert-sm text-center">
                            تاريخ الانتهاء :
                            {{$beneficiary->end_date}}
                        </div>
                        <div  data-aos="fade-up" data-aos-delay="800" class="row mt-4">
                            <div class="row name">
                                <div class="col-lg-12">
                                    <div class="card mb-5 text-center" style="height: auto!important;width: 100%!important;">
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item">
                                                اسم العضو العضو :
                                                <br>
                                                {{$beneficiary->first_name_ar ." ". $beneficiary->second_name_ar." ". $beneficiary->third_name_ar." ". $beneficiary->fourth_name_ar}}
                                                <br>
                                                {{$beneficiary->first_name_en ." ". $beneficiary->second_name_en." ". $beneficiary->third_name_en." ". $beneficiary->fourth_name_en}}
                                            </li>
                                            <li class="list-group-item">
                                                رقم الهوية الوطنية :
                                                <br>
                                                {{$beneficiary->record}}
                                            </li>
                                            <li class="list-group-item">
                                                 نوع العضوية :
                                                <br>
                                                {{$beneficiary->membershipType->membership_type}}
                                            </li>
                                            <li class="list-group-item">
                                                تاريخ الميلاد ميلادى :
                                                <br>
                                                {{$beneficiary->date_of_birth}}
                                            </li>
                                            <li class="list-group-item">
                                                تاريخ الميلاد هجرى :
                                                <br>
                                                {{$date_of_birth_hijri}}
                                            </li>
                                            <li class="list-group-item">
                                                رقم العضوية :
                                                <br>
                                                {{$beneficiary->id}}
                                            </li>
                                            <li class="list-group-item">
                                                تاريخ العضوية :
                                                <br>
                                                {{$beneficiary->start_date}}
                                            </li>
                                            <li class="list-group-item">
                                                تاريخ الانتهاء :
                                                <br>
                                                {{$beneficiary->end_date}}
                                            </li>
                                            <li class="list-group-item">
                                                {!! SimpleSoftwareIO\QrCode\Facades\QrCode::size(150)->generate(Request::url()); !!}
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div  data-aos="fade-up" data-aos-delay="1000" class="row mt-4">
                            <div class="row name">
                                <div class="col-lg-12">
                                    <div class="text-center">
                                        <ul class="social_links">
                                            @if(!empty($informations->facebook))
                                                <li>
                                                    <a href="{{$informations->facebook}}" style="color: #0588cb;">
                                                        <i class="fab fa-facebook-square"></i>
                                                    </a>
                                                </li>
                                            @endif

                                            @if(!empty($informations->instagram))
                                                <li>
                                                    <a href="{{$informations->instagram}}"
                                                       style="color: mediumvioletred;">
                                                        <i class="fab fa-instagram-square"></i>
                                                    </a>
                                                </li>
                                            @endif

                                            @if(!empty($informations->twitter))
                                                <li>
                                                    <a href="{{$informations->twitter}}" style="color: #1DA1F2;">
                                                        <i class="fab fa-twitter-square"></i>
                                                    </a>
                                                </li>
                                            @endif

                                            @if(!empty($informations->snapchat))
                                                <li>
                                                    <a href="{{$informations->snapchat}}" style="color: orange;">
                                                        <i class="fab fa-snapchat-square"></i>
                                                    </a>
                                                </li>
                                            @endif
                                            @if(!empty($informations->telegram))
                                                <li>
                                                    <a href="{{$informations->telegram}}" style="color: #28A8E9;">
                                                        <i class="fab fa-telegram"></i>
                                                    </a>
                                                </li>
                                            @endif
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="row name">
                                <div class="col-lg-12">
                                    <div class="text-center">
                                        <p>
                                            جميع الحقوق محفوظة -- {{$settings->arabic_name}} -
                                            {{date('Y')}}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End Features Section -->
    </main><!-- End #main -->
@endsection
<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
<script>
    $(document).ready(function () {

    });
</script>
