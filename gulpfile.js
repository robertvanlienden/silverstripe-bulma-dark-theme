const javascriptEntry = 'src/javascript/app.js';
const javascriptSrc = 'src/javascript/**/*.js';
const javascriptDest = 'javascript';

const eslint = require('gulp-eslint');

const sass = require('gulp-sass');

const sassSrc = 'src/sass/**/*.scss';
const sassDest = 'css';

const editorSassSrc = 'src/editor/**/*.scss';
const editorSassDest = 'css';

const gulp = require('gulp');

const webpack = require('webpack');
const webpackStream = require('webpack-stream');
const webpackConfig = require('./webpack.config.js');

// This function can be used to copy fonts to the webfonts dir
function copyFonts() {
  // return gulp.src([
  //
  // ])
  //   .pipe(gulp.dest('webfonts'));
}

function buildJs() {
  return gulp.src(javascriptEntry)
    .pipe(eslint())
    .pipe(eslint.format())
    .pipe(eslint.failAfterError())
    .pipe(webpackStream(webpackConfig), webpack)
    .pipe(gulp.dest(javascriptDest));
}

function watchJs() {
  gulp.watch(javascriptSrc, buildJs);
}

function buildSass() {
  return gulp.src(sassSrc)
    .pipe(sass({
      outputStyle: 'compressed',
    }))
    .on('error', sass.logError)
    .pipe(gulp.dest(sassDest));
}

function buildEditorSass() {
  return gulp.src(editorSassSrc)
    .pipe(sass({
      outputStyle: 'compressed',
    }))
    .on('error', sass.logError)
    .pipe(gulp.dest(editorSassDest));
}

function watchSass() {
  gulp.watch(sassSrc, buildSass);
  gulp.watch(editorSassSrc, buildEditorSass);
}

exports.copyFonts = copyFonts;
exports.js = buildJs;
exports.watchjs = watchJs;

exports.sass = buildSass;
exports.watchSass = watchSass;

exports.buildEditorSass = buildEditorSass;

exports.default = gulp.parallel(copyFonts, buildJs, buildSass, buildEditorSass, watchJs, watchSass);
