<div class="aside visible-lg-block">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">标签云</h3>
        </div>
        <div class="panel-body">
            @foreach ($signAll as $key=>$vo)
                <a class="btn btn-xs {{ (isset($sign)&&$sign==$key) ? 'btn-warning': 'btn-primary' }} mb10" href="{{ url('/order/created_at/sign/'.$key) }}">{{$key}} <span class="badge">{{$vo}}</span></a>
            @endforeach
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">热门文章</h3>
        </div>
        <ul class="list-group">
            @foreach ($hot as $vo)
            <li class="list-group-item"><a href="{{ url('/articles/'.$vo->id) }}">{{ str_limit($vo->title, 26) }}</a><span class="badge">{{$vo->click}}</span></li>
            @endforeach
        </ul>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">关注我</h3>
        </div>
        <div class="panel-body">
            <p>邮箱：<a href="Mailto:xx9815@qq.com">xx915@qq.com</a></p>
            <p>github：<a target="_blank" href="https://github.com/xingxingxx">https://github.com/xingxingxx</a></p>
            <p>微博：<a target="_blank" href="http://weibo.com/u/3026783454">http://weibo.com/u/3026783454</a></p>
        </div>
    </div>
</div>