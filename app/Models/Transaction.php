<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $table = 'transaction';
    protected $fillable = [
        'cart_id',
        'order_id',
        'store_id',
        'test_mode',
        'amount',
        'description',
        'success_url',
        'canceled_url',
        'declined_url',
        'billing_fname',
        'billing_sname',
        'billing_address_1',
        'billing_address_2',
        'billing_city',
        'billing_region',
        'billing_zip',
        'billing_country',
        'billing_email',
        'lang_code',
        'trx_reference',
        'approved',
        'response',
        'status',
    ];

}
