---
layout: null
permalink: /feed.md
---
# {{ site.title }} - Markdown Feed

> {{ site.description }}

Last updated: {{ site.time | date: "%Y-%m-%d" }}

---

{% for post in site.posts %}
## {{ post.title }}

- **Date**: {{ post.date | date: "%Y-%m-%d" }}
- **URL**: {{ site.url }}{{ post.url }}
- **Markdown URL**: {{ site.url }}{{ post.url | split: '/' | compact | join: '/' }}.md

{{ post.content }}

---

{% endfor %}
