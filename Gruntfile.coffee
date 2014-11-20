module.exports = (grunt) ->

  require('jit-grunt') grunt,
    replace: 'grunt-text-replace'
    compassMultiple: 'grunt-compass-multiple'

  imageminFiles = (cwd, dest) ->
    files: [
      expand: true
      cwd: cwd
      src: [
        "*.png"
        "sprite/*.png"
        "!sprite/*-*--*.png"
      ]
      dest: dest
    ]

  setDirCompassMulti = (list) ->
    list.map (dir) ->
      sassDir: dir[0]
      cssDir: dir[1]

  grunt.initConfig
    path:
      front: 'src/front'
      material: 'src/material'
      assets: '<%= path.front %>/assets'
      scss: '<%= path.material %>/scss'

    compassMultiple:
      prod:
        options:
          multiple: [
            {
              sassDir: '<%= path.scss %>/sample/1/all-hoge1/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/1/hoge1/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/1/fuga1/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/1/bar1/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/2/all-hoge2/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/2/hoge2/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/2/fuga2/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/2/bar2/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/3/all-hoge3/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/3/hoge3/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/3/fuga3/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/3/bar3/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample_123/hoge/'
              cssDir: '<%= path.assets %>/sample_123/css/'
            }
          ]
          noLineComments: false
          debugInfo: false
          imagesDir: '<%= path.img_dev %>'
          outputStyle: 'expanded'
          environment: 'production'
          force: true

  grunt.registerTask 'default', ['compassMultiple']
