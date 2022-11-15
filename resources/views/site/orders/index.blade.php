@extends('site.dash_layouts.app-main')
<style>
    .form-control {
        height: 45px !important;
    }

    .section-title {
        margin-top: 40px !important;
    }

    a.btn-link, a.btn-link:hover, a.btn-link:visited, a.btn-link:link, a.btn-link:active {
        color: dodgerblue !important;
        text-decoration: none !important;
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
                    <li> البحث فى الطلبات السابقة</li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs Section -->

    <div id="content" class="section-padding">
        <div class="container" data-aos="fade-up" style="background: #fafafa; border: 1px solid #fafafa;
                box-shadow: 0 0 5px #fafafa;">
            <div class="alert alert-danger alert-md text-center">
                <a class="text-center" href="{{route('orders.create')}}">
                    اضغط هنا لتقديم طلب جديد
                </a>
            </div>
            @if(!isset($orders) || $orders->isEmpty())
                <div class="section-title">
                    <h2>البحث فى الطلبات السابقة</h2>
                    <p></p>
                </div>

                @if (count($errors) > 0)
                    <div class="alert alert-danger" dir="rtl">
                        <strong>الاخطاء :</strong>
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                @if (session('success'))
                    <div class="alert alert-success text-center" style="margin-top: 30px;">
                        {{ session('success') }}
                    </div>
                @endif
                @if (session('error'))
                    <div class="alert alert-danger text-center" style="margin-top: 30px;">
                        {{ session('error') }}
                    </div>
                @endif
                <form dir="rtl" action="{{route('orders.search')}}" method="post"
                      enctype="multipart/form-data">
                    {{csrf_field()}}
                    <p class="mb-3">
                        <i class="fa fa-arrow-left ml-3"></i>
                        لاستعراض الطلبات الخاصة بك يرجى البحث بالبريد الالكترونى او رقم الجوال
                    </p>
                    <div class="row mb-3 mt-3 justify-content-center">
                        <div class="col-md-4">
                            <label> البريد الالكترونى او رقم الجوال <span class="text-danger">*</span></label>
                            <input value="{{old('identify')}}" required type="text" dir="ltr" class="form-control"
                                   name="identify"/>
                            <span class="text-danger">
                                رقم الجوال يجب ان يكون 9665xxxxxx
                            </span>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center mt-5 mb-5">
                        <button class="btn btn-success pd-x-20" type="submit">
                            <i class="fa fa-search"></i>
                            بحث
                        </button>
                    </div>
                </form>
            @endif
            <div class="results mt-5 mb-3 text-center" dir="rtl">
                @if(isset($orders) && !$orders->isEmpty())
                    <h2 class="mt-5 mb-2">الطلبات السابقة</h2>
                    <hr class="mb-5" style="width: 20%;">
                    <table class="table table-bordered text-center">
                        <thead style="border:1px solid #11723A; color: #fff;background: #11723A;">
                        <tr>
                            <th class="border-bottom-0 text-center">رقم الطلب</th>
                            <th class="border-bottom-0 text-center">تاريخ الطلب</th>
                            <th class="border-bottom-0 text-center"> الاسم</th>
                            <th class="border-bottom-0 text-center"> الجنسية</th>
                            <th class="border-bottom-0 text-center"> نوع الطلب</th>
                            <th class="border-bottom-0 text-center"> حالة الطلب</th>
                        </tr>
                        </thead>
                        <tbody style="border:1px solid #11723A; color: #11723A;background: #fff;">
                        <?php $i = 0; ?>
                        @foreach($orders as $order)
                            <tr>
                                <td>{{ ++$i }}</td>
                                <td>
                                    {{$order->created_at}}
                                </td>
                                <td>{{ $order->first_name." ".$order->second_name." ".$order->third_name." ".$order->fourth_name }}</td>
                                <td>{{ $order->nationality->nationality }}</td>
                                <td>{{ $order->orderType->order_type }}</td>
                                <td>
                                    @if($order->Status == 'قيد المراجعة')
                                        <span class="badge badge-warning">
                                                    قيد المراجعة
                                                </span>
                                    @elseif($order->Status == 'تمت الموافقة')
                                        <span class="badge badge-success">
                                                    تمت الموافقة
                                                </span>
                                    @elseif($order->Status == 'مرفوض')
                                        <span class="badge badge-danger">
                                                     مرفوض
                                                </span>
                                    @endif
                                </td>

                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                @endif
            </div>
        </div>
    </div>
@endsection
