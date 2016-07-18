@extends('layouts.home')

@section('content')
    <!--右侧文章列表-->
    <div class="jumbotron">
        <p class="text-right font16 mt-30">
            <a class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-time"></i>&nbsp;最近发表</a>
            <a class="btn btn-sm btn-default"><i class="glyphicon glyphicon-eye-open"></i>&nbsp;查看最多</a>
            <a class="btn btn-sm btn-default"><i class="glyphicon glyphicon-comment"></i>&nbsp;评论最多</a>
        </p>
        @foreach ($list as $vo)
        <h3><a href="{{ url('/articles/'.$vo->id) }}">{{$vo->title}}</a></h3>
        <p class="font16"> 作者：肖兴平 &nbsp;&nbsp; 时间：{{ $vo->created_at }}&nbsp;&nbsp; 标签：{{ $vo->sign }} &nbsp;&nbsp; 点击：{{ $vo->click }} &nbsp;&nbsp; 评论：123 </p>
        <p class="font16"> {{ str_limit(strip_tags($vo->content),400)}}</p>
        <p><a class="btn btn-primary" href="{{ url('/articles/'.$vo->id) }}">阅读全文</a></p>
        <hr>
        @endforeach
        <nav class="text-center">
            {!! $list->render() !!}
        </nav>
    </div>
@endsection
