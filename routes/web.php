<?php

use App\Http\Controllers\PaymentController;
use App\Models\Service;
use App\Models\Slider;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Route::get('/', function () {
    $sliders = Slider::all();
    return view('site.index',compact('sliders'));
})->name('index');

Route::get('/about', function () {
    return view('site.about');
})->name('about');

Route::get('/services', function () {
    $services = Service::all();
    return view('site.services',compact('services'));
})->name('services');

Route::get('/contact', function () {
    return view('site.contact');
})->name('contact');
Route::post('/contact-store', 'ContactController@store')->name('contact.store');
Route::post('/subscribe', 'ContactController@subscribe')->name('subscribe');

// orders Routes
Route::resource('orders', 'OrderController')->names([
    'index' => 'orders.index',
    'create' => 'orders.create',
    'store' => 'orders.store',
]);
Route::post('/orders-search', 'OrderController@search')->name('orders.search');

Route::get('/volunteers-create', 'VolunteerController@create')->name('volunteers.create');
Route::post('/volunteers-store', 'VolunteerController@store')->name('volunteers.store');

Route::get('/donation','PaymentController@donation')->name('donation');

Route::get('/checkout', [PaymentController::class, 'index'])->name('checkout.index');
Route::post('/checkout/telr', [PaymentController::class, 'store'])->name('checkout.store');

Route::get('/handle-payment/success', [PaymentController::class, 'success']);
Route::get('/handle-payment/cancel', [PaymentController::class, 'cancel']);
Route::get('/handle-payment/declined', [PaymentController::class, 'declined']);

Route::get('/membership/{id?}', 'QrController@index')->name('membership');

// *********  Supervisor Routes ******** //
Route::group(
    [
        'namespace' => 'Supervisor'
    ], function () {
    Auth::routes(
        [
            'verify' => false,
            'register' => false,
        ]
    );
    Route::GET('supervisor/login', 'Auth\LoginController@showLoginForm')->name('supervisor.login');
    Route::POST('supervisor/login', 'Auth\LoginController@login');
    Route::POST('supervisor/logout', 'Auth\LoginController@logout')->name('supervisor.logout');
    Route::GET('supervisor/password/confirm', 'Auth\ConfirmPasswordController@showConfirmForm')->name('supervisor.password.confirm');
    Route::POST('supervisor/password/confirm', 'Auth\ConfirmPasswordController@confirm');
    Route::POST('supervisor/password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('supervisor.password.email');
    Route::GET('supervisor/password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('supervisor.password.request');
    Route::POST('supervisor/password/reset', 'Auth\ResetPasswordController@reset')->name('supervisor.password.update');
    Route::GET('supervisor/password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('supervisor.password.reset');
    });

Route::group(
    ['middleware' => ['auth:supervisor-web'],
        'prefix' => 'supervisor',
        'namespace' => 'Supervisor'
    ], function () {
    Route::get('/', 'Auth\LoginController@showLoginForm');
    Route::get('/home', 'HomeController@index')->name('supervisor.home');
    Route::get('/lock-screen', 'HomeController@lock_screen')->name('supervisor.lock.screen');

    Route::get('/settings', 'SettingController@index')->name('supervisor.settings.index');
    Route::post('/settings-update', 'SettingController@update')->name('supervisor.settings.update');

    Route::get('/informations', 'SettingController@info')->name('supervisor.informations.index');
    Route::post('/informations-update', 'SettingController@update_info')->name('supervisor.informations.update');

    Route::get('/about-content', 'SettingController@about_content')->name('supervisor.about_content.index');
    Route::post('/about-content-update', 'SettingController@about_content_update')->name('supervisor.about_content.update');

    Route::get('/donation-content', 'SettingController@donation_content')->name('supervisor.donation_content.index');
    Route::post('/donation-content-update', 'SettingController@donation_content_update')->name('supervisor.donation_content.update');

    // services Routes
    Route::resource('services', 'ServiceController')->names([
        'index' => 'supervisor.services.index',
        'create' => 'supervisor.services.create',
        'update' => 'supervisor.services.update',
        'destroy' => 'supervisor.services.destroy',
        'edit' => 'supervisor.services.edit',
        'store' => 'supervisor.services.store',
        'show' => 'supervisor.services.show',
    ]);
    Route::post('/remove-selected-services','ServiceController@remove_selected')->name('remove.selected.services');
    Route::get('/print-selected-services','ServiceController@print_selected')->name('print.selected.services');
    Route::post('/export-services-excel', 'ServiceController@export_services_excel')->name('export.services.excel');



    // Supervisors Routes
    Route::resource('supervisors', 'SupervisorController')->names([
        'index' => 'supervisor.supervisors.index',
        'create' => 'supervisor.supervisors.create',
        'update' => 'supervisor.supervisors.update',
        'destroy' => 'supervisor.supervisors.destroy',
        'edit' => 'supervisor.supervisors.edit',
        'store' => 'supervisor.supervisors.store',
        'show' => 'supervisor.supervisors.show',
    ]);
    Route::post('/remove-selected-supervisors','SupervisorController@remove_selected')->name('remove.selected.supervisors');
    Route::get('/print-selected-supervisors','SupervisorController@print_selected')->name('print.selected.supervisors');

    Route::post('/export-supervisors-excel', 'SupervisorController@export_supervisors_excel')->name('export.supervisors.excel');

    // SupervisorProfile Routes
    Route::get('profile/edit/{id}', 'SupervisorController@edit_profile')->name('supervisor.profile.edit');
    Route::patch('profile/update/{id}', 'SupervisorController@update_profile')->name('supervisor.profile.update');

    // Roles Routes
    Route::resource('roles', 'RoleController')->names([
        'index' => 'supervisor.roles.index',
        'create' => 'supervisor.roles.create',
        'update' => 'supervisor.roles.update',
        'destroy' => 'supervisor.roles.destroy',
        'edit' => 'supervisor.roles.edit',
        'store' => 'supervisor.roles.store',
    ]);

    // nationalities Routes
    Route::resource('nationalities', 'NationalityController')->names([
        'index' => 'supervisor.nationalities.index',
        'create' => 'supervisor.nationalities.create',
        'update' => 'supervisor.nationalities.update',
        'destroy' => 'supervisor.nationalities.destroy',
        'edit' => 'supervisor.nationalities.edit',
        'store' => 'supervisor.nationalities.store',
        'show' => 'supervisor.nationalities.show',
    ]);
    Route::post('/remove-selected-nationalities','NationalityController@remove_selected')->name('remove.selected.nationalities');
    Route::get('/print-selected-nationalities','NationalityController@print_selected')->name('print.selected.nationalities');
    Route::post('/export-nationalities-excel', 'NationalityController@export_nationalities_excel')->name('export.nationalities.excel');

    // qualifications Routes
    Route::resource('qualifications', 'QualificationController')->names([
        'index' => 'supervisor.qualifications.index',
        'create' => 'supervisor.qualifications.create',
        'update' => 'supervisor.qualifications.update',
        'destroy' => 'supervisor.qualifications.destroy',
        'edit' => 'supervisor.qualifications.edit',
        'store' => 'supervisor.qualifications.store',
        'show' => 'supervisor.qualifications.show',
    ]);
    Route::post('/remove-selected-qualifications','QualificationController@remove_selected')->name('remove.selected.qualifications');
    Route::get('/print-selected-qualifications','QualificationController@print_selected')->name('print.selected.qualifications');
    Route::post('/export-qualifications-excel', 'QualificationController@export_qualifications_excel')->name('export.qualifications.excel');

    // order_types Routes
    Route::resource('order_types', 'OrderTypeController')->names([
        'index' => 'supervisor.order_types.index',
        'create' => 'supervisor.order_types.create',
        'update' => 'supervisor.order_types.update',
        'destroy' => 'supervisor.order_types.destroy',
        'edit' => 'supervisor.order_types.edit',
        'store' => 'supervisor.order_types.store',
        'show' => 'supervisor.order_types.show',
    ]);
    Route::post('/remove-selected-order-types','OrderTypeController@remove_selected')->name('remove.selected.order_types');
    Route::get('/print-selected-order-types','OrderTypeController@print_selected')->name('print.selected.order_types');
    Route::post('/export-order-types-excel', 'OrderTypeController@export_order_types_excel')->name('export.order_types.excel');

    // membership_types Routes
    Route::resource('membership_types', 'MembershipTypeController')->names([
        'index' => 'supervisor.membership_types.index',
        'create' => 'supervisor.membership_types.create',
        'update' => 'supervisor.membership_types.update',
        'destroy' => 'supervisor.membership_types.destroy',
        'edit' => 'supervisor.membership_types.edit',
        'store' => 'supervisor.membership_types.store',
        'show' => 'supervisor.membership_types.show',
    ]);
    Route::post('/remove-selected-membership-types','MembershipTypeController@remove_selected')->name('remove.selected.membership_types');
    Route::get('/print-selected-membership-types','MembershipTypeController@print_selected')->name('print.selected.membership_types');
    Route::post('/export-membership-types-excel', 'MembershipTypeController@export_membership_types_excel')->name('export.membership_types.excel');


    // fields Routes
    Route::resource('fields', 'FieldController')->names([
        'index' => 'supervisor.fields.index',
        'create' => 'supervisor.fields.create',
        'update' => 'supervisor.fields.update',
        'destroy' => 'supervisor.fields.destroy',
        'edit' => 'supervisor.fields.edit',
        'store' => 'supervisor.fields.store',
        'show' => 'supervisor.fields.show',
    ]);
    Route::post('/remove-selected-fields','FieldController@remove_selected')->name('remove.selected.fields');
    Route::get('/print-selected-fields','FieldController@print_selected')->name('print.selected.fields');
    Route::post('/export-fields-excel', 'FieldController@export_fields_excel')->name('export.fields.excel');

    // beneficiaries Routes
    Route::resource('beneficiaries', 'BeneficiaryController')->names([
        'index' => 'supervisor.beneficiaries.index',
        'create' => 'supervisor.beneficiaries.create',
        'update' => 'supervisor.beneficiaries.update',
        'destroy' => 'supervisor.beneficiaries.destroy',
        'edit' => 'supervisor.beneficiaries.edit',
        'store' => 'supervisor.beneficiaries.store',
        'show' => 'supervisor.beneficiaries.show',
    ]);

    Route::post('/remove-selected-beneficiaries','BeneficiaryController@remove_selected')->name('remove.selected.beneficiaries');
    Route::get('/print-selected-beneficiaries','BeneficiaryController@print_selected')->name('print.selected.beneficiaries');

    Route::post('/export-beneficiaries-excel', 'BeneficiaryController@export_beneficiaries_excel')->name('export.beneficiaries.excel');

    Route::post('/export-beneficiaries-by-qualification-excel', 'BeneficiaryController@export_beneficiaries_by_qualification_excel')
        ->name('export.beneficiaries.by.qualification.excel');

    Route::post('/export-beneficiaries-by-membership_type-excel', 'BeneficiaryController@export_beneficiaries_by_membership_type_excel')
        ->name('export.beneficiaries.by.membership_type.excel');

    Route::post('/export-beneficiaries-by-status-excel', 'BeneficiaryController@export_beneficiaries_by_status_excel')
        ->name('export.beneficiaries.by.status.excel');

    Route::get('/allow-beneficiary/{id?}','BeneficiaryController@allow')->name('supervisor.beneficiaries.allow');
    Route::get('/deny-beneficiary/{id?}','BeneficiaryController@deny')->name('supervisor.beneficiaries.deny');
    Route::get('/waiting-beneficiary/{id?}','BeneficiaryController@waiting')->name('supervisor.beneficiaries.waiting');

    Route::get('/renew-one-beneficiary/{id?}','BeneficiaryController@renew_one')->name('supervisor.beneficiaries.renew.one');
    Route::get('/renew-two-beneficiary/{id?}','BeneficiaryController@renew_two')->name('supervisor.beneficiaries.renew.two');
    Route::get('/renew-three-beneficiary/{id?}','BeneficiaryController@renew_three')->name('supervisor.beneficiaries.renew.three');

    Route::get('/renewal-requests','BeneficiaryController@renewal_requests')->name('supervisor.renewal.requests');
    Route::get('/print-renewal-requests','BeneficiaryController@print_renewal_requests')->name('print.renewal.requests');
    Route::post('/remove-renewal-requests','BeneficiaryController@remove_renewal_requests')->name('remove.renewal.requests');
    Route::post('/export-requests-excel', 'BeneficiaryController@export_requests_excel')->name('export.requests.excel');

    Route::get('/allow-request/{id?}','BeneficiaryController@allow_request')->name('supervisor.request.allow');
    Route::get('/deny-request/{id?}','BeneficiaryController@deny_request')->name('supervisor.request.deny');
    Route::delete('/destroy-request/','BeneficiaryController@destroy_request')->name('supervisor.request.destroy');


    // orders Routes
    Route::resource('orders', 'OrderController')->names([
        'index' => 'supervisor.orders.index',
        'create' => 'supervisor.orders.create',
        'update' => 'supervisor.orders.update',
        'destroy' => 'supervisor.orders.destroy',
        'edit' => 'supervisor.orders.edit',
        'store' => 'supervisor.orders.store',
        'show' => 'supervisor.orders.show',
    ]);

    Route::post('/remove-selected-orders','OrderController@remove_selected')->name('remove.selected.orders');
    Route::get('/print-selected-orders','OrderController@print_selected')->name('print.selected.orders');
    Route::post('/export-orders-excel', 'OrderController@export_orders_excel')->name('export.orders.excel');

    Route::post('/export-orders-by-nationality-excel', 'OrderController@export_orders_by_nationality_excel')
        ->name('export.orders.by.nationality.excel');

    Route::post('/export-orders-by-status-excel', 'OrderController@export_orders_by_status_excel')
        ->name('export.orders.by.status.excel');

    Route::post('/export-orders-by-ordertype-excel', 'OrderController@export_orders_by_order_type_excel')
        ->name('export.orders.by.order_type.excel');

    Route::get('/allow-order/{id?}','OrderController@allow')->name('supervisor.orders.allow');
    Route::get('/deny-order/{id?}','OrderController@deny')->name('supervisor.orders.deny');
    Route::get('/waiting-order/{id?}','OrderController@waiting')->name('supervisor.orders.waiting');

    // volunteers Routes
    Route::resource('volunteers', 'VolunteerController')->names([
        'index' => 'supervisor.volunteers.index',
        'create' => 'supervisor.volunteers.create',
        'update' => 'supervisor.volunteers.update',
        'destroy' => 'supervisor.volunteers.destroy',
        'edit' => 'supervisor.volunteers.edit',
        'store' => 'supervisor.volunteers.store',
        'show' => 'supervisor.volunteers.show',
    ]);

    Route::post('/remove-selected-volunteers','VolunteerController@remove_selected')->name('remove.selected.volunteers');
    Route::get('/print-selected-volunteers','VolunteerController@print_selected')->name('print.selected.volunteers');
    Route::post('/export-volunteers-excel', 'VolunteerController@export_volunteers_excel')->name('export.volunteers.excel');
    Route::post('/export-volunteers-by-field-excel', 'VolunteerController@export_volunteers_by_field_excel')
        ->name('export.volunteers.by.field.excel');
    Route::post('/export-volunteers-by-status-excel', 'VolunteerController@export_volunteers_by_status_excel')
        ->name('export.volunteers.by.status.excel');

    Route::post('/export-volunteers-by-end-excel', 'VolunteerController@export_volunteers_by_end_excel')
        ->name('export.volunteers.by.end.excel');

    Route::get('/allow-volunteer/{id?}','VolunteerController@allow')->name('supervisor.volunteers.allow');
    Route::get('/deny-volunteer/{id?}','VolunteerController@deny')->name('supervisor.volunteers.deny');
    Route::get('/waiting-volunteer/{id?}','VolunteerController@waiting')->name('supervisor.volunteers.waiting');


    // Contacts Routes
    Route::resource('contacts', 'ContactController')->names([
        'index' => 'supervisor.contacts.index',
        'show' => 'supervisor.contacts.show',
        'destroy' => 'supervisor.contacts.destroy'
    ]);
    Route::patch('contacts-make-as-read', 'ContactController@makeAsRead')->name('supervisor.contacts.make.as.read');
    Route::patch('contacts-make-as-important', 'ContactController@makeAsImportant')->name('supervisor.contacts.make.as.important');
    Route::patch('contacts-make-as-destroy', 'ContactController@makeAsDestroy')->name('supervisor.contacts.make.as.destroy');
    Route::patch('contacts-print', 'ContactController@print')->name('supervisor.contacts.print');
    Route::get('contacts-important', 'ContactController@showImportant')->name('supervisor.contacts.important');
    Route::post('contacts-reply', 'ContactController@reply')->name('supervisor.contacts.reply');

    // slider Routes
    Route::resource('slider', 'SliderController')->names([
        'index' => 'supervisor.slider.index',
        'create' => 'supervisor.slider.create',
        'destroy' => 'supervisor.slider.destroy',
        'edit' => 'supervisor.slider.edit',
        'update' => 'supervisor.slider.update',
        'store' => 'supervisor.slider.store',
    ]);
    Route::post('/remove-selected-slider','SliderController@remove_selected')->name('remove.selected.slider');

    // maillists Routes
    Route::resource('maillists', 'MailListController')->names([
        'index' => 'supervisor.maillists.index',
        'create' => 'supervisor.maillists.create',
        'update' => 'supervisor.maillists.update',
        'destroy' => 'supervisor.maillists.destroy',
        'edit' => 'supervisor.maillists.edit',
        'store' => 'supervisor.maillists.store',
        'show' => 'supervisor.maillists.show',
    ]);
    Route::post('/remove-selected-maillists','MailListController@remove_selected')->name('remove.selected.maillists');
    Route::get('/print-selected-maillists','MailListController@print_selected')->name('print.selected.maillists');

    Route::post('/export-maillists-excel', 'MailListController@export_maillists_excel')->name('export.maillists.excel');

    Route::get('/maillists-mail','MailListController@maillist_mail')->name('maillists.mail');
    Route::post('/maillists-send','MailListController@maillist_send')->name('maillists.send');

});
// *********  User Routes ******** //

// *********  Beneficiary Routes ******** //
Route::group(
    [
        'namespace' => 'Beneficiary'
    ], function () {
    Auth::routes(
        [
            'verify' => false,
            'register' => true,
        ]
    );
    Route::GET('beneficiary/login', 'Auth\LoginController@showLoginForm')->name('beneficiary.login');
    Route::POST('beneficiary/login', 'Auth\LoginController@login');
    Route::POST('beneficiary/logout', 'Auth\LoginController@logout')->name('beneficiary.logout');
    Route::GET('beneficiary/register', 'Auth\RegisterController@showRegistrationForm')->name('beneficiary.register');
    Route::POST('beneficiary/register', 'Auth\RegisterController@register');
    Route::GET('beneficiary/password/confirm', 'Auth\ConfirmPasswordController@showConfirmForm')->name('beneficiary.password.confirm');
    Route::POST('beneficiary/password/confirm', 'Auth\ConfirmPasswordController@confirm');
    Route::POST('beneficiary/password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('beneficiary.password.email');
    Route::GET('beneficiary/password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('beneficiary.password.request');
    Route::POST('beneficiary/password/reset', 'Auth\ResetPasswordController@reset')->name('beneficiary.password.update');
    Route::GET('beneficiary/password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('beneficiary.password.reset');
});

Route::group(
    ['middleware' => ['auth:beneficiary-web'],
        'prefix' => 'beneficiary',
        'namespace' => 'Beneficiary'
    ], function () {
    Route::get('/', 'HomeController@index')->name('beneficiary.home');
    Route::get('/home', 'HomeController@index')->name('beneficiary.home');
    Route::get('/download-pdf','HomeController@DownloadPdf')->name('beneficiary.download.pdf');

    Route::post('/get-amount-total','HomeController@get_amount_total')->name('get.amount.total');

    Route::post('/renewal-request','HomeController@renewal_request')->name('renewal.request');
    Route::get('/renewal-requests','HomeController@renewal_requests')->name('renewal.requests');
    Route::get('/membership-details','HomeController@membership_details')->name('membership.details');

    // SupervisorProfile Routes
    Route::get('profile/edit/{id}', 'HomeController@edit_profile')->name('beneficiary.profile.edit');
    Route::patch('profile/update/{id}', 'HomeController@update_profile')->name('beneficiary.profile.update');

});

?>
