---
title: Team Presence Talents
permalink: /rules/team-presence-talents/
toc_sticky: false
---

_**This is an untested work in progress.**_

This page list all _Team Presence Talents_ available.

For more info about the rules, see [Imperial Troops Deployment Rules](/rules/imperial-troops-deployment-rules/).

---

{% assign tiers = site.data.team-presence-talents | map: 'Tier' | uniq %}
{% assign talents = site.data.team-presence-talents | sort: 'Name' %}

{% for tier in tiers %}

## Tier {{ tier }}

{% for talent in talents %}
{% if talent.Tier == tier %}
{% if talent.Depreciated %}
{% if talent.Depreciated == "" %}{% include talent.md talent=talent %}{% endif %}
{% else %}
{% include talent.md talent=talent %}
{% endif %}
{% endif %}
{% endfor %}
{% endfor %}

{% comment %}

## Depreciated

{% for talent in talents %}
{% if talent.Depreciated and talent.Depreciated != "" %}
{% include talent.md talent=talent %}
{% endif %}
{% endfor %}
{% endcomment %}
