module.exports = (grunt) ->

  # @TODO grunt-contrib 必要?
  # @TODO test は別タスクにする

  grunt.loadNpmTasks "grunt-contrib"

  grunt.initConfig

    pkg: grunt.file.readJSON("package.json")

    constants:
      js_files: [
        "jquery.wait.js"
      ]

    clean: ["test/assets/build"]

    concat:
      options:
        separator: ";\n"
      all_js:
        src: [
          "test/assets/vendor/jquery-1.10.1.min.js"
          "<%= constants.js_files %>"
          "node_modules/mocha/mocha.js"
          "node_modules/expect/expect.js"
        ]
        dest: "test/assets/build/all.js"
      all_css:
        src: [
          "node_modules/mocha/mocha.css"
        ]
        dest: "test/assets/build/all.css"

  grunt.registerTask "default", ["clean", "concat"]
