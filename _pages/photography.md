---
title: "Photography"
layout: splash
permalink: /photography/
date: 2016-03-23T11:48:41-04:00
header:
  overlay_color: "#000"
  overlay_filter: "0.1"
  overlay_image: mm-home-page-feature.jpg
intro:
  - excerpt: "I've been taking photos since I got my first camera years ago, but really got started in 2016 with my first DSLR. Here's what I've got to show for it!"
feature_row1:
  - image_path: daily-photo/feature.jpg
    alt: "A photo a day..."
    title: "A photo a day..."
    excerpt: 'In this project I will create an image every day for the next year and see what comes out of it.'
    url: "/photography/daily"
    btn_label: "See the Pictures"
    btn_class: "btn--inverse"
feature_row2:
  - image_path: daily-photo/feature2.jpg
    alt: "my collection"
    title: "My Collection"
    excerpt: "Whenever I take a group of photos I'll put them in an album here"
    url: "#test-link"
    btn_label: "Learn More"
    btn_class: "btn--inverse"
---

{% include feature_row id="intro" type="center" %}

{% include feature_row id="feature_row1" type="left" %}

{% include feature_row id="feature_row2" type="right" %}
