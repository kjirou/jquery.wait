module.exports = (grunt) ->

  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-watch"

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
        tests: [
          "node_modules/mocha/mocha.js"
          "node_modules/expect/expect.js"
          "test/assets/js/setup.js"
          "test/assets/js/tests.js"
          "test/assets/js/main.js"
        ]
      css:
        vendors: [
        ]
        srcs: [
        ]
        tests: [
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
          "<%= constants.js.tests %>"
        ]
        dest: "test/assets/build/all.js"
      test_all_css:
        src: [
          "<%= constants.css.vendors %>"
          "<%= constants.css.srcs %>"
          "<%= constants.css.tests %>"
        ]
        dest: "test/assets/build/all.css"

  grunt.registerTask "default", ["clean", "concat"]
