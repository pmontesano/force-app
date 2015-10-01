var js, css, images,fonts
    defaults = require('./defaults.resources'),
    navigation = require('./navigation.resources'),
    _ = require('lodash')

js = {};

css = {
    'main':  _.flatten([
    	defaults.small.css,
    	defaults.large.css
    ]),
    'main__small': defaults.small.css,
    'main__medium': defaults.large.css,
    'navigation__small': navigation.small.css,
    'navigation__large': navigation.large.css
};

images = _.flatten([
	navigation.small.images,
	navigation.large.images
]);

fonts = _.flatten([navigation.small.fonts]);

exports.js = js;
exports.css = css;
exports.fonts = fonts;
exports.images = images;