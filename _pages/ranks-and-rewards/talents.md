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

# Talents Rewards 3.1

When ranking up, players can unlock unique talent trees using Contribution Ranks (CR).
Unlocking a tree cost 1 CR, 30xp, and must be attached to two distinct Tier 5 talents (like a signature ability) and grants the first Core talent (Tier 1) for "free".
Then, the talents of the unlocked tree can be purchased using standard talent rules, as long as prerequisites are satisfied.

RP-wise, unlocking those trees requires the PC to take specialized training that is given to only a selected few; not to everyone in the New Order.
Moreover, it requires a bit of time (between two adventures) to complete the training. The rarity justifies the CR cost, while acquiring the skills (the training itself) justifies the XP cost.

Use the _Table of Contents_, on the right, to quickly navigate between trees.

The idea is for characters to use minions as an extension of themselves, boosting their combat skills, speeding up encounters with many NPCs, while still using the number provided by the Empire, but at a smaller scale than mass-combats.
You can also mix the [Squads & Squadrons](/rules/squads-and-squadrons/) rules with [Mass Combat](/rules/mass-combat/) to create epic squads battle inside of an epic war-scale adventure.

> When purchasing a talent that talks about `[type of units]`, you must choose one, like Tie Fighter pilots for the Navy, Stormtroopers, Army troopers, etc.

## Work in progress

This is a work in progress, so please use your judgement, their may be missing prerequisites or typos or talents that should be moved to higher tiers, etc.
We tested the Squad talents more than the Squadron talents, so balancing issues are more likely to happen with Squadrons.

> If you are a <mark>GM</mark>, please give me your feedback, balancing issues, or ideas at [GitHub](https://github.com/for-the-new-order/for-the-new-order.github.io/issues/new).

# Release notes

Here is the history of changes.

## Talents Rewards 3.1

[2020-06-14] This is a balance update. It also fix missing prerequisites.

-   Update `Voluntary [unit] Sacrifice` talents
-   Change tiers of `Formation: Dug In` and `Formation: Close` talents from 1, 2, 3 to 1, 3, 5.
-   Change tiers of `Formation: Search Party` talents from 1, 1, 1 to 1, 3, 5.
-   Change `Unthreatable [unit] [Squad|Squadron]` from tier 1 to tier 2
-   Change `Fearless [unit] [Squad|Squadron]` from tier 2 to tier 3
-   Change `Undespairable [unit] [Squad|Squadron]` from tier 2 to tier 4
-   Review `Running Dark` talents (name, tier, effects, prerequisites)
-   Review `[unit] Formation Master`

> `[unit]` stands for the type of unit, like Navy, Army, or Stormtrooper.
>
> `[Squad|Squadron]` stands for `Squad` or `Squadron`.

## Talents Rewards 3.0

[2020-05-03] Initial release of the Squads and Squadrons talents.

# Talent trees

There are three "types" of talents:

1. Core Talents, that improve the base bonuses
2. Universal Talents, that improve the squads and squadrons in general
3. Formation-specific Talents, that improves the benefits of its formation.

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
