exports.configure = [
  {
    name: 'name'
    message: "Your project's name"
  },
  {
    name: 'description'
    message: "A brief description of your project"
  },
  {
    type: 'confirm'
    name: 'netlify'
    message: 'Do you need netlify hosting?'
  },
  {
    type: 'confirm'
    name: 'lostgrid'
    message: 'Do you require LOST GRID framework based on PostCSS?'
  },
  {
    type: 'confirm'
    name: 'jeetgrid'
    message: 'Do you require JEET GRID framework?'
  }
]

exports.after = (utils, config) ->
  if config.netlify
    utils.target.exec('npm install')
    .then -> utils.target.exec('./node_modules/.bin/netlify init')
    .catch console.error
