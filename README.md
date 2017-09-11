# ceri-materialize

[materializeCss](http://materializecss.com/) styles for [ceri-comps](https://github.com/ceri-comps).


#### > Many components are still missing!

# Changelog 2.0
- move to stylus
- allow finer control of loaded styles

# Features

- Easy style modification
- load only what you need
- no need for purifycss or uncss

# Install

```sh
# npm
npm install --save-dev ceri-materialize normalize.css stylus stylus-loader
# yarn
yarn add --dev ceri-materialize normalize.css stylus stylus-loader
#pnpm
pnpm install --save-dev ceri-materialize normalize.css stylus stylus-loader
```

## Style

For the usage of the css only components see the very good [materialize-css documentation](http://materializecss.com/).

For style personalization see the [variable definitions](https://github.com/ceri-comps/ceri-materialize/blob/master/2_variables.styl).


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
    { test: /\.styl$/, loader: ["style-loader","css-loader","stylus-loader"]}
  ]
```
### configure stylus

create a file, for example `materialize.config.styl`
```stylus
// normalize.css is recommended
// install: npm install --save-dev normalize.css
@require "~normalize.css"

// materialize color palette

@require "~ceri-materialize/1_color"

// to include a color call addColor(colorName, type = "base")
// addColor("black")
// will add
// .black
//   background-color: black
// .black-text
//   color: black
// addColor("grey","lighten-1")
// will add
// .grey.lighten-1
//   background-color: #bdbdbd
// .grey-text.text-lighten-1
//   color: #bdbdbd


// Variable definitions

@require "~ceri-materialize/2_variables"
// change variables here
// $primary-color = getColor("grey", "lighten-1")


// main content, you probably need this

@require "~ceri-materialize/3_typography"
@require "~ceri-materialize/3_utils"
@require "~ceri-materialize/3_mixins"


// Roboto font
// install roboto-fontface: npm install --save-dev roboto-fontface
// @require "~ceri-materialize/3_roboto"
// to include a variant call roboto-font($variant="Roboto", $type="Medium", $style="Normal")
// $variant can be "Roboto", "Roboto-Slab" or "Roboto-Condensed"
// $type can be "Thin","Light","Regular","Medium","Bold","Black"
// $style can be "Normal", "Italic
// e.g.: roboto-font("Roboto", "Medium", "Normal")


// css you may or may not need

// @require "~ceri-materialize/4_breadcrumbs"
// @require "~ceri-materialize/4_collections"
// @require "~ceri-materialize/4_footer"
// @require "~ceri-materialize/4_pagination"
// @require "~ceri-materialize/4_responsiveTable"
// @require "~ceri-materialize/4_table"
// @require "~ceri-materialize/4_typographyFlowText"
// @require "~ceri-materialize/4_videoContainer"
// @require "~ceri-materialize/4_zLevels"


// css for forms

// @require "~ceri-materialize/5_inputFields"
// @require "~ceri-materialize/5_checkboxes"
// @require "~ceri-materialize/5_radioButtons"
// @require "~ceri-materialize/5_range"
// @require "~ceri-materialize/5_select"
// @require "~ceri-materialize/5_switches"


// advanced css

// @require "~ceri-materialize/6_buttons"
// @require "~ceri-materialize/6_grid"
// @require "~ceri-materialize/6_navbar"
// @require "~ceri-materialize/6_preloader"


// ceri-comps

// @require "~ceri-dropdown/materialize"
// @require "~ceri-modal/materialize"
// @require "~ceri-side-nav/materialize"
// @require "~ceri-tooltip/materialize"
// @require "~ceri-toaster/materialize"
// @require "~ceri-progress/materialize


// ceri-widgets

// @require "~ceri-files-view/materialize"
// @require "~ceri-login-modal/materialize
// @require "~ceri-fab/materialize"
```

Require it like this in your entry file:
```js
require("./materialize.config.styl")
// or
import "./materialize.config.styl"
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
