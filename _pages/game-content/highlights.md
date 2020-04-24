---
title: Highlights
permalink: /game-content/highlights/
regenerate: true
toc: true
classes:
    - highlights
    - genesys-theme
---

<section>
{% for item in site.data.highlights %}
    {% assign type = item[0] %}
    {% assign dataValue = item[1] %}
    {% assign highlights = site.highlights | where: 'type', type %}
    {% assign datas = site.data.highlights[type] %}

    <h2 id="{{ type | handleize }}">{{ type | capitalize }}</h2>

    <div class="highlights">
        {% for highlight in highlights %}
            {% assign data = dataValue | where: 'name', highlight.title | first %}
            {% unless data.isVisible == false %}
                <section class="highlight-list-item">
                    <header>
                        <h3 id="{{ type | handleize }}-{{ highlight.title | handleize }}">
                            {{ highlight.title }}
                            {%- if data.type -%}
                                <small>({{ data.type }})</small>
                            {%- endif -%}
                        </h3>
                    </header>
                    <section class="content">
                        {%- if data.description and data.description.size > 0 -%}
                            {{ data.description[0] | markdownify }}
                        {%- endif -%}
                    </section>
                </section>
                <footer>
                    <a href="{{ highlight.url }}" class="btn btn--small btn--primary">
                        <i class="fas fa-info-circle"></i>
                        {{ highlight.title }}
                    </a>
                </footer>
            {% endunless %}
        {% endfor %}
    </div>
{% endfor %}
</section>