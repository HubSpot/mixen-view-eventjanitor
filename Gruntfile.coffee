module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    coffee:
      compile:
        files:
          'eventJanitor.js': 'eventJanitor.coffee'
          'spec/eventJanitor.spec.js': 'spec/eventJanitor.spec.coffee'

    watch:
      coffee:
        files: ['eventJanitor.coffee', 'spec/eventJanitor.spec.coffee']
        tasks: ["coffee", "uglify"]

    uglify:
      options:
        banner: "/*! <%= pkg.name %> <%= pkg.version %> */\n"

      dist:
        src: 'eventJanitor.js'
        dest: 'eventJanitor.min.js'

    jasmine:
      options:
        specs: ['spec/eventJanitor.spec.js']
      src: [
        'spec/vendor/mixen-0.4.7/mixen.js',
        'spec/vendor/underscore-1.5.1/underscore.js',
        'spec/vendor/backbone-1.0.0/backbone.js',
        'eventJanitor.js'
      ]

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jasmine'

  grunt.registerTask 'default', ['coffee', 'uglify']
  grunt.registerTask 'build', ['coffee', 'uglify', 'jasmine']
  grunt.registerTask 'test', ['coffee', 'uglify', 'jasmine']
