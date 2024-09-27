<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use App\Models\Ticket;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashBoardController extends Controller
{
    public function dashboard()
    {
        if(Auth::user()->type == 3)
        {
            $tickets = Ticket::where('status', 1)->get();
            return view('FrontEnd.AdminPanel.dashboard',compact('tickets'));
        }else{
            return redirect()->back();
        }
    }
}
