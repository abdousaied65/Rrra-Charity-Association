<?php

namespace App\Http\Controllers\Supervisor;

use App\Http\Controllers\Controller;
use App\Models\AboutContent;
use App\Models\DonationContent;
use App\Models\Information;
use App\Models\Service;
use App\Models\Setting;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function index(Request $request)
    {
        $settings = Setting::FindOrFail(1);
        return view('supervisor.settings.index', compact('settings'));
    }
    public function update(Request $request){
        $settings = Setting::FindOrFail(1);
        $settings->update($request->all());
        if ($request->hasFile('logo')) {
            $logo = $request->file('logo');
            $fileName = $logo->getClientOriginalName();
            $uploadDir = 'uploads/logo/' . $settings->id;
            $logo->move($uploadDir, $fileName);
            $settings->logo = $uploadDir . '/' . $fileName;
            $settings->save();
        }
        if ($request->hasFile('favicon')) {
            $favicon = $request->file('favicon');
            $fileName = $favicon->getClientOriginalName();
            $uploadDir = 'uploads/favicon/' . $settings->id;
            $favicon->move($uploadDir, $fileName);
            $settings->favicon = $uploadDir . '/' . $fileName;
            $settings->save();
        }
        return redirect()->route('supervisor.settings.index')->with('success','تم تعديل الاعدادات بنجاح');
    }

    public function info(Request $request)
    {
        $informations = Information::FindOrFail(1);
        return view('supervisor.informations.index', compact('informations'));
    }
    public function update_info(Request $request){
        $informations = Information::FindOrFail(1);
        $informations->update($request->all());
        return redirect()->route('supervisor.informations.index')->with('success','تم تعديل بيانات التواصل بنجاح');
    }

    public function about_content(Request $request)
    {
        $about_content = AboutContent::FindOrFail(1);
        return view('supervisor.about_content.index', compact('about_content'));
    }
    public function about_content_update(Request $request){
        $about_content = AboutContent::FindOrFail(1);
        $about_content->update($request->all());
        return redirect()->route('supervisor.about_content.index')->with('success','تم تعديل بيانات الفقرة بنجاح');
    }

    public function donation_content(Request $request)
    {
        $donation_content = DonationContent::FindOrFail(1);
        return view('supervisor.donation_content.index', compact('donation_content'));
    }

    public function donation_content_update(Request $request){
        $donation_content = DonationContent::FindOrFail(1);
        $donation_content->update($request->all());
        return redirect()->route('supervisor.donation_content.index')->with('success','تم تعديل بيانات الفقرة بنجاح');
    }

}
