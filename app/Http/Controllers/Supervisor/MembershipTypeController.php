<?php

namespace App\Http\Controllers\Supervisor;

use App\Exports\MembershipTypesExport;
use App\Models\MembershipType;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class MembershipTypeController extends Controller
{
    public function index(Request $request)
    {
        $data = MembershipType::all();
        return view('supervisor.membership_types.index', compact('data'));
    }

    public function create()
    {
        return view('supervisor.membership_types.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'membership_type' => 'required',
            'price' => 'required',
        ]);
        $input = $request->all();
        $membership_type = MembershipType::create($input);
        return redirect()->route('supervisor.membership_types.index')
            ->with('success', 'تم اضافة نوع عضوية بنجاح');
    }

    public function edit($id)
    {
        $membership_type = MembershipType::findOrFail($id);
        return view('supervisor.membership_types.edit', compact('membership_type'));
    }

    public function show($id)
    {
        $membership_type = MembershipType::findorfail($id);
        return view('supervisor.membership_types.show', compact('membership_type'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'membership_type' => 'required',
            'price' => 'required',
        ]);
        $input = $request->all();
        $membership_type = MembershipType::findOrFail($id);
        $membership_type->update($input);
        return redirect()->route('supervisor.membership_types.index')
            ->with('success', 'تم تعديل بيانات نوع العضوية بنجاح');
    }

    public function destroy(Request $request)
    {
        MembershipType::findOrFail($request->membership_type_id)->delete();
        return redirect()->route('supervisor.membership_types.index')
            ->with('success', 'تم حذف نوع العضوية بنجاح');
    }

    public function remove_selected(Request $request)
    {
        $membership_types_id = $request->membership_types;
        foreach ($membership_types_id as $membership_type_id) {
            $membership_type = MembershipType::FindOrFail($membership_type_id);
            $membership_type->delete();
        }
        return redirect()->route('supervisor.membership_types.index')
            ->with('success', 'تم الحذف بنجاح');
    }

    public function print_selected()
    {
        $membership_types = MembershipType::all();
        return view('supervisor.membership_types.print', compact('membership_types'));
    }

    public function export_membership_types_excel()
    {
        return Excel::download(new MembershipTypesExport(), 'كل انواع العضويات.xlsx');
    }
}
