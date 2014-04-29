module.exports = (grunt) ->
  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks)

  grunt.initConfig {
    app:
      dev: "public"

    bower: 
      install: 
        options: 
          targetDir: "public/bower_components"

    shell:
      cljs:
        command: 'lein cljsbuild once'

    express:
      server:
        options:
          bases: require('path').resolve("./<%= app.dev %>")
          hostname: "0.0.0.0"
          livereload: true
          
    open: 
      default: 
        path: 'http://localhost:<%= express.server.options.port%>'
   
    watch: 
      default: 
        files: ['public/**', '!public/bower_components/**']

        options:
          livereload: true
          
    concurrent:
      default:
        tasks: [ 'watch', 'longrunning:cljs']
        options:
          limit: 3
          logConcurrentOutput: true
          
    longrunning:
      cljs:
        commands: [
          { options: { cmd: "lein", args: [ "cljsbuild", "auto" ] } }
        ]
  }

  grunt.registerTask 'server', [ 'bower', 'shell:cljs', 'express', 'open', 'watch' ]
  grunt.registerTask 'default', [ 'bower', 'shell:cljs', 'express', 'open', 'concurrent:default' ]
