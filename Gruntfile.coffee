cfg = require './config'
stylus = require 'stylus'

module.exports = (grunt) ->
  config =
    
    watch:
      options:
        livereload: true
      coffeecup:
        files: 'src/**/*.ccup'
        tasks: ['coffeecup']
      html:
        files: '**/*.html'
      images:
        files: ['**/*.jpg', '**/*.png']

    coffeecup:
      build:
        options:
          format: true
          hardcode:
            stylus: stylus
        expand: true
        cwd: 'src'
        src: '**/*.ccup'
        dest: './'
        ext: '.html'

    connect:
      server:
        options:
          hostname: '0.0.0.0'
          port: cfg.serverPort
          base: './'
          directory: './'
          livereload: true

    open:
      hack:
        path: "http://127.0.0.1:#{cfg.serverPort}/"

  grunt.initConfig config

  grunt.loadNpmTasks 'grunt-coffeecup'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-open'

  grunt.registerTask 'default', ['coffeecup']
  grunt.registerTask 'hack', ['connect:server', 'open:hack', 'watch']
