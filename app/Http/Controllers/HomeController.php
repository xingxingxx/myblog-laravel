<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Models\Article;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list=Article::all();
        return view('home',['list'=>$list]);
    }
}