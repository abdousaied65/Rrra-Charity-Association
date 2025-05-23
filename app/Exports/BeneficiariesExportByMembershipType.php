<?php

namespace App\Exports;

use App\Models\Beneficiary;
use App\Models\MembershipType;
use App\Models\Qualification;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class BeneficiariesExportByMembershipType implements FromCollection, WithHeadings
{
    protected $membership_types;

    public function __construct(array $membership_types)
    {
        $this->membership_types = $membership_types;
    }

    public function array(): array
    {
        return $this->membership_types;
    }

    public function collection()
    {
        $beneficiaries = Beneficiary::select('first_name_ar','second_name_ar','third_name_ar','fourth_name_ar',
            'email', 'role_name', 'phone_number', 'record','gender', 'Status', 'membership_type_id', 'qualification_id',
            'start_date','end_date','created_at')
            ->whereIn('membership_type_id', $this->membership_types)->get();
        $beneficiaries->transform(function ($i) {
            $i->membership_type_id = MembershipType::FindOrFail($i->membership_type_id)->membership_type;
            $i->qualification_id = Qualification::FindOrFail($i->qualification_id)->qualification;
            if($i->gender == "male"){
                $i->gender = "ذكر";
            }
            else{
                $i->gender = "انثى";
            }
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
            'الجنس',
            'الحالة',
            'نوع العضوية',
            'المؤهل',
            'تاريخ العضوية',
            'تاريخ الانتهاء',
            'تاريخ الاضافة'
        ];
    }

}
