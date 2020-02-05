---
title: Game Master Card Boards
permalink: /gm/card-boards/
regenerate: true
---

{%- assign boards = site.gm-card-boards -%}

<ul>
    {%- for board in boards -%}
        <li><a href="{{ board.url }}">
        {{ board.name }} ({{ board.adventure }})
        </a></li>
    {%- endfor -%}
</ul>