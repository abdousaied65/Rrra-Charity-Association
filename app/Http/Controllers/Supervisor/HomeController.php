<?php

namespace App\Http\Controllers\Supervisor;

use App\Http\Controllers\Controller;
use App\Mail\sendingEmail;
use App\Models\Beneficiary;
use App\Models\Field;
use App\Models\MailList;
use App\Models\Nationality;
use App\Models\Order;
use App\Models\OrderType;
use App\Models\Supervisor;
use App\Models\Volunteer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Spatie\Permission\Models\Role;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:supervisor-web');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable|\Illuminate\Http\RedirectResponse
     */
    public function index()
    {
        $auth_id = Auth::user()->id;
        $user = Supervisor::findOrFail($auth_id);
        $roles = Role::where('guard_name', 'supervisor-web')->get();
        $supervisors = Supervisor::all();
        $nationalities = Nationality::all();
        $order_types = OrderType::all();
        $fields = Field::all();
        $beneficiaries = Beneficiary::all();
        $orders = Order::all();
        $volunteers = Volunteer::all();
        return view('supervisor.home', compact('user', 'roles', 'supervisors', 'nationalities',
            'orders', 'order_types', 'fields', 'beneficiaries', 'volunteers'));
    }

    public function lock_screen()
    {
        return view('supervisor.lockscreen');
    }

    public function send_email($id)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $email = $beneficiary->email;
        $url = route('download.pdf', $beneficiary->id);

        $message = "
        السلام عليكم ورحمة الله وبركاته
        مرحبا" ." ". $beneficiary->first_name_ar . " " . $beneficiary->second_name_ar . " " . $beneficiary->third_name_ar . " " . $beneficiary->fourth_name_ar . "
        يمكنك تحميل بطاقة العضوية عبر الرابط التالى
        " . $url . "
        ";
        $subject = "تحميل بطاقة عضو";
        $data = array(
            'emails' => $email,
            'message' => $message,
            'subject' => $subject,
        );
        Mail::to($email)->send(new sendingEmail($data));
        return redirect()->route('supervisor.beneficiaries.show',$beneficiary->id)
            ->with('success', 'تم ارسال الرسالة بنجاح');
    }

}
