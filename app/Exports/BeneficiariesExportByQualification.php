<?php

namespace App\Exports;
use App\Models\Beneficiary;
use App\Models\MembershipType;
use App\Models\Qualification;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class BeneficiariesExportByQualification implements FromCollection,WithHeadings
{
    protected $qualifications;

    public function __construct(array $qualifications)
    {
        $this->qualifications = $qualifications;
    }

    public function array(): array
    {
        return $this->qualifications;
    }

    public function collection()
    {
        $beneficiaries = Beneficiary::select('first_name_ar','second_name_ar','third_name_ar','fourth_name_ar',
            'email','role_name','phone_number','record','Status','membership_type_id','Qualification_id'
            ,'start_date','end_date','created_at')
            ->whereIn('Qualification_id',$this->qualifications)->get();
        $beneficiaries->transform(function($i){
            $i->membership_type_id = MembershipType::FindOrFail($i->membership_type_id)->membership_type;
            $i->Qualification_id = Qualification::FindOrFail($i->Qualification_id)->qualification;
            return $i;
        });
        return $beneficiaries;
    }
    public function headings(): array
    {
        return [
            'الاسم',
            'اسم الاب',
            'اسم الجد',
            'اسم العائلة',
            'البريد الالكترونى',
            'الصلاحية',
            'رقم الجوال',
            'الهوية الوطنية',
            'الحالة',
            'نوع العضوية',
            'المؤهل',
            'تاريخ العضوية',
            'تاريخ الانتهاء',
            'تاريخ الاضافة'
        ];
    }

}
