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
        <h4><a style="color:#204d74;font-weight: bold;" href="{{ url('/articles/'.$vo->id) }}">{{$vo->title}}</a></h4>
        <p class="font16">
            {{ str_limit(strip_tags($vo->content),400)}}<br>
            <span style="color:#888;">
                发布于{{ $vo->created_at }}
                &nbsp;&nbsp;
                查看{{ $vo->click }}次
                &nbsp;&nbsp;
                标签：{{ $vo->sign }}
            </span>
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
