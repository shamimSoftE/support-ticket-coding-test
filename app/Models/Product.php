<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory;
    use SoftDeletes;

    // 1 for manual, 2 for unlimited, 3 auto_delivery, 4 for service
    protected $fillable = ['name','slug', 'detail', 'content', 'image', 'qty', 'price','delivery_type', 'status', 'category_id', 'seller_id','order_count'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function seller()
    {
        return $this->belongsTo(User::class);
    }

    // order review in this product
    public function reviews()
    {
        return $this->hasMany(OrderFeedback::class);
    }

    public function wishlist()
    {
        return $this->hasMany(Wishlist::class);
    }

}
