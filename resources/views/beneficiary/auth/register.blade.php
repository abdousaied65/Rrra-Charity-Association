@extends('site.dash_layouts.app-main')
<style>
    .input-group-prepend {
        width: 40px;
        font-size: 15px;
        text-align: center;
        padding-top: 10px;
        border-radius: 0 !important;
        height: 45px;
        background: #ddd;
    }

    .form-control {
        height: 45px !important;
    }

    form label, form a {
        font-size: 13px !important;
    }

    .input-group-text {
        border-radius: 0 !important;
        height: 100% !important;
    }
</style>
@section('content')
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs" style="margin-top: 130px!important;">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center" style="float: right;">
                <ol dir="rtl" class="">
                    <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                    <li> انشاء حساب عضو</li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="login contact" dir="rtl">
        <div class="container">
            <div class="row justify-content-center">
                <div class="alert alert-warning alert-md text-center mt-4 mb-4">
                    <a class="text-center" href="{{route('beneficiary.login')}}">
                        فى حالة وجود حساب .. يرجى الضغط هنا لتسجيل الدخول
                    </a>
                </div>
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
                        <h5 style="border-radius: 0;" class="alert alert-md alert-info text-center mb-4">
                            انشاء حساب عضو جديد
                        </h5>
                        <form id="myForm" enctype="multipart/form-data" class="login-form" method="POST"
                              action="{{route('beneficiary.register')}}">
                            @csrf
                            @method('POST')
                            <input type="hidden" name="start_date" value="{{date('Y-m-d')}}"/>
                            <input type="hidden" name="end_date" value="{{date('Y-m-d',strtotime('+1 year'))}}"/>
                            <input type="hidden" name="Status" value="قيد المراجعة"/>
                            <input type="hidden" name="paid" value="no"/>
                            <input value="عضو" required class="form-control" name="role_name" type="hidden">

                            <div class="row m-t-3 mb-3">
                                <div class="parsley-input col-md-3" id="fnWrapper">
                                    <label> الاسم الاول بالعربي <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20"
                                           data-parsley-class-handler="#lnWrapper" value="{{old('first_name_ar')}}"
                                           name="first_name_ar" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-3" id="fnWrapper">
                                    <label> اسم الاب بالعربي <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20"
                                           data-parsley-class-handler="#lnWrapper" value="{{old('second_name_ar')}}"
                                           name="second_name_ar" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-3" id="fnWrapper">
                                    <label> اسم الجد بالعربي <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20"
                                           data-parsley-class-handler="#lnWrapper" value="{{old('third_name_ar')}}"
                                           name="third_name_ar" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-3" id="fnWrapper">
                                    <label> اسم العائلة بالعربي <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20"
                                           data-parsley-class-handler="#lnWrapper" value="{{old('fourth_name_ar')}}"
                                           name="fourth_name_ar" required=""
                                           type="text">
                                </div>
                            </div>
                            <div class="row m-t-3 mb-3" dir="ltr">
                                <div class="parsley-input col-md-3" id="fnWrapper">
                                    <label class="float-right d-block"> الاسم الاول بالانجليزي <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20" dir="ltr"
                                           data-parsley-class-handler="#lnWrapper" value="{{old('first_name_en')}}"
                                           name="first_name_en" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-3" id="fnWrapper">
                                    <label class="float-right d-block"> اسم الاب بالانجليزي <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20" dir="ltr"
                                           data-parsley-class-handler="#lnWrapper" value="{{old('second_name_en')}}"
                                           name="second_name_en" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-3" id="fnWrapper">
                                    <label class="float-right d-block"> اسم الجد بالانجليزي <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20" dir="ltr"
                                           data-parsley-class-handler="#lnWrapper" value="{{old('third_name_en')}}"
                                           name="third_name_en" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-3" id="fnWrapper">
                                    <label class="float-right d-block"> اسم العائلة بالانجليزي <span class="text-danger">*</span></label>
                                    <input class="form-control mg-b-20" dir="ltr"
                                           data-parsley-class-handler="#lnWrapper" value="{{old('fourth_name_en')}}"
                                           name="fourth_name_en" required=""
                                           type="text">
                                </div>
                            </div>
                            <div class="row mt-3 mb-3">
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label> البريد الالكترونى : <span class="text-danger">*</span></label>
                                    <input class="form-control  mg-b-20" style="direction:ltr;" value="{{old('email')}}"
                                           data-parsley-class-handler="#lnWrapper" name="email" required=""
                                           type="email">
                                </div>
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="d-block mb-1"> رقم الجوال
                                        <span class="text-danger">( لابد ان يكون 9665xxxxxx ) </span>
                                    </label>
                                    <input value="{{old('phone_number')}}" class="form-control  mg-b-20"
                                           style="text-align: left;direction:ltr;"
                                           maxlength="12" oninput="this.value=this.value.slice(0,this.maxLength)"
                                           name="phone_number" required=""
                                           type="number" min="1">
                                </div>
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="d-block mb-1"> رقم الهوية الوطنية
                                        <span class="text-danger">(لابد ان يكون 10 خانات ) </span>
                                    </label>
                                    <input value="{{old('record')}}" class="form-control  mg-b-20"
                                           style="text-align: left;direction:ltr;"
                                           maxlength="10" oninput="this.value=this.value.slice(0,this.maxLength)"
                                           name="record" required=""
                                           type="number" min="1">
                                </div>
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label> الجنس : <span class="text-danger">*</span></label>
                                    <select required class="js-example-basic-single w-100" name="gender" id="">
                                        <option value=""> اختر الجنس </option>
                                        <option value="male">ذكر</option>
                                        <option value="female">أنثى</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row m-t-3 mb-3">
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label> كلمة المرور : <span class="text-danger">*</span></label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        <span class="input-group-text showPassword" id="basic-addon1">
                                            <i class="fa fa-eye basic-addon1"></i>
                                        </span>
                                        </div>
                                        <input id="password" type="password"
                                               class="form-control @error('password') is-invalid @enderror text-left"
                                               dir="ltr" name="password" required
                                               aria-describedby="basic-addon1">
                                    </div>
                                </div>
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label> تأكيد كلمة المرور : <span class="text-danger">*</span></label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        <span class="input-group-text showPassword2"
                                              id="basic-addon2">
                                            <i class="fa fa-eye basic-addon2"></i>
                                        </span>
                                        </div>
                                        <input id="confirm-password" type="password"
                                               class="form-control @error('password') is-invalid @enderror text-left"
                                               dir="ltr" value="{{old('password_confirmation')}}"
                                               name="password_confirmation" required
                                               aria-describedby="basic-addon2">
                                    </div>
                                </div>

                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="form-label"> جهة العمل السابقة </label>
                                    <input class="form-control  mg-b-20" style="direction:rtl;"
                                           value="{{old('employer')}}"
                                           data-parsley-class-handler="#lnWrapper" name="employer" required=""
                                           type="text">
                                </div>
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="form-label"> سنة التقاعد </label>
                                    <select required class="js-example-basic-single w-100" name="retirement_year" id="">
                                        <option value=""> اختر سنة التقاعد</option>
                                        @for($i = 1960; $i <= date('Y-m-d') ; $i++)
                                            <option @if(old('retirement_year') == $i) selected
                                                    @endif value="{{$i}}">{{$i}}</option>
                                        @endfor
                                    </select>
                                </div>
                            </div>
                            <div class="row m-t-3 mb-3">
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="form-label"> التخصص </label>
                                    <input class="form-control mg-b-20" style="direction:rtl;"
                                           value="{{old('specialization')}}"
                                           data-parsley-class-handler="#lnWrapper" name="specialization" required=""
                                           type="text">
                                </div>

                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="form-label"> تاريخ الميلاد </label>
                                    <input class="form-control mg-b-20" style="direction:ltr;"
                                           data-parsley-class-handler="#lnWrapper" name="date_of_birth" required
                                           type="date"
                                           value="{{old('date_of_birth') ? old('date_of_birth') : date('Y-m-d')}}">
                                </div>

                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="form-label"> نوع العضوية </label>
                                    <select name="membership_type_id" required class="w-100 js-example-basic-single">
                                        @foreach($membership_types as $membership_type)
                                            <option
                                                @if($membership_type->id == old('membership_type_id'))
                                                selected
                                                @endif
                                                value="{{$membership_type->id}}">{{$membership_type->membership_type}} ( {{$membership_type->price}} ريال )</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                    <label class="form-label"> المؤهل </label>
                                    <select name="qualification_id" required class="w-100 js-example-basic-single">
                                        @foreach($qualifications as $qualification)
                                            <option
                                                @if($qualification->id == old('qualification_id'))
                                                selected
                                                @endif
                                                value="{{$qualification->id}}">{{$qualification->qualification}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                    <p style="color: #222!important;">
                                        <i class="bx bx-chevron-left"></i>
                                        عند تسجيل الحساب فإنك توافق على
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
                                <button class="btn btn-common log-btn"> انشاء حساب جديد</button>
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
