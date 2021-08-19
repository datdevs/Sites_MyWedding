const { VueLoaderPlugin } = require('vue-loader')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const CssMinimizerPlugin = require('css-minimizer-webpack-plugin')
const TerserPlugin = require('terser-webpack-plugin')

const path = require('path')

const purgecss = require('@fullhuman/postcss-purgecss')

const postGloPlug = [
  require('postcss-import'),
  purgecss({
    content: ['../blocks/*', '../layout/*', '../modules/**/*'],
    // keyframes: true,
    safelist: {
      standard: [/^is-invalid/, /^active/, /^offcanvas/, /^item-animate/],
    },
  }),
  require('postcss-preset-env')({
    stage: 4,
  }),
]

const esModPlug = [
  require('postcss-import'),
  require('postcss-preset-env')({
    stage: 4,
  }),
]

module.exports = (env, argv) => {
  const eDev = argv.mode === 'development'
  return {
    entry: {
      app: './src/index.js',
      invitation: './src/invitation.js',
    },
    output: {
      path: path.resolve(__dirname, '../'),
      filename: 'js/[name].min.js',
    },
    resolve: {
      // alias: {
      //   '@': paths.src,
      // },
      extensions: ['.js', '.jsx', '.vue', '.json'],
    },
    devtool: eDev ? 'eval-source-map' : false,
    module: {
      noParse: /^(vue|vue-router|vuex|vuex-router-sync)$/,
      rules: [
        {
          test: /\.vue$/,
          use: ['vue-loader'],
        },
        {
          test: /\.js$/,
          use: 'babel-loader',
          exclude: /node_modules/,
        },
        {
          test: /\.(sa|sc|c)ss$/,
          use: [
            eDev ? 'style-loader' : MiniCssExtractPlugin.loader,
            {
              loader: 'css-loader',
              options: {
                importLoaders: 2,
                sourceMap: eDev,
                modules: {
                  localIdentName: eDev ? '[name]__[local]' : '[hash:base64:5]',
                },
              },
            },
            {
              loader: 'postcss-loader',
              options: {
                sourceMap: eDev,
                postcssOptions: {
                  plugins: esModPlug,
                },
              },
            },
            {
              loader: 'sass-loader',
              options: {
                sourceMap: eDev,
              },
            },
          ],
          include: [path.resolve(__dirname, './src/vue')],
        },
        {
          test: /\.(sa|sc|c)ss$/,
          use: [
            eDev ? 'style-loader' : MiniCssExtractPlugin.loader,
            {
              loader: 'css-loader',
              options: {
                sourceMap: eDev,
              },
            },
            {
              loader: 'postcss-loader',
              options: {
                sourceMap: eDev,
                postcssOptions: {
                  plugins: postGloPlug,
                },
              },
            },
            {
              loader: 'sass-loader',
              options: {
                sourceMap: eDev,
              },
            },
          ],
          exclude: [path.resolve(__dirname, './src/vue')],
        },
      ],
    },
    optimization: {
      minimize: true,
      minimizer: [
        new CssMinimizerPlugin({
          minimizerOptions: {
            preset: [
              'default',
              {
                discardComments: { removeAll: true },
              },
            ],
          },
        }),
        new TerserPlugin({
          terserOptions: {
            format: {
              comments: false,
            },
          },
          extractComments: false,
        }),
      ],
      // splitChunks: {
      //   chunks: 'all',
      // },
    },
    plugins: [
      new VueLoaderPlugin(),
      new MiniCssExtractPlugin({
        filename: 'css/[name].min.css',
      }),
    ],
  }
}
