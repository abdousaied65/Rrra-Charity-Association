<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Beneficiary;
use App\Models\MembershipType;
use App\Models\RenewalRequest;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Redirect;

class PaymentController extends Controller
{
    public function donation()
    {
        return view('site.donation');
    }

    public function store(Request $request)
    {
        $order_id = rand(4111, 9999);
        $amount = $request->amount;
        $telrManager = new \TelrGateway\TelrManager();

        $request->request->add(['id' => 1]);

        $billingParams = [
            "ref" => "OrderRef",
            "test" => 1,
            'first_name' => 'john',
            'sur_name' => 'mark',
            'address_1' => '354',
            'address_2' => 'elhammad',
            'city' => 'rasheed',
            'zip' => '22456',
            'country' => 'sa',
            'bill_country' => 'sa',
            'email' => 'info@rrr.org.sa',
            'phone' => '01092716796',
            'bill_phone' => '01092716796',
            'fields' => $request->all()
        ];
        return $telrManager->pay($order_id, $amount, 'تبرع لجمعية المتقاعدين بمنطقة الرياض', $billingParams)->redirect();
    }

    public function success(Request $request)
    {
        if (Auth::guard('beneficiary-web')->check()) {
            $beneficiary_id = Auth::guard('beneficiary-web')->user()->id;
            $beneficiary = Beneficiary::FindOrFail($beneficiary_id);
            $renewal_request = RenewalRequest::where('beneficiary_id', $beneficiary_id)
                ->latest()->first();
            $period = $renewal_request->period;
            $start_date = $beneficiary->end_date;
            $end_date = date('Y-m-d', strtotime($start_date.'+'.$period.' year'));

            $membership_type_id = $renewal_request->membership_type_id;

            $beneficiary->update([
                'Status' => 'تمت الموافقة',
                'start_date' => $start_date,
                'end_date' => $end_date,
                'membership_type_id' => $membership_type_id,
            ]);

            return redirect()->route('beneficiary.home')
                ->with('success', 'تم الدفع وارسال طلب تجديد العضوية بنجاح');
        } else {
            $beneficiary_id = $request->id;
            $beneficiary = Beneficiary::FindOrFail($beneficiary_id);
            $beneficiary->update([
                'paid' => 'yes',
                'Status' => 'تمت الموافقة'
            ]);
            return view('site.payment.success')->with([
                'success' => 'تم الدفع وتفعيل العضوية بنجاح برجاء تسجيل الدخول',
            ]);
        }

    }

    public function cancel(Request $request)
    {
        return view('site.payment.cancel');
    }

    public function declined(Request $request)
    {
        return view('site.payment.decline');
    }
}
