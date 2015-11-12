Nauz Base Template
-------------------

This is the default template for [Nauz](https://github.com/Nauz) static site builds. It uses a base stack of [jade](https://github.com/visionmedia/jade), [stylus](https://github.com/learnboost/stylus), and [coffeescript](https://github.com/jashkenas/coffee-script), along with [axis](https://github.com/jenius/axis), [autoprefixer](https://github.com/jenius/autoprefixer-stylus), and [rupture](https://github.com/jenius/rupture) stylus plugins and [browserify](https://github.com/substack/node-browserify) compile and minify client-side js.

Installation
------------

To install: `roots template add nauz-base-template https://github.com/Nauz/nauz-base-template.git`
To make default: `roots template default nauz-base-template`

Usage
-----
- if you've made this template your default simply, `roots new project-name`
- otherwise, `roots new project-name -t nauz-base-template`
