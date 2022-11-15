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
                            تعديل بيانات المتطوع
                        </h5>
                        <div class="clearfix"></div>
                    </div>
                    <br>
                    {!! Form::model($volunteer, ['method' => 'PATCH','enctype' => 'multipart/form-data','route' => ['supervisor.volunteers.update', $volunteer->id]]) !!}
                    <div class="row m-t-3 mb-3">
                        <div class="parsley-input col-md-4" id="fnWrapper">
                            <label> الاسم الاول <span class="text-danger">*</span></label>
                            <input value="{{$volunteer->first_name}}" class="form-control mg-b-20"
                                   data-parsley-class-handler="#lnWrapper" name="first_name" required="" type="text">
                        </div>
                        <div class="parsley-input col-md-4" id="fnWrapper">
                            <label> اسم الاب <span class="text-danger">*</span></label>
                            <input value="{{$volunteer->second_name}}" class="form-control mg-b-20"
                                   data-parsley-class-handler="#lnWrapper" name="second_name" required="" type="text">
                        </div>
                        <div class="parsley-input col-md-4" id="fnWrapper">
                            <label> اسم الجد <span class="text-danger">*</span></label>
                            <input value="{{$volunteer->third_name}}" class="form-control mg-b-20"
                                   data-parsley-class-handler="#lnWrapper" name="third_name" required="" type="text">
                        </div>
                    </div>
                    <div class="row mt-1 mb-2">
                        <div class="parsley-input col-md-4" id="fnWrapper">
                            <label> اسم العائلة <span class="text-danger">*</span></label>
                            <input value="{{$volunteer->fourth_name}}" class="form-control mg-b-20"
                                   data-parsley-class-handler="#lnWrapper" name="fourth_name" required="" type="text">
                        </div>
                        <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                            <label> البريد الالكترونى : <span class="text-danger">*</span></label>
                            <input value="{{$volunteer->email}}" class="form-control  mg-b-20"
                                   style="text-align: left;direction:ltr;"
                                   data-parsley-class-handler="#lnWrapper" name="email" required=""
                                   type="email">
                        </div>
                        <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                            <label class="form-label"> رقم الجوال </label>
                            <input value="{{$volunteer->phone_number}}" class="form-control  mg-b-20"
                                   style="text-align: left;direction:ltr;"
                                   data-parsley-class-handler="#lnWrapper" name="phone_number" required=""
                                   type="number" min="1">
                        </div>
                    </div>
                    <div class="row m-t-3 mb-3">
                        <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                            <label class="form-label"> رقم الهوية الوطنية </label>
                            <input value="{{$volunteer->record}}" class="form-control  mg-b-20"
                                   style="text-align: left;direction:ltr;"
                                   data-parsley-class-handler="#lnWrapper" name="record" required=""
                                   type="number" min="1">
                        </div>
                        <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                            <label class="form-label"> مجال التطوع </label>
                            <select name="field_id" required class="w-100 js-example-basic-single">
                                @foreach($fields as $field)
                                    <option
                                        @if(isset($volunteer) && $volunteer->field_id == $field->id)
                                        selected
                                        @endif
                                        value="{{$field->id}}">{{$field->field}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="parsley-input col-md-4 mg-t-20 mg-md-t-0" id="lnWrapper">
                            <label class="form-label"> الحالة </label>
                            <select name="Status" required class="form-control">
                                <option value="">اختر الحالة</option>
                                <option @if(isset($volunteer) && $volunteer->Status == "قيد المراجعة") selected
                                        @endif value="قيد المراجعة">قيد المراجعة
                                </option>
                                <option @if(isset($volunteer) && $volunteer->Status == "سارى") selected
                                        @endif value="سارى">سارى
                                </option>
                                <option @if(isset($volunteer) && $volunteer->Status == "منتهى") selected
                                        @endif value="منتهى">منتهى
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="col-lg-12 text-center mt-3 mb-3">
                        <button class="btn btn-info btn-md" type="submit"> تحديث</button>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
    <!-- main-content closed -->

    <script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
@endsection
