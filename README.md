# ceri-materialize

[materializeCss](http://materializecss.com/) styles for [ceri-comps](https://github.com/ceri-comps).


# Features

- No `jQuery` dependency
- Easy style modification
- Only load what you need ([webpack code splitting](https://webpack.github.io/docs/code-splitting.html))

# Install

```sh
npm install --save-dev ceri-materialize
```

## Style

For the usage of the css only components see the very good [materialize-css documentation](http://materializecss.com/).

For style personalization see the sass variable definitions in the original [repo](https://github.com/Dogfalo/materialize/blob/master/sass/components/_variables.scss).


### Webpack config
```coffee
module:
  rules: [
    # when using roboto fonts:
    { test: /\.woff(\d*)\??(\d*)$/, loader: "url-loader?limit=10000&mimetype=application/font-woff" }
    { test: /\.ttf\??(\d*)$/,    loader: "file-loader" }
    { test: /\.eot\??(\d*)$/,    loader: "file-loader" }
    { test: /\.svg\??(\d*)$/,    loader: "file-loader" }
    # always:
    { test: /\.scss$/, loader: "style!css!sass"}
]
```
### configure SCSS
create a file, for example `materialize.config.scss`
```scss
@charset "UTF-8";

@import "~materialize-css/sass/components/mixins";

// all colors:
// @import "~materialize-css/sass/components/color";

// BEGIN: only specific colors
@import "~ceri-materialize/color";
// include colors you need
@include do("include-color","black", "base");
@include do("include-color","white", "base");
@import "~ceri-materialize/colorProcessor";
// END: only specific colors

@import "~materialize-css/sass/components/variables";
@import "~materialize-css/sass/components/normalize";
@import "~materialize-css/sass/components/typography";
@import "~materialize-css/sass/components/global";

// modify variables here
// all available sass variables:
// https://github.com/Dogfalo/materialize/blob/master/sass/components/_variables.scss
// e.g. $dropdown-bg-color: black;

// css only, no JS needed for these
// activate only what you need
$roboto-font-path: "~materialize-css/fonts/roboto/";
//@import "~materialize-css/sass/components/roboto";
//@import "~materialize-css/sass/components/icons-material-design"; // icons are no long included in materializeCSS
//@import "~materialize-css/sass/components/buttons";
//@import "~materialize-css/sass/components/grid";
//@import "~materialize-css/sass/components/navbar";
//@import "~materialize-css/sass/components/preloader";
//@import "~ceri-materialize/forms";

// css for ceri components
// activate only what you need
// @import "~ceri-dropdown/materialize"; // https://github.com/ceri-comps/ceri-dropdown
// @import "~ceri-modal/materialize"; // https://github.com/ceri-comps/ceri-modal
```

Require it like this in your entry file:
```js
require("./materialize.config.scss")
// or
import "./materialize.config.scss"
```

## Icons

No icons are included in the bundle.

You can either take the [Google Material Design Icons](https://design.google.com/icons/) as a font and use them the materializeCSS way:
```html
<i class="material-icons">add</i>
```
or use [ceri-icon](https://github.com/ceri-comps/ceri-icon)

## License
Copyright (c) 2017 Paul Pflugradt
Licensed under the MIT license.
