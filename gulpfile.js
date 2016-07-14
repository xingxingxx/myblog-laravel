var elixir = require('laravel-elixir');

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
elixir(function(mix) {
    mix.browserSync({
            files:['app/**/*','public/**/*','resources/views/**/*'],
            proxy: 'myblog.app:8000'
         })
         .copy(
           'node_modules/bootstrap-less/fonts',
           'public/build/fonts'
         )
         .copy(
           'node_modules/bootstrap-less/js/bootstrap.min.js',
           'public/js/vendor'
         )
        .less('home/home.less')
        .less('admin/admin.less')
        .version(['public/css/home.css','public/css/admin.css']);

});

