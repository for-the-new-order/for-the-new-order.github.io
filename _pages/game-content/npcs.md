---
title: NPCs
permalink: /game-content/npcs/
---

{% comment %} {% assign dataNPCs = site.data.npcs %}
{{ dataNPCs | size }}
<ul>
{% for y in dataNPCs %}
{% assign n = y[0] %}
{% assign m = site.data.npcs[n] %}
  <li>{{ n }}</li>
  <li>{{ m.clan }}</li>
{% endfor %}
</ul> {% endcomment %}

{% include npc-list.html npcs=site.npcs %}
