<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;
use Illuminate\Auth\Events\Registered;
use App\Models\Magician;
use App\Models\MirrorLinks;
use App\Models\News;
use App\Models\Order;
use App\Models\OrderFeedback;
use App\Models\Product;
use App\Models\User;

class FrontController extends Controller
{
    public function marketplace()
    {
        $category = Category::where('status', 1)->where('deleted_at',null)->get();
        $newsMarket = News::where('type', 0)->latest()->paginate(10);
        $m_links = MirrorLinks::latest()->get();
        return view('FrontEnd.pages.market_place',compact('category','newsMarket','m_links'));
    }

    public function productFilter(Request $request)
    {
        $data['category'] = Category::where('status', 1)->where('deleted_at',null)->get();
        $data['products'] = Product::where('deleted_at', null)->get();
        $data['m_links'] = MirrorLinks::latest()->get();
        return view('FrontEnd.pages.product_filter',compact('data'));
    }

    public function cateWise($slug)
    {
        $data['category'] = Category::where('status', 1)->where('deleted_at',null)->get();
        $cate = Category::where('slug', $slug)->first();
        $data['products'] = Product::where('category_id', $cate->id)->get();

        return view('FrontEnd.pages.product_filter',compact('data'));
    }

    public function productView($id)
    {
        $product = Product::find(Magician::ed($id, false));
        $order_feedback = OrderFeedback::where('product_id', $product->id)->latest()->first(['review_positive','review_neutral','review_negative']);
        $reviews = OrderFeedback::where('product_id', $product->id)->get(['feedback_message','customer_id','product_id','quality_review']);
        return view('FrontEnd.pages.product_view',compact('product','order_feedback','reviews'));
    }

    public function vendor()
    {
        return view('FrontEnd.pages.vendor');
    }

    public function vDashboard($id)
    {
        $seller = User::find(Magician::ed($id, false));
        $order_complete = Order::where('deleted_at', null)->where('seller_id',$seller->id)->where('status', 1)->get();
        $order_review = OrderFeedback::where('seller_id',$seller->id)->get();

        $order_feedback = OrderFeedback::where('seller_id', $seller->id)->latest()->first(['review_positive','review_neutral','review_negative']);
        $products = Product::where('deleted_at', null)->where('seller_id', $seller->id)->get();
        $product_reviews = OrderFeedback::where('seller_id', $seller->id)->get(['feedback_message','customer_id','seller_id','quality_review','shipping_review']);

        return view('FrontEnd.pages.vendor_profile_preview',compact('seller','order_complete','order_review','products','product_reviews','order_feedback'));
    }
}
