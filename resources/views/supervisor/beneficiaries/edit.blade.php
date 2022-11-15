@extends('supervisor.layouts.master')
<style>
</style>
@section('content')
    <!-- row -->
    <div class="row">
        <div class="col-lg-12 col-md-12">

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

            <div class="card">
                <div class="card-body">
                    <div class="col-lg-12 margin-tb">
                        <h5 style="min-width: 300px;" class="pull-right alert alert-md alert-success">
                            تعديل بيانات العضو
                        </h5>
                        <div class="clearfix"></div>
                    </div>
                    <br>

                    <form action="{{route('supervisor.beneficiaries.update',$beneficiary->id)}}" method="post"
                          enctype="multipart/form-data">
                        @csrf
                        @method('PATCH')
                        <input type="hidden" value="عضو" name="role_name"/>
                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> الاسم الاول بالعربي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" value="{{$beneficiary->first_name_ar}}"
                                       data-parsley-class-handler="#lnWrapper" name="first_name_ar" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم الاب بالعربي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" value="{{$beneficiary->second_name_ar}}"
                                       data-parsley-class-handler="#lnWrapper" name="second_name_ar" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم الجد بالعربي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" value="{{$beneficiary->third_name_ar}}"
                                       data-parsley-class-handler="#lnWrapper" name="third_name_ar" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم العائلة بالعربي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" value="{{$beneficiary->fourth_name_ar}}"
                                       data-parsley-class-handler="#lnWrapper" name="fourth_name_ar" required=""
                                       type="text">
                            </div>
                        </div>
                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> الاسم الاول بالانجليزي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" dir="ltr" value="{{$beneficiary->first_name_en}}"
                                       data-parsley-class-handler="#lnWrapper" name="first_name_en" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم الاب بالانجليزي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" dir="ltr" value="{{$beneficiary->second_name_en}}"
                                       data-parsley-class-handler="#lnWrapper" name="second_name_en" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم الجد بالانجليزي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" dir="ltr" value="{{$beneficiary->third_name_en}}"
                                       data-parsley-class-handler="#lnWrapper" name="third_name_en" required=""
                                       type="text">
                            </div>
                            <div class="parsley-input col-md-3" id="fnWrapper">
                                <label> اسم العائلة بالانجليزي <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20" dir="ltr" value="{{$beneficiary->fourth_name_en}}"
                                       data-parsley-class-handler="#lnWrapper" name="fourth_name_en" required=""
                                       type="text">
                            </div>
                        </div>
                        <div class="row mt-3 mb-3">
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label> البريد الالكترونى : <span class="text-danger">*</span></label>
                                <input class="form-control  mg-b-20" style="direction:ltr;"
                                       value="{{$beneficiary->email}}"
                                       data-parsley-class-handler="#lnWrapper" name="email" required=""
                                       type="email">
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> رقم الجوال </label>
                                <input class="form-control  mg-b-20" style="direction:ltr;"
                                       value="{{$beneficiary->phone_number}}"
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
                                <label class="form-label"> جهة العمل </label>
                                <input class="form-control  mg-b-20" style="direction:rtl;"
                                       value="{{$beneficiary->employer}}"
                                       data-parsley-class-handler="#lnWrapper" name="employer" required=""
                                       type="text">
                            </div>

                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> سنة التقاعد </label>
                                <select required class="js-example-basic-single w-100" name="retirement_year" id="">
                                    <option value=""> اختر سنة التقاعد</option>
                                    @for($i = 1960; $i <= date('Y-m-d') ; $i++)
                                        <option
                                            @if($i == $beneficiary->retirement_year)
                                            selected
                                            @endif
                                            value="{{$i}}">{{$i}}</option>
                                    @endfor
                                </select>
                            </div>

                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> التخصص </label>
                                <input class="form-control mg-b-20" style="direction:rtl;"
                                       data-parsley-class-handler="#lnWrapper" name="specialization" required=""
                                       type="text" value="{{$beneficiary->specialization}}">
                            </div>

                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> تاريخ الميلاد </label>
                                <input class="form-control mg-b-20" style="direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="date_of_birth" required
                                       type="date" value="{{$beneficiary->date_of_birth}}">
                            </div>

                        </div>

                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> رقم الهوية الوطنية </label>
                                <input class="form-control  mg-b-20" style="direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="record" required=""
                                       type="number" min="1" value="{{$beneficiary->record}}">
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> نوع العضوية </label>
                                <select name="membership_type_id" required class="w-100 js-example-basic-single">
                                    @foreach($membership_types as $membership_type)
                                        <option
                                            @if($membership_type->id == $beneficiary->membership_type_id)
                                            selected
                                            @endif
                                            value="{{$membership_type->id}}">{{$membership_type->membership_type}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> المؤهل </label>
                                <select name="qualification_id" required class="w-100 js-example-basic-single">
                                    @foreach($qualifications as $qualification)
                                        <option
                                            @if($qualification->id == $beneficiary->qualification_id)
                                            selected
                                            @endif
                                            value="{{$qualification->id}}">{{$qualification->qualification}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> الحالة </label>
                                <select name="Status" required class="form-control">
                                    <option value="">اختر الحالة</option>
                                    <option @if($beneficiary->Status == "قيد المراجعة") selected @endif value="قيد المراجعة"> قيد المراجعة</option>
                                    <option @if($beneficiary->Status == "تمت الموافقة") selected @endif value="تمت الموافقة"> تمت الموافقة</option>
                                    <option @if($beneficiary->Status == "مرفوض") selected @endif value="مرفوض"> مرفوض</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mt-3 mb-3">
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> تاريخ العضوية </label>
                                <input type="date" class="form-control" dir="ltr" name="start_date" value="{{$beneficiary->start_date}}" />
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> تاريخ الانتهاء </label>
                                <input type="date" class="form-control" dir="ltr" name="end_date" value="{{$beneficiary->end_date}}" />
                            </div>
                            <div class="parsley-input col-md-3 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> هل تم سداد مبلغ الاشتراك </label>
                                <select name="paid" required class="form-control">
                                    <option value="">اختر الحالة</option>
                                    <option @if($beneficiary->paid == "yes") selected @endif value="yes"> نعم </option>
                                    <option @if($beneficiary->paid == "no") selected @endif value="no"> لا </option>
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
    <!-- main-content closed -->

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
