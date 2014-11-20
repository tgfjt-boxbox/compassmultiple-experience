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
              sassDir: '<%= path.scss %>/sample/4/all-hoge4/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/4/hoge4/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/4/fuga4/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/4/bar4/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/5/all-hoge5/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/5/hoge5/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/5/fuga5/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/5/bar5/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/6/all-hoge6/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/6/hoge6/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/6/fuga6/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/6/bar6/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/7/all-hoge7/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/7/hoge7/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/7/fuga7/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/7/bar7/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/8/all-hoge8/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/8/hoge8/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/8/fuga8/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/8/bar8/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/9/all-hoge9/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/9/hoge9/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/9/fuga9/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/9/bar9/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/10/all-hoge10/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/10/hoge10/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/10/fuga10/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/10/bar10/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/11/all-hoge11/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/11/hoge11/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/11/fuga11/'
              cssDir: '<%= path.assets %>/sample/css/'
            }, {
              sassDir: '<%= path.scss %>/sample/11/bar11/'
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
