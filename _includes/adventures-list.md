{%- if page.is-gm -%}
    {%- assign adventures = site.gm-adventures | reverse -%}
{%- else -%}
    {%- assign adventures = site.adventures | reverse -%}
{%- endif -%}
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
                        {{ data.description[0] | markdownify }}
                    {%- endif -%}
                </section>
            </section>
            <footer>
                <a href="{{ adventure.url }}" class="btn btn--small btn--primary">
                    <i class="fas fa-info-circle"></i>
                    {{ adventure.title }}
                </a>
                {%- if data.crawl -%}
                    <a href="{{ data.crawl }}" class="btn btn--small btn--success" target="_blank">
                        <i class="fas fa-play"></i>
                        &nbsp;Crawl
                    </a>
                {%- endif -%}

            </footer>
        {%- endif -%}
    {% endfor %}
</div>
