@extends('layout.master')

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
                <h3>{{$info->title}}</h3>
                <p class="font16"> 作者：肖兴平 &nbsp;&nbsp; {{$info->create_at}} &nbsp;&nbsp; 点击：{{$info->click}} &nbsp;&nbsp; 评论：111 </p>
                <p class="font16"> {{html_entity_decode($info->content)}}</p>
                <hr>
                <ul class="pager">
                    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span>Composer 终于走到了 v1.0 版本</a></li>
                    <li class="next"><a href="#">Lumen 5.2 正式发布 <span aria-hidden="true">&rarr;</span></a></li>
                  </ul>
            </div>
        </div>
    </div>
@stop