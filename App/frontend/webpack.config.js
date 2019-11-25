const webpack = require("webpack");
const ExtractTextPlugin = require("extract-text-webpack-plugin");

module.exports = {
  entry: "./src/index.jsx",
  output: {
    path: __dirname + "/public",
    filename: "./app.js"
  },
  devServer: {
    port: 8080,
    contentBase: "./public"
  },
  resolve: {
    extensions: [".js", ".jsx"],
    alias: {
      modules: __dirname + "/node_modules"
    }
  },
  plugins: [new ExtractTextPlugin("app.css")],
  module: {
    rules: [
      {
        test: /.js[x]?$/,
        loader: "babel-loader",
        exclude: /node_modules/,
        query: {
          presets: ["@babel/react", "@babel/preset-env"],
          plugins: ["transform-object-rest-spread"]
        }
      },
      {
        test: /\.(css|scss)$/,
        use: ["style-loader", "css-loader", "sass-loader"]
      },
      {
        test: /\.(jpg|jpeg|png|gif|mp3|svg)$/,
        loaders: ["file-loader"]
      }
    ]
  }
};
