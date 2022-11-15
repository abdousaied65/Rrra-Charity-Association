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
            <p class="alert alert-info alert-md text-center"> عرض بيانات الطلب </p>
        </div>
        <div class="table-responsive hoverable-table">
            <table class="table table-striped table-condensed table-bordered text-center">
                <thead>
                <tr>
                    <th class="border-bottom-0 text-center"> الاسم</th>
                    <th class="border-bottom-0 text-center">رقم الجوال</th>
                    <th class="border-bottom-0 text-center"> الجنسية</th>
                    <th class="border-bottom-0 text-center"> نوع الطلب</th>
                    <th class="border-bottom-0 text-center"> حالة الطلب</th>
                    <th class="border-bottom-0 text-center"> البريد الالكترونى</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>{{ $order->first_name." ".$order->second_name." ".$order->third_name." ".$order->fourth_name }}</td>
                    <td>{{ $order->phone_number }}</td>
                    <td>{{ $order->nationality->nationality }}</td>
                    <td>{{ $order->orderType->order_type }}</td>
                    <td>{{ $order->Status }}</td>
                    <td>{{ $order->email }}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="row mt-3 mb-3 text-center justify-content-center">
        <div class="col-lg-12">
            @can('عرض طلب')
                @if($order->Status !="تمت الموافقة")
                    <a href="{{ route('supervisor.orders.allow', $order->id) }}"
                       class="btn btn-md btn-success">
                        <i class="fa fa-check"></i>
                        تفعيل
                    </a>
                @endif
                @if($order->Status !="قيد المراجعة")
                    <a href="{{ route('supervisor.orders.waiting', $order->id) }}"
                       class="btn btn-md btn-warning">
                        <i class="fa fa-clock"></i>
                        قيد المراجعة
                    </a>
                @endif
                @if($order->Status !="مرفوض")
                    <a href="{{ route('supervisor.orders.deny', $order->id) }}"
                       class="btn btn-md btn-danger">
                        <i class="fa fa-times"></i>
                        رفض
                    </a>
                @endif
            @endcan
            @can('تعديل طلب')
                <a href="{{ route('supervisor.orders.edit', $order->id) }}"
                   class="btn btn-md btn-info">
                    <i class="fa fa-edit"></i>
                    تعديل
                </a>
            @endcan
            @can('حذف طلب')
                <a class="btn btn-md btn-danger delete_order"
                   order_id="{{ $order->id }}"
                   email="{{ $order->email }}" data-toggle="modal"
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
                    <h6 class="modal-title w-100" style="font-family: 'Cairo'; ">حذف طلب</h6>
                    <button aria-label="Close" class="close"
                            data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
                </div>
                <form action="{{ route('supervisor.orders.destroy', 'test') }}" method="post">
                    {{ method_field('delete') }}
                    {{ csrf_field() }}
                    <div class="modal-body">
                        <p>هل انت متأكد انك تريد الحذف ؟</p><br>
                        <input type="hidden" name="order_id" id="order_id" value="">
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

        $('.delete_order').on('click', function () {
            var order_id = $(this).attr('order_id');
            var email = $(this).attr('email');
            $('.modal-body #order_id').val(order_id);
            $('.modal-body #email').val(email);
        });

    });
</script>

