path = require 'path'
gulp = require 'gulp'
less = require 'gulp-less'
gutil = require 'gulp-util'

printError = (error) ->
	message = "Error: #{error.plugin}: #{error.message}"
	gutil.log gutil.colors.red message

gulp.task 'styles', ->
	gulp.src 'app/src/main.less'
		.pipe less({
			paths: [
				path.join(__dirname, 'bower_components')
				path.join(__dirname, 'app', 'src')
			]
			rootpath: path.join(__dirname, 'app')
			relativeUrls: true
		})
		.on 'error', printError
		.pipe gulp.dest 'app'

gulp.task 'watch', ->
	gulp.watch 'app/**/*.less', [ 'styles' ]
