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
        /**
         * 根据文章id查询
         */
        $info=Article::find($id);
        /**
         * 文章阅读数加一
         */
        $info->click=$info->click+1;
        $info->update();
        /**
         * 查询下一篇文章
         */
        $next=Article::where('id','>',$id)->first();
        if(!$next){
            $next=new Article();
            $next->title='已经是最后一篇了';
            $next->id=1;
        }

        $signAll=Article::signAll();

        /**
         * 热门文章
         */
        $hot=Article::hot();
        return view('article',['info'=>$info,'next'=>$next,'hot'=>$hot,'signAll'=>$signAll]);
    }

    public function create(){

    }

    public function store(Request $request){
        $article=new Article();
        $article->title = trim($request->input('title'));
        $article->sign = trim($request->input('sign'));
        $article->content = $request->input('content');
        $row=$article->save();
        echo $row;
    }

    public function edit($id){
        $info=Article::find($id);
        return response()->json($info);
    }

    public function update(Request $request, $id){
        $article=Article::find($id);
        $article->title = trim($request->input('title'));
        $article->sign = trim($request->input('sign'));
        $article->content = $request->input('content');
        $row=$article->update();
        echo $row;
    }

    public function destroy($id){
        $row=Article::destroy($id);
        echo $row;
    }
}