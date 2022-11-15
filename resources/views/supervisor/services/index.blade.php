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
                            عرض كل الخدمات
                        </h5>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="row mt-1 mb-1 text-center justify-content-center align-content-center">
                    <form method="GET" action="{{route('print.selected.services')}}">
                        <button type="submit" class="btn btn-md btn-warning m-1 print_selected">
                            <i class="fa fa-print"></i>
                            طباعة
                        </button>
                    </form>
                    <form method="POST" action="{{route('export.services.excel')}}">
                        @csrf
                        @method('POST')
                        <button type="submit" class="btn btn-md btn-success m-1">
                            <i class="fa fa-file-excel-o"></i>
                            تصدير الكل EXCEL
                        </button>
                    </form>
                    <form method="POST" class="" id="myForm" action="{{route('remove.selected.services')}}">
                        @csrf
                        @method('POST')
                        <button type="submit" class="btn btn-md btn-danger m-1 remove_selected">
                            <i class="fa fa-trash"></i>
                            حذف
                        </button>
                    </form>

                    <a href="{{route('supervisor.services.create')}}" role="button"
                       class="btn btn-md btn-info m-1">
                        <i class="fa fa-plus"></i>
                        اضافة
                    </a>
                </div>
                <div class="card-body p-1 m-1">
                    <div class="table-responsive hoverable-table">
                        <table class="display w-100 table-bordered" id="example-table"
                               style="text-align: center;">
                            <thead>
                            <tr>
                                <th class="border-bottom-0 text-center">
                                    <input type="checkbox" id="check_all"/>
                                </th>
                                <th class="border-bottom-0 text-center">#</th>
                                <th class="border-bottom-0 text-center"> اسم الخدمة</th>
                                <th class="border-bottom-0 text-center"> وصف الخدمة</th>
                                <th style="width: 5%!important;" class="border-bottom-0 text-center">تحكم</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $i = 0;
                            @endphp

                            @foreach ($data as $service)
                                <tr>
                                    <td>
                                        <input class="check" name="services[]" form="myForm"
                                               value="{{$service->id}}"
                                               type="checkbox">
                                    </td>
                                    <td>{{ ++$i }}</td>
                                    <td>{{ $service->service_name }}</td>
                                    <td>{{ $service->description }}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button" class="btn btn-primary dropdown-toggle"
                                                    data-toggle="dropdown">
                                                <i class="fa fa-wrench"></i>
                                                ادارة
                                            </button>
                                            <div class="dropdown-menu">

                                                <a href="{{ route('supervisor.services.show', $service->id) }}"
                                                   class="dropdown-item">
                                                    <i class="fa fa-eye"></i>
                                                    عرض
                                                </a>

                                                <a href="{{ route('supervisor.services.edit', $service->id) }}"
                                                   class="dropdown-item">
                                                    <i class="fa fa-edit"></i>
                                                    تعديل
                                                </a>

                                                <a class="dropdown-item delete_service"
                                                   service_id="{{ $service->id }}"
                                                   service="{{ $service->service_name }}"
                                                   data-toggle="modal"
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
                        <h6 class="modal-title w-100" style="font-family: 'Cairo'; ">حذف الخدمة</h6>
                        <button aria-label="Close" class="close"
                                data-dismiss="modal" type="button"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <form action="{{ route('supervisor.services.destroy', 'test') }}" method="post">
                        {{ method_field('delete') }}
                        {{ csrf_field() }}
                        <div class="modal-body">
                            <p>هل انت متأكد انك تريد الحذف ؟</p><br>
                            <input type="hidden" name="service_id" id="service_id" value="">
                            <input class="form-control" name="service" id="service" type="text"
                                   readonly>
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
        $('.delete_service').on('click', function () {
            var service_id = $(this).attr('service_id');
            var service = $(this).attr('service');
            $('.modal-body #service_id').val(service_id);
            $('.modal-body #service').val(service);
        });

        $('.remove_selected').on('click', function (e) {
            e.preventDefault();
            let services = [];
            $("input:checkbox[name*='services']:checked").each(function () {
                services.push($(this).val());
            });
            if (services.length == 0) {
                alert('اختر بعض السجلات للحذف');
            } else {
                $('#myForm').submit();
            }
        });
        $('#example-table tfoot tr th:nth-child(3)').html('<input class="form-control" type="text" placeholder="اسم الخدمة" />');
        $('#example-table tfoot tr th:nth-child(4)').html('<input class="form-control" type="text" placeholder="وصف الخدمة" />');
        $('#example-table').DataTable({
            "columnDefs": [
                {"orderable": false, "targets": [0, 4]}
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
                });
            }
        });
    });
</script>
