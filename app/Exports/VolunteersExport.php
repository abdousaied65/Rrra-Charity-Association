<?php

namespace App\Exports;
use App\Models\Field;
use App\Models\Volunteer;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class VolunteersExport implements FromCollection,WithHeadings
{
    public function collection()
    {
        $volunteers = Volunteer::select('first_name','second_name','third_name','fourth_name','email','phone_number','record','Status','field_id','created_at')->get();
        $volunteers->transform(function($i){
            $i->field_id = Field::FindOrFail($i->field_id)->field;
            return $i;
        });
        return $volunteers;
    }
    public function headings(): array
    {
        return [
            'الاسم',
            'اسم الاب',
            'اسم الجد',
            'اسم العائلة',
            'البريد الالكترونى',
            'رقم الجوال',
            'الهوية الوطنية',
            'الحالة',
            'المجال التطوعى',
            'تاريخ الاضافة'
        ];
    }

}
