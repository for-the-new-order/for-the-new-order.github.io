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

# Talents Rewards

When ranking up, players can unlock unique talent trees using Contribution Ranks (CR).
Unlocking a tree cost 1 CR, 30xp, and must be attached to two distinct Tier 5 talents (like a signature ability) and grants the first Core talent (Tier 1) for "free".
Then, the talents of the unlocked tree can be purchased using standard talent rules, as long as prerequisites are satisfied.

RP-wise, unlocking those trees requires the PC to take specialized training that is given to only a selected few; not to everyone in the New Order.
Moreover, it requires a bit of time (between two adventures) to complete the training. The rarity justifies the CR cost, while acquiring the skills (the training itself) justifies the XP cost.

Use the _Table of Contents_, on the right, to quickly navigate between trees.

The idea is for characters to use minions as an extension of themselves, boosting their combat skills, speeding up encounters with many NPCs, while still using the number provided by the Empire, but at a smaller scale than mass-combats.

> When purchasing a talent that talks about `[type of units]`, you must choose one, like Tie Fighter pilots for the Navy, Stormtroopers, Army troopers, etc.

<small>
<mark>This is a work in progress, getting tested</mark>; don't purchase those until further notice.
Jump to [Regular Talents](/rules/talents/#regular-talents) instead.
After field testing the first tree, adjustments were needed; this is the first revision (<mark>v2.0</mark>).
</small>

> If you are a GM that want to try this out, please give me your feedback and ideas on [GitHub](https://github.com/for-the-new-order/for-the-new-order.github.io/issues/new).

{::options parse_block_html="true" /}

<section class="talents three-columns">

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
