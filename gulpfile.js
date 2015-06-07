// grab our gulp packages
var gulp 	= require('gulp'),
	gutil 	= require('gulp-util'),
	jshint 	= require('gulp-jshint'),
	sass 	= require('gulp-sass'),
	uglify 	= require('gulp-uglify'),
	cssmin 	= require('gulp-cssmin'),
	rename 	= require('gulp-rename');	

// define the default task and add the watch task to it
gulp.task('default', ['watch']);

// configure the jshint task
gulp.task('jshint', function() {
	return gulp.src('source/javascript/**/*.js')
		.pipe(jshint())
		.pipe(jshint.reporter('jshint-stylish'));
});

// configure uglify js
gulp.task('build-js', function() {
	return gulp.src('source/javascript/**/*.js')
		.pipe(uglify())
		.pipe(rename({suffix: '.min'}))
		.pipe(gulp.dest('app/assets/javascript'));
});

// configure the sass task
gulp.task('build-css', function() {
	return gulp.src('source/scss/**/*.scss')
		.pipe(sass())
		.pipe(cssmin())
		.pipe(rename({suffix: '.min'}))
		.pipe(gulp.dest('app/assets/stylesheets'));
});

// configure which files to watch and what tasks to use on file changes
gulp.task('watch', function() {
	gulp.watch('source/javascript/**/*.js', ['jshint']);
	gulp.watch('source/scss/**/*.scss', ['build-css']);
	gulp.watch('source/javascript/**/*.js', ['build-js']);
});