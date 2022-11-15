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
                            تعديل بيانات الخدمة
                        </h5>
                        <div class="clearfix"></div>
                    </div>
                    <br>
                    {!! Form::model($service, ['method' => 'PATCH','enctype' => 'multipart/form-data','route' => ['supervisor.services.update', $service->id]]) !!}
                    <div class="row mb-3 mt-3">
                        <div class="parsley-input col-md-4" id="fnWrapper">
                            <label> اسم الخدمة  <span class="text-danger">*</span></label>
                            <input class="form-control mg-b-20" value="{{$service->service_name}}"
                                   data-parsley-class-handler="#lnWrapper" name="service_name" required="" type="text">
                        </div>
                        <div class="parsley-input col-md-8" id="fnWrapper">
                            <label> وصف الخدمة <span class="text-danger">*</span></label>
                            <textarea name="description" class="form-control" style="resize: none; width: 100%; height: 200px;" required>{{$service->description}}</textarea>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center mt-3 mb-3">
                        <button class="btn btn-info btn-md" type="submit"> تحديث </button>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
    <!-- main-content closed -->
@endsection
