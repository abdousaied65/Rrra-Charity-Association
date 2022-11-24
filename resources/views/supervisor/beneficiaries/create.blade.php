@extends('supervisor.layouts.master')
<style>

</style>
@section('content')
    <!-- main-content closed -->
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Errors :</strong>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <!-- row opened -->
    <div class="row row-sm">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-header pb-0">
                    <h5 class="alert alert-md alert-success">
                        اضافة عضو جديد
                    </h5>
                </div>
                <div class="card-body p-1 m-1">
                    <form action="{{route('supervisor.beneficiaries.store','test')}}" method="post"
                          enctype="multipart/form-data">
                        {{csrf_field()}}
                        <input type="hidden" value="عضو" name="role_name"/>
                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> الاسم الاول بالعربي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="first_name_ar" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم الاب بالعربي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="second_name_ar" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم الجد بالعربي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="third_name_ar" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم العائلة بالعربي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="fourth_name_ar" required=""
                                       type="text">
                            </div>
                        </div>
                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> الاسم الاول بالانجليزي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" dir="ltr"
                                       data-parsley-class-handler="#lnWrapper" name="first_name_en" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم الاب بالانجليزي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" dir="ltr"
                                       data-parsley-class-handler="#lnWrapper" name="second_name_en" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم الجد بالانجليزي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" dir="ltr"
                                       data-parsley-class-handler="#lnWrapper" name="third_name_en" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم العائلة بالانجليزي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" dir="ltr"
                                       data-parsley-class-handler="#lnWrapper" name="fourth_name_en" required=""
                                       type="text">
                            </div>
                        </div>
                        <div class="row mt-3 mb-3">
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label> البريد الالكترونى : <span class="text-danger">*</span></label>
                                <input class="form-control  mg-b-20" style="direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="email" required=""
                                       type="email">
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> رقم الجوال </label>
                                <input class="form-control  mg-b-20" style="direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="phone_number" required=""
                                       type="number" min="1">
                            </div>
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
                                           dir="ltr" name="confirm-password" required
                                           aria-describedby="basic-addon2">
                                </div>
                            </div>
                        </div>

                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> جهة العمل السابقة </label>
                                <input class="form-control  mg-b-20" style="direction:rtl;"
                                       data-parsley-class-handler="#lnWrapper" name="employer" required=""
                                       type="text">
                            </div>

                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> سنة التقاعد </label>
                                <select required class="js-example-basic-single w-100" name="retirement_year" id="">
                                    <option value=""> اختر سنة التقاعد</option>
                                    @for($i = 1960; $i <= date('Y-m-d') ; $i++)
                                        <option value="{{$i}}">{{$i}}</option>
                                    @endfor
                                </select>
                            </div>

                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> التخصص  </label>
                                <input class="form-control mg-b-20" style="direction:rtl;"
                                       data-parsley-class-handler="#lnWrapper" name="specialization" required=""
                                       type="text">
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
                                <label class="form-label"> تاريخ الميلاد </label>
                                <input class="form-control mg-b-20" style="direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="date_of_birth" required
                                       type="date" value="{{date('Y-m-d')}}">
                            </div>

                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> رقم الهوية الوطنية </label>
                                <input class="form-control  mg-b-20" style="direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="record" required=""
                                       type="number" min="1">
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> نوع العضوية </label>
                                <select name="membership_type_id" required class="w-100 js-example-basic-single">
                                    @foreach($membership_types as $membership_type)
                                        <option
                                            value="{{$membership_type->id}}">{{$membership_type->membership_type}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> المؤهل </label>
                                <select name="qualification_id" required class="w-100 js-example-basic-single">
                                    @foreach($qualifications as $qualification)
                                        <option
                                            value="{{$qualification->id}}">{{$qualification->qualification}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mt-3 mb-3">
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> الحالة </label>
                                <select name="Status" required class="form-control">
                                    <option value="">اختر الحالة</option>
                                    <option selected value="قيد المراجعة"> قيد المراجعة</option>
                                    <option value="تمت الموافقة"> تمت الموافقة</option>
                                    <option value="مرفوض"> مرفوض</option>
                                </select>
                            </div>

                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> تاريخ العضوية </label>
                                <input type="date" class="form-control" dir="ltr" name="start_date" value="{{date('Y-m-d')}}" />
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> تاريخ الانتهاء </label>
                                <input type="date" class="form-control" dir="ltr" name="end_date" value="{{date('Y-m-d')}}" />
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> هل تم سداد مبلغ الاشتراك </label>
                                <select name="paid" required class="form-control">
                                    <option value="">اختر الحالة</option>
                                    <option selected value="yes"> نعم </option>
                                    <option value="no"> لا </option>
                                </select>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button class="btn btn-info pd-x-20" type="submit">تأكيد</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
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
