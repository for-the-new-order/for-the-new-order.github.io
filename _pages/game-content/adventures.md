---
title: Adventures
permalink: /game-content/adventures/
---

{%- assign adventures = site.adventures -%}
<h2>Adventures</h2>
<div class="adventures">
    {% for adventure in adventures %}
        {% assign data = site.data.adventures[adventure.key] %}
        {%- if data.isVisible -%}
            <section class="adventure-list-item">
                <header>
                    <h2 id="{{ adventure.key | handleize }}">{{ adventure.title }}</h2>
                </header>
                <section class="content">
                    {%- if data.description and data.description.size > 0 -%}
                        <p>{{ data.description[0] }}</p>
                    {%- endif -%}
                </section>
            </section>
            <footer>
                <a href="{{ adventure.url }}" class="btn btn--light-outline">
                    More info about
                    <i>{{ adventure.title }}</i>
                </a>
            </footer>
        {%- endif -%}
    {% endfor %}
</div>
