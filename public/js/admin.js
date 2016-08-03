$(function () {
    $.put = function(url, data, callback, type){
          if ( $.isFunction(data) ){
            type = type || callback,
            callback = data,
            data = {}
          }

          return $.ajax({
            url: url,
            type: 'PUT',
            success: callback,
            data: data,
            contentType: type
          });
    }
    $.delete = function(url, data, callback, type){
          if ( $.isFunction(data) ){
            type = type || callback,
                callback = data,
                data = {}
          }

          return $.ajax({
            url: url,
            type: 'DELETE',
            success: callback,
            data: data,
            contentType: type
          });
    }

    $('[data-toggle="tooltip"]').tooltip();
    $('#content').wysiwyg();

    //删除
    $('.destroy-data').click(function () {
       if(confirm('确定要删除吗？')){
           var id=$(this).attr('data-id');
           $.delete('/articles/'+id,function (data) {
            if(data=='1'){
                alert('删除成功！');
                window.location.reload();
            }else{
                alert('删除失败！');
            }
        });
       }
    });
    //编辑
    $('.edit-data').click(function () {
        var id=$(this).attr('data-id');
        $.get('/articles/'+id+'/edit',function (data) {
            $('#myModalLabel').html('编辑文章');
            $('#id').val(data.id);
            $('#title').val(data.title);
            $('#sign').val(data.sign);
            $('#content').html(data.content);
        });
        $('.bs-example-modal-lg').modal('show');
    });

    //提交
    $('.sub-article').click(function () {
        var id=$('#id').val();
        var title=$('#title').val();
        var sign=$('#sign').val();
        var content=$('#content').html();
        var _token=$('#_token').val();
        if(id==''){
            $.post('/articles',{title:title,sign:sign,content:content,_token:_token},function (data) {
                if(data=='1'){
                    alert('添加成功！');
                    window.location.reload();
                }else{
                    alert('添加失败！');
                }
            });
        }else{
            $.put('/articles/'+id,{title:title,sign:sign,content:content,_token:_token},function (data) {
                if(data=='1'){
                    alert('更新成功！');
                    window.location.reload();
                }else{
                    alert('更新失败！');
                }
            });
        }
    });

    
});
