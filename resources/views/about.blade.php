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
        <link rel="apple-touch-icon" href="favicon.ico">
        <link rel="icon" href="favicon.ico">
        <link rel="stylesheet" href="{{ elixir('css/home.css') }}">
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
        @include('layouts.navbar')
        <div class="container mt25">
            <!--右侧文章列表-->
            <div class="jumbotron">
                <p class="font16">
                    姓名：肖兴平<br>
                    邮箱：<a href="Mailto:xx9815@qq.com">xx915@qq.com</a><br>
                    github：<a target="_blank" href="https://github.com/xingxingxx">https://github.com/xingxingxx</a><br>
                    微博：<a target="_blank" href="http://weibo.com/u/3026783454">http://weibo.com/u/3026783454</a><br>
                    自己写的玩的一个个人博客，基于laravel框架,前端在bootstrap的基础上做的定制<br>
                    很多地方还没有完成，后台系统，基本上现在只是做了下文章的增删改，所以后期还会进一步完善。<br>
                    我已经将博客的源码放到github上<a target="_blank" href="https://github.com/xingxingxx/myblog-laravel">https://github.com/xingxingxx/myblog-laravel</a>，随时可以获取。
                </p>
                <hr>
            </div>
        </div>
        <footer>
        Copyright © 2009-2013 YiXieShi. 肖兴平 版权所有<br>
        粤ICP备09139612号
        </footer>
        <script src="js/vendor/jquery-1.11.3.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
    </body>
</html>