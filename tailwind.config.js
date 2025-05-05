/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
      "./app/**/*.html.erb",
      "./app/helpers/**/*.rb",
      "./app/javascript/**/*.js",
      "./src/**/*.{html,js}", 
    ],
    theme: {
      extend: {
        keyframes: {
          fadein: {
            '0%': { opacity: 0, transform: 'translateY(40px)' },
            '100%': { opacity: 1, transform: 'translateY(0)' },
          },
        },
        animation: {
          fadein: 'fadein 1s ease-out forwards',
        },
      },
    },
    plugins: [],
  }