<!doctype html>
<html class="no-js" lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>首页</title>
        <meta name="keywords" content=""/>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="renderer" content="webkit">
        <link rel="apple-touch-icon" href="/favicon.ico">
        <link rel="icon" href="/favicon.ico">
        <link rel="stylesheet" href="/css/home.css">
        @yield('head')
    </head>
    <body>
        <!--[if lt IE 9]>
        <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
            </button>
            <p class="container">
                <strong>提示!</strong> 您使用的IE浏览器版本较低，为了获得最佳的浏览体验，建议您升级您的浏览器或选用其它浏览器。&nbsp;&nbsp;
                <a href="http://browsehappy.com/" class="btn btn-default" target="_blank">立即升级</a>
            </p>
        </div>
        <![endif]-->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> Mesh </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/">首页</a></li>
                        <li><a href="#">互联网新闻</a></li>
                        <li><a href="#">发现</a></li>
                        <li><a href="#">站内文章</a></li>
                        <li><a href="#">教程</a></li>
                        <li><a href="#">关于我</a></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="请输入关键词">
                        </div>
                        <button type="submit" class="btn btn-primary">搜索</button>
                    </form>
                </div>
            </div>
            <div class="no-boxshadow-nav"></div>
        </nav>
        @yield('content')
        <footer>
        Copyright © 2009-2013 YiXieShi. 肖兴平 版权所有<br>
        粤ICP备09139612号
        </footer>
    </body>
</html>