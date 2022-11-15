@extends('site.layouts.app-main')
<style>
    input.form-control {
        height: 50px;
        border-radius: 1px !important;
    }
</style>
@section('content')

    <main id="main" style="margin-top: 110px!important;">
        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs mb-1">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center" style="float: right;">
                    <ol dir="rtl" class="">
                        <li><a href="{{route('index')}}">الصفحة الرئيسية </a></li>
                        <li> تواصل معنا</li>
                    </ol>
                </div>
            </div>
        </section><!-- End Breadcrumbs Section -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div data-aos="fade-up" data-aos-delay="200" class="row">
                            @if (session('success'))
                                <div class="alert alert-success text-center" style="border-radius: 0;">
                                    {{ session('success') }}
                                </div>
                            @endif
                            @if (count($errors) > 0)
                                <div class="alert alert-danger" dir="rtl">
                                    <strong>الاخطاء :</strong>
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                        </div>
                        <div data-aos="fade-up" data-aos-delay="400" class="row">
                            <div class="col-md-6">
                                <div class="info-box">
                                    <i class="bx bx-home"></i>
                                    <h3>العنوان</h3>
                                    <h6 dir="rtl">
                                        {{$informations->address}}
                                    </h6>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info-box">
                                    <i class="bx bx-envelope"></i>
                                    <h3>الايميل</h3>
                                    <h6>
                                        {{$informations->email}}
                                    </h6>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info-box mt-4">
                                    <i class="bx bx-mobile"></i>
                                    <h3>
                                        رقم الجوال
                                    </h3>
                                    <h6>
                                        {{$informations->phone_number}}
                                    </h6>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info-box mt-4">
                                    <i class="bx bxl-whatsapp"></i>
                                    <h3>واتس اب</h3>
                                    <h6>
                                        <a href="https://wa.me/{{$informations->phone_number}}">
                                            {{$informations->phone_number}}
                                        </a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mt-5">
                    <div data-aos="fade-up" data-aos-delay="600" class="col-lg-6" dir="rtl">
                        <h3 style="color: #11723A; font-size: 30px!important;font-weight: bold;">
                            راسلنا بخصوص اى استفسار
                        </h3>
                        <hr style="width: 150px; border: 1px solid #11723A;opacity: 1!important;">
                        <form action="{{route('contact.store')}}" method="post" role="form">
                            @csrf
                            @method('POST')
                            <div class="form-group mt-3">
                                <label for="name" class="d-block mb-2"> الاسم
                                    <span class="text-danger">*</span>
                                </label>
                                <input type="text" dir="rtl" name="name" class="form-control" id="name"
                                       placeholder="اكتب اسمك" required value="{{old('name')}}">
                            </div>
                            <div class="form-group mt-3">
                                <label for="phone" class="d-block mb-2">رقم الجوال
                                    <span class="text-danger"> * ( رقم الجوال لابد ان يكون 9665xxxxxx ) </span>
                                </label>
                                <input value="{{old('phone')}}" placeholder="رقم الجوال"
                                       maxlength="12" oninput="this.value=this.value.slice(0,this.maxLength)"
                                       required dir="ltr" id="phone" type="number" min="1" class="form-control"
                                       name="phone"/>
                            </div>
                            <div class="form-group mt-3">
                                <label for="email" class="d-block mb-2">البريد الالكترونى
                                    <span class="text-danger">*</span>
                                </label>
                                <input value="{{old('email')}}" type="email" dir="ltr" class="form-control" name="email"
                                       id="email"
                                       placeholder="البريد الالكترونى" required>
                            </div>
                            <div class="form-group mt-3">
                                <label for="subject" class="d-block mb-2">موضوع الرسالة
                                    <span class="text-danger">*</span>
                                </label>
                                <select name="subject" id="subject" required class="form-control">
                                    <option value="">اختر موضوع الشكوى</option>
                                    <option @if(old('subject') == "شكوى") selected @endif value="شكوى">شكوى</option>
                                    <option @if(old('subject') == "اقتراح") selected @endif value="اقتراح">اقتراح
                                    </option>
                                    <option @if(old('subject') == "إستفسار") selected @endif value="إستفسار">إستفسار
                                    </option>
                                    <option @if(old('subject') == "طلب") selected @endif value="طلب">طلب</option>
                                    <option @if(old('subject') == "غير ذلك") selected @endif value="غير ذلك">غير ذلك
                                    </option>
                                </select>
                            </div>

                            <div class="form-group mt-3">
                                <label for="message" class="d-block mb-2">نص الرسالة
                                    <span class="text-danger">*</span>
                                </label>
                                <textarea class="form-control" id="message" name="message" rows="10"
                                          style="resize: none;" required>{{old('message')}}</textarea>
                            </div>
                            <div class="text-center">
                                <button class="mt-3 btn btn-lg"
                                        style="background: #11723A;border-color: #11723A;color: #fff;width: 200px;
                                        height: 50px; border-radius: 50px;" type="submit">
                                    ارسال الرسالة
                                </button>
                            </div>
                        </form>
                    </div>
                    <div data-aos="fade-up" data-aos-delay="800" class="col-lg-6">
                        <iframe style="border:0; width: 100%; height: 500px;"
                                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d57965.440199013865!2d46.709868!3d24.766674!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x58384c25b785536d!2sNational%20Association%20of%20Retired%20Riyadh%20Branch!5e0!3m2!1sen!2ssa!4v1663280956690!5m2!1sen!2ssa"
                                allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </section><!-- End Contact Section -->
    </main><!-- End #main -->

    @include('site.layouts.common.footer')

@endsection
<script src="{{asset('admin-assets/js/jquery.min.js')}}"></script>
<script>
    $(document).ready(function () {

    });
</script>
