//var elixir = require('laravel-elixir');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

/*elixir(function(mix) {
    mix.sass('app.scss');
});*/
var gulp = require('gulp');
var watch = require('gulp-watch');
var less = require('gulp-less');
var minifyCss = require('gulp-minify-css');

// 编译less
// 在命令行输入 gulp less 启动此任务
gulp.task('less', function () {
    gulp.src('public/less/home/home.less')
        .pipe(less())
        .pipe(minifyCss())
        .pipe(gulp.dest('public/css'))
});

// 在命令行使用 gulp auto 启动此任务
gulp.task('auto', function () {
    // 监听文件修改，当文件被修改则执行 less 任务
    gulp.watch('public/less/home/*.less', ['less'])
});

//gulp.task('default', ['less', 'auto']);