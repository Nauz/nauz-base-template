<% for_lostgrid = ''; -%>
<% for_jeetgrid = ''; -%>
<%
  if (lostgrid == true) { for_lostgrid = 'poststylus(\'lost\'), '; }
  if (jeetgrid == true) { for_jeetgrid = 'jeet(), '; }
-%>
axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
<% if (lostgrid == true) { %>
lost         = require 'lost'
poststylus   = require 'poststylus'
<%}%>
<% if (jeetgrid == true) { %>jeetgrid         = require 'jeet'<%}%>

module.exports =
  ignores: [
    'readme.md',
    '.DS_Store',
    '.travis.yml'
    '**/layout.*'
    '**/_*'
    '.gitignore'
    '.git'
    '.editorconfig',
    'test/**'
  ]

  extensions: [
    js_pipeline(files: 'assets/js/**'),
    css_pipeline(files: 'assets/css/**')
  ]

  stylus:
    use: [axis(), rupture(), <%= for_lostgrid %><%= for_jeetgrid %>autoprefixer()]
    sourcemap: false
    'include css': true

  'coffee-script':
    sourcemap: false

  jade:
    pretty: true

  server:
    clean_urls: true
