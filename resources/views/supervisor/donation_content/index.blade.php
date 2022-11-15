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
                @if (session('success'))
                    <div class="alert alert-success  fade show">
                        <button class="close" data-dismiss="alert" aria-label="Close">×</button>
                        {{ session('success') }}
                    </div>
                @endif
                <div class="card-header pb-0">
                    <h5 class="alert alert-md alert-success">
                        تعديل صفحة التبرع
                    </h5>
                </div>
                <div class="card-body p-1 m-1">
                    <form action="{{route('supervisor.donation_content.update')}}" method="post"
                          enctype="multipart/form-data">
                        @csrf
                        @method('POST')
                        <div class="row mb-3">
                            <div class="col-md-4 pull-right">
                                <label> عنوان الفقرة <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="title" value="{{$donation_content->title}}" />
                            </div>
                            <div class="col-md-8 pull-right">
                                <label> الوصف (فقرة ما تحت العنوان) <span class="text-danger">*</span></label>
                                <textarea class="form-control" name="description"  style="resize: none;width:100%; height: 250px;">{{$donation_content->description}}</textarea>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button class="btn btn-info pd-x-20" type="submit">تحديث</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
