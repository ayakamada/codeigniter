/******************
 packages
****************/
var
  gulp = require('gulp'),
  sass = require('gulp-sass'),
  autoprefixer = require("gulp-autoprefixer"),
  uglify = require("gulp-uglify"),
  browserSync = require("browser-sync").create(),
  reload = browserSync.reload,
  plumber = require("gulp-plumber");

/******************
directlies
******************/
var
  SCSS_FILE = "./my-site/public/assets/scss/**/*.scss",
  CSS_FILE = "./my-site/public/assets/css/",
  JS_FILE = "./my-site/public/assets/js/*.js";
  JS_MINFILE = "./my-site/public/assets/js/js-min";

/******************
sass compile
******************/
gulp.task('sass-compile', function () {
  gulp.src([SCSS_FILE])
    .pipe(plumber())
    .pipe(sass({ style: 'compressed'}))
    .pipe(autoprefixer())
    .pipe(gulp.dest(CSS_FILE));
});

// gulpのデフォルトタスクとしてsass-compaileタスクを指定
gulp.task('default', ['sass-compile']);

gulp.task('watch', function () {
  //gulp.watch([JS_FILE],["js", reload]);
  gulp.watch(SCSS_FILE, ["sass-compile", reload]);
});

/******************
js-uglify(圧縮)
******************/
gulp.task("js", function () {
  gulp.src([JS_FILE])
    .pipe(plumber())
    .pipe(uglify())
    .pipe(gulp.dest(JSMIN_FILE));
});