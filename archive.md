---
layout: null
permalink: /archive.md
---
---
title: "Archive - {{ site.title }}"
url: {{ site.url }}/archive/
---

# Archive

All posts from {{ site.title }}.

{% for post in site.posts %}
## [{{ post.title }}]({{ site.url }}{{ post.url }})

- **Date**: {{ post.date | date: "%Y-%m-%d" }}
- **Markdown**: [{{ post.title }}.md]({{ site.url }}{{ post.url | split: '/' | compact | join: '/' }}.md)

{% endfor %}
