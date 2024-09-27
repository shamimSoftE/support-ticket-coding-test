<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Withdraw extends Model
{
    use HasFactory;

    protected $table = 'withdraw';
    protected $fillable = ['amount','amount_type','vendor_id','status'];

    public function vendor()
    {
        return $this->belongsTo(User::class, 'vendor_id');
    }
}