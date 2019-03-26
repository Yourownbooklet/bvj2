const { environment } = require('@rails/webpacker')
const erb =  require('./loaders/erb')

// Bootstrap 3 has a dependency over jQuery:
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
  })
)

environment.loaders.prepend('erb', erb)
module.exports = environment
