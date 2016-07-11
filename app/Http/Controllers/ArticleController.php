<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;
use App\Http\Requests;

class ArticleController extends Controller
{
    /**
     * 首页.
     */
    public function index(Request $request, $id)
    {
        return view('article',['info'=>Article::find($id)]);
    }
}