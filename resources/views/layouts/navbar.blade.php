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
            <a class="navbar-brand" href="/"> 肖兴平的博客 </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="{{ isset($active) ? '': 'active' }}"><a href="/">首页</a></li>
               {{-- <li><a href="#">发现</a></li>
                <li><a href="#">教程</a></li>--}}
                <li class="{{ isset($active) ? 'active': '' }}"><a href="{{ url('/about') }}">关于我</a></li>
            </ul>
            <form class="navbar-form navbar-right" method="post" action="{{ url('/search') }}" role="search">
                <div class="form-group">
                    <input type="text" name="keyword" class="form-control" placeholder="请输入关键词" value="{{ isset($keyword)? $keyword:''}}">
                </div>
                <button type="submit" class="btn btn-primary">搜索</button>
            </form>
        </div>
    </div>
    <div class="no-boxshadow-nav"></div>
</nav>