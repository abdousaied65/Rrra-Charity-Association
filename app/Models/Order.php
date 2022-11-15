<?php


namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    protected $fillable = [
        'first_name','second_name','third_name','fourth_name','email','phone_number','order_type_id','nationality_id',
        'Status',
    ];
    public function orderType(){
        return $this->belongsTo('\App\Models\OrderType','order_type_id','id');
    }
    public function nationality(){
        return $this->belongsTo('\App\Models\Nationality','nationality_id','id');
    }
}
