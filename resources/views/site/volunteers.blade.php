@extends('site.dash_layouts.app-main')
<style>
    .form-control {
        height: 45px !important;
    }

    .section-title {
        margin-top: 40px !important;
    }

    .input-group-prepend {
        width: 40px;
        font-size: 15px;
        text-align: center;
        padding-top: 10px;
        border-radius: 0px !important;
        height: 45px;
        background: #ddd;
    }

</style>
@section('content')
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs" style="margin-top: 130px!important;">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center" style="float: right;">
                <ol dir="rtl" class="">
                    <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                    <li>
                        تقديم طلب تطوع
                    </li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="login section-padding contact" dir="rtl">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="login-form login-area">
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <strong>الاخطاء :</strong>
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        @if (session('success'))
                            <div class="alert alert-success text-center" role="alert">
                                {{ session('success') }}
                            </div>
                        @endif
                        <h3 style="border-radius: 0;" class="alert alert-md alert-info text-center mb-4">
                            تقديم طلب تطوع
                        </h3>
                        <form data-aos="fade-up" data-aos-delay="200" id="myForm" enctype="multipart/form-data" class="login-form" method="POST"
                              action="{{route('volunteers.store')}}">
                            @csrf
                            @method('POST')
                            <input type="hidden" name="start_date" value="{{date('Y-m-d')}}"/>
                            <input type="hidden" name="end_date" value="{{date('Y-m-d')}}"/>
                            <input type="hidden" name="Status" value="قيد المراجعة"/>
                            <input value="متطوع" required class="form-control" name="role_name" type="hidden">
                            <div class="row m-t-3 mb-3">
                                <div class="parsley-input col-md-4" id="fnWrapper">
                                    <label class="d-block mb-1"> الإسم الأول <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20" value="{{old('first_name')}}"
                                           data-parsley-class-handler="#lnWrapper" name="first_name" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-4" id="fnWrapper">
                                    <label class="d-block mb-1"> إسم الأب <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20" value="{{old('second_name')}}"
                                           data-parsley-class-handler="#lnWrapper" name="second_name" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-4" id="fnWrapper">
                                    <label class="d-block mb-1"> إسم الجد <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20" value="{{old('third_name')}}"
                                           data-parsley-class-handler="#lnWrapper" name="third_name" required=""
                                           type="text">
                                </div>
                            </div>
                            <div class="row m-t-3 mb-3">

                                <div class="parsley-input col-md-4" id="fnWrapper">
                                    <label class="d-block mb-1"> إسم العائلة <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20" value="{{old('fourth_name')}}"
                                           data-parsley-class-handler="#lnWrapper" name="fourth_name" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="d-block mb-1"> البريد الإلكترونى : <span class="text-danger">*</span></label>
                                    <input value="{{old('email')}}" class="form-control  mg-b-20"
                                           style="text-align: left;direction:ltr;"
                                           data-parsley-class-handler="#lnWrapper" name="email" required=""
                                           type="email">
                                </div>
                                <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="d-block mb-1"> رقم الجوال
                                        <span class="text-danger">( رقم الجوال لابد ان يكون 9665xxxxxx ) </span>
                                    </label>
                                    <input value="{{old('phone_number')}}" class="form-control  mg-b-20"
                                           style="text-align: left;direction:ltr;" maxlength="12"
                                           oninput="this.value=this.value.slice(0,this.maxLength)"
                                           name="phone_number" required=""
                                           type="number" min="1">
                                </div>
                            </div>
                            <div class="row m-t-3 mb-3">

                                <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="d-block mb-1"> رقم الهوية الوطنية
                                        <span class="text-danger">( رقم الهوية الوطنية لابد ان يكون 10 خانات ) </span>
                                    </label>
                                    <input value="{{old('record')}}" class="form-control  mg-b-20"
                                           style="text-align: left;direction:ltr;" maxlength="10"
                                           oninput="this.value=this.value.slice(0,this.maxLength)"
                                           name="record" required=""
                                           type="number" min="1">
                                </div>
                                <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label  class="d-block mb-1"> مجال التطوع </label>
                                    <select name="field_id" required class="w-100 js-example-basic-single">
                                        @foreach($fields as $field)
                                            <option
                                                @if(old('field_id') == $field->id)
                                                selected
                                                @endif
                                                value="{{$field->id}}">{{$field->field}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="form-check">
                                    <p style="color: #222!important;">
                                        <i class="bx bx-chevron-left"></i>
                                        عند تقديم الطلب  فإنك توافق على
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
                            <div class="text-center">
                                <button class="btn btn-common log-btn"> تقديم طلب تطوع جديد</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
    <script>
        $(".showPassword").click(function () {
            if ($("#password").attr("type") == "password") {
                $("#password").attr("type", "text");
                $(".showPassword").find('i.fa').toggleClass('fa-eye fa-eye-slash');
            } else {
                $("#password").attr("type", "password");
                $(".showPassword").find('i.fa').toggleClass('fa-eye fa-eye-slash');
            }
        });
        $(".showPassword2").click(function () {
            if ($("#confirm-password").attr("type") == "password") {
                $("#confirm-password").attr("type", "text");
                $(".showPassword2").find('i.fa').toggleClass('fa-eye fa-eye-slash');
            } else {
                $("#confirm-password").attr("type", "password");
                $(".showPassword2").find('i.fa').toggleClass('fa-eye fa-eye-slash');
            }
        });
    </script>
@endsection
