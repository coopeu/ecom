/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./node_modules/flowbite/**/*.js"
  ],
  theme: {
    extend: {
      fontSize: {
        'xxs': '0.5rem', // Custom size smaller than text-xs
      },
    },
  },
  variants: {},
  plugins: [
    require('flowbite/plugin')
  ],
}
