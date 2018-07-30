---
title:  Game Master NPCs
permalink: /gm/npcs/
---

<div class="npcs">
{% for npc in site.gm-npcs %}
  <div class="npc">
    <h2><a href="{{ npc.url }}">{{ npc.title }}</a></h2>
    {{ npc.exerpt }}
  </div>
{% endfor %}
</div>