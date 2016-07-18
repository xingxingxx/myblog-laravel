<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Http\Requests;

class AdminController extends Controller
{
    //
    public function admin(){

        $list=Article::paginate(15);
        return view('admin.index',['list'=>$list]);
    }
}
