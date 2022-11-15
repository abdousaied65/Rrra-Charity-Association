<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Field;
use App\Models\Volunteer;
use Illuminate\Http\Request;

class VolunteerController extends Controller
{
    public function create()
    {
        $fields = Field::all();
        return view('site.volunteers', compact('fields'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'first_name' => ['required', 'string', 'max:255'],
            'second_name' => ['required', 'string', 'max:255'],
            'third_name' => ['required', 'string', 'max:255'],
            'fourth_name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'email', 'unique:volunteers'],
            'phone_number' => ['required', 'string', 'max:255', 'unique:volunteers', 'regex:/^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$/'],
            'field_id' => ['required'],
            'record' => ['required', 'min:10', 'unique:volunteers'],
        ]);
        $data = $request->all();
        $volunteer = Volunteer::create($data);
        return redirect()->route('volunteers.create')
            ->with('success', 'تم تقديم طلبك بنجاح وهو الان قيد المراجعة من قبل الادارة .. سيتم التواصل معك بمجرد قبول الطلب');
    }
}
