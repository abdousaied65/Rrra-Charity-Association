<!DOCTYPE html>
<html>
<head>
    <title> طباعة طلبات تجديد العضويات </title>
    <meta charset="utf-8"/>
    <link href="{{asset('/admin-assets/css/bootstrap.min.css')}}" rel="stylesheet"/>
    <style type="text/css" media="screen">
        @font-face {
            font-family: 'Cairo';
            src: url({{asset('fonts/Cairo.ttf')}});
        }

        * {
            color: #000 !important;
            font-size: 14px !important;
            font-weight: bold !important;
        }

        .img-footer {
            width: 100% !important;
            height: 120px !important;
            max-height: 120px !important;

        }

        body, html {
            font-family: 'Cairo' !important;
        }

        .table-container {
            width: 70%;
            margin: 10px auto;
        }

        .no-print {
            position: fixed;
            bottom: 0;
            right: 10px;
            border-radius: 0;
            z-index: 9999;
        }
    </style>
    <style type="text/css" media="print">
        body, html {
            font-family: 'Cairo' !important;
        }

        * {
            font-size: 14px !important;
            color: #000 !important;
            font-weight: bold !important;
        }

        .img-footer {

            width: 100% !important;
            height: 120px !important;
            max-height: 120px !important;

        }

        .no-print, .noprint {
            display: none;
        }
    </style>
</head>
<body style="background: #fff">
<table class="table table-bordered table-container">
    <tbody>
    <tr>
        <td class="text-center">
            <img style="width: 100px!important; height: 100px!important;" src="{{asset($settings->logo)}}" alt="">
        </td>
    </tr>
    <tr>
        <td>
            <table dir="rtl" class="table table-condensed display table-bordered text-center">
                <thead>
                <tr>
                    <th class="border-bottom-0 text-center">#</th>
                    <th class="border-bottom-0 text-center">اسم العضو</th>
                    <th class="border-bottom-0 text-center">مدة التجديد</th>
                    <th class="border-bottom-0 text-center"> المبلغ </th>
                    <th class="border-bottom-0 text-center"> نوع العضوية </th>
                    <th class="border-bottom-0 text-center">حالة الطلب</th>
                    <th class="border-bottom-0 text-center">تاريخ الطلب</th>
                </tr>
                </thead>
                <tbody>
                @php
                    $i = 0;
                @endphp

                @foreach ($requests as $request)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $request->beneficiary->first_name_ar." ".$request->beneficiary->second_name_ar." ".$request->beneficiary->third_name_ar." ".$request->beneficiary->fourth_name_ar }}</td>
                        <td>
                            @if($request->period == "1")
                                سنة
                            @elseif($request->period == "2")
                                سنتين
                            @elseif($request->period == "3")
                                3 سنوات
                            @endif
                        </td>
                        <td>{{$request->amount}}</td>
                        <td>{{$request->membershipType->membership_type}}</td>
                        <td>
                            {{$request->status}}
                        </td>
                        <td>
                            {{date('Y-m-d',strtotime($request->created_at))}}
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>
<button onclick="window.print();" class="no-print btn btn-lg btn-success text-white">اضغط للطباعة</button>
<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
</body>
</html>
