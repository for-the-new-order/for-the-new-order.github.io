---
title: NPCs
permalink: /game-content/npcs/
---

NPCs that you know!

<div class="npcs">
{% for npc in site.npcs %}
{% if npc.public %}
  <div class="npc">
    <h2><a href="{{ npc.url }}">{{ npc.title }}</a></h2>
    {{ npc.content }}
  </div>
{% endif %}
{% endfor %}
</div>