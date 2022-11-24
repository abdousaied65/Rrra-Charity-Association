@extends('site.dash_layouts.app-main')
<style>
    input.form-control {
        height: 45px !important;
    }

    label {
        color: #444;
    }

    .usercontent h4 {
        color: #11723A !important;
    }

    .navdashboard ul li a, .navdashboard ul li a i {
        color: #11723A !important;
        background: #fff !important;
        font-size: 15px !important;
    }

    .navdashboard ul li a.active, .navdashboard ul li a.active i {
        color: #fff !important;
        background: #11723A !important;
    }

    span.badge {
        padding: 10px !important;
    }

</style>
@section('content')
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs" style="margin-top: 130px!important;">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center" style="float: right;">
                <ol dir="rtl" class="">
                    <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                    <li> لوحة تحكم العضو</li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs Section -->


    <div id="content" class="section-padding">
        <div class="container-fluid">
            <div class="row" dir="rtl">
                <div class="col-lg-12">
                    @if (count($errors) > 0)
                        <div class="alert alert-danger alert-dismissible fade show text-center">
                            <strong>الاخطاء :</strong>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </div>
                <div class="col-lg-12">
                    @if (session('success'))
                        <div class="alert alert-success alert-dismissible fade show text-center">
                            {{ session('success') }}
                        </div>
                    @endif
                </div>
                <div class="col-lg-12">
                    @if (session('status'))
                        <div class="alert text-center alert-dismissible fade show alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                </div>
                <div class="col-sm-12 col-md-4 col-lg-3">
                    <?php
                    $end_date = $beneficiary->end_date;
                    $now = time(); // or your date as well
                    $your_date = strtotime($end_date);
                    $datediff = $your_date - $now;
                    $rest_days = round($datediff / (60 * 60 * 24));

                    $start_date = $beneficiary->start_date;
                    $start_date = strtotime($start_date);
                    $end_date = $beneficiary->end_date;
                    $end_date = strtotime($end_date);

                    $datediff = $end_date - $start_date;
                    $all_days = round($datediff / (60 * 60 * 24));
                    if ($rest_days <= 0) {
                        $rest_days = 0;
                        $percent = 0;
                    } else {
                        $percent = ($rest_days / $all_days) * 100;
                    }
                    ?>
                    <aside>
                        <div class="sidebar-box">
                            <div class="user">
                                <div class="progress-pie-chart" data-percent="{{$percent}}">
                                    <div class="ppc-progress">
                                        <div class="ppc-progress-fill"></div>
                                    </div>
                                    <div class="ppc-percents" dir="rtl">
                                        <div class="pcc-percents-wrapper">
                                            <span>
                                                {{$rest_days}}
                                                يوم
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <h6 class="mt-3" dir="rtl">
                                    <i class="fa fa-clock-o"></i>
                                    المدة المتبقية على انتهاء اشتراكك
                                </h6>
                                <hr class="">
                                <div class="usercontent">
                                    <h3>
                                        {{$beneficiary->first_name_ar." ".$beneficiary->second_name_ar." ".$beneficiary->third_name_ar." ".$beneficiary->fourth_name_ar}}
                                    </h3>
                                    <h4>
                                        عضو
                                        {{$beneficiary->membershipType->membership_type}}
                                    </h4>
                                </div>
                            </div>
                            <nav class="navdashboard">
                                <ul>
                                    <li>
                                        <a href="{{route('beneficiary.home')}}"><i
                                                class="fa fa-dashboard"></i> لوحة التحكم </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('beneficiary.download.pdf') }}"
                                           onclick="event.preventDefault();document.getElementById('print-form').submit();">
                                            <i class="fa fa-print"></i>
                                            الحصول على بطاقة عضو
                                        </a>
                                        <form target="_blank" id="print-form"
                                              action="{{ route('beneficiary.download.pdf') }}" method="get"
                                              style="display: none;">
                                        </form>
                                    </li>
                                    <li>
                                        <a data-bs-toggle="modal" href="javascript:;"
                                           data-bs-target="#exampleModal">
                                            <i class="fa fa-recycle"></i>
                                            طلب تجديد العضوية
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{route('renewal.requests')}}">
                                            <i class="fa fa-list-alt"></i>
                                            طلبات تجديد العضوية السابقة
                                        </a>
                                    </li>
                                    <li>
                                        <a class="active" href="{{route('membership.details')}}">
                                            <i class="fa fa-list-alt"></i>
                                            بيانات العضوية
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('beneficiary.logout') }}"
                                           onclick="event.preventDefault();document.getElementById('logout').submit();">
                                            <i class="fa fa-power-off"></i>
                                            تسجيل الخروج
                                        </a>
                                        <form id="logout" action="{{ route('beneficiary.logout') }}" method="post"
                                              style="display: none;">
                                            @csrf
                                            @method('POST')
                                        </form>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </aside>
                </div>
                <div class="col-sm-12 col-md-8 col-lg-9">
                    <div class="page-content">
                        <div class="inner-box">
                            <div class="dashboard-box text-center">
                                <h2 class="dashbord-title">بيانات العضوية</h2>
                            </div>
                            <div class="p-3 mt-3">
                                <table class="table table-bordered table-condensed table-striped">
                                    <thead>
                                    <tr>
                                        <th class="text-center">
                                            نوع العضوية
                                        </th>
                                        <th class="text-center">
                                            رقم العضوية
                                        </th>
                                        <th class="text-center">
                                            الأيام المتبقية
                                        </th>
                                        <th class="text-center">
                                            تاريخ الانتهاء
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="text-center">
                                        <td>
                                            {{$beneficiary->membershipType->membership_type}}
                                        </td>
                                        <td>
                                            {{$beneficiary->id}}
                                        </td>
                                        <td>{{$rest_days}} يوم</td>
                                        <td>
                                            {{$beneficiary->end_date}}
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title w-100" id="exampleModalLabel">
                        طلب تجديد العضوية
                    </h5>
                    <button type="button" class="btn btn-default btn-md btn-close" data-bs-dismiss="modal"
                            aria-label="Close">
                        <i class="fa fa-close"></i>
                    </button>
                </div>
                <div class="modal-body text-right">
                    <form dir="rtl" id="myForm" action="{{route('renewal.request')}}" enctype="multipart/form-data"
                          method="post">
                        @csrf
                        @method('POST')
                        <div class="form-group">
                            <label class="d-block" for=""> نوع العضوية </label>
                            <select name="membership_type_id" style="width: 100%!important;" id="membership_type_id"
                                    required
                                    class="w-100 js-example-basic-single">
                                <option value="">اختر</option>
                                @foreach($membership_types as $membership_type)
                                    <option
                                        @if($beneficiary->membershipType->id == $membership_type->id)
                                        selected
                                        @endif
                                        value="{{$membership_type->id}}">{{$membership_type->membership_type}}
                                        ( {{$membership_type->price}} ريال )
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="d-block" for=""> مدة التجديد </label>
                            <select name="period" style="width: 100%!important;" id="period" required
                                    class="w-100 js-example-basic-single">
                                <option value="">اختر</option>
                                <option selected value="1">سنة</option>
                                <option value="2">سنتان</option>
                                <option value="3">3 سنوات</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="d-block" for=""> المبلغ </label>
                            <input type="number" value="{{$beneficiary->membershipType->price}}" name="amount" required id="amount" dir="ltr" class="form-control"
                                   readonly/>
                        </div>
                    </form>
                </div>
                <div class="modal-footer w-100">
                    <button type="button" class="btn btn-danger" dir="ltr" data-bs-dismiss="modal">اغلاق</button>
                    <button dir="rtl" form="myForm" type="submit" class="btn btn-md btn-success">
                        <i class="fa fa-recycle"></i>
                        ارسال الطلب
                    </button>
                </div>
            </div>
        </div>
    </div>

@endsection
<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
<script>
    $(document).ready(function () {
        $('#period,#membership_type_id').on('change', function () {
            let period = $('#period').val();
            let membership_type_id = $('#membership_type_id').val();
            let beneficiary_id = $('#beneficiary_id').val();
            $.post('/beneficiary/get-amount-total', {
                "_token": "{{csrf_token()}}",
                beneficiary_id: beneficiary_id,
                period: period,
                membership_type_id:membership_type_id,
            }, function (data) {
                let amount = data.amount;
                $('#amount').val(amount);
            });
        });
    });
</script>
