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
            <p class="alert alert-info alert-md text-center"> عرض بيانات المتطوع </p>
        </div>
        <div class="table-responsive hoverable-table">
            <table class="table table-striped table-condensed table-bordered text-center">
                <thead>
                <tr>
                    <th class="border-bottom-0 text-center">اسم المتطوع</th>
                    <th class="border-bottom-0 text-center"> رقم الهوية الوطنية</th>
                    <th class="border-bottom-0 text-center">رقم الجوال</th>
                    <th class="border-bottom-0 text-center"> البريد الالكترونى</th>
                    <th class="border-bottom-0 text-center"> مجال التطوع</th>
                    <th class="border-bottom-0 text-center"> الحالة</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>{{ $volunteer->first_name." ".$volunteer->second_name." ".$volunteer->third_name." ".$volunteer->fourth_name }}</td>
                    <td>{{ $volunteer->record }}</td>
                    <td>{{ $volunteer->phone_number }}</td>
                    <td>{{ $volunteer->email }}</td>
                    <td>{{ $volunteer->field->field }}</td>
                    <td>{{ $volunteer->Status }}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row mt-3 mb-3">
        <div class="col-lg-12 text-center justify-content-center">
            @can('عرض متطوع')
                @if($volunteer->Status != "تمت الموافقة")
                    <a href="{{ route('supervisor.volunteers.allow', $volunteer->id) }}"
                       class="btn btn-md btn-success">
                        <i class="fa fa-check"></i>
                        تفعيل
                    </a>
                @endif
            @endcan
            @can('تعديل متطوع')

                @if($volunteer->Status != "مرفوض")
                    <a href="{{ route('supervisor.volunteers.deny', $volunteer->id) }}"
                       class="btn btn-md btn-danger">
                        <i class="fa fa-times"></i>
                        مرفوض
                    </a>
                @endif

                @if($volunteer->Status != "قيد المراجعة")
                    <a href="{{ route('supervisor.volunteers.waiting', $volunteer->id) }}"
                       class="btn btn-md btn-warning">
                        <i class="fa fa-clock"></i>
                        قيد المراجعة
                    </a>
                @endif

                <a href="{{ route('supervisor.volunteers.edit', $volunteer->id) }}"
                   class="btn btn-md btn-info">
                    <i class="fa fa-edit"></i>
                    تعديل
                </a>
            @endcan
            @can('حذف متطوع')
                <a class="btn btn-md btn-danger delete_volunteer"
                   volunteer_id="{{ $volunteer->id }}"
                   email="{{ $volunteer->email }}" data-toggle="modal"
                   href="#modaldemo8">
                    <i class="fa fa-trash"></i>
                    حذف
                </a>
            @endcan
        </div>
    </div>

    <div class="modal" id="modaldemo8">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content modal-content-demo">
                <div class="modal-header text-center">
                    <h6 class="modal-title w-100" style="font-family: 'Cairo'; ">حذف متطوع</h6>
                    <button aria-label="Close" class="close"
                            data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
                </div>
                <form action="{{ route('supervisor.volunteers.destroy', 'test') }}" method="post">
                    {{ method_field('delete') }}
                    {{ csrf_field() }}
                    <div class="modal-body">
                        <p>هل انت متأكد انك تريد الحذف ؟</p><br>
                        <input type="hidden" name="volunteer_id" id="volunteer_id" value="">
                        <input class="form-control" name="email" id="email" type="text" readonly>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
                        <button type="submit" class="btn btn-danger">حذف</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


@endsection

<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
<script>
    $(document).ready(function () {
        $('.delete_volunteer').on('click', function () {
            var volunteer_id = $(this).attr('volunteer_id');
            var email = $(this).attr('email');
            $('.modal-body #volunteer_id').val(volunteer_id);
            $('.modal-body #email').val(email);
        });
    });
</script>

