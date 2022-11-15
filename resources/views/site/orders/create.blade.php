@extends('site.dash_layouts.app-main')
<style>
    .form-control {
        height: 45px !important;
    }

    .section-title {
        margin-top: 40px !important;
    }

</style>
@section('content')
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs" style="margin-top: 130px!important;">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center" style="float: right;">
                <ol dir="rtl" class="">
                    <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                    <li> تقديم طلب جديد </li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs Section -->

    <div id="content" class="section-padding">
        <div class="container" data-aos="fade-up" style="background: #fafafa; border: 1px solid #fafafa;
                box-shadow: 0 0 5px #fafafa;">
            <div class="alert alert-danger alert-md text-center">
                <a class="text-center" href="{{route('orders.index')}}">
                    لديك طلبات سابقة ؟ يرجى الضغط هنا للبحث فى طلباتك السابقة
                </a>
            </div>
            <div class="section-title">
                <h2> تقديم الطلب </h2>
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
                <div class="alert alert-success  text-center" style="margin-top: 30px;">
                    {{ session('success') }}
                </div>
            @endif
            <form dir="rtl" action="{{route('orders.store','test')}}" method="post"
                  enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="row m-t-3 mb-3">
                    <div class="col-md-4 pull-right">
                        <label> اسم صاحب الطلب <span class="text-danger">*</span></label>
                        <input value="{{old('first_name')}}" required type="text" class="form-control"
                               name="first_name"/>
                    </div>
                    <div class="col-md-4 pull-right">
                        <label> اسم الاب <span class="text-danger">*</span></label>
                        <input value="{{old('second_name')}}" required type="text" class="form-control"
                               name="second_name"/>
                    </div>
                    <div class="col-md-4 pull-right">
                        <label> اسم الجد <span class="text-danger">*</span></label>
                        <input value="{{old('third_name')}}" required type="text" class="form-control"
                               name="third_name"/>
                    </div>
                </div>
                <div class="row m-t-3 mb-3">

                    <div class="col-md-4 pull-right">
                        <label> اسم العائلة <span class="text-danger">*</span></label>
                        <input value="{{old('fourth_name')}}" required type="text" class="form-control"
                               name="fourth_name"/>
                    </div>
                    <div class="col-md-4 pull-right">
                        <label> رقم الجوال
                            <span class="text-danger">( رقم الجوال لابد ان يكون 9665xxxxxx ) </span>
                        </label>
                        <input value="{{old('phone_number')}}" required dir="ltr" type="number" min="1"
                               maxlength="12" oninput="this.value=this.value.slice(0,this.maxLength)"
                               class="form-control" name="phone_number"/>
                    </div>
                    <div class="col-md-4 pull-right">
                        <label> البريد الالكترونى <span class="text-danger">*</span></label>
                        <input value="{{old('email')}}" required dir="ltr" type="email" class="form-control"
                               name="email"/>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="row m-t-3 mb-3">
                    <div class="col-md-4 pull-right">
                        <label class="form-label"> الجنسية </label>
                        <select name="nationality_id" required class="w-100 js-example-basic-single">
                            @foreach($nationalities as $nationality)
                                <option
                                    @if(old('nationality_id') == $nationality->id)
                                    selected
                                    @endif
                                    value="{{$nationality->id}}">{{$nationality->nationality}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="col-md-4 pull-right">
                        <label class="form-label"> نوع الطلب </label>
                        <select name="order_type_id" required class="w-100 js-example-basic-single">
                            @foreach($order_types as $order_type)
                                <option
                                    @if(old('order_type_id') == $order_type->id)
                                    selected
                                    @endif
                                    value="{{$order_type->id}}">{{$order_type->order_type}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="form-group">
                    <div class="form-check">
                        <p style="color: #222!important;">
                            <i class="bx bx-chevron-left"></i>
                            عند تقديم الطلب فإنك توافق على
                            <a data-bs-toggle="modal" href="javascript:;" data-bs-target="#exampleModal20">
                                شروط الاستخدام
                            </a>
                            و
                            <a data-bs-toggle="modal" href="javascript:;" data-bs-target="#exampleModal30">
                                سياسة الخصوصية
                            </a>
                        </p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 text-center mt-5 mb-5">
                    <button class="btn btn-success pd-x-20" type="submit">
                        <i class="fa fa-arrow-right"></i>
                        تقديم الطلب
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
