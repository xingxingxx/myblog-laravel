@extends('layouts.home')

@section('content')
    <!--右侧文章列表-->
    <div class="jumbotron">
        @if(count($list)>0)
        <p class="text-right font16 mt-30">
            <a class="btn btn-sm {{ ($order=='created_at') ? 'btn-primary': 'btn-default' }}" href="{{ url('/order/created_at/sign/'.$sign) }}"><i class="glyphicon glyphicon-time"></i>&nbsp;最近发表</a>
            <a class="btn btn-sm {{ ($order=='click') ? 'btn-primary': 'btn-default' }}" href="{{ url('/order/click/sign/'.$sign) }}"><i class="glyphicon glyphicon-eye-open"></i>&nbsp;查看最多</a>
            <a class="btn btn-sm {{ ($order=='title') ? 'btn-primary': 'btn-default' }}" href="{{ url('/order/title/sign/'.$sign) }}"><i class="glyphicon glyphicon-comment"></i>&nbsp;评论最多</a>
        </p>
        @foreach ($list as $vo)
        <h3><a href="{{ url('/articles/'.$vo->id) }}">{{$vo->title}}</a></h3>
        <p class="font16"> {{ str_limit(strip_tags($vo->content),400)}}</p>
        <p class="font16">
            <i class="glyphicon glyphicon-time"></i>&nbsp;&nbsp;{{ $vo->created_at }}
            &nbsp;&nbsp;&nbsp;&nbsp;
            <i class="glyphicon glyphicon-eye-open"></i>&nbsp;&nbsp;{{ $vo->click }}
            &nbsp;&nbsp;&nbsp;&nbsp;
            <i class="glyphicon glyphicon-tags"></i>&nbsp;&nbsp;{{ $vo->sign }}
        </p>
        <hr>
        @endforeach
        <nav class="text-center">
            {!! $list->render() !!}
        </nav>
        @else
        <p class="font16 text-center">抱歉！暂无数据。</p>
            <hr>
        @endif
    </div>
@endsection
