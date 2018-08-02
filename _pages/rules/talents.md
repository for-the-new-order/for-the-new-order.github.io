---
title: Talents database
permalink: /rules/talents/
toc_sticky: false
---

## Imperial campaign

By default, the following talents, but the depreciated one, are allowed.

If a talent does not feel right for Star Wars, the GM can always forbid its use. 
This is especially true for `Realms of Terrinoth (ROT)` talents that could be more fantasy-oriented than Star Wars-y.
For that reason, I removed all `Realms of Terrinoth (ROT)` talents from the list.
As for `Community Created Content (CCC)`, I placed them at the bottom of the list, before the `Depreciated` ones.

## Genesys Talents Expanded

Genesys Talents Expanded is a community effort to bring a wider selection of talents to the Genesys Role-playing System, published by Fantasy Flight Games, to provide GM’s and players more options for constructing their campaigns and characters.

The bulk of these talents are from Fantasy Flight Games publications,mostly from the Star Wars Roleplaying games; Edge of the Empire, Age of Rebellion, and Force and Destiny.

Talents from the Star Wars games, which do not fit the nature and/or standards of Genesys, were modified and/or renamed, or omitted altogether.

Additional talents, at the end of the collection, were created and vetted by the Genesys gaming community.

> Data Source: [Genesys Talents Expanded](https://community.fantasyflightgames.com/topic/265863-genesys-talents-expanded/).

---

{% assign tiers = site.data.talents | map: 'Tier' | uniq %}
{% assign talents = site.data.talents | sort: 'Name' %}

{% for tier in tiers %}

## Tier {{ tier }}

{% for talent in talents %}
{% if talent.Tier == tier and talent.Depreciated == "" %}
{% assign sources = talent.Source | split: ", " %}
{% unless sources contains 'ROT' %}
{% assign isCCC = false %}
{% for sourceAbbr in sources %}{% assign trimmedAbbr = sourceAbbr | strip %}{% if trimmedAbbr contains "CCC-" %}{% assign isCCC = true %}{% endif %}{% endfor %}
{% unless isCCC %}
{% include talent.md talent=talent %}
{% endunless %}
{% endunless %}
{% endif %}
{% endfor %}

{% endfor %}



## Community Created Content

{% for talent in talents %}
{% assign sources = talent.Source | split: ", " %}
{% unless sources contains 'ROT' %}
{% assign isCCC = false %}
{% for sourceAbbr in sources %}{% assign trimmedAbbr = sourceAbbr | strip %}{% if trimmedAbbr contains "CCC-" %}{% assign isCCC = true %}{% endif %}{% endfor %}
{% if isCCC %}
{% include talent.md talent=talent %}
{% endif %}
{% endunless %}
{% endfor %}


## Depreciated

{% for talent in talents %}
{% if talent.Depreciated != "" %}
{% include talent.md talent=talent %}
{% endif %}
{% endfor %}
