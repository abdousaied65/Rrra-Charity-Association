<!-- ======= Footer ======= -->
<footer id="footer">
    <div class="footer-newsletter">
        <div class="container">
            @if (session('success-subscribe'))
                <div class="alert alert-success  text-center" style="margin-top: 30px;">
                    {{ session('success-subscribe') }}
                </div>
            @endif
            @if (session('error-subscribe'))
                <div class="alert alert-danger  text-center" style="margin-top: 30px;">
                    {{ session('error-subscribe') }}
                </div>
            @endif
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <h4>اشترك فى القائمة البريدية خاصتنا</h4>
                    <h6>
                        اكتب بالاسفل البريد الالكترونى الخاص بك حتى تشترك
                        <br>
                        فى القائمة البريدية خاصتنا ويصلك كل جديد لدينا
                    </h6>
                    <form action="{{route('subscribe')}}" method="post">
                        @csrf
                        @method('POST')
                        <input class="form-control" type="email" name="email"><input type="submit" value="اشترك">
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 footer-links" style="text-align: right;direction: rtl;">
                    <h3 style="color: #fff; font-size: 30px!important;font-weight: bold;">
                        عن الجمعية
                    </h3>
                    <hr style="width: 150px; border: 1px solid #11723A;opacity: 1!important;">
                    <p style="line-height: 2;font-size: 14px;font-weight: normal;
                        color: #ddd!important;direction: rtl;text-align: right;">
                        جمعية أهلية تعنى بأعضائها من المتقاعدين من الجنسين ومظلة ترعى مصالحهم وتسوق خبراتهم وتسعى
                        لتحسين
                        أوضاعهم من خلال ما تقدمه من برامج وأنشطة ومبادرات اجتماعية وثقافية وترفيهية تعزز الصحة وتوفر
                        بيئة اجتماعية تليق بهم وتوثق الصلات فيما بينهم لتحقيق جودة الحياة وفقاً لرؤية المملكة
                        2030 وبرنامج التحول الوطني.
                    </p>
                </div>

                <div class="col-lg-4 col-md-6 footer-links" style="text-align: right;direction: rtl;">
                    <h3 style="color: #fff; font-size: 30px!important;font-weight: bold;"> روابط سريعة </h3>
                    <hr style="width: 150px; border: 1px solid #11723A;opacity: 1!important;">
                    <ul class="footer-ul">
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('index')}}">الرئيسية</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('about')}}">عن الجمعية</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('services')}}">خدمات الجمعية</a>
                        </li>
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('contact')}}"> تواصل معنا </a></li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-6" style="text-align: right;direction: rtl;">
                    <h3 style="color: #fff; font-size: 30px!important;font-weight: bold;"> تواصل معنا </h3>
                    <hr style="width: 150px; border: 1px solid #11723A;opacity: 1!important;">
                    <ul class="footer-ul" style="list-style: none;">
                        <li><i class="fas fa-location-arrow"></i> <a href="javascript:;">
                                <span dir="rtl">
                                    {{$informations->address}}
                                </span>
                            </a></li>
                        <li><i class="fa fa-envelope"></i> <a href="javascript:;">{{$informations->email}}</a></li>
                        <li>
                            <i class="fa fa-phone"></i>
                            <a href="javascript:;" dir="ltr">
                                {{$informations->phone_number}}
                            </a>
                        </li>
                        <li>
                            <i class="fab fa-whatsapp"></i>
                            <a dir="ltr"
                               href="https://wa.me/{{$informations->phone_number}}"> {{$informations->phone_number}} </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        جميع الحقوق محفوظة لجمعية المتقاعدين بمنطقة الرياض 2022
    </div>
</footer><!-- End Footer -->
