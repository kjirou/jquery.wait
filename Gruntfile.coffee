module.exports = (grunt) ->

  # @TODO grunt-contrib 必要?
  # @TODO test は別タスクにする

  grunt.loadNpmTasks "grunt-contrib"

  grunt.initConfig

    pkg: grunt.file.readJSON("package.json")

    constants:
      js:
        vendors: [
          "test/assets/vendor/jquery-1.10.1.min.js"
        ]
        srcs: [
          "jquery.wait.js"
        ]
        test_runners: [
          "node_modules/mocha/mocha.js"
          "node_modules/expect/expect.js"
        ]
        tests: [
          "test/assets/js/main.js"
        ]
      css:
        vendors: [
        ]
        srcs: [
        ]
        test_runners: [
          "node_modules/mocha/mocha.css"
        ]

    clean: ["test/assets/build"]

    concat:
      options:
        separator: ";\n"
      test_all_js:
        src: [
          "<%= constants.js.vendors %>"
          "<%= constants.js.srcs %>"
          "<%= constants.js.test_runners %>"
          "<%= constants.js.tests %>"
        ]
        dest: "test/assets/build/all.js"
      test_all_css:
        src: [
          "<%= constants.css.vendors %>"
          "<%= constants.css.srcs %>"
          "<%= constants.css.test_runners %>"
        ]
        dest: "test/assets/build/all.css"

  grunt.registerTask "default", ["clean", "concat"]
