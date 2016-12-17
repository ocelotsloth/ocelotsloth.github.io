---
layout: splash
permalink: /
date: 5/2/2016
header:
  overlay_color: "#5e616c"
  overlay_image: mm-home-page-feature.jpg
  cta_label: "<i class='fa fa-file-text'></i> About Me"
  cta_url: "/about"
  caption:
title: 'Stenglein Projects'
excerpt: 'Hi! Welcome to my website and blog.'
feature_row:
  - image_path: mm-software-feature.png
    alt: "Blog"
    title: "Blog/Rambles"
    excerpt: "In which I talk about various things that may or may not have to do with my projects."
    url: "/blog/"
    btn_label: "Learn More"
  - image_path: mm-hardware-feature.png
    alt: "projects"
    title: "Projects"
    excerpt: "Check out some of the projects that I've worked on here!"
    url: "/projects/"
    btn_label: "Learn More"
  - image_path: mm-photography-feature.png
    alt: "photography"
    title: "Photography"
    excerpt: "Taking pictures since 2016"
    url: "/photography/"
    btn_label: "Learn More"
intro:
  - excerpt: 'Get notified when I add new stuff: &nbsp; [<i class="fa fa-twitter"></i> @mark_stenglein](https://twitter.com/mark_stenglein){: .btn .btn--twitter}'
---

<center>{% include feature_row id="intro" type="center" %}</center>

{% include feature_row %}

{% include group-by-array collection=site.posts field="categories" %}

{% include sidebar.html %}

<div class="archive">
  <h1>Recent Posts:</h1>
    {% include base_path %}

    {% for post in site.posts limit:5 %} <!-- Limits to the latest 5 posts on the site -->
      {% include archive-single.html %}
    {% endfor %}
</div>

