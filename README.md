# The personal site and blog of Josh Ferrara

This is the Jekyll-based personal website and blog of Josh Ferrara, featuring a rich history of blog posts dating back to 2006, along with various interactive web applications and projects.

## 🏗️ Project Structure

```
/
├── _config.yml         # Jekyll configuration
├── _posts/            # Blog posts (2006-present)
├── _layouts/          # Jekyll layout templates
├── _includes/         # Reusable HTML components
├── _drafts/           # Draft posts
├── public/            # Static assets (images, fonts, scripts, styles)
├── feed/              # RSS feed
├── archive.html       # Blog archive page
├── blog.html          # Blog listing page
├── CNAME             # Custom domain configuration (joshferrara.com)
└── [Custom Sections]  # Various interactive apps (see below)
```

## 🚀 Deployment

This site is deployed using **GitHub Pages** with the following configuration:

- **Domain**: joshferrara.com (configured via CNAME file)
- **Build**: Jekyll builds are handled automatically by GitHub Pages
- **Dependencies**: Managed through `github-pages` gem (see Gemfile)
- **URL**: https://joshferrara.com

### Local Development

To run this site locally:

```bash
# Install dependencies
bundle install

# Serve locally
bundle exec jekyll serve

# The site will be available at http://localhost:4000
```

## 🎨 Features

This site includes several unique features and custom applications:

### Core Features
* **Responsive Design**: Retina-ready images and social icons
* **Typography**: Optimized with Open Sans font family
* **Animations**: CSS transitions for smooth interactions
* **Blog System**: Full-featured blog with archive and individual post templates
* **RSS Feed**: Available at `/feed/`
* **Bootstrap Integration**: Enhanced UI components with tooltips

### Custom Applications & Sections

1. **Twitter Archive Viewer** (`/twitter/`)
   - Interactive browser for personal Twitter archive
   - JSON and CSV data exports
   - Custom visualization interface

2. **Wordle Game** (`/wordle/`)
   - Implementation of the popular word puzzle game
   - Daily puzzle functionality

3. **Weather App** (`/weather/`)
   - Weather information display
   - Custom logo and interface

4. **Beef Tallow Section** (`/beef-tallow/`)
   - Audio content (MP3)
   - Custom presentation page

5. **Testing Areas**
   - `/test/` - General testing
   - `/jeeves/` - Audio files and XML configurations
   - `/nuts/` - Additional experimental content

6. **Legacy Content**
   - WordPress migration artifacts (`/wp-content/`, `/wp-photos/`)
   - Historical content preservation

## 📁 Asset Organization

- **Images**: `/public/images/` and distributed in various section folders
- **Styles**: `/public/styles/` with modular CSS
- **Scripts**: `/public/scripts/` for JavaScript functionality
- **Fonts**: `/public/fonts/` including FontAwesome icons
- **Favicons**: Multiple formats for cross-platform support

## 🔧 Technical Details

- **Static Site Generator**: Jekyll (via GitHub Pages)
- **Syntax Highlighting**: Rouge
- **Permalink Style**: Pretty URLs
- **Progressive Web App**: Configured with web app manifest
- **SEO**: Meta tags configured for social sharing

## 📝 Content Guidelines

All content within `_posts/` and `public/` directories is copyrighted property of Josh Ferrara. Please don't reuse any original content or assets without explicit permission.

## 🤝 Credits

- Inspired by [@mdo](http://github.com/mdo)
- Designed and built by [Josh Ferrara](https://joshferrara.com)
- Built on [Jekyll](http://github.com/mojombo/jekyll)
- Hosted on [GitHub Pages](http://pages.github.com/)
- Enhanced with [Bootstrap](http://twitter.github.com/bootstrap/) components
