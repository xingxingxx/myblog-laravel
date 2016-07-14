@extends('layouts.home')

@section('content')
    <div class="container mt25">
        <div class="aside visible-lg-block">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">最热文章</h3>
                </div>
                <ul class="list-group">
                    <li class="list-group-item"><span class="badge">2032</span>风先生：o2o浪潮下，给小餐馆</li>
                    <li class="list-group-item"><span class="badge">1242</span>Vestibulum at eros</li>
                    <li class="list-group-item"><span class="badge">1242</span>风先生：o2o浪潮下，给小餐馆</li>
                    <li class="list-group-item"><span class="badge">1242</span>Porta ac consectetur ac</li>
                    <li class="list-group-item"><span class="badge">1242</span>风先生：o2o浪潮下，给小餐馆</li>
                </ul>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">文章排行</h3>
                </div>
                <ul class="list-group">
                    <li class="list-group-item"><span class="badge">2032</span>Cras justo odio</li>
                    <li class="list-group-item"><span class="badge">1242</span>Dapibus ac facilisis in</li>
                    <li class="list-group-item"><span class="badge">912</span>Morbi leo risus</li>
                    <li class="list-group-item"><span class="badge">145</span>Porta ac consectetur ac</li>
                    <li class="list-group-item"><span class="badge">123</span>Vestibulum at eros</li>
                </ul>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">关注我</h3>
                </div>
                <div class="panel-body">

                </div>
            </div>
        </div>
        <div class="main">
            <!--右侧文章列表-->
            <div class="jumbotron">
                @foreach ($list as $vo)
                <h3><a href="{{ url('/article/'.$vo->tid) }}">{{$vo->title}}</a></h3>
                <p class="font16"> 作者：肖兴平 &nbsp;&nbsp; {{$vo->create_at}} &nbsp;&nbsp; 点击：{{$vo->click}} &nbsp;&nbsp; 评论：123 </p>
                <p class="font16"> {{ str_limit(html_entity_decode($vo->content),400)}}</p>
                <p><a class="btn btn-primary" href="{{ url('/article/'.$vo->tid) }}">阅读全文</a></p>
                <hr>
                @endforeach
            </div>
        </div>
    </div>
@endsection
