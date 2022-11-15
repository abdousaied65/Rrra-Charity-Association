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
            <p class="alert alert-info alert-md text-center"> عرض بيانات العضو </p>
        </div>
        <div class="table-responsive hoverable-table">
            <table class="table table-striped table-condensed table-bordered text-center">
                <thead>
                <tr>
                    <th class="border-bottom-0 text-center">اسم العضو</th>
                    <th class="border-bottom-0 text-center">رقم الجوال</th>
                    <th class="border-bottom-0 text-center"> رقم الهوية الوطنية</th>
                    <th class="border-bottom-0 text-center"> نوع العضوية</th>
                    <th class="border-bottom-0 text-center"> المؤهل</th>
                    <th class="border-bottom-0 text-center"> تاريخ العضوية</th>
                    <th class="border-bottom-0 text-center"> تاريخ الانتهاء</th>
                    <th class="border-bottom-0 text-center"> الحالة</th>
                    <th class="border-bottom-0 text-center"> البريد الالكترونى</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>{{ $beneficiary->first_name_ar." ".$beneficiary->second_name_ar." ".$beneficiary->third_name_ar." ".$beneficiary->fourth_name_ar }}</td>
                    <td>{{ $beneficiary->phone_number }}</td>
                    <td>{{ $beneficiary->record }}</td>
                    <td>{{ $beneficiary->membershipType->membership_type }}</td>
                    <td>{{ $beneficiary->qualification->qualification }}</td>
                    <td>{{ $beneficiary->start_date }}</td>
                    <td>{{ $beneficiary->end_date }}</td>
                    <td>{{ $beneficiary->Status }}</td>
                    <td>{{ $beneficiary->email }}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row mt-3 mb-3 text-center justify-content-center">
        <div class="col-lg-12">
            @can('عرض عضو')
                @if($beneficiary->Status !="تمت الموافقة")
                    <a href="{{ route('supervisor.beneficiaries.allow', $beneficiary->id) }}"
                       class="btn btn-md btn-success">
                        <i class="fa fa-check"></i>
                        تفعيل
                    </a>
                @endif
                @if($beneficiary->Status !="قيد المراجعة")
                    <a href="{{ route('supervisor.beneficiaries.waiting', $beneficiary->id) }}"
                       class="btn btn-md btn-warning">
                        <i class="fa fa-clock"></i>
                        قيد المراجعة
                    </a>
                @endif
                @if($beneficiary->Status !="مرفوض")
                    <a href="{{ route('supervisor.beneficiaries.deny', $beneficiary->id) }}"
                       class="btn btn-md btn-danger">
                        <i class="fa fa-times"></i>
                        رفض
                    </a>
                @endif
            @endcan
            @can('تعديل عضو')
                <a href="{{ route('supervisor.beneficiaries.edit', $beneficiary->id) }}"
                   class="btn btn-md btn-info">
                    <i class="fa fa-edit"></i>
                    تعديل
                </a>
            @endcan
            @can('حذف عضو')
                <a class="btn btn-md btn-danger delete_beneficiary"
                   beneficiary_id="{{ $beneficiary->id }}"
                   email="{{ $beneficiary->email }}" data-toggle="modal"
                   href="#modaldemo8">
                    <i class="fa fa-trash"></i>
                    حذف
                </a>
            @endcan
        </div>
    </div>

    <!-- Modal effects -->
    <div class="modal" id="modaldemo8">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content modal-content-demo">
                <div class="modal-header text-center">
                    <h6 class="modal-title w-100" style="font-family: 'Cairo'; ">حذف عضو</h6>
                    <button aria-label="Close" class="close"
                            data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
                </div>
                <form action="{{ route('supervisor.beneficiaries.destroy', 'test') }}" method="post">
                    {{ method_field('delete') }}
                    {{ csrf_field() }}
                    <div class="modal-body">
                        <p>هل انت متأكد انك تريد الحذف ؟</p><br>
                        <input type="hidden" name="beneficiary_id" id="beneficiary_id" value="">
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
        $('.delete_beneficiary').on('click', function () {
            var beneficiary_id = $(this).attr('beneficiary_id');
            var email = $(this).attr('email');
            $('.modal-body #beneficiary_id').val(beneficiary_id);
            $('.modal-body #email').val(email);
        });
    });
</script>

