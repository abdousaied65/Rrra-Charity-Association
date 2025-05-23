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
                        اضافة خدمة جديدة
                    </h5>
                </div>
                <div class="card-body p-1 m-1">
                    <form action="{{route('supervisor.services.store','test')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-4" id="fnWrapper">
                                <label> اسم الخدمة  <span class="text-danger">*</span></label>
                                <input class="form-control mg-b-20"
                                       data-parsley-class-handler="#lnWrapper" name="service_name" required="" type="text">
                            </div>
                            <div class="parsley-input col-md-8" id="fnWrapper">
                                <label> وصف الخدمة <span class="text-danger">*</span></label>
                                <textarea name="description" class="form-control" style="resize: none; width: 100%; height: 200px;" required></textarea>
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
@endsection
