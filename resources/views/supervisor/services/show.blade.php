@extends('supervisor.layouts.master')
<!-- Internal Data table css -->
<style>
    i.la {
        font-size: 15px !important;
    }
</style>
@section('content')
    <div class="row text-center">
        <div class="col-lg-12 mt-5">
            <p class="alert alert-info alert-md text-center"> عرض بيانات الخدمة </p>
        </div>
        <div class="table-responsive hoverable-table">
            <table class="table table-striped table-condensed table-bordered text-center">
                <thead>
                <tr>
                    <th class="border-bottom-0 text-center"> اسم الخدمة  </th>
                    <th class="border-bottom-0 text-center">  وصف الخدمة </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>{{ $service->service_name }}</td>
                    <td>{{ $service->description }}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
@endsection
