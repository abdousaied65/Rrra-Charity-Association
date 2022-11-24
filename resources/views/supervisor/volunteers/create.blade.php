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
                        اضافة متطوع جديد
                    </h5>
                </div>
                <div class="card-body p-1 m-1">
                    <form action="{{route('supervisor.volunteers.store','test')}}" method="post"
                          enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-4" id="fnWrapper">
                                <label> الاسم الاول <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="first_name" required="" type="text">
                            </div>
                            <div class="parsley-input col-md-4" id="fnWrapper">
                                <label> اسم الاب <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="second_name" required="" type="text">
                            </div>
                            <div class="parsley-input col-md-4" id="fnWrapper">
                                <label> اسم الجد <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="third_name" required="" type="text">
                            </div>
                        </div>
                        <div class="row mt-2 mb-2">
                            <div class="parsley-input col-md-4" id="fnWrapper">
                                <label> اسم العائلة <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="fourth_name" required="" type="text">
                            </div>

                            <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label> البريد الالكترونى : <span class="text-danger">*</span></label>
                                <input class="form-control  mg-b-20" style="text-align: left;direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="email" required=""
                                       type="email">
                            </div>
                            <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> رقم الجوال </label>
                                <input class="form-control  mg-b-20" style="text-align: left;direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="phone_number" required=""
                                       type="number" min="1">
                            </div>
                        </div>
                        <div class="row m-t-3 mb-3">

                            <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> رقم الهوية الوطنية </label>
                                <input class="form-control  mg-b-20" style="text-align: left;direction:ltr;"
                                       data-parsley-class-handler="#lnWrapper" name="record" required=""
                                       type="number" min="1">
                            </div>
                            <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> مجال التطوع </label>
                                <select name="field_id" required class="w-100 js-example-basic-single">
                                    @foreach($fields as $field)
                                        <option value="{{$field->id}}">{{$field->field}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                                <label class="form-label"> الحالة </label>
                                <select name="Status" required class="form-control">
                                    <option value="">اختر الحالة</option>
                                    <option value="قيد المراجعة">قيد المراجعة</option>
                                    <option value="تمت الموافقة">تمت الموافقة</option>
                                    <option value="مرفوض">مرفوض</option>
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
@endsection
