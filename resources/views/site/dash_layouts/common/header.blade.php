<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container">
        <nav dir="rtl" id="navbar" class="navbar d-inline float-left pull-left ">
            <ul>
                <li><a class="nav-link scrollto {{ Request::is('/') ? 'active' : '' }}" href="{{route('index')}}">الرئيسية</a>
                </li>
                <li><a class="nav-link scrollto {{ Request::is('about') ? 'active' : '' }}" href="{{route('about')}}">
                        عن الجمعية
                    </a></li>
                <li><a class="nav-link scrollto {{ Request::is('services') ? 'active' : '' }}"
                       href="{{route('services')}}">خدمات الجمعية</a></li>
                <li><a class="nav-link scrollto {{ Request::is('contact') ? 'active' : '' }}"
                       href="{{route('contact')}}">تواصل معنا</a></li>
                <li class="dropdown">
                    <a href="javascript:;"><span>تسجيل الدخول</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="{{route('beneficiary.login')}}">تسجيل دخول عضو</a></li>
                    </ul>
                </li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
        <a href="{{route('index')}}" class="logo d-inline pull-right float-right">
            <img src="{{asset('assets/img/logo.png')}}">
        </a>
    </div>
</header><!-- End Header -->
