# johanl.se

Static webpage based on Jekyll.

## Getting started

### Prerequisites

Install bundler.

```
gem install bundler
```

Also, make sure to install `postcss-cli` and `autoprefixer` globally in your environment, as Hugo Pipe’s PostCSS requires it. This is mentioned in the [Hugo Docs](https://gohugo.io/hugo-pipes/postcss/).

```bash
npm install -g postcss-cli
npm install -g autoprefixer
```

### Installing and running

Run and serve website locally.

```
bundle exec jekyll serve
```

## Deploy

It's automatically deployed on github pages using a [github actions workflow](./.github/workflows/main.yml).

## Acknowledgements

- [Hugo Starter Theme with Tailwind CSS](https://github.com/dirkolbrich/hugo-theme-tailwindcss-starter), a great boilerplate for using tailwind with hugo. (This site started as a Hugo site but I've since migrated it to Jekyll)
