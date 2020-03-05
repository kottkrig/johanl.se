const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  theme: {
    extend: {
    	fontFamily: {
    		"serif": ["Charter", ...defaultTheme.fontFamily.serif]
    	},
    	listStyleType: {
    		circle: "circle"
    	}
    }
  },
  variants: {},
  plugins: []
}
