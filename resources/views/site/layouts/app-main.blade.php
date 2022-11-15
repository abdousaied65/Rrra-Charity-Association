<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>جمعية المتقاعدين بمنطقة الرياض</title>
    <!-- Favicons -->
    <link href="{{asset('assets/img/favicon.png')}}" rel="icon">
    @include('site.layouts.common.css_links')
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
        p{
            text-align: justify !important;text-justify: inter-word!important;
        }
    </style>
</head>
<body>
@include('site.layouts.common.header')
@yield('content')

<a href="#" style="position:fixed; bottom: 10px; left: 10px;"
   class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>
@include('site.layouts.common.js_links')
</body>
</html>
