---
layout: null
permalink: /index.md
---
---
title: "{{ site.title }}"
description: "{{ site.description }}"
url: {{ site.url }}
---

# {{ site.title }}

{{ site.description }}

## Recent Posts

{% for post in site.posts limit:10 %}
- [{{ post.title }}]({{ site.url }}{{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}
{% endfor %}

## Navigation

- [Archive]({{ site.url }}/archive/) - View all posts
- [RSS Feed]({{ site.url }}/feed/) - Subscribe via RSS
- [Markdown Feed]({{ site.url }}/feed.md) - Full content in markdown
- [LLMs Info]({{ site.url }}/llms.txt) - Information for AI crawlers

## About

This is the personal website of Josh Ferrara.
