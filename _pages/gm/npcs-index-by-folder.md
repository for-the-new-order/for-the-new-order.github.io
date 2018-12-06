---
title: Game Master NPCs
permalink: /gm/npcs/by-folders
---

{%- comment -%} Get categories {%- endcomment -%}
{%- capture categories -%}
{%- for npc in site.data.npcs -%}
    {%- assign key = npc | first -%}
    {%- assign data = site.data.npcs[key] -%}
    {%- if data.folder -%}
        {{ data.folder }},
    {%- else -%}
        {{ data.clan }},
    {%- endif -%}
{%- endfor -%}
{%- endcapture -%}
{%- assign categories = categories | split: ',' | uniq | sort -%}

{%- comment -%} Get NPCs name {%- endcomment -%}
{%- capture names -%}
{%- for npc in site.data.npcs -%}
    {%- assign key = npc | first -%}
    {{ key }},
{%- endfor -%}
{%- endcapture -%}
{%- assign names = names | split: ',' | sort  -%}

{%- comment -%} List categories > npcs {%- endcomment -%}
{%- for category in categories -%}

    <h2>{{ category }}</h2><ul>

    {%- for name in names -%}
        {%- assign data = site.data.npcs[name] -%}
        {%- assign shouldBeDisplayed = false -%}
        {%- if data.folder -%}
            {%- if data.folder == category -%}
                {%- assign shouldBeDisplayed = true -%}
            {%- endif -%}
        {%- else -%}
            {%- if data.clan == category -%}
                {%- assign shouldBeDisplayed = true -%}
            {%- endif -%}
        {%- endif -%}
        {%- if shouldBeDisplayed -%}
            <li><a href="/gm/npcs/{{ name | slugify }}">{{ name }}</a></li>
        {%- endif -%}
    {%- endfor -%}
    </ul>
{%- endfor -%}