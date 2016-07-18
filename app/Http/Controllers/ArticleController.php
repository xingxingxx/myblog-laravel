<?php

/**
 * 文章资源控制器
 */
namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;
use App\Http\Requests;

class ArticleController extends Controller
{
    public function index()
    {
        $list=Article::paginate(15);
        return view('admin.index',['list'=>$list]);
    }

    public function show($id){
        $info=Article::find($id);
        $next=Article::where('id','>',$id)->first();
        if(!$next){
            $next=new Article();
            $next->title='已经是最后一篇了';
            $next->id=1;
        }
        return view('article',['info'=>$info,'next'=>$next]);
    }

    public function create(){

    }

    public function store(Request $request){
        $article=new Article();
        $article->title = trim($request->input('title'));
        $article->sign = trim($request->input('sign'));
        $article->content = $request->input('content');
        $article->save();
    }

    public function edit($tid){

    }

    public function update(Request $request, $tid){

    }

    public function destroy($tid){
        
    }
}