@extends('site.layouts.app-main')
<link rel="stylesheet" href="{{asset('assets/css/owl.carousel.min.css')}}">
<link rel="stylesheet" href="{{asset('assets/css/owl.theme.default.min.css')}}/">
<style>
    .carousel-caption {
        background: rgba(255, 255, 255, 0.8);
    }

    .css-14dz7n .wrapper {
        background: #11723A !important;
    }

    /*
    #11723A
    #3AB54A
    */
    .hyper {
        border-radius: 0;
        padding: 10px 5px;
        background: #11723A !important;
        height: 50px;
        line-height: 25px;
        font-size: 15px;
        width: 100%;
    }

    #hero {
        background: #fff !important;
    }

    @media only screen and (min-width: 992px) {
        #hero {
            padding-top: 100px !important;
        }
    }

    @media (max-width: 992px) {
        #hero {
            margin-top: 40px !important;
            padding-bottom: 100px !important;
            height: auto !important;
        }

        .img-special {
            width: 50% !important;
            height: auto !important;
            text-align: center !important;
            align-content: center;
            align-items: center;
        }

        .item h2 {
            font-size: 22px !important;
        }

        .item p {
            font-size: 14px !important;
        }

        .social_links {
            margin-top: 10px !important;
            margin-bottom: 100px !important;

        }

        .social_links li {
            display: inline !important;
            float: right !important;
            margin-left: 5px !important;
        }

        .hyper {
            border-radius: 0;
            padding: 10px 5px;
            background: #11723A !important;
            height: 50px;
            line-height: 25px;
            font-size: 15px;
            width: 100%;
        }
    }

    .owl-nav {
        margin: 0 !important;
        position: relative;
        align-items: center;
        text-align: center;
    }

    .owl-nav button.owl-prev, .owl-nav button.owl-next {
        font-size: 35px !important;
        color: #fff !important;
        background: #11723A !important;
        width: 80px !important;
        height: auto !important;
        text-align: center !important;
        padding: 15px !important;
        line-height: 2 !important;
        position: relative !important;
        margin: 15px auto !important;
    }

    .owl-nav button.owl-prev:after {
        content: '|';
        right: -1px;
        color: #fff;
        top: 50%;
        transform: translateY(-50%);
        position: absolute;
        font-size: 20px;
    }

    .icon-box {
        height: 400px !important;
    }

    .item h2 {
        margin: 30px;
        font-size: 35px;
    }

    .item p {
        margin: 10px;
        line-height: 2;
        font-size: 18px;
    }

    ul.social_links {
        list-style: none;
    }

    ul.social_links li {
        width: 50px;
        height: 50px;
        border: 1px solid #0588cb;
        border-radius: 100%;
        line-height: 35px !important;
        padding: 10px;
        text-align: center !important;
        margin-top: 20px;
    }

    ul.social_links li a {
        text-align: center !important;
        margin-top: 15px;
        line-height: 35px !important;
        font-size: 25px;
        color: #3AB54A;
    }

    .buttons a {
        margin-top: 20px;
    }

</style>
@section('content')
    <section id="hero">
        <div class="container-fluid">
            <div class="row" dir="rtl">
                <div class="col-lg-2 col-sm-12 mt-5 buttons" data-aos="fade-up" data-aos-delay="200" dir="rtl">
                    <div class="row">
                        <div class="col-lg-12 col-sm-6 col-xs-6">
                            <a href="{{route('beneficiary.register')}}" type="button"
                               class="btn btn-success btn-md hyper">
                                <i class="fa fa-plus"></i>
                                <span>
                            العضويات
                        </span>
                            </a>
                        </div>
                        <div class="col-lg-12 col-sm-6 col-xs-6">
                            <a href="{{route('volunteers.create')}}" type="button" class="btn btn-success btn-md hyper">
                                <i class="fa fa-plus"></i>
                                <span>
                            المتطوعين
                        </span>
                            </a>
                        </div>
                        <div class="col-lg-12 col-sm-6 col-xs-6">
                            <a href="{{route('orders.create')}}" type="button" class="btn btn-success btn-md hyper">
                                <i class="fa fa-plus"></i>
                                <span>
                            الطلبات
                        </span>
                            </a>
                        </div>
                        <div class="col-lg-12 col-sm-6 col-xs-6">
                            <a href="{{route('donation')}}" type="button" class="btn btn-success btn-md hyper">
                                <i class="fa fa-plus"></i>
                                <span>
                            التبرع
                        </span>
                            </a>
                        </div>
                    </div>


                </div>
                <div class="col-lg-9" data-aos="fade-up" data-aos-delay="400" dir="ltr">
                    <div class="owl-carousel owl-theme">
                        @if(isset($sliders) && !$sliders->isEmpty())
                            @foreach($sliders as $slider)
                                <div class="item active">
                                    <div class="row">
                                        <div class="col-lg-5 col-sm-12 text-center">
                                            <img class="img-special" src="{{asset($slider->image_path)}}" alt="">
                                        </div>
                                        <div class="col-lg-7 col-sm-12 text-center" dir="rtl">
                                            <h2>
                                                {{$slider->title}}
                                            </h2>
                                            <p>
                                                {{$slider->text}}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-5 col-sm-12 text-center">
                                        <img class="img-special" src="{{asset('assets/img/1.png')}}" alt="">
                                    </div>
                                    <div class="col-lg-7 col-sm-12 text-center" dir="rtl">
                                        <h2>
                                            من نحن
                                        </h2>
                                        <p>
                                            جمعية أهلية تعنى بأعضائها من المتقاعدين من الجنسين ومظلة ترعى مصالحهم وتسوق
                                            خبراتهم وتسعى لتحسين أوضاعهم من خلال ما تقدمه من برامج وأنشطة ومبادرات
                                            اجتماعية
                                            وثقافية وترفيهية تعزز الصحة وتوفر بيئة اجتماعية تليق بهم وتوثق الصلات فيما
                                            بينهم
                                            لتحقيق جودة الحياة وفقاً لرؤية المملكة 2030 وبرنامج التحول الوطني.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-5 col-sm-12 text-center">
                                        <img class="img-special" src="{{asset('assets/img/2.png')}}" alt="">
                                    </div>
                                    <div class="col-lg-7 col-sm-12 text-center" dir="rtl">
                                        <h2>
                                            من نحن
                                        </h2>
                                        <p>
                                            جمعية أهلية تعنى بأعضائها من المتقاعدين من الجنسين ومظلة ترعى مصالحهم وتسوق
                                            خبراتهم وتسعى لتحسين أوضاعهم من خلال ما تقدمه من برامج وأنشطة ومبادرات
                                            اجتماعية
                                            وثقافية وترفيهية تعزز الصحة وتوفر بيئة اجتماعية تليق بهم وتوثق الصلات فيما
                                            بينهم
                                            لتحقيق جودة الحياة وفقاً لرؤية المملكة 2030 وبرنامج التحول الوطني.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @endif

                    </div>
                </div>
                <div class="col-lg-1 col-sm-12" data-aos="fade-up" data-aos-delay="600" dir="rtl">
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
                                <a href="{{$informations->instagram}}" style="color: mediumvioletred;">
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
    </section>
@endsection

<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
<script src="{{asset('assets/js/owl.carousel.min.js')}}"></script>
<script>
    $(document).ready(function () {
        $('.owl-carousel').owlCarousel({
            loop: true,
            items: 1,
            nav: true,
            animateOut: 'fadeOut',
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true
        });
    });
</script>
