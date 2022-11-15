@extends('supervisor.layouts.master')
<style>
    tfoot input {
        width: 100%;
        padding: 3px;
        box-sizing: border-box;
    }

    .btn-md {
        height: 40px !important;
        min-width: 100px !important;
        padding: 10px !important;
        text-align: center !important;
    }

    input[type="checkbox"] {
        width: 20px;
        height: 20px;
    }

    span.badge {
        padding: 10px !important;
    }
</style>
@section('content')
    @if (session('success'))
        <div class="alert alert-success  fade show">
            <button class="close" data-dismiss="alert" aria-label="Close">×</button>
            {{ session('success') }}
        </div>
    @endif
    <!-- row opened -->
    <div class="row row-sm">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-header pb-0">
                    <div class="col-lg-12 margin-tb">
                        <h5 style="min-width: 300px;" class="pull-right alert alert-md alert-success">
                            عرض كل طلبات تجديد العضوية للأعضاء
                        </h5>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="row mt-1 mb-1 text-center justify-content-center align-content-center">
                    <form method="GET" action="{{route('print.renewal.requests')}}">
                        <button type="submit" class="btn btn-md btn-warning m-1 print_selected">
                            <i class="fa fa-print"></i>
                            طباعة
                        </button>
                    </form>
                    <form method="POST" action="{{route('export.requests.excel')}}">
                        @csrf
                        @method('POST')
                        <button type="submit" class="btn btn-md btn-success m-1">
                            <i class="fa fa-file-excel-o"></i>
                            تصدير الكل EXCEL
                        </button>
                    </form>
                    <form method="POST" class="" id="myForm" action="{{route('remove.renewal.requests')}}">
                        @csrf
                        @method('POST')
                        <button type="submit" class="btn btn-md btn-danger m-1 remove_selected">
                            <i class="fa fa-trash"></i>
                            حذف
                        </button>
                    </form>
                </div>

                <div class="card-body p-1 m-1" style="min-height: 500px!important;">
                    <div class="table-responsive hoverable-table" style="min-height: 500px!important;">
                        <table class="display w-100 table-bordered" id="example-table"
                               style="text-align: center;">
                            <thead>
                            <tr>
                                <th class="border-bottom-0 text-center">
                                    <input type="checkbox" id="check_all"/>
                                </th>
                                <th class="border-bottom-0 text-center">#</th>
                                <th class="border-bottom-0 text-center">اسم العضو</th>
                                <th class="border-bottom-0 text-center">مدة التجديد</th>
                                <th class="border-bottom-0 text-center"> المبلغ </th>
                                <th class="border-bottom-0 text-center"> نوع العضوية </th>
                                <th class="border-bottom-0 text-center">حالة الطلب</th>
                                <th class="border-bottom-0 text-center">تاريخ الطلب</th>
                                <th style="width: 5%!important;" class="border-bottom-0 text-center">تحكم</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $i = 0;
                            @endphp

                            @foreach ($requests as $request)
                                <tr>
                                    <td>
                                        <input class="check" name="requests[]" form="myForm"
                                               value="{{$request->id}}"
                                               type="checkbox">
                                    </td>
                                    <td>{{ ++$i }}</td>
                                    <td>{{ $request->beneficiary->first_name_ar." ".$request->beneficiary->second_name_ar." ".$request->beneficiary->third_name_ar." ".$request->beneficiary->fourth_name_ar }}</td>
                                    <td>
                                        @if($request->period == "1")
                                            سنة
                                        @elseif($request->period == "2")
                                            سنتين
                                        @elseif($request->period == "3")
                                            3 سنوات
                                        @endif
                                    </td>
                                    <td>{{$request->amount}}</td>
                                    <td>{{$request->membershipType->membership_type}}</td>
                                    <td>
                                        @if($request->status == "قيد المراجعة")
                                            <span class="badge badge-warning">
                                                قيد المراجعة
                                            </span>
                                        @elseif($request->status == "تمت الموافقة")
                                            <span class="badge badge-success">
                                                تمت الموافقة
                                            </span>
                                        @elseif($request->status == "مرفوض")
                                            <span class="badge badge-danger">
                                                مرفوض
                                            </span>
                                        @endif
                                    </td>
                                    <td>
                                        {{date('Y-m-d',strtotime($request->created_at))}}
                                    </td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button" class="btn btn-primary dropdown-toggle"
                                                    data-toggle="dropdown">
                                                <i class="fa fa-wrench"></i>
                                                ادارة
                                            </button>
                                            <div class="dropdown-menu">
                                                <a href="{{ route('supervisor.request.allow', $request->id) }}"
                                                   class="dropdown-item text-success">
                                                    <i class="fa fa-check"></i>
                                                    موافقة
                                                </a>
                                                <a href="{{ route('supervisor.request.deny', $request->id) }}"
                                                   class="dropdown-item text-danger">
                                                    <i class="fa fa-times"></i>
                                                    رفض
                                                </a>

                                                <a class="dropdown-item delete_request"
                                                   request_id="{{ $request->id }}"
                                                   beneficiary="{{ $request->beneficiary->first_name_ar." ".$request->beneficiary->second_name_ar." ".$request->beneficiary->third_name_ar." ".$request->beneficiary->fourth_name_ar }}" data-toggle="modal"
                                                   href="#modaldemo8">
                                                    <i class="fa fa-trash"></i>
                                                    حذف
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            <tfoot>
                            <tr>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>
                            </tfoot>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--/div-->

        <!-- Modal effects -->
        <div class="modal" id="modaldemo8">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content modal-content-demo">
                    <div class="modal-header text-center">
                        <h6 class="modal-title w-100" style="font-family: 'Cairo'; ">حذف طلب تجديد</h6>
                        <button aria-label="Close" class="close"
                                data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <form action="{{ route('supervisor.request.destroy') }}" method="post">
                        {{ method_field('delete') }}
                        {{ csrf_field() }}
                        <div class="modal-body">
                            <p>هل انت متأكد انك تريد الحذف ؟</p><br>
                            <input type="hidden" name="request_id" id="request_id" value="">
                            <input class="form-control" name="beneficiary" id="beneficiary" type="text" readonly>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
                            <button type="submit" class="btn btn-danger">حذف</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal effects -->
@endsection
<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
<script>
    $(document).ready(function () {
        $('#check_all').click(function () {
            if (this.checked) {
                $('input.check').prop('checked', true);
            } else {
                $('input.check').prop('checked', false);
            }
        });
        $('.delete_request').on('click', function () {
            var request_id = $(this).attr('request_id');
            var beneficiary = $(this).attr('beneficiary');
            $('.modal-body #request_id').val(request_id);
            $('.modal-body #beneficiary').val(beneficiary);
        });
        $('.remove_selected').on('click', function (e) {
            e.preventDefault();
            let requests = [];
            $("input:checkbox[name*='requests']:checked").each(function () {
                requests.push($(this).val());
            });
            if (requests.length == 0) {
                alert('اختر بعض السجلات للحذف');
            } else {
                $('#myForm').submit();
            }
        });

        $('#example-table tfoot tr th:nth-child(3)').html('<input class="form-control" type="text" placeholder="اسم العضو" />');
        $('#example-table tfoot tr th:nth-child(5)').html('<input class="form-control" type="text" placeholder="المبلغ" />');
        $('#example-table tfoot tr th:nth-child(6)').html('<input class="form-control" type="text" placeholder="نوع العضوية" />');
        $('#example-table tfoot tr th:nth-child(7)').html('<select name="status" required class="form-control"><option value="">اختر الحالة </option><option value="قيد المراجعة"> قيد المراجعة </option><option value="تمت الموافقة"> تمت الموافقة </option><option value="مرفوض"> مرفوض </option></select>');

        $('#example-table').DataTable({
            "columnDefs": [
                {"orderable": false, "targets": [8]}
            ],
            "order": [[1, "desc"]],
            initComplete: function () {
                this.api().columns().every(function () {
                    var that = this;
                    $('input[type="text"]', this.footer()).on('keyup change clear', function () {
                        if (that.search() !== this.value) {
                            that.search(this.value).draw();
                        }
                    });
                    $('select', this.footer()).on('change', function () {
                        if (that.search() !== this.value) {
                            that.search(this.value).draw();
                        }
                    });
                });
            }
        });
    });
</script>
