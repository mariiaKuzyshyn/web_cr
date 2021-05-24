const { environment } = require('@rails/webpacker');
const { webpack, EnvironmentPlugin } = require('webpack');

const webpack = require('webpack');

EnvironmentPlugin.plugins.append(
    'Provide', 
    new webpack.ProvidePlugin({
    $: 'jquery', 
    jQuery: 'jquery', 
    Popper: ['popper.js', 'default']
})
);

module.exports = environment
