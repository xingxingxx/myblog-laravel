@extends('layouts.home')

@section('content')
    <!--右侧文章列表-->
    <div class="jumbotron">
        <h3>{{$info->title}}</h3>
        <p class="font16"> 作者：肖兴平 &nbsp;&nbsp; 时间：{{$info->created_at}} &nbsp;&nbsp; 标签：{{$info->sign}} </p>
        <p class="font16"> {!! $info->content !!}</p>
        <hr>
        <p class="font16">下一篇：<a href="{{ url('/articles/'.$next->id) }}">{{$next->title}}</a></p>
        </ul>
    </div>
@stop