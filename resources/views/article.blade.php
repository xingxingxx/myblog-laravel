@extends('layouts.home')

@section('content')
    <!--右侧文章列表-->
    <div class="jumbotron">
        <h3>{{$info->title}}</h3>
        <p class="font16" style="color:#888;">
            发布于{{ $info->created_at }}
            &nbsp;&nbsp;
            查看{{ $info->click }}次
            &nbsp;&nbsp;
            标签：{{ $info->sign }}
        </p>
        <p class="font16"> {!! $info->content !!}</p>
        <hr>
        <p class="font16">下一篇：<a href="{{ url('/articles/'.$next->id) }}">{{$next->title}}</a></p>
    </div>
@stop