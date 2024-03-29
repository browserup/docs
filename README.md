
The <span style="font-weight: bold; color: #de792b;">Browser</span><span style="font-weight: bold; color: #6e6e6e;">Up</span> documentation is created with (Jekyll)[https://jekyllrb.com/]

It is using the (TeXt Theme)[https://kitian616.github.io/jekyll-TeXt-theme/docs/en/i18n]

### Installation

```bash
bundle
```

### To View the documentation locally:

```bash
bundle exec jekyll serve --port 4040 --livereload
```


Note: this will start on port 4040 as the default port 4000 is used by another app.




Overview:

* Jekyll generates a static site. It is regenerated each time into the _site subfolder.
* in /en is where the browserup pages are stored in markdown format
  * This markdown continually regenerates the html in the _site folder
* There are two URL routing styles.
  A - Follow the file layout.
  B - Specify permalink: /some/route at the top of each file
* For now, we are using the file layout for routing
* Site config is at _config.yml at the root
* The navigations (menu, and sidebar) are in _data/navigation.yml
* Any folder with an underscore won't be in the actual outputted _site
* Images are in assets/images. Follow the examples in /en/load for linking.
* The theme had "posts" for blog style pages. They are still in here, but not used
* The theme also carries the html templates in the _layouts folder. We are free to hack those up as well













----------------------------------------------

# [TeXt Theme](https://github.com/kitian616/jekyll-TeXt-theme)

[![license](https://img.shields.io/github/license/kitian616/jekyll-TeXt-theme.svg)](https://github.com/kitian616/jekyll-TeXt-theme/blob/master/LICENSE)
[![Gem Version](https://img.shields.io/gem/v/jekyll-text-theme.svg)](https://github.com/kitian616/jekyll-TeXt-theme/releases)
[![Travis](https://img.shields.io/travis/kitian616/jekyll-TeXt-theme.svg)](https://travis-ci.org/kitian616/jekyll-TeXt-theme)
[![Tip Me via PayPal](https://img.shields.io/badge/PayPal-tip%20me-1462ab.svg?logo=paypal)](https://www.paypal.me/kitian616)
[![Tip Me via Bitcoin](https://img.shields.io/badge/Bitcoin-tip%20me-f7931a.svg?logo=bitcoin)](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/docsassets/images/3Fkufxcw2xd8HnaRJBNK4ccdtkUDyyNu4V.jpg)

![TeXt Theme](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/TeXt-home.jpg)

![TeXt Theme Details](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/TeXt-layouts.png)

TeXt is a super customizable Jekyll theme for personal site, team site, blog, project, documentation, etc. Similar to iOS 11 style, it has large and prominent titles, round buttons and cards.

**[Change Log](https://github.com/kitian616/jekyll-TeXt-theme/blob/master/CHANGELOG.md)** | **[中文](https://github.com/kitian616/jekyll-TeXt-theme/blob/master/README-zh.md)**

## Features

- Responsive
- Semantic HTML
- Skins
- Highlight Theme
- Internationalization
- Search
- Table of contents
- Authors
- Additional styles (alert, tag, image, icon, button, grid, etc)
- Extensions (audios, videos, slides, demos)
- Markdown enhancements ([MathJax](https://www.mathjax.org/), [mermaid](https://mermaidjs.github.io/), [chartjs](http://www.chartjs.org/))
- Sharing ([AddToAny](https://www.addtoany.com/), [AddThis](https://www.addthis.com/))
- Comments ([Disqus](https://disqus.com/), [Gitalk](https://gitalk.github.io/), [Valine](https://valine.js.org/en/))
- Pageview ([LeanCloud](https://leancloud.cn/))
- Analytics ([Google Analytics](https://analytics.google.com/analytics/web/))
- RSS ([jekyll-feed](https://github.com/jekyll/jekyll-feed))

## Skins

TeXt has 6 built-in skins, you can also set up your own skin.

| `default` | `dark` | `forest` |
| --- |  --- | --- |
| ![Default](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/skins_default.jpg) | ![Dark](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/skins_dark.jpg) | ![Forest](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/skins_forest.jpg) |

| `ocean` | `chocolate` | `orange` |
| --- |  --- | --- |
| ![Ocean](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/skins_ocean.jpg) | ![Chocolate](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/skins_chocolate.jpg) | ![Orange](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/skins_orange.jpg) |

### Highlight Theme

TeXt use [Tomorrow](https://github.com/chriskempson/tomorrow-theme) as the highlight theme.

| `tomorrow` | `tomorrow-night` | `tomorrow-night-eighties` | `tomorrow-night-blue` | `tomorrow-night-bright` |
| --- |  --- | --- | --- |  --- |
| ![Tomorrow](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/highlight_tomorrow.png) | ![Tomorrow Night](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/highlight_tomorrow-night.png) | ![Tomorrow Night Eighties](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/highlight_tomorrow-night-eighties.png) | ![Tomorrow Night Blue](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/highlight_tomorrow-night-blue.png) | ![Tomorrow Night Bright](https://raw.githubusercontent.com/kitian616/jekyll-TeXt-theme/master/screenshots/highlight_tomorrow-night-bright.png) |

## Documentation

### Start

- [Quick Start](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/quick-start)
- [Update from 1.x to 2.x](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/update-from-1-to-2)

### Customization

- [Configuration](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/configuration)
- [Navigation](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/navigation)
- [Layouts](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/layouts)
- [Logo and Favicon](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/logo-and-favicon)
- [Authors](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/authors)
- [Internationalization](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/i18n)

### Content

- [Writing Posts](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/writing-posts)
- [Additional styles](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/additional-styles)
- [Extensions](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/extensions)
- [Markdown Enhancements](https://kitian616.github.io/jekyll-TeXt-theme/docs/en/markdown-enhancements)

## Demo Pages

| Name | Description |
| --- | --- |
| [Home](https://kitian616.github.io/jekyll-TeXt-theme/test/) | Home page |
| [Archive](https://kitian616.github.io/jekyll-TeXt-theme/archive.html) | Archive page |
| [Layout Examples](https://kitian616.github.io/jekyll-TeXt-theme/samples.html) | Examples for different layouts |

## License

TeXt Theme is [MIT licensed](https://github.com/kitian616/jekyll-TeXt-theme/blob/master/LICENSE).
