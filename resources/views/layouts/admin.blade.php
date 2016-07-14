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
        <link rel="stylesheet" href="{{ elixir('css/admin.css') }}">
        @yield('head')
    </head>
    <body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    后台管理系统&nbsp;&nbsp;&nbsp;</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">内容</a></li>
                    <li><a href="#">用户</a></li>
                    <li><a href="#">统计</a></li>
                    <li><a href="#">系统</a></li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">清空缓存</a></li>
                    <li><a href="/" target="_blank">打开首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> {:session('user_auth.username')}<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;&nbsp;个人中心</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>&nbsp;&nbsp;修改信息</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;&nbsp;退出</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    仪表板
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <p><a href="#">文章监控</a></p>
                                <p><a href="#">用户监控</a></p>
                                <p><a href="#">日志监控</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-10">
                <ol class="breadcrumb">
                    <li><a href="#">首页</a></li>
                    <li class="active"><a href="#">仪表板</a></li>
                </ol>
                <div>
                    @yield('content')
                </div>
            </div>
        </div>
    </div>
    <script src="js/vendor/jquery-1.11.3.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    </body>
</html>