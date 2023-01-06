const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        splash: ['"Splash"', 'Helvetica', 'Arial', 'sans-serif'],
        navfont: ['"Quicksand"', 'Inter var', ...defaultTheme.fontFamily.sans],
        headerfont: ['"Grape Nuts"', 'Inter var', ...defaultTheme.fontFamily.sans],
      },
      backgroundImage : {
        'gamecorner' : "url('jayrone-game-header.png')",
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
