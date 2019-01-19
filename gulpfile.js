var gulp   = require('gulp');
var gutil   = require('gulp-util');
var jshint = require('gulp-jshint');
var jscs = require('gulp-jscs');
var eslint = require('gulp-eslint');
var exec = require('child_process').exec;

var scripts = [
    './**/*.js',
    '!./node_modules/**/*.js'
];

function oldlint() {
    return gulp.src(scripts)
        .pipe(jshint('./.jshintrc'))
        .pipe(jshint.reporter('jshint-stylish'))
        .pipe(jshint.reporter('fail'))
        .pipe(jscs());
}

function lint() {
    return gulp.src(scripts)
        .pipe(eslint())
        .pipe(eslint.format())
        .pipe(eslint.failAfterError());
}

function test(cb) {
    exec('npm test', function(err, stdout, stderr) {
        console.log(stdout);
        console.log(stderr);
        cb(err);
    });
}

gulp.task('lint', lint);
gulp.task('oldlint', oldlint);
gulp.task('test', test);

gulp.task('default', lint );
gulp.task('travis', gulp.series(lint, test));
