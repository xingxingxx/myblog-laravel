@extends('layouts.admin')
@section('content')
{{--头部搜索--}}
<form class="form-inline">
    <div class="form-group">
        <label for="exampleInputName2">关键词/标签/分类</label>
        <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
    </div>
</form>
<p><a class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">新增文章</a></p>
{{--文章列表--}}
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>ID</th>
        <th>标题</th>
        <th>标签</th>
        <th>创建时间</th>
        <th>操作</th>
    </tr>
    @foreach ($list as $vo)
    <tr>
        <td>{{ $vo->id }}</td>
        <td><a class="edit-data" data-id="{{ $vo->id }}">{{ $vo->title }}</a></td>
        <td>{{ $vo->sign}}</td>
        <td>{{ $vo->create_at }}</td>
        <td>
            <a class="btn btn-xs btn-primary edit-data" data-id="{{ $vo->id }}" data-toggle="tooltip" data-placement="left" title="编辑文章">
                <i class="glyphicon glyphicon-edit"></i>
            </a>
            <a class="btn btn-xs btn-warning" data-toggle="tooltip" data-placement="right" title="移动文章到废纸篓">
                <i class="glyphicon glyphicon-trash"></i>
            </a>
        </td>
    </tr>
    @endforeach
</table>
<nav>
    {!! $list->render() !!}
</nav>
{{--弹窗--}}
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">新增文章</h4>
            </div>
            <div class="modal-body">
                <form>
                    <input type="hidden" id="_token" name="_token" value="<?php echo csrf_token(); ?>">
                    <input type="hidden" id="id" name="id" value="">
                    <div class="form-group form-group-lg">
                        <input type="text" class="form-control" id="title" name="title" placeholder="标题">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="sign" name="sign" placeholder="请使用空格分隔标签">
                    </div>
                    <div class="form-group">
                        <div class="btn-toolbar" data-role="editor-toolbar" data-target="#content">
                            <div class="btn-group">
                                <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Font"><i class="glyphicon glyphicon-font"></i><b class="caret"></b></a>
                                <ul class="dropdown-menu"></ul>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="glyphicon glyphicon-text-height"></i>&nbsp;<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                                    <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                                    <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                                </ul>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="glyphicon glyphicon-bold"></i></a>
                                <a class="btn btn-default" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="glyphicon glyphicon-italic"></i></a>
                                <a class="btn btn-default" data-edit="strikethrough" title="Strikethrough"><i class="glyphicon glyphicon-eur"></i></a>
                                <a class="btn btn-default" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="glyphicon glyphicon-euro"></i></a>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default" data-edit="insertunorderedlist" title="Bullet list"><i class="glyphicon glyphicon-list"></i></a>
                                <a class="btn btn-default" data-edit="insertorderedlist" title="Number list"><i class="glyphicon glyphicon-list"></i></a>
                                <a class="btn btn-default" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="glyphicon glyphicon-indent-left"></i></a>
                                <a class="btn btn-default" data-edit="indent" title="Indent (Tab)"><i class="glyphicon glyphicon-indent-right"></i></a>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="glyphicon glyphicon-align-left"></i></a>
                                <a class="btn btn-default" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="glyphicon glyphicon-align-center"></i></a>
                                <a class="btn btn-default" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="glyphicon glyphicon-align-right"></i></a>
                                <a class="btn btn-default" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="glyphicon glyphicon-align-justify"></i></a>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="glyphicon glyphicon-link"></i></a>
                                <div class="dropdown-menu input-append">
                                    <input class="span" placeholder="URL" type="text" data-edit="createLink"/>
                                    <button class="btn btn-default" type="button">Add</button>
                                </div>
                                <a class="btn btn-default" data-edit="unlink" title="Remove Hyperlink"><i class="glyphicon glyphicon-scissors"></i></a>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="glyphicon glyphicon-picture"></i></a>
                                {{--<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />--}}
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="glyphicon glyphicon-record"></i></a>
                                <a class="btn btn-default" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="glyphicon glyphicon-repeat"></i></a>
                            </div>
                            <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
                        </div>
                        <div id="content"></div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary sub-article">保存</button>
            </div>
        </div>
    </div>
</div>
@endsection

