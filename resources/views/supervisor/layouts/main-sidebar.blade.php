<style>

</style>
<!-- main-sidebar -->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar sidebar-scroll">
    <div class="main-sidebar-header active">
        <a class="desktop-logo logo-light active" href="{{ url('/supervisor/' . $page='home') }}"><img
                src="{{URL::asset($settings->logo)}}" class="main-logo" alt="logo"></a>
        <a class="logo-icon mobile-logo icon-light active" href="{{ url('/supervisor/' . $page='home') }}"><img
                src="{{URL::asset($settings->favicon)}}" class="logo-icon" alt="logo"></a>
    </div>
    <div class="main-sidemenu" style="overflow: auto!important;">
        <div class="app-sidebar__user clearfix">
            <div class="dropdown user-pro-body">
                <a href="{{route('supervisor.home')}}">
                    <div class="">
                        <img alt="user-img" class="avatar avatar-xl brround"
                             src="{{URL::asset($settings->logo)}}">
                        <span class="avatar-status profile-status bg-green"></span>
                    </div>
                    <div class="user-info">
                        <h4 style="color: #000!important;" class="mt-3 mb-0">{{$settings->arabic_name}}</h4>
                    </div>
                </a>

            </div>
        </div>
        <ul class="side-menu" style="padding-bottom: 50px !important;" id="main-menu-navigation"
            data-menu="menu-navigation">
            <li class="slide {{ Request::is('home*') ? 'active' : '' }}">
                <a class="side-menu__item" href="{{ url('/supervisor/' . $page='home') }}">
                    <i class="fa fa-home side-menu__icon"></i>
                    <span class="side-menu__label"> الرئيسية </span></a>
            </li>
            @can('التحكم فى الموقع')
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="#">
                        <i class="fa fa-wrench side-menu__icon"></i>
                        <span class="side-menu__label">
                        التحكم فى الموقع
                    </span><i class="angle fe fe-chevron-down"></i>
                    </a>
                    <ul class="slide-menu">
                        <li>
                            <a class="slide-item" href="{{ route('supervisor.settings.index') }}">
                                اعدادات الموقع
                            </a>
                        </li>
                        <li>
                            <a class="slide-item" href="{{ route('supervisor.informations.index') }}">
                                معلومات التواصل
                            </a>
                        </li>
                        <li>
                            <a class="slide-item" href="{{ route('supervisor.about_content.index') }}">
                                تعديل صفحة من نحن
                            </a>
                        </li>

                        <li>
                            <a class="slide-item" href="{{ route('supervisor.donation_content.index') }}">
                                تعديل صفحة التبرع
                            </a>
                        </li>

                        <li>
                            <a class="slide-item" href="{{route('supervisor.slider.index')}}">
                                السلايدر
                            </a>
                        </li>
                    </ul>
                </li>
            @endcan
            @canany(['اضافة مشرف','عرض مشرف','اضافة صلاحية','عرض صلاحية'])
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="#">
                        <i class="fa fa-users side-menu__icon"></i>
                        <span class="side-menu__label">
                        المشرفين والصلاحيات
                    </span><i class="angle fe fe-chevron-down"></i>
                    </a>
                    <ul class="slide-menu">
                        @can('اضافة مشرف')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.supervisors.create') }}">
                                    اضافة مشرف جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض مشرف')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.supervisors.index') }}">
                                    قائمة المشرفين
                                </a>
                            </li>
                        @endcan
                        @can('اضافة صلاحية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.roles.create') }}">
                                    اضافة صلاحية جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض صلاحية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.roles.index') }}">
                                    قائمة صلاحيات المشرفين
                                </a>
                            </li>
                        @endcan
                    </ul>
                </li>
            @endcan
            @can('التحكم فى الموقع')
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="#">
                        <i class="fa fa-list side-menu__icon"></i>
                        <span class="side-menu__label">
                            خدمات الجمعية
                    </span><i class="angle fe fe-chevron-down"></i>
                    </a>
                    <ul class="slide-menu">

                        <li>
                            <a class="slide-item" href="{{ route('supervisor.services.create') }}">
                                اضافة خدمة جديدة
                            </a>
                        </li>
                        <li>
                            <a class="slide-item" href="{{ route('supervisor.services.index') }}">
                                قائمة خدمات الجمعية
                            </a>
                        </li>
                    </ul>
                </li>
            @endcan

            @canany(['اضافة عضو','عرض عضو'])
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="#">
                        <i class="fa fa-users side-menu__icon"></i>
                        <span class="side-menu__label">
                        العضويات
                    </span><i class="angle fe fe-chevron-down"></i>
                    </a>
                    <ul class="slide-menu">
                        @can('اضافة عضو')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.beneficiaries.create') }}">
                                    اضافة عضو جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض عضو')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.beneficiaries.index') }}">
                                    قائمة العضويات
                                </a>
                            </li>
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.renewal.requests') }}">
                                    طلبات تجديد العضوية
                                </a>
                            </li>
                        @endcan

                        @can('اضافة عضو')
                            <li>
                                <a class="slide-item" href="{{ route('beneficiaries.emails') }}">
                                    ارسال رسالة الى الاعضاء
                                </a>
                            </li>
                        @endcan

                        @can('اضافة نوع عضوية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.membership_types.create') }}">
                                    اضافة نوع عضوية جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض نوع عضوية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.membership_types.index') }}">
                                    قائمة انواع العضويات
                                </a>
                            </li>
                        @endcan
                        @can('اضافة مؤهل')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.qualifications.create') }}">
                                    اضافة مؤهل جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض مؤهل')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.qualifications.index') }}">
                                    قائمة المؤهلات
                                </a>
                            </li>
                        @endcan

                        @can('اضافة عضو')
                            <li>
                                <a class="slide-item" href="{{ route('beneficiaries.expired.email') }}">
                                    رسالة تذكير للاعضاء المنتهية عضويتهم
                                </a>
                            </li>
                            <li>
                                <a class="slide-item" href="{{ route('beneficiaries.about.email') }}">
                                    رسالة تذكير للاعضاء الباقى على انتهاء عضويتهم شهر فأقل
                                </a>
                            </li>
                        @endcan

                    </ul>
                </li>
            @endcan


            @canany(['اضافة متطوع','عرض متطوع'])
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="#">
                        <i class="fa fa-users side-menu__icon"></i>
                        <span class="side-menu__label">
                        المتطوعين
                    </span><i class="angle fe fe-chevron-down"></i>
                    </a>
                    <ul class="slide-menu">
                        @can('اضافة متطوع')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.volunteers.create') }}">
                                    اضافة متطوع جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض متطوع')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.volunteers.index') }}">
                                    قائمة المتطوعين
                                </a>
                            </li>
                        @endcan
                        @can('اضافة مجال')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.fields.create') }}">
                                    اضافة مجال تطوع جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض مجال')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.fields.index') }}">
                                    قائمة مجالات التطوع
                                </a>
                            </li>
                        @endcan
                    </ul>
                </li>
            @endcan
            @canany(['اضافة طلب','عرض طلب'])
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="#">
                        <i class="fa fa-paper-plane side-menu__icon"></i>
                        <span class="side-menu__label">
                        الطلبات
                    </span><i class="angle fe fe-chevron-down"></i>
                    </a>
                    <ul class="slide-menu">
                        @can('اضافة طلب')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.orders.create') }}">
                                    اضافة طلب جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض طلب')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.orders.index') }}">
                                    قائمة الطلبات
                                </a>
                            </li>
                        @endcan
                        @can('اضافة نوع طلب')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.order_types.create') }}">
                                    اضافة نوع طلب جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض نوع طلب')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.order_types.index') }}">
                                    قائمة انواع الطلبات
                                </a>
                            </li>
                        @endcan
                    </ul>
                </li>
            @endcan

            @canany(['اضافة جنسية','عرض جنسية'])

                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="#">
                        <i class="fa fa-address-book side-menu__icon"></i>
                        <span class="side-menu__label">
                        الجنسيات
                    </span><i class="angle fe fe-chevron-down"></i>
                    </a>
                    <ul class="slide-menu">
                        @can('اضافة جنسية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.nationalities.create') }}">
                                    اضافة جنسية جديد
                                </a>
                            </li>
                        @endcan
                        @can('عرض جنسية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.nationalities.index') }}">
                                    قائمة الجنسيات
                                </a>
                            </li>
                        @endcan
                    </ul>
                </li>
            @endcan
            @canany(['اضافة قائمة بريدية','عرض قائمة بريدية'])
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="#">
                        <i class="fa fa-envelope-open side-menu__icon"></i>
                        <span class="side-menu__label">
                        القائمة البريدية
                    </span><i class="angle fe fe-chevron-down"></i>
                    </a>
                    <ul class="slide-menu">
                        @can('اضافة قائمة بريدية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.maillists.create') }}">
                                    اضافة الى القائمة البريدية
                                </a>
                            </li>
                        @endcan
                        @can('عرض قائمة بريدية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.maillists.index') }}">
                                    عرض القائمة البريدية
                                </a>
                            </li>
                        @endcan
                        @can('اضافة قائمة بريدية')
                            <li>
                                <a class="slide-item" href="{{ route('maillists.mail') }}">
                                    ارسال الى القائمة البريدية
                                </a>
                            </li>
                        @endcan
                        @can('اضافة قائمة بريدية','عرض قائمة بريدية')
                            <li>
                                <a class="slide-item" href="{{ route('supervisor.contacts.index') }}">
                                    رسائل الزوار
                                </a>
                            </li>
                        @endcan
                    </ul>
                </li>
            @endcan
        </ul>
    </div>
</aside>
<!-- main-sidebar -->
