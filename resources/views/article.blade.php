@extends('layouts.home')

@section('content')
    <!--右侧文章列表-->
    <div class="jumbotron">
        <h3>{{$info->title}}</h3>
        <p class="font16">
            <span class="label label-default">{{ $info->sign }}</span>
            <span class="label label-info">{{ $info->sign }}</span>
            <span class="label label-danger">{{ $info->sign }}</span>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <i class="glyphicon glyphicon-time"></i>&nbsp;{{ $info->created_at }}
            &nbsp;&nbsp;&nbsp;&nbsp;
            <i class="glyphicon glyphicon-eye-open"></i>&nbsp;{{ $info->click }}
        </p>
        <p class="font16"> {!! $info->content !!}</p>
        <hr>
        <p class="font16">下一篇：<a href="{{ url('/articles/'.$next->id) }}">{{$next->title}}</a></p>
    </div>
@stop