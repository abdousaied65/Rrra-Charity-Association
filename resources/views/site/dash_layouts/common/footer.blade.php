<!-- ======= Footer ======= -->
<footer id="footer">
    <div class="footer-top" style="
        background:#444;">
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

                <div class="col-lg-4 col-md-6 footer-newsletter" style="text-align: right;direction: rtl;">
                    <h3 style="color: #fff; font-size: 30px!important;font-weight: bold;"> تواصل معنا </h3>
                    <hr style="width: 150px; border: 1px solid #11723A;opacity: 1!important;">
                    <ul class="footer-ul" style="list-style: none;">
                        <li><i class="fa fa-location-arrow"></i> <a href="javascript:;">
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
                            <i class="fa fa-whatsapp"></i>
                            <a dir="ltr"
                               href="https://wa.me/{{$informations->phone_number}}"> {{$informations->phone_number}} </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright" style="border-top:1px solid #fff !important;">
        جميع الحقوق محفوظة لجمعية المتقاعدين بمنطقة الرياض 2022
    </div>
</footer><!-- End Footer -->
