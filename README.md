# ceri-materialize

[materializeCss](http://materializecss.com/) styles for [ceri-comps](https://github.com/ceri-comps).


#### > Many components are still missing!

# Features

- No `jQuery` dependency
- Easy style modification
- Only load what you need

# Install

```sh
# npm
npm install --save-dev ceri-materialize materialize-css@0
# yarn
yarn add --dev ceri-materialize materialize-css@0
#pnpm
pnpm install --save-dev ceri-materialize materialize-css@0
```

## Style

For the usage of the css only components see the very good [materialize-css documentation](http://materializecss.com/).

For style personalization see the available [sass variable definitions](https://github.com/Dogfalo/materialize/blob/master/sass/components/_variables.scss).


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
    { test: /\.scss$/, loader: ["style-loader","css-loader","sass-loader"]}
]
```
### configure SCSS
create a file, for example `materialize.config.scss`
```scss
// activate only what you need

@charset "UTF-8";
// empty
// @import "~materialize-css/sass/components/mixins";

// activate to add all colors:
// @import "~materialize-css/sass/components/color";

// OR: only include certain colors
// will make all colors available to following stylesheets
@import "~ceri-materialize/color";
// select colors you need
@include do("include-color","black", "base");
@include do("include-color","white", "base");
// To include the selected colors to your bundle
@import "~ceri-materialize/colorProcessor";

// contains all the variables used in all stylesheets
// https://github.com/Dogfalo/materialize/blob/master/sass/components/_variables.scss
@import "~materialize-css/sass/components/variables";

// modify variables here
// e.g. $dropdown-bg-color: black;
// or make a own stylesheet and import it here

// https://necolas.github.io/normalize.css/
@import "~materialize-css/sass/components/normalize";

// sets font sizes for different device sizes
// and different elements e.g. h1,h2 etc.
@import "~materialize-css/sass/components/typography";

// contains some global definitions like .z-depth, .right, .left
// or Media Query Classes
@import "~materialize-css/sass/components/global";

// roboto
// $roboto-font-path: "~materialize-css/fonts/roboto/";
// @import "~materialize-css/sass/components/roboto";

// icons are no long included in materializeCSS
// @import "~materialize-css/sass/components/icons-material-design"; 

// http://materializecss.com/buttons.html
@import "~materialize-css/sass/components/buttons";

// http://materializecss.com/grid.html
@import "~materialize-css/sass/components/grid";

// http://materializecss.com/navbar.html
// @import "~materialize-css/sass/components/navbar";

// http://materializecss.com/preloader.html
// @import "~materialize-css/sass/components/preloader";

// all forms like checkboxed, radio-buttons, etc.
@import "~ceri-materialize/forms";


// https://github.com/ceri-comps/ceri-dropdown
// @import "~ceri-dropdown/materialize";

// https://github.com/ceri-comps/ceri-modal
// @import "~ceri-modal/materialize"; 

// https://github.com/ceri-comps/ceri-side-nav
// @import "~ceri-side-nav/materialize"; 

// https://github.com/ceri-comps/ceri-tooltip
// @import "~ceri-tooltip/materialize"; 
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
