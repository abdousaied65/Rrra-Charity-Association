<?php

namespace App\Exports;
use App\Models\MembershipType;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class MembershipTypesExport implements FromCollection,WithHeadings
{
    public function collection()
    {
        return MembershipType::select('id','membership_type','price','created_at')->get();
    }
    public function headings(): array
    {
        return [
            '#',
            'نوع العضوية',
            'السعر',
            'تاريخ الاضافة'
        ];
    }
}
