<?php

namespace App\Http\Controllers\Supervisor;

use App\Exports\ServicesExport;
use App\Models\Service;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function index(Request $request)
    {
        $data = Service::all();
        return view('supervisor.services.index', compact('data'));
    }

    public function create()
    {
        return view('supervisor.services.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'service_name' => 'required',
            'description' => 'required',
        ]);
        $input = $request->all();
        $service = Service::create($input);
        return redirect()->route('supervisor.services.index')
            ->with('success', 'تم اضافة خدمة بنجاح');
    }

    public function edit($id)
    {
        $service = Service::findOrFail($id);
        return view('supervisor.services.edit', compact('service'));
    }

    public function show($id)
    {
        $service = Service::findorfail($id);
        return view('supervisor.services.show', compact('service'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'service_name' => 'required',
            'description' => 'required',
        ]);
        $input = $request->all();
        $service = Service::findOrFail($id);
        $service->update($input);
        return redirect()->route('supervisor.services.index')
            ->with('success', 'تم تعديل بيانات الخدمة بنجاح');
    }

    public function destroy(Request $request)
    {
        Service::findOrFail($request->service_id)->delete();
        return redirect()->route('supervisor.services.index')
            ->with('success', 'تم حذف الخدمة بنجاح');
    }

    public function remove_selected(Request $request)
    {
        $services_id = $request->services;
        foreach ($services_id as $service_id) {
            $service = Service::FindOrFail($service_id);
            $service->delete();
        }
        return redirect()->route('supervisor.services.index')
            ->with('success', 'تم الحذف بنجاح');
    }

    public function print_selected()
    {
        $services = Service::all();
        return view('supervisor.services.print', compact('services'));
    }

    public function export_services_excel()
    {
        return Excel::download(new ServicesExport(), 'خدمات الجمعية.xlsx');
    }
}
