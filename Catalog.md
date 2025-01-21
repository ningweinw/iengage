---
layout: default
title: iEngage Catalog
---

<table class="cat-table">
  <thead>
    <tr>
      <th>Course</th>
      <th>Asset</th>
      <th>Type</th>
    </tr>
  </thead>
  <tbody>
    {% assign sorted_courses = site.course_codes | sort %}
    {% for course in sorted_courses %}
      {% assign pages = site.pages | where_exp: "page", "page.courses contains course" | sort: "name" %}
      {% for page in pages %}
        <tr>
          <td>{{ course }}</td>
          <td><a href="/iengage/{{ page.url }}">{{ page.title }}</a></td>
          <td>{{ page.category }}</td>
        </tr>
      {% endfor %}
    {% endfor %}
  </tbody>
</table>
