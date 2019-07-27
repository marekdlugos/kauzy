module.exports = {
  plugins: [
    require('postcss-import'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    }),
    require('tailwindcss')('./app/javascript/css/tailwind.js'),
    require('autoprefixer'),
    process.env.NODE_ENV === 'production' && require('@fullhuman/postcss-purgecss')({
      content: [
        './app/assets/stylesheets/**/*.css',
        './app/assets/stylesheets/**/*.scss',
        './app/helpers/**/*.rb',
        './app/javascript/css/**/*.js',
        './app/javascript/css/**/*.css',
        './app/javascript/css/**/*.scss',
        './app/views/**/*.html',
        './app/views/**/*.html.erb',
        './app/views/**/*.js',
        './app/views/**/*.js.erb',
      ],
      defaultExtractor: content => content.match(/[A-Za-z0-9-_:/]+/g) || []
    })
  ]
}
