<?php

namespace App\Http\Controllers;

use App\Models\Withdraw;
use Illuminate\Http\Request;

class WithdrawController extends Controller
{
    public function index()
    {
        $withdraw_request = Withdraw::where('status', 0)->latest()->get();
        return view('FrontEnd.AdminPanel.withdraw_request_list',compact('withdraw_request'));
    }
}
