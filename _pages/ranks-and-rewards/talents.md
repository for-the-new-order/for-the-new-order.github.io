---
title: Rewards (Talents)
permalink: rules/ranks-and-rewards/talents
toc_sticky: true
toc: true
classes:
    - pages-rules
    - genesys-theme
    - talents-database
    - fluid
    - fluid-toc
---

## Talents Rewards

When ranking up, players can unlock unique talent trees using Contribution Ranks (CR).
Unlocking a tree cost 1 CR, 30xp, and must be attached to two distinct Tier 5 talents, like signature abilities.
Then, the talents of the unlocked tree can be purchased using standard talent rules.
Some may have additional prerequisites.

RP-wise, unlocking those trees requires the PC to take specialized training that not everybody can get in the New Order. Moreover, it requires a bit of time (between two adventures).

Look at the _Table of Contents_, on the right, for the current talent trees.

{::options parse_block_html="true" /}

<section class="talents two-columns">

<small>
<mark>This is a work in progress, getting tested</mark>; don't purchase those until further notice.
Jump to [Regular Talents](/rules/talents/#regular-talents) instead.
</small>

CoreTalents

{%- assign categories = site.data.talents-rewards | sort: 'Name' -%}

{% for category in categories %}

<h2 id="{{ category.Name | slugify }}">{{ category.Name }}</h2>

{% include text-with-symbols.html content=category.Description %}

<hr>

{% assign coreTalents = category.Talents | where_exp: "item", "item.IsCore == true" | sort: 'Tier' %}

<h3 id="{{ category.Name | slugify }}-core">Core</h3>

{% for talent in coreTalents %}
{% include talent.md talent=talent %}
{% endfor %}

{%- assign talents = category.Talents  | sort: 'Name' | sort: 'Tier' -%}
{%- assign tiers = talents | where_exp: "item", "item.IsCore <> true" | map: 'Tier' | uniq | sort -%}
{% for tier in tiers %}

<h3 id="{{ category.Name | slugify }}-tier-{{ tier }}">Tier {{ tier }}</h3>

{% for talent in talents %}
{%- unless talent.IsCore -%}
    {%- if talent.Tier == tier -%}
        {%- assign sources = talent.Source | split: ", " -%}
        {%- for sourceAbbr in sources -%}
            {%- assign trimmedAbbr = sourceAbbr | strip -%}
            {%- if trimmedAbbr contains "CCC-" -%}
                {%- assign isCCC = true -%}
            {%- endif -%}
        {%- endfor -%}
        {% include talent.md talent=talent %}
    {%- endif -%}
{%- endunless -%}
{% endfor %}
{% endfor %}
{% endfor %}

</section>