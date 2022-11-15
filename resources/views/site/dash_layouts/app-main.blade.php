<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="rtl">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="{{asset($settings->favicon)}}" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>{{$settings->arabic_name}}</title>
    @include('site.dash_layouts.common.css_links')
    <style>
        @font-face {
            font-family: 'Cairo';
            src: url({{asset('assets/fonts/Cairo.ttf')}});
        }
        .form-control-lg{
            font-size: inherit!important;
            height: 50px!important;
        }

        nav#navbar ul li a {
            font-size: 16px !important;
            color: #000;
            font-weight: bold;
        }

        h1, h2, h3, h4, h5, h6 {
            font-family: 'Cairo' !important;
        }

        body, html {
            font-family: 'Cairo' !important;
        }
        .icon-box{
            min-height: 260px!important;
        }

        .icon_box {
            border-bottom: 4px solid #fff;
        }

        .footer-ul li {
            margin-top: 15px;
        }

        .footer-ul li a {
            color: #ddd !important;
        }

        .footer-ul li i {
            color: #fff !important;
            margin-left: 15px;
        }

        .ul-services {
            list-style: none;
        }

        ul.ul-services li {
            margin-top: 30px;
            color: #000;
            font-size: 17px;
        }

        ul.ul-services li i {
            font-size: 20px !important;
            color: #fff;
            margin-right: 20px;
        }

        @font-face {
            font-family: 'Cairo';
            src: url("{{asset('fonts/Cairo.ttf')}}");
        }
        span.text-danger{
            font-size: 12px!important;
        }

        h1, h2, h3, h4, h5, h6, p, span, div, table {
            font-family: 'Cairo' !important;
        }

        body, html {
            font-family: 'Cairo' !important;
            font-size: 13px !important;
        }
        h4 , h4 >* ,h2 {
            color:#11723A!important;
        }
        p , p>*{
            color:#11723A !important;
        }
        .contact #myForm {
            width: 100%;
            border-top: 3px solid #11723A;
            border-bottom: 3px solid #11723A;
            padding: 30px;
            background: #fff;
            box-shadow: 0 0 24px 0 rgba(0, 0, 0, 0.12);
        }

        .contact #myForm .form-group {
            padding-bottom: 8px;
        }

        .contact #myForm .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .contact #myForm input, .contact #myForm textarea {
            border-radius: 0;
            box-shadow: none;
            font-size: 14px;
        }

        .contact #myForm input[type="text"],.contact #myForm input[type="password"],.contact #myForm input[type="number" min="1"]{
            height: 44px;
        }

        .contact #myForm textarea {
            padding: 10px 12px;
        }

        .contact #myForm button[type=submit] {
            background: #11723A;
            border: 0;
            padding: 10px 24px;
            color: #fff;
            transition: 0.4s;
            border-radius: 4px;
        }

        .contact #myForm button[type=submit]:hover {
            background: #ef7f4d;
        }

        @media only screen and (max-width: 768px) {
            #header .logo .logo_img img{
                width: 100px!important; height: 100px!important;
            }
            #hero{
                /*margin-top: 100px!important;*/
                padding-top: 1200px!important;
            }
        }
        .select2-selection__rendered {
            line-height: 45px !important; border-radius: 0!important;
        }
        .select2-container .select2-selection--single {
            height: 45px !important;border-radius: 0!important;
        }
        .select2-selection__arrow {
            height: 45px !important;border-radius: 0!important;
        }
        .select2-search__field{
            height: 40px!important;
            line-height: 40px!important;
            outline: 0!important;
        }
        p{
            text-align: justify !important;text-justify: inter-word!important;
        }
    </style>
</head>
<body itemscope>
<main>
    @include('site.dash_layouts.common.header')
    @yield('content')
    @include('site.dash_layouts.common.footer')

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>
    @include('site.dash_layouts.common.js_links')

<!-- Modal -->
    <div class="modal fade" id="exampleModal20" tabindex="-1" aria-labelledby="exampleModalLabel20" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title w-100" id="exampleModalLabel20">
                        شروط الاستخدام
                    </h5>
                    <button type="button" class="btn btn-default btn-md btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </button>
                </div>
                <div class="modal-body text-right" dir="rtl">
                    {{$informations->terms}}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">اغلاق</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="exampleModal30" tabindex="-1" aria-labelledby="exampleModalLabel30" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title w-100" id="exampleModalLabel30">
                        سياسة الخصوصية
                    </h5>
                    <button type="button" class="btn btn-default btn-md btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </button>
                </div>
                <div class="modal-body text-right" dir="rtl">
                    {{$informations->policy}}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">اغلاق</button>
                </div>
            </div>
        </div>
    </div>

</main>
</body>
</html>
