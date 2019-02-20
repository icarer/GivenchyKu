var gulp = require('gulp');
var sass = require('gulp-sass');


//html
gulp.task("copy-html",function () {
    return gulp.src('*.html')
    .pipe(gulp.dest('D:\\phpStudy\\WWW\\givenchy'));
});


//img
gulp.task('copy-img',function(){
    return gulp.src('img/*.{jpg,png,tmp,gif,svg}')
    .pipe(gulp.dest('D:\\phpStudy\\WWW\\givenchy\\img'));
});


//css
gulp.task('copy-css', function(){
    return gulp.src('css/*.css')
    //.pipe(sass())
    .pipe(gulp.dest('D:\\phpStudy\\WWW\\givenchy\\css'));
});

//scss
gulp.task('copy-scss', function(){
    return gulp.src('scss/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('D:\\phpStudy\\WWW\\givenchy\\css'));
});


//js
gulp.task('copy-js',function(){
    return gulp.src('js/*.js')
    .pipe(gulp.dest('D:\\phpStudy\\WWW\\givenchy\\js'));
});



//php
gulp.task('copy-php',function(){
    return gulp.src('php/*.php')
    .pipe(gulp.dest('D:\\phpStudy\\WWW\\givenchy\\php'));
});


gulp.task('default',gulp.parallel('copy-html','copy-img','copy-css','copy-scss','copy-js','copy-php'));//并行执行
gulp.task("watchall",function(){
    //监视所有文件是否有变化，如果有变化，就执行任务：copy
    gulp.watch("*.html",gulp.series("copy-html"));
    gulp.watch('img/*.{jpg,png,tmp,gif,svg}',gulp.series("copy-img"));
    gulp.watch('js/*.js',gulp.series("copy-js"));
    gulp.watch('css/*.css',gulp.series("copy-css"));
    gulp.watch('scss/*.scss',gulp.series("copy-scss"));
    gulp.watch('php/*.php',gulp.series("copy-php"));
});
