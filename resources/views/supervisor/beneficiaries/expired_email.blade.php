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
                        رسالة تذكير للاعضاء المنتهية عضويتهم
                    </h5>
                </div>
                <div class="card-body p-1 m-1">
                    <form action="{{route('beneficiaries.expired.email.post')}}" method="post"
                          enctype="multipart/form-data">
                        @csrf
                        @method('POST')
                        <div class="row m-t-3 mb-3">
                            <div class="parsley-input col-md-6" id="fnWrapper">
                                <label> الاعضاء <span class="text-danger">*</span></label>
                                <select required multiple data-actions-box="true" data-live-search="true"
                                        data-title="اختر الاعضاء"
                                        data-style="btn-secondary"
                                        name="beneficiaries[]" class="form-control selectpicker show-tick">
                                    @foreach($beneficiaries as $beneficiary)
                                        <option
                                            value="{{$beneficiary->id}}">
                                            {{$beneficiary->first_name_ar}} {{$beneficiary->second_name_ar}} {{$beneficiary->third_name_ar}} {{$beneficiary->fourth_name_ar}}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button class="btn btn-info pd-x-20" type="submit">
                                ارسال الرسالة
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
