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
              sassDir: '<%= path.scss %>/sample/1/all-hoge/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/1/hoge/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/1/fuga/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/1/bar/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/2/all-hoge/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/2/hoge/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/2/fuga/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/2/bar/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/3/all-hoge/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/3/hoge/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/3/fuga/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/3/bar/'
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
