# flatpak.org website

The website for [Flatpak](https://flatpak.org).

## Building

This site is built with [Zola](https://www.getzola.org/), a fast static site generator.

### Prerequisites

Install Zola (v0.19+):

```bash
# Fedora
sudo dnf install zola

# macOS / Homebrew
brew install zola

# Or download from https://github.com/getzola/zola/releases
```

### Development

```bash
zola serve
```

This starts a local server at `http://127.0.0.1:1111` with live reload.

### Production build

```bash
zola build
```

Output is written to `public/`.

### Docker

```bash
docker build -t flatpak-website .
docker run -p 8080:8080 flatpak-website
```

## Structure

```
config.toml          # Zola configuration
content/             # Markdown content pages
  _index.md          # Homepage
  about.md           # About page
  faq.md             # FAQ
  presentations.md   # Presentations & articles
  setup/             # Distro setup section
    _index.md        # Setup hub page
    ubuntu.md        # Per-distro setup pages
    ...
  press/             # Press releases (blog section with RSS)
    _index.md        # Press index
    2016-06-21-*.md  # Press release pages
    ...
templates/           # Zola Tera templates
  base.html          # Base layout (nav, footer)
  index.html         # Homepage template
  page.html          # Generic content page
  setup.html         # Setup hub
  setup-distro.html  # Individual distro page
  press.html         # Press index
  press-page.html    # Individual press release
  404.html           # 404 page
static/              # Static assets (fonts, images, CSS)
  style.css          # Main stylesheet (modern CSS, no preprocessor)
data/                # Data files (apps.toml)
```

## Contributing

Issues and pull requests are welcome on [GitHub](https://github.com/flatpak/flatpak.github.io).
