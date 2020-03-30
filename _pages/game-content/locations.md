---
title: Locations
permalink: /game-content/locations/
regenerate: true
toc: false
classes:
    - locations
    - genesys-theme
    - fluid
---

{%- assign locations = site.locations -%}
<div class="locations">
    {% for location in locations %}
        {% assign data = site.data.locations[location.title] %}
        {%- if data.isVisible -%}
            <section class="location-list-item">
                <header>
                    <h2 id="{{ location.title | handleize }}">
                        {{ location.title }}
                        <small>({{ data.type }})</small>
                    </h2>
                </header>
                <section class="content">
                    {%- if data.description and data.description.size > 0 -%}
                        {{ data.description[0] | markdownify }}
                    {%- endif -%}
                </section>
            </section>
            <footer>
                <a href="{{ location.url }}" class="btn btn--small btn--primary">
                    <i class="fas fa-info-circle"></i>
                    {{ location.title }}
                </a>
            </footer>
        {%- endif -%}
    {% endfor %}
</div>
