---
title: NPCs
permalink: /game-content/npcs/
---

<div class="npcs">
{% for npc in site.npcs %}
  <div class="npc">
    <h2><a href="{{ npc.url }}">{{ npc.title }}</a></h2>
    {{ npc.exerpt }}
  </div>
{% endfor %}
</div>
