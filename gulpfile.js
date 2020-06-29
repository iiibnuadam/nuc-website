var gulp = require('gulp');
var minify = require('gulp-minify-css');
var sass = require('gulp-sass');
gulp.task('styles', function (cb) {
    gulp.src('./assets/scss/*.scss')
        .pipe(sass())
        .pipe(minify())
        .pipe(gulp.dest('./public/css'));
    cb();
});
gulp.task('watch',function (cb) {
    gulp.watch('./assets/scss/*.scss',gulp.series('styles'));
    cb();
});