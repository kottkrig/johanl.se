# johanl.se

Static webpage based on Hugo.

## Getting started

### Prerequisites

Make sure to install `postcss-cli` and `autoprefixer` globally in your environment, as Hugo Pipe’s PostCSS requires it. This is mentioned in the [Hugo Docs](https://gohugo.io/hugo-pipes/postcss/).

```bash
npm install -g postcss-cli
npm install -g autoprefixer
```

### Installing and running

Install theme dependencies.

```bash
npm install --prefix ./themes/johanl-theme/
```

Build elm app that handles WebMentions

```bash
cd themes/johanl-theme/
npm run watch
```

Run and serve website locally.

```
hugo server --buildFuture
```

Generate a new post.

```
hugo new posts/veckouppdatering-5.md
```

## Deploy

It's automatically deployed on github pages using a [github actions workflow](./.github/workflows/main.yml).

## Acknowledgements

- [Hugo Starter Theme with Tailwind CSS](https://github.com/dirkolbrich/hugo-theme-tailwindcss-starter), a great boilerplate for using tailwind with hugo.
