<?php

namespace App\Http\Controllers\Supervisor;

use App\Exports\BeneficiariesExport;
use App\Exports\BeneficiariesExportByEnd;
use App\Exports\BeneficiariesExportByGender;
use App\Exports\BeneficiariesExportByMembershiptype;
use App\Exports\BeneficiariesExportByOneMonth;
use App\Exports\BeneficiariesExportByQualification;
use App\Exports\BeneficiariesExportByStatus;
use App\Exports\RequestsExport;
use App\Mail\sendingEmail;
use App\Mail\SystemEmail;
use App\Models\Beneficiary;
use App\Http\Controllers\Controller;
use App\Models\MembershipType;
use App\Models\Qualification;
use App\Models\RenewalRequest;
use App\Models\Setting;
use Illuminate\Support\Facades\Mail;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Malath_SMS;

class BeneficiaryController extends Controller
{
    public function index(Request $request)
    {
        $data = Beneficiary::where('paid', '!=', 'no')->get();
        $qualifications = Qualification::all();
        $membership_types = MembershipType::all();
        return view('supervisor.beneficiaries.index', compact('data', 'qualifications', 'membership_types'));
    }

    public function create()
    {
        $qualifications = Qualification::all();
        $membership_types = MembershipType::all();
        return view('supervisor.beneficiaries.create', compact('qualifications', 'membership_types'));

    }

    public function store(Request $request)
    {
        $this->validate($request, [
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
            'email' => 'required|email',
            'password' => 'required|same:confirm-password',
            'role_name' => 'required',
            'phone_number' => 'required',
            'record' => 'required',
            'gender' => 'required',
            'qualification_id' => 'required',
            'membership_type_id' => 'required',
            'Status' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
            'date_of_birth' => 'required',
        ]);
        $input = $request->all();
        $input['password'] = Hash::make($input['password']);
        $beneficiary = Beneficiary::create($input);
        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم اضافة عضو بنجاح');
    }

    public function show($id)
    {
        $beneficiary = Beneficiary::findorfail($id);
        return view('supervisor.beneficiaries.show', compact('beneficiary'));
    }


    public function edit($id)
    {
        $beneficiary = Beneficiary::findOrFail($id);
        $qualifications = Qualification::all();
        $membership_types = MembershipType::all();
        return view('supervisor.beneficiaries.edit', compact('beneficiary', 'qualifications', 'membership_types'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
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
            'email' => 'required|email',
            'password' => 'required|same:confirm-password',
            'role_name' => 'required',
            'phone_number' => 'required',
            'record' => 'required',
            'gender' => 'required',
            'qualification_id' => 'required',
            'membership_type_id' => 'required',
            'Status' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
            'date_of_birth' => 'required',
        ]);
        $input = $request->all();
        if (!empty($input['password'])) {
            $input['password'] = Hash::make($input['password']);
        } else {
            $input = array_except($input, array('password'));
        }
        $beneficiary = Beneficiary::findOrFail($id);
        $beneficiary->update($input);
        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم تعديل بيانات العضو بنجاح');
    }

    public function destroy(Request $request)
    {
        Beneficiary::findOrFail($request->beneficiary_id)->delete();
        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم حذف العضو بنجاح');
    }

    public function remove_selected(Request $request)
    {
        $beneficiaries_id = $request->beneficiaries;
        foreach ($beneficiaries_id as $beneficiary_id) {
            $beneficiary = Beneficiary::FindOrFail($beneficiary_id);
            $beneficiary->delete();
        }
        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم الحذف بنجاح');
    }

    public function print_selected()
    {
        $beneficiaries = Beneficiary::all();
        return view('supervisor.beneficiaries.print', compact('beneficiaries'));
    }

    public function export_beneficiaries_excel()
    {
        return Excel::download(new BeneficiariesExport(), 'كل العضويات.xlsx');
    }

    public function export_beneficiaries_by_qualification_excel(Request $request)
    {
        $qualifications = $request->qualifications;
        $beneficiaries = Beneficiary::whereIn('qualification_id', $qualifications)
            ->get();
        if ($beneficiaries->isEmpty()) {
            return redirect()->route('supervisor.beneficiaries.index')->with('error', 'لا يوجد أعضاء تخص هذه المؤهل ');
        } else {
            return Excel::download(new BeneficiariesExportByQualification($qualifications), 'أعضاء حسب المؤهل.xlsx');
        }
    }

    public function export_beneficiaries_by_membership_type_excel(Request $request)
    {
        $membership_types = $request->membership_types;
        $beneficiaries = Beneficiary::whereIn('membership_type_id', $membership_types)
            ->get();
        if ($beneficiaries->isEmpty()) {
            return redirect()->route('supervisor.beneficiaries.index')->with('error', 'لا يوجد أعضاء تخص نوع العضوية هذه ');
        } else {
            return Excel::download(new BeneficiariesExportBymembershipType($membership_types), 'أعضاء حسب نوع العضوية.xlsx');
        }
    }

    public function export_beneficiaries_by_status_excel(Request $request)
    {
        $statuses = $request->statuses;
        $beneficiaries = Beneficiary::whereIn('Status', $statuses)
            ->get();
        if ($beneficiaries->isEmpty()) {
            return redirect()->route('supervisor.beneficiaries.index')->with('error', 'لا يوجد أعضاء تخص هذه الحالات ');
        } else {
            return Excel::download(new BeneficiariesExportByStatus($statuses), 'أعضاء حسب الحالة.xlsx');
        }
    }

    public function export_beneficiaries_by_gender_excel(Request $request)
    {
        $genders = $request->genders;
        $beneficiaries = Beneficiary::whereIn('gender', $genders)
            ->get();
        if ($beneficiaries->isEmpty()) {
            return redirect()->route('supervisor.beneficiaries.index')->with('error', 'لا يوجد أعضاء تخص هذا الجنس ');
        } else {
            return Excel::download(new BeneficiariesExportByGender($genders), 'أعضاء حسب الجنس.xlsx');
        }
    }

    public function export_beneficiaries_by_oneMonth_excel(Request $request)
    {
        $today = date('Y-m-d');
        $beneficiaries = Beneficiary::whereBetween('end_date', [$today, date('Y-m-d', strtotime($today . '+1 month'))])
            ->get();
        if ($beneficiaries->isEmpty()) {
            return redirect()->route('supervisor.beneficiaries.index')->with('error', 'لا يوجد أعضاء ينتهى اشتراكهم فى تلك الفترة ');
        } else {
            return Excel::download(new BeneficiariesExportByOneMonth(), 'أعضاء ينتهى اشتراكهم فى خلال شهر من اليوم.xlsx');
        }
    }

    public function export_beneficiaries_by_end_excel(Request $request)
    {
        $today = date('Y-m-d');
        $beneficiaries = Beneficiary::whereDate('end_date', '<', $today)
            ->get();
        if ($beneficiaries->isEmpty()) {
            return redirect()->route('supervisor.beneficiaries.index')->with('error', 'لا يوجد أعضاء اشتراكاتهم منتهية');
        } else {
            return Excel::download(new BeneficiariesExportByEnd(), 'أعضاء اشتراكاتهم منتهية.xlsx');
        }
    }

    public function allow($id)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $beneficiary->update([
            'Status' => 'تمت الموافقة'
        ]);
        // sending email
        $email = $beneficiary->email;
        $subject = "تفعيل حساب عضو";
        $message = 'تم قبول عضويتكم (' . $beneficiary->membershipType->membership_type . ')
رقم (' . $beneficiary->id . ') بجمعية المتقاعدين الأهلية بمنطقة الرياض
';
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

        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم الموافقة على العضو بنجاح');
    }

    public function deny($id)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $beneficiary->update([
            'Status' => 'مرفوض'
        ]);
        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم رفض العضو بنجاح');
    }

    public function waiting($id)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $beneficiary->update([
            'Status' => 'قيد المراجعة'
        ]);
        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم تعديل الحالة الى قيد المراجعة بنجاح');
    }

    public function remove_renewal_requests(Request $request)
    {
        $requests_id = $request->requests;
        foreach ($requests_id as $request_id) {
            $request = RenewalRequest::FindOrFail($request_id);
            $request->delete();
        }
        return redirect()->route('supervisor.renewal.requests')
            ->with('success', 'تم الحذف بنجاح');
    }

    public function print_renewal_requests()
    {
        $requests = RenewalRequest::all();
        return view('supervisor.beneficiaries.print_requests', compact('requests'));
    }

    public function export_requests_excel()
    {
        return Excel::download(new RequestsExport(), 'كل طلبات التجديد.xlsx');
    }

    public function renew_one($id)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $start_date = date('Y-m-d');
        $end_date = date('Y-m-d', strtotime('+1 year'));

        $beneficiary->update([
            'Status' => 'تمت الموافقة',
            'start_date' => $start_date,
            'end_date' => $end_date,
        ]);
        // sending email
        $email = $beneficiary->email;
        $subject = "تفعيل حساب عضو";
        $message = 'تم تجديد عضويتكم (' . $beneficiary->membershipType->membership_type . ')
رقم (' . $beneficiary->id . ')
لمدة (سنة) بجمعية المتقاعدين الأهلية بمنطقة الرياض
';

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

        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم تجديد العضوية سنة بنجاح');
    }

    public function renew_two($id)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $start_date = date('Y-m-d');
        $end_date = date('Y-m-d', strtotime('+2 year'));

        $beneficiary->update([
            'Status' => 'تمت الموافقة',
            'start_date' => $start_date,
            'end_date' => $end_date,
        ]);
        // sending email
        $email = $beneficiary->email;
        $subject = "تفعيل حساب عضو";
        $message = 'تم تجديد عضويتكم (' . $beneficiary->membershipType->membership_type . ')
رقم (' . $beneficiary->id . ')
لمدة (سنتين) بجمعية المتقاعدين الأهلية بمنطقة الرياض
';
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

        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم تجديد العضوية سنتين بنجاح');
    }

    public function renew_three($id)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $start_date = date('Y-m-d');
        $end_date = date('Y-m-d', strtotime('+3 year'));

        $beneficiary->update([
            'Status' => 'تمت الموافقة',
            'start_date' => $start_date,
            'end_date' => $end_date,
        ]);
        // sending email
        $email = $beneficiary->email;
        $subject = "تفعيل حساب عضو";
        $message = 'تم تجديد عضويتكم (' . $beneficiary->membershipType->membership_type . ')
رقم (' . $beneficiary->id . ')
لمدة (3 سنوات) بجمعية المتقاعدين الأهلية بمنطقة الرياض
';
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

        return redirect()->route('supervisor.beneficiaries.index')
            ->with('success', 'تم تجديد العضوية 3 سنوات بنجاح');
    }

    public function renewal_requests()
    {
        $requests = RenewalRequest::all();
        return view('supervisor.beneficiaries.requests', compact('requests'));
    }

    public function allow_request($id)
    {
        $request = RenewalRequest::FindOrFail($id);
        $period = $request->period;
        $start_date = date('Y-m-d');
        $end_date = date('Y-m-d', strtotime('+' . $period . ' year'));
        $beneficiary = $request->beneficiary;
        $beneficiary->update([
            'Status' => 'تمت الموافقة',
            'start_date' => $start_date,
            'end_date' => $end_date,
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
        $subject = "قبول طلب تجديد عضوية";

        $message = 'تم تجديد عضويتكم (' . $beneficiary->membershipType->membership_type . ')
رقم (' . $beneficiary->id . ')
لمدة (' . $period_text . ') بجمعية المتقاعدين الأهلية بمنطقة الرياض
';

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

        $request->update([
            'status' => 'تمت الموافقة',
            'start_date' => $start_date,
            'end_date' => $end_date,
            'acceptance_date' => $start_date
        ]);
        return redirect()->route('supervisor.renewal.requests')
            ->with('success', 'تمت الموافقة على الطلب بنجاح');
    }

    public function deny_request($id)
    {
        $request = RenewalRequest::FindOrFail($id);
        $beneficiary = $request->beneficiary;
        $request->update([
            'status' => 'مرفوض',
        ]);
        return redirect()->route('supervisor.renewal.requests')
            ->with('success', 'تم رفض الطلب بنجاح');
    }

    public function destroy_request(Request $request)
    {
        $request = RenewalRequest::FindOrFail($request->request_id);
        $request->delete();
        return redirect()->route('supervisor.renewal.requests')
            ->with('success', 'تم حذف الطلب بنجاح');
    }

    public function beneficiaries_emails()
    {
        $membership_types = MembershipType::all();
        return view('supervisor.beneficiaries.mail', compact('membership_types'));
    }

    public function beneficiaries_emails_post(Request $request)
    {
        $membership_type_id = $request->membership_type_id;
        $beneficiaries = Beneficiary::where('membership_type_id', $membership_type_id)->get();
        $message = nl2br($request->message);
        $subject = $request->subject;
        $emails = array();
        foreach ($beneficiaries as $beneficiary) {
            array_push($emails, $beneficiary->email);
        }
        $data = array(
            'emails' => $emails,
            'message' => $message,
            'subject' => $subject,
        );
        foreach ($emails as $email) {
            Mail::to($email)->send(new sendingEmail($data));
        }

        return redirect()->route('beneficiaries.emails')
            ->with('success', 'تم ارسال الرسالة بنجاح');
    }

    public function beneficiaries_expired_email()
    {
        $today = date('Y-m-d');
        $beneficiaries = Beneficiary::whereDate('end_date', '<', $today)
            ->get();
        return view('supervisor.beneficiaries.expired_email', compact('beneficiaries'));
    }

    public function beneficiaries_expired_email_post(Request $request)
    {
        $beneficiaries_ids = $request->beneficiaries;
        $emails = array();
        foreach ($beneficiaries_ids as $beneficiary_id) {
            $beneficiary = Beneficiary::FindOrFail($beneficiary_id);
            array_push($emails, $beneficiary->email);
        }
        $message = "
        السلام عليكم ورحمة الله وبركاته
        عزيزى عضو جمعية المتقاعدين بمنطقة الرياض
        نفيدكم علما بانتهاء عضويتكم
        ونرجو منكم المبادرة بتجديد العضوية فى اقرب وقت ممكن
        ";
        $subject = "رسالة تذكير بانتهاء العضوية";

        $data = array(
            'emails' => $emails,
            'message' => $message,
            'subject' => $subject,
        );
        foreach ($emails as $email) {
            Mail::to($email)->send(new sendingEmail($data));
        }

        return redirect()->route('beneficiaries.expired.email')
            ->with('success', 'تم ارسال الرسالة بنجاح');
    }

    public function beneficiaries_about_email()
    {
        $today = date('Y-m-d');
        $beneficiaries = Beneficiary::whereBetween('end_date', [$today, date('Y-m-d', strtotime($today . '+1 month'))])
            ->get();
        return view('supervisor.beneficiaries.about_email', compact('beneficiaries'));
    }

    public function beneficiaries_about_email_post(Request $request)
    {
        $beneficiaries_ids = $request->beneficiaries;
        $emails = array();
        foreach ($beneficiaries_ids as $beneficiary_id) {
            $beneficiary = Beneficiary::FindOrFail($beneficiary_id);
            array_push($emails, $beneficiary->email);
        }
        $message = "
        السلام عليكم ورحمة الله وبركاته
        عزيزى عضو جمعية المتقاعدين بمنطقة الرياض
        نفيدكم علما بانتهاء عضويتكم
        ونرجو منكم المبادرة بتجديد العضوية فى اقرب وقت ممكن
        ";
        $subject = "رسالة تذكير بانتهاء العضوية";

        $data = array(
            'emails' => $emails,
            'message' => $message,
            'subject' => $subject,
        );
        foreach ($emails as $email) {
            Mail::to($email)->send(new sendingEmail($data));
        }

        return redirect()->route('beneficiaries.about.email')
            ->with('success', 'تم ارسال الرسالة بنجاح');
    }


}
