---
title: 'Epidode 9: Prisoners of Interest'
date: 2020-02-10 00:00:00
excerpt: This represents a part of the list of prisoners obtained by Senior Agent Kaine.
toc: false
---

This represents a part of the list of prisoners obtained by Senior Agent Kaine during the first game session.
The following prisoners are flagged as important in the system, but the information is missing.
Maybe the information is unknown, or maybe some officers got bribed.

Nevertheless, to know their affiliation and motivation, Kaine must roll a simple (-) Underground check.
Any other character involved by Kaine that possess at least one rank in Underground or that has Underground as a career skill, can roll as well.
Combine all of the symbols and resolve them as a single outcome.

Use the tables below to resolve the symbols, starting with the bad symbols (in another case; i.e., non-simple check).
Locked information is not possible to learn.
Cannot learn any information about locked prisoners, before unlocking them first.

| Symbol                                                                                                 | Effects                                                                                          |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| {% include text-with-symbols.html content="[SU]" %}                                                    | Learn a piece of knowledge about a prisoner                                                      |
| {% include text-with-symbols.html content="[AD]" %}                                                    | Learn a piece of knowledge about a prisoner<br>Unlock a piece of knowledge about a prisoner      |
| {% include text-with-symbols.html content="[AD]" %}{% include text-with-symbols.html content="[AD]" %} | Unlock and learn a piece of knowledge about a prisoner                                           |
| {% include text-with-symbols.html content="[TR]" %}                                                    | Any of the above<br>Learn all unlocked pieces of knowledge about a prisoner<br>Unlock a prisoner |

| Symbol                                              | Effects                                    |
| --------------------------------------------------- | ------------------------------------------ |
| {% include text-with-symbols.html content="[TH]" %} | Lock a piece of knowledge about a prisoner |
| {% include text-with-symbols.html content="[DE]" %} | Lock a prisoner                            |

### Pieces of knowledge:

-   Affiliation (clan and corp)
-   Motivations (desires, fear, strength, or flaw)

## Players Information

```yaml
- name: Redd Rencher
  gender: Male
  species: Human
  clan: Unknown
  corp: Unknown
  motivations:
      desires: Unknown
      fear: Unknown
      strength: Unknown
      flaw: Unknown (locked)

- name: Kameko Katari
  gender: Female
  species: Human
  clan: Unknown
  corp: Unknown (locked)
  motivations:
      desires: Unknown
      fear: Unknown (locked)
      strength: Unknown
      flaw: Unknown

- name: Leeland Chrisinger
  gender: Male
  species: Human
  clan: Unknown
  corp: Unknown
  motivations:
      desires: Unknown
      fear: Unknown (locked)
      strength: Unknown
      flaw: Unknown (locked)

- name: Duncan Wiltfang
  gender: Male
  species: Human
  clan: Unknown
  corp: Unknown
  motivations:
      desires: Unknown
      fear: Unknown
      strength: Unknown
      flaw: Unknown (locked)

- name: Walther Ryks
  gender: Male
  species: Human
  clan: Unknown
  corp: Unknown (locked)
  motivations:
      desires: Unknown
      fear: Unknown (locked)
      strength: Unknown
      flaw: Unknown
```

## Game Master Information

<a href="javascript:document.getElementById('hidden-gm-information').setAttribute('class', '');" onclick="this.setAttribute('class', 'hidden');" class="btn btn--danger">Show GM information</a>

{::options parse_block_html="true" /}

<div class="hidden" id="hidden-gm-information">

```yaml
- name: Redd Rencher
  gender: Male
  species: Human
  clan: Pirates
  corp: Naarlock
  motivations:
      desires:
          name: Knowledge
          description: >-
              Your character wishes to uncover knowledge that may have been lost, forgotten, or locked away. This information could pertain to the world, or it could pertain to your character’s past or origins.
      fear:
          name: Obscurity
          description: >-
              Your character wishes to be remembered after they are gone and works tirelessly to secure their legacy.
      strength:
          name: Wise
          description: >-
              Through years of experience and countless events, your character has developed that rare quality: wisdom. The wise understand the truths of how their world works. Just as importantly, they know that sometimes,
              with the right effort, those truths can be overcome.
      flaw:
          name: Compulsion
          description: >-
              This could be addiction, fascination, obsession, or another automatic behavior that is self-destructive or otherwise impedes your character’s ability to function and be healthy.

- name: Kameko Katari
  gender: Female
  species: Human
  clan: EdG
  corp: Assassin
  motivations:
      desires:
          name: Belonging
          description: >-
              Your character seeks to be liked by others and goes out of the way to make a good impression. Your character seeks to be accepted by a community or faction.
      fear:
          name: Poverty
          description: >-
              For your character, it’s all about wealth and security. They fear being without, and they work hard to amass money, supplies, and other valuable items to ensure their status.
      strength:
          name: Analytical
          description: >-
              Your character’s mind is like a computer, able to absorb a barrage of information and come to a logical conclusion. Your solutions always have the inarguable weight of reason, and you know how to pick your and when to bide your time.
      flaw:
          name: Pride
          description: >-
              Pride does not always have to be a Flaw, but it can easily become one. Your character is arrogant, vain, or self-absorbed, or thinks highly of themself at the expense of others.

- name: Leeland Chrisinger
  gender: Male
  species: Human
  clan: EdG
  corp: Mercenary
  motivations:
      desires:
          name: Expertise
          description: >-
              Your character wants to excel in a chosen field or skill. To achieve perfection, your character practices constantly.
      fear:
          name: Humiliation
          description: >-
              Characters who are especially concerned with how others view them are particularly sensitive to potential humiliation. They go out of their way to avoid ever appearing wrong or foolish, even if that means missing out on exciting opportunities and experiences.
      strength:
          name: Patient
          description: >-
              Your character is always willing to wait and knows the power of being calm. By waiting for the right opportunity, your character avoids all manner of unpleasant and dangerous situations. However, when such an opportunity presents itself, your character acts swiftly and decisively.
      flaw:
          name: Deception
          description: >-
              Your character may be disloyal or a compulsive liar. They are concerned with their own wellbeing first and foremost, and they might always present themselves in the best possible light even when that isn’t the case.

- name: Duncan Wiltfang
  gender: Male
  species: Human
  clan: Pirates
  corp: Naarlock
  motivations:
      desires:
          name: Wealth
          description: >-
              Money or material possessions are the prime goal for your character. Your character may be active in business, trade, or the tried-and-true method of theft to increase their net worth.
      fear:
          name: Poverty
          description: >-
              For your character, it’s all about wealth and security. They fear being without, and they work hard to amass money, supplies, and other valuable items to ensure their status.
      strength:
          name: Witty
          description: >-
              Your character is extremely clever, with the right joke for a friend and the perfect insult for a foe. Some may love their company, while others loathe their cutting remarks, but none can deny that your character has the sharpest tongue around.
      flaw:
          name: Compulsion
          description: >-
              This could be addiction, fascination, obsession, or another automatic behavior that is self-destructive or otherwise impedes your character’s ability to function and be healthy.

- name: Walther Ryks
  gender: Male
  species: Human
  clan: Rebels
  corp: Spy
  motivations:
      desires:
          name: Justice
          description: >-
              Your character believes in a set of ethics that demands fair treatment for all. Your character is dedicated to righting inequality and protecting others’ rights.
      fear:
          name: Poverty
          description: >-
              For your character, it’s all about wealth and security. They fear being without, and they work hard to amass money, supplies, and other valuable items to ensure their status.
      strength:
          name: Curious
          description: >-
              Life is a million mysteries, and your character wants to learn about every one. Whether curiosity drives them to meet new people, explore distant locales, or learn fantastic new truths and ideas is up to you.
      flaw:
          name: Ignorance
          description: >-
              Your character lacks a basic knowledge base or understanding of a society’s norms. This may be due to your character’s upbringing or their recent travel to another area of the world. This could be more than just being “uneducated”; at some level, your character may be willfully ignorant.
```

</div>
