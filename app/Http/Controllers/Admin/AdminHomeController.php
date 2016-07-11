<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Page;

class AdminHomeController extends Controller
{
    public function index()
    {
        return view('AdminHome')->withPages(Page::all());
    }
}
