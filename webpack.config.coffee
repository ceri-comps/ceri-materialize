module.exports =
  entry:
    index: [path.resolve __dirname, "./app/index.coffee"]
  devtool: "source-map"
  output:
    publicPath: ""
    filename: if dev then "[name].js" else "[chunkhash].js"
    chunkFilename: if dev then "[id].js" else "[chunkhash].js"
    path: path.resolve __dirname, deploy ,"./app_build"
  module:
    rules: [
      { test: /\.coffee$/, use:[{ loader: "coffee-loader"}] }
      { test: /\.png$/, use:[{ loader: "url-loader"}] }
      { test: /\.jpg$/, use:[{ loader: "url-loader"}] }
      { test: /\.woff(\d*)\??(\d*)$/, use:[{ 
          loader: "url-loader"
          options:
            limit: 10000
            mimetype: "application/font-woff"
          }]
      }
      { test: /\.ttf\??(\d*)$/, use:[{ loader: "file-loader"}] }
      { test: /\.eot\??(\d*)$/, use:[{ loader: "file-loader"}] }
      { test: /\.svg\??(\d*)$/, use:[{ loader: "file-loader"}] }
      { 
        test: /((?!index).)*\.css$/, use:  ["style-loader","css-loader"] 
      }
      { 
        test: /((?!index).)*\.scss$/,  use:  ["style-loader","css-loader","sass-loader"] 
      }
      { 
        test: /index\.scss$/, use: extractCss.extract({
          fallback: "style-loader",
          use: ["css-loader","sass-loader"]
        })
      }
      { 
        test: /index\.styl$/, use: extractCss.extract({
          fallback: "style-loader",
          use: ["css-loader","stylus-loader"]
          })
      }
    ]
  resolve:
    extensions: [".js", ".json", ".coffee"]
  plugins: plugins
