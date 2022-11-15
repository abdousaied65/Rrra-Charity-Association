<?php
namespace App\Exports;
use App\Models\MembershipType;
use App\Models\RenewalRequest;
use App\Models\Beneficiary;
use Illuminate\Database\Eloquent\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class RequestsExport implements FromCollection,WithHeadings
{
    public function collection()
    {
        $requests = RenewalRequest::select('beneficiary_id','period','amount','membership_type_id','status','created_at')->get();
        $requests->transform(function($i) {
            $i->beneficiary_id = Beneficiary::FindOrFail($i->beneficiary_id)->first_name_ar." ".Beneficiary::FindOrFail($i->beneficiary_id)->fourth_name_ar;
            $i->membership_type_id = MembershipType::FindOrFail($i->membership_type_id)->membership_type;
            return $i;
        });
        return $requests;
    }
    public function headings(): array
    {
        return [
            'العضو',
            'مدة التجديد',
            'المبلغ',
            'نوع العضوية',
            'الحالة',
            'تاريخ الطلب',
        ];
    }
}
