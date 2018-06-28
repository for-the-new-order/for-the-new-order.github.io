---
title: Symbols and dices
permalink: /rules/symbols-and-dices/
---

## Symbols

<table class="table-symbols">
  <tr>
    <th>Name</th>
    <th>Genesys</th>
    <th>Edge of the Empire</th>
  </tr>
{% assign dices = site.data.symbols %}
{% for dice in dices %}
{% if dice.category == "symbol" %}
  <tr>
    <td>{{dice.type | capitalize}}</td>
    <td>{% include text-with-symbols.html content=dice.source %}</td>
    <td>{% include text-with-symbols.html content=dice.source css-prefix="eote"  %}</td>
  </tr>
{% endif %}
{% endfor %}
</table>

## Genesys dice icons

<table class="table-dices">
  <tr>
    <th>Name</th>
    <th>Icon</th>
    <th>&nbsp;</th>
  </tr>

{% assign dices = site.data.symbols %}
{% for dice in dices %}
{% if dice.category == "dice" %}

  <tr>
    <td>{{dice.type | capitalize}}</td>
    <td>{% include text-with-symbols.html content=dice.source %}</td>
    <td>&nbsp;</td>
  </tr>
{% endif %}
{% endfor %}
</table>
