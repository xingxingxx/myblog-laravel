<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
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
     * @param string $order 排序字段
     * @param string $sign 标签
     * @return \Illuminate\Http\Response
     * 
     */
    public function index($order='created_at',$sign='')
    {
        if($sign){
            $list=Article::where('sign','like','%'.$sign.'%')->orderBy($order,'desc')->paginate(12);
        }else{
            $list=Article::orderBy($order,'desc')->paginate(12);
        }
        $hot=Article::hot();
        $signAll=Article::signAll();
        return view('home',['list'=>$list,'hot'=>$hot,'order'=>$order,'sign'=>$sign,'signAll'=>$signAll]);
    }

    /**
     * 搜索
     * @param Request $request
     * @return array
     */
    public function search(Request $request){
        $keyword = $request->input('keyword');
        $list=Article::where('title','like','%'.$keyword.'%')->orderBy('created_at','desc')->paginate(12);
        $hot=Article::hot();
        $signAll=Article::signAll();
        return view('home',['list'=>$list,'hot'=>$hot,'keyword'=>$keyword,'order'=>'created_at','sign'=>'','signAll'=>$signAll]);
    }
}
