<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $table = 'orders_detail';
    public function product()
    {
        return $this->belongsTo("App\Product",'pro_id');
    }
}
