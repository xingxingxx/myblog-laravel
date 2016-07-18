$(function () {
    $('[data-toggle="tooltip"]').tooltip();
    $('#content').wysiwyg();
    $('.sub-article').click(function () {
        var title=$('#title').val();
        var sign=$('#sign').val();
        var content=$('#content').html();
        var _token=$('#_token').val();
        $.post('/articles',{title:title,sign:sign,content:content,_token:_token},function (data) {
            
        });
    });
    
});