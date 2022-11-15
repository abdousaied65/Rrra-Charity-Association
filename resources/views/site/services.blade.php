@extends('site.layouts.app-main')
<style>

</style>
@section('content')
    <main id="main" style="margin-top: 110px!important;">
        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs mb-1">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center" style="float: right;">
                    <ol dir="rtl" class="">
                        <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                        <li> خدمات الجمعية</li>
                    </ol>
                </div>
            </div>
        </section><!-- End Breadcrumbs Section -->
        <!-- ======= Featured Services Section ======= -->
        <section id="featured-services" class="featured-services">
            <div class="container" data-aos="fade-up">
                <h3 class="text-center align-content-center mb-4" style="color: #11723A;">
                    خدمات الجمعية
                </h3>
                <div class="clearfix"></div>
                <hr class="text-center align-content-center mx-auto mb-5"
                    style="width: 250px; border: 1px solid #000;opacity: 1!important;">
                <div class="row">
                    <?php $i = 200; ?>
                    @if(isset($services) && !$services->isEmpty())
                        @foreach($services as $service)
                            <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="{{$i}}">
                                <div class="icon-box icon_box text-center" data-aos="fade-up" data-aos-delay="200">
                                    <div class="icon text-center align-content-center">
                                        <img src="{{asset('assets/img/slogan.png')}}" class="w-25">
                                    </div>
                                    <hr class="text-center mx-auto mt-3 mb-4"
                                        style="border: 1px solid #000; width: 100px;opacity: 1!important; "/>
                                    <h4 class="title text-center align-content-center">
                                        <a
                                           data-bs-toggle="modal" href="javascript:;" data-bs-target="#modaldemo8"
                                           class="service"
                                           description = "{{$service->description}}"
                                           service_id="{{ $service->id }}">
                                            {{$service->service_name}}
                                        </a>
                                    </h4>
                                </div>
                            </div>
                            <?php $i = $i +200; ?>
                        @endforeach()
                    @endif
                </div>
            </div>
        </section><!-- End Featured Services Section -->
    </main>
    @include('site.layouts.common.footer')

    <div class="modal fade" id="modaldemo8" tabindex="-1" aria-labelledby="exampleModalLabel20" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title w-100" id="exampleModalLabel20">
                        وصف الخدمة
                    </h5>
                    <button type="button" class="btn btn-default btn-md btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </button>
                </div>
                <div class="modal-body description text-right" dir="rtl">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger pull-left" data-bs-dismiss="modal">اغلاق</button>
                </div>
            </div>
        </div>
    </div>

@endsection
<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
<script>
    $(document).ready(function () {
        $('.service').on('click', function () {
            var service_id = $(this).attr('service_id');
            var description = $(this).attr('description');
            $('.description').html(description);
        });
    });
</script>
