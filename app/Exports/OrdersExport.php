<?php

namespace App\Exports;
use App\Models\Nationality;
use App\Models\Order;
use App\Models\OrderType;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class OrdersExport implements FromCollection,WithHeadings
{
    public function collection()
    {
        $orders = Order::select('first_name','second_name','third_name','fourth_name','email','phone_number'
            ,'Status','nationality_id','order_type_id','created_at')
            ->get();
        $orders->transform(function($i){
            $i->nationality_id = Nationality::FindOrFail($i->nationality_id)->nationality;
            $i->order_type_id = OrderType::FindOrFail($i->order_type_id)->order_type;
            return $i;
        });
        return $orders;
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
            'الحالة',
            'الجنسية','نوع الطلب','تاريخ الطلب'
        ];
    }
}
