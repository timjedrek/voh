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
      },
      height: theme => ({
        'screen-1/2': '50vh',
        'screen-2/3': '75vh',
        'screen-1/3': 'calc(100vh / 3)',
      }),
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
