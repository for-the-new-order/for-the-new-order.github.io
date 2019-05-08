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

The talents from `Shadow of the Beanstalk (SOTB)` could not be Star Wars-y enough; when in doubt ask your GM.

## Genesys Talents Expanded

Genesys Talents Expanded is a community effort to bring a wider selection of talents to the Genesys Role-playing System, published by Fantasy Flight Games, to provide GM’s and players more options for constructing their campaigns and characters.

The bulk of these talents are from Fantasy Flight Games publications,mostly from the Star Wars Roleplaying games; Edge of the Empire, Age of Rebellion, and Force and Destiny.

Talents from the Star Wars games, which do not fit the nature and/or standards of Genesys, were modified and/or renamed, or omitted altogether.

Additional talents, at the end of the collection, were created and vetted by the Genesys gaming community.

> Data Source: [Genesys Talents Expanded](https://community.fantasyflightgames.com/topic/265863-genesys-talents-expanded/).

### Update from 4.2 to 5.0 (differences)

Here are the few differences with this list and the Genesys Talents Expanded v5.0

1. The rank of multiple Star Wars talents were lowered. They were not powerful enough to be ranked as high as they were. Here is the list:
    - `Barrage` was down-ranked from 2 to 1
    - `Beast Wrangler` was down-ranked from 2 to 1
    - `Blooded` was down-ranked from 2 to 1
    - `Command` was down-ranked from 2 to 1
    - `Confidence` was down-ranked from 2 to 1
    - `Coordinated Assault` was down-ranked from 2 to 1
    - `Daring Aviator` was down-ranked from 2 to 1
    - `Defensive Stance` was down-ranked from 2 to 1
    - `Disorient` was down-ranked from 2 to 1
    - `Distracting Behavior` was down-ranked from 2 to 1
    - `Fine Tuning` was down-ranked from 2 to 1
    - `Inventor` was down-ranked from 2 to 1
    - `Researcher` was down-ranked from 2 to 1
    - `Shortcut` was down-ranked from 2 to 1
    - `Side Step` was down-ranked from 2 to 1
    - `Speaks Binary` was down-ranked from 2 to 1
    - `Stalker` was down-ranked from 2 to 1
    - `Tinkerer` was down-ranked from 2 to 1
    - `Well Rounded` was down-ranked from 3 to 2
2. `Suppressing Fire`
    - The original `Suppressing Fire` was renamed to `Suppressing Fire (old)` and was down-ranked from rank 2 to rank 1.
    - The new `Suppressing Fire` (rank 3) was added as well since they are two different talents.
3. `Cunning Attack` is a new talent from this campaign.

---

{% assign tiers = site.data.talents | map: 'Tier' | uniq | sort %}
{% assign talents = site.data.talents | sort: 'Name' | sort: 'Tier' %}

{% for tier in tiers %}

## Tier {{ tier }}

{% for talent in talents %}
{% if talent.Tier == tier and talent.Depreciated == "" %}
{% assign sources = talent.Source | split: ", " %}
{% unless sources contains 'ROT' or sources contains 'SOTB' %}
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

## Shadow of the Beanstalk

{% for tier in tiers %}

## Tier {{ tier }}

{% assign talents = site.data.talents | sort: 'Tier' %}
{% for talent in talents %}
{% if talent.Tier == tier %}
{% assign sources = talent.Source | split: ", " %}
{% if sources contains 'SOTB' %}
{% include talent.md talent=talent %}
{% endif %}
{% endif %}
{% endfor %}

{% endfor %}

## Realms of Terrinoth

{% for tier in tiers %}

## Tier {{ tier }}

{% assign talents = site.data.talents | sort: 'Tier' %}
{% for talent in talents %}
{% if talent.Tier == tier %}
{% assign sources = talent.Source | split: ", " %}
{% if sources contains 'ROT' %}
{% include talent.md talent=talent %}
{% endif %}
{% endif %}
{% endfor %}

{% endfor %}

## Depreciated

{% for talent in talents %}
{% if talent.Depreciated != "" %}
{% include talent.md talent=talent %}
{% endif %}
{% endfor %}
