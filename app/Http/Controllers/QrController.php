<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Beneficiary;
use ArPHP\I18N\Arabic;

class QrController extends Controller
{
    public function index($id = null)
    {
        $beneficiary = Beneficiary::FindOrFail($id);
        $date_of_birth = $beneficiary->date_of_birth;
        $Arabic = new Arabic();
        $date_of_birth_hijri = $Arabic->date('Y-m-d', strtotime($date_of_birth));
        return view('site.membership',compact('beneficiary','date_of_birth_hijri'));
    }
}
