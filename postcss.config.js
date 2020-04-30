const themeDir = __dirname + "./";

module.exports = {
    plugins: [
        require("postcss-import")({
            path: [themeDir],
        }),
        require("tailwindcss")("assets/css/tailwind.config.js"),
        // Configuration of purgecss for Tailwindcss
        // see https://tailwindcss.com/docs/controlling-file-size/#setting-up-purgecss
        require("@fullhuman/postcss-purgecss")({
            // Specify the paths to all of the template files in your project
            content: [
                "./_layouts/**/*.html",
                "./index.html"
            ],
            // Include any special characters you're using in this regular expression
            defaultExtractor: (content) =>
                content.match(/[\w-/:]+(?<!:)/g) || [],
            fontFace: false,
        }),
        require("autoprefixer")({
            grid: true,
        }),
        require("postcss-reporter"),
    ],
};
