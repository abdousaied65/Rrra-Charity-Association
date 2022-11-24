<?php

namespace App\Http\Controllers\Beneficiary;

use App\Http\Controllers\Controller;
use App\Mail\sendingEmail;
use App\Mail\SystemEmail;
use App\Models\Beneficiary;
use App\Models\MembershipType;
use App\Models\RenewalRequest;
use App\Models\Setting;
use Elibyy\TCPDF\TCPDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Malath_SMS;
use ArPHP\I18N\Arabic;

Carbon::setLocale('ar');

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth:beneficiary-web', 'CheckStatus']);
    }

    public function index()
    {
        $auth_id = Auth::user()->id;
        $beneficiary = Beneficiary::findOrFail($auth_id);
        $membership_types = MembershipType::all();
        return view('beneficiary.home', compact('membership_types','beneficiary'));
    }

    public function DownloadPdf(Request $request)
    {
        $auth_id = Auth::user()->id;
        $beneficiary = Beneficiary::findOrFail($auth_id);
        $beneficiary_id = $beneficiary->id;
        $name_ar = $beneficiary->first_name_ar . " " . $beneficiary->second_name_ar . " " . $beneficiary->third_name_ar . " " . $beneficiary->fourth_name_ar . " ";
        $name_en = ucfirst($beneficiary->first_name_en) . " " . ucfirst($beneficiary->second_name_en) . " " . ucfirst($beneficiary->third_name_en) . " " . ucfirst($beneficiary->fourth_name_en) . " ";
        $record = $beneficiary->record;
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $lg = array();
        $lg['a_meta_charset'] = 'UTF-8';
        $lg['a_meta_dir'] = 'rtl';
        $lg['a_meta_language'] = 'fa';
        $lg['w_page'] = 'page';
        $pdf->setLanguageArray($lg);
        $pdf->AddPage();
        $pdf->setPageOrientation('L');
        $bMargin = $pdf->getBreakMargin();
        $auto_page_break = $pdf->getAutoPageBreak();
        $pdf->SetAutoPageBreak(false, 0);
        $pdf->setRTL(true);
        $pdf->SetFont('almohanad', '', 28);
        $pdf->SetTextColor(126, 175, 93);
        $pdf->Image('img/front.png', 2, 2, '293', '205', '', '', '', false, 300, '', false, false, 0);

        $pdf->setRTL(false);
        $pdf->SetXY(0, 70);

        $name_ar = '<div style="margin-top: 200px!important;text-align:center!important;justify-content: center!important; align-items: center!important;">'.$name_ar.'</div>';
        $pdf->writeHTML($name_ar, true, 0, true, true);
        $pdf->SetXY(0, 80);

        $name_en = '<div style="margin-top: 110px!important;text-align:center!important;justify-content: center!important; align-items: center!important;">'.$name_en.'</div>';
        $pdf->writeHTML($name_en, true, 0, true, true);

        $pdf->setRTL(true);

        $pdf->SetFont('almohanad', '', 38);
        $pdf->writeHTMLCell(0, 0, 90, 107, $record, 0, 1, 0, true, 'D', true);
        $pdf->SetFont('almohanad', '', 28);
        $membership = $beneficiary->membershipType->membership_type;
        $date_of_birth = $beneficiary->date_of_birth;
        $Arabic = new Arabic();
        $date_of_birth_hijri = $Arabic->date('Y-m-d', strtotime($date_of_birth));

        $pdf->writeHTMLCell(0, 0, 230, 107, $membership, 0, 1, 0, true, 'D', true);
        $pdf->SetFont('almohanad', '', 38);

        $pdf->writeHTMLCell(0, 0, 90, 122, $date_of_birth, 0, 1, 0, true, 'D', true);
        $pdf->writeHTMLCell(0, 0, 90, 140, $date_of_birth_hijri, 0, 1, 0, true, 'D', true);

        $pdf->writeHTMLCell(0, 0, 230, 122, $beneficiary->id, 0, 1, 0, true, 'D', true);
        $pdf->writeHTMLCell(0, 0, 230, 140, $beneficiary->start_date, 0, 1, 0, true, 'D', true);

        $pdf->SetTextColor(255, 0, 0);

        $pdf->writeHTMLCell(0, 0, 155, 168, $beneficiary->end_date, 0, 1, 0, true, 'D', true);

        $pdf->setLanguageArray($lg);
        $pdf->AddPage();
        $pdf->setPageOrientation('L');
        $bMargin = $pdf->getBreakMargin();
        $auto_page_break = $pdf->getAutoPageBreak();
        $pdf->SetAutoPageBreak(false, 0);
        $pdf->setRTL(true);
        $pdf->SetFont('almohanad', '', 28);
        $pdf->SetTextColor(126, 175, 93);
        $pdf->Image('img/back.png', 2, 2, '293', '205', '', '', '', false, 300, '', false, false, 0);

        $pdf->write2DBarcode(route('membership',$beneficiary->id), 'QRCODE,H', 270, 90, 77, 77, null,'R', 'T');

        $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
        $pdf->setPageMark();
        $full_path = public_path('uploads/beneficiaries/cards/') . 'CARD_' . $beneficiary_id . '.pdf';
        $pdf->Output($full_path, 'F');
        $pdf->Output('Beneficiary.pdf');
        exit();
    }

    public function edit_profile($id)
    {
        $beneficiary = Beneficiary::findOrFail($id);
        return view('beneficiary.home', compact('beneficiary'));
    }

    public function update_profile(Request $request, $id)
    {
        $this->validate($request, [
            'email' => ['required', 'email'],
            'phone_number' => ['required', 'string', 'max:255', 'regex:/^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$/'],
            'password' => ['required', 'string', 'min:8', 'same:confirm-password'],
            'gender' => ['required','string'],
        ]);

        $input = $request->all();
        if (!empty($input['password'])) {
            $input['password'] = Hash::make($input['password']);
        } else {
            $input = array_except($input, array('password'));
        }
        $beneficiary = Beneficiary::findOrFail($id);
        $beneficiary->update($input);
        return redirect()->back()->with('success', 'تم تحديث البيانات الشخصية بنجاح ');
    }

    public function renewal_request(Request $request)
    {
        $auth_id = Auth::user()->id;
        $beneficiary = Beneficiary::findOrFail($auth_id);
        $period = $request->period;
        $membership_type_id = $request->membership_type_id;
        $amount = $request->amount;
        $start_date = date('Y-m-d');
        $end_date = date('Y-m-d', strtotime($start_date.'+'.$period.' year'));
        $renewal_request = RenewalRequest::create([
            'beneficiary_id' => $beneficiary->id,
            'period' => $period,
            'membership_type_id' => $membership_type_id,
            'amount' => $amount,
            'start_date' => $start_date,
            'end_date' => $end_date,
            'status' => 'قيد المراجعة',
        ]);
        if ($period == 1) {
            $period_text = "سنة";
        } elseif ($period == 2) {
            $period_text = "سنتين";
        } elseif ($period == 3) {
            $period_text = "3 سنوات";
        }
        // sending email
        $email = $beneficiary->email;
        $subject = "تقديم طلب تجديد عضوية";
        $message = "
        مرحبا/ (" . $beneficiary->first_name_ar . ")
        تم تقديم طلب تجديد عضويتك لمدة ( " . $period_text . " ) في جمعية المتقاعدين بمنطقة الرياض بنجاح.
         سيتم تفعيل حسابكم قريبآ من قبل الإدارة.
        ستصلكم رسالة على البريد والجوال في حال التفعيل.
        ";
        $data = array(
            'message' => $message,
            'subject' => $subject,
            'from_email' => $email
        );
        Mail::to($email)->send(new sendingEmail($data));
        $settings = Setting::First();
        Mail::to($settings->email)->send(new SystemEmail($data));

        // include(app_path() . '/Functions/sms.class.php');
        // $DTT_SMS = new Malath_SMS(env('SMS_UserName'), env('SMS_Password'), 'UTF-8');
        // $Originator = env('SMS_Originator');
        // $CheckUser = $DTT_SMS->CheckUserPassword();
        // // data to send SMS
        // $SmS_Msg = $message;
        // $Mobiles = $beneficiary->phone_number;
        // // Code to Send SMS
        // $Send = $DTT_SMS->Send_SMS($Mobiles, $Originator, $SmS_Msg, $CheckUser);

        $order_id = rand(4111, 9999);
        $telrManager = new \TelrGateway\TelrManager();

        $request->request->add(['id' => 1]);

        $billingParams = [
            "ref" => "OrderRef",
            "test" => 1,
            'first_name' => $beneficiary->first_name_ar,
            'sur_name' => $beneficiary->fourth_name_ar,
            'address_1' => '354',
            'address_2' => 'elhammad',
            'city' => 'rasheed',
            'zip' => '22456',
            'country' => 'sa',
            'bill_country' => 'sa',
            'email' => $beneficiary->email,
            'phone' => $beneficiary->phone_number,
            'bill_phone' => $beneficiary->phone_number,
            'fields' => $request->all(),
        ];
        $description = "طلب تجديد عضوية من العضو " . $beneficiary->first_name_ar . " " . $beneficiary->fourth_name_ar . " ولمدة " . $period_text;

        return $telrManager->pay($order_id, $amount, $description, $billingParams)->redirect();
    }

    public function renewal_requests(Request $request)
    {
        $auth_id = Auth::user()->id;
        $beneficiary = Beneficiary::findOrFail($auth_id);
        $requests = RenewalRequest::where('beneficiary_id', $beneficiary->id)->get();
        $membership_types = MembershipType::all();
        return view('beneficiary.requests', compact('requests','membership_types', 'beneficiary'));
    }

    public function membership_details()
    {
        $auth_id = Auth::user()->id;
        $beneficiary = Beneficiary::findOrFail($auth_id);
        $membership_types = MembershipType::all();
        return view('beneficiary.membership_details', compact('beneficiary','membership_types'));
    }

    public function get_amount_total(Request $request)
    {
        $membership_type_id = $request->membership_type_id;
        $membership_type = MembershipType::FindOrFail($membership_type_id);
        $price = $membership_type->price;
        $period = $request->period;
        $total_price = $period * $price;
        return response()->json([
            'amount' => $total_price,
        ]);
    }
}
