var gulp = require('gulp');
var browserify = require('browserify');
var babelify = require('babelify');
var source = require('vinyl-source-stream');
var runSequence = require('run-sequence');
var connect = require('gulp-connect');
var opn = require('opn');


gulp.task('build', function () {
  return browserify('./source/app.js')
        .transform(babelify)
        .bundle()
        .pipe(source('index.js'))
        .pipe(gulp.dest('./build/'));
});

gulp.task('startserver', function() {
  return connect.server({
    port: 5000,
    root: './build/',
    fallback: './build/index.html'
  });
});


gulp.task('openbrowser', function() {
  return opn('http://localhost:5000');
});



gulp.task('default', function() {
  //runSequence('build');
  runSequence('build', 'startserver', 'openbrowser');
});
