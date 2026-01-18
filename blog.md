---
layout: null
permalink: /blog.md
---
---
title: "Blog - {{ site.title }}"
url: {{ site.url }}/blog/
---

# Recent Posts

{% for post in site.posts limit:14 %}
## [{{ post.title }}]({{ site.url }}{{ post.url }})

- **Date**: {{ post.date | date: "%Y-%m-%d" }}
- **Markdown**: [{{ post.title }}.md]({{ site.url }}{{ post.url | split: '/' | compact | join: '/' }}.md)

{{ post.content }}

---

{% endfor %}

[View all posts in the archive]({{ site.url }}/archive/)
