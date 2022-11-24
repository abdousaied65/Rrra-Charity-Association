<?php

namespace App\Http\Controllers\Beneficiary\Auth;

use App\Http\Controllers\Controller;
use App\Mail\sendingEmail;
use App\Mail\SystemEmail;
use App\Models\Beneficiary;
use App\Models\MembershipType;
use App\Models\Qualification;
use App\Models\Setting;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Malath_SMS;

class RegisterController extends Controller
{
    use RegistersUsers;

    protected $redirectTo = RouteServiceProvider::BENEFICIARY_HOME;

    public function __construct()
    {
        $this->middleware('guest:beneficiary-web');
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'email' => ['required', 'email', 'unique:beneficiaries'],
            'phone_number' => ['required', 'string', 'max:255', 'unique:beneficiaries', 'regex:/^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$/'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'record' => ['required', 'min:10'],
            'gender' => ['required', 'string'],
            'first_name_ar' => 'required',
            'second_name_ar' => 'required',
            'third_name_ar' => 'required',
            'fourth_name_ar' => 'required',
            'first_name_en' => 'required',
            'second_name_en' => 'required',
            'third_name_en' => 'required',
            'fourth_name_en' => 'required',
            'employer' => 'required',
            'retirement_year' => 'required',
            'specialization' => 'required',
            'role_name' => 'required',
            'qualification_id' => 'required',
            'membership_type_id' => 'required',
            'Status' => 'required',
            'date_of_birth' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
        ]);
    }

    public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        if ($response = $this->registered($request, $user)) {
            return $response;
        }
        // sending email
        $email = $request->email;
        $subject = "تسجيل حساب عضو جديد";
$message = 'تم قبول عضويتكم ('.$user->membershipType->membership_type.')
رقم ('.$user->id.') بجمعية المتقاعدين الأهلية بمنطقة الرياض
';

        $data = array(
            'message' => $message,
            'subject' => $subject,
            'from_email' => $email
        );
        Mail::to($email)->send(new sendingEmail($data));
        $settings = Setting::First();
        Mail::to($settings->email)->send(new SystemEmail($data));

//        include(app_path() . '/Functions/sms.class.php');
//        $DTT_SMS = new Malath_SMS(env('SMS_UserName'), env('SMS_Password'), 'UTF-8');
//        $Originator = env('SMS_Originator');
//        $CheckUser = $DTT_SMS->CheckUserPassword();
//        // data to send SMS
//        $SmS_Msg = $message;
//        $Mobiles = $request->phone_number;
//        // Code to Send SMS
//        $Send = $DTT_SMS->Send_SMS($Mobiles, $Originator, $SmS_Msg, $CheckUser);

        $order_id = rand(4111, 9999);

        $membership_type_id = $request->membership_type_id;
        $amount = MembershipType::FindOrFail($membership_type_id)->price;

        $telrManager = new \TelrGateway\TelrManager();

        $billingParams = [
            "ref" => "OrderRef",
            "test" => 1,
            'first_name' => $request->first_name_ar,
            'sur_name' => $request->fourth_name_ar,
            'address_1' => '354',
            'address_2' => 'elhammad',
            'city' => 'rasheed',
            'zip' => '22456',
            'country' => 'sa',
            'bill_country' => 'sa',
            'email' => $request->email,
            'phone' => $request->phone_number,
            'bill_phone' => $request->phone_number,
            'fields' => $user
        ];
        $description = "انشاء عضوية جديدة من " . $request->first_name_ar . " " . $request->fourth_name_ar;
        return $telrManager->pay($order_id, $amount, $description, $billingParams)->redirect();

//        return redirect()->route('beneficiary.register')
//            ->with('success', '
//            تم انشاء حسابك بنجاح وهو الان قيد المراجعة من قبل الادارة
//            ..
//            سيتم التواصل معك بمجرد تفعيل الحساب
//            ');
    }

    protected function create($data)
    {
        $data['password'] = Hash::make($data['password']);
        $beneficiary = Beneficiary::create($data);
        return $beneficiary;
    }

    public function showRegistrationForm()
    {
        $qualifications = Qualification::all();
        $membership_types = MembershipType::all();

        return view('beneficiary.auth.register', compact('membership_types', 'qualifications'));
    }

    protected function guard()
    {
        return Auth::guard('beneficiary-web');
    }
}
