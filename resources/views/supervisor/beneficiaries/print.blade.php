<!DOCTYPE html>
<html>
<head>
    <title> طباعة العضويات </title>
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
            width: 80%;
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
                    <th class="border-bottom-0 text-center">رقم الجوال</th>
                    <th class="border-bottom-0 text-center"> رقم الهوية الوطنية</th>
                    <th class="border-bottom-0 text-center"> نوع العضوية</th>
                    <th class="border-bottom-0 text-center"> المؤهل</th>
                    <th class="border-bottom-0 text-center"> الجنس</th>
                    <th class="border-bottom-0 text-center"> تاريخ العضوية</th>
                    <th class="border-bottom-0 text-center"> تاريخ الانتهاء</th>
                    <th class="border-bottom-0 text-center"> الحالة</th>
                    <th class="border-bottom-0 text-center"> البريد الالكترونى</th>
                </tr>
                </thead>
                <tbody>
                @php
                    $i = 0;
                @endphp
                @foreach ($beneficiaries as $beneficiary)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $beneficiary->first_name_ar." ".$beneficiary->second_name_ar." ".$beneficiary->third_name_ar." ".$beneficiary->fourth_name_ar }}</td>
                        <td>{{ $beneficiary->phone_number }}</td>
                        <td>{{ $beneficiary->record }}</td>
                        <td>{{ $beneficiary->membershipType->membership_type }}</td>
                        <td>{{ $beneficiary->qualification->qualification }}</td>
                        <td>
                            @if($beneficiary->gender == "male")
                                ذكر
                            @else
                                أنثى
                            @endif
                        </td>
                        <td>{{ $beneficiary->start_date }}</td>
                        <td>{{ $beneficiary->end_date }}</td>
                        <td>{{ $beneficiary->Status }}</td>
                        <td>{{ $beneficiary->email }}</td>
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
