---
title: Squads & Squadrons
permalink: /rules/squads-and-squadrons/
toc: false
classes:
    - pages-rules
    - genesys-theme
    - wide
---

# Squads & Squadrons

We are using the basic Squads & Squadrons rules from Age of Rebellion, with a few modifications.
Moreover, PCs can invest CR to improve those rules to make squads more effective; see [Rewards (Talents)](/rules/ranks-and-rewards/talents) for more info.

## Original rules

-   Source: AoR {% include talent-sources.html source="GMK" %} p.28
-   Web Source & Thanks to: [https://eote.bgsemc.com/rules/squads](https://eote.bgsemc.com/rules/squads)

## Updated base rules

### Forming a squad

-   To create a squadron, the character who wants to lead makes an Easy ({%- include text-with-symbols.html content="[DI]" -%}) Leadership check as a maneuver. The leadership check represents both the leader’s command and the minion’s willingness to follow orders. Add {% include text-with-symbols.html content="[SE]" %} if the minions are not as likely to follow orders.
-   On success, the leader can lead up to ~~11~~ 12 allied minions within engaged range. (Not crew members on board vehicles.)

#### After a successful Leadership check to enter a formation

|                           Cost                            | Result                                                                                  |
| :-------------------------------------------------------: | --------------------------------------------------------------------------------------- |
| {%- include text-with-symbols.html content="[AD][AD]" -%} | May enter a formation as an incidental instead of a maneuver.                           |
|   {%- include text-with-symbols.html content="[TH]" -%}   | May enter a formation as an incidental instead of a maneuver, and no check is required. |

### The squad

-   Squad minions do not receive a turn in combat and do not roll initiative.
-   The squad’s silhouette is 1 size larger than that of its largest member.
-   The leader may redirect any hit he suffers to ~~a minion in the squad, which destroys or disables it. (Eliminates from encounter.)~~ his minions; apply damage normally (like any minions group).
-   The squad remains in operation until it is disbanded

### Disbanding a squad

-   A squad can be disbanded by the leader as an incidental action, or when all minions have been disabled or destroyed, or as a result of {% include text-with-symbols.html content="[TH]" %}, {% include text-with-symbols.html content="[DE]" %}, or a failed fear check.
-   Upon disbanding, any remaining minions are formed into minion groups. They take their turns immediately after their former leader. Minions can rejoin a squad by spending 2 maneuvers during their turn.

## Squad Combat

During squad combat, the squad leader can use his minions by creating formations and with special symbols interpretation.

### Spending Advantage & Triumph during Squad Combat

#### If targeting a squad or squadron:

|                             Cost                              | Result                                                                                                                      |
| :-----------------------------------------------------------: | --------------------------------------------------------------------------------------------------------------------------- |
| {%- include text-with-symbols.html content="[AD][AD][AD]" -%} | Force one minion in it out of position. The leader loses the benefits of that minion until the minion returns to formation. |
|     {%- include text-with-symbols.html content="[TR]" -%}     | ~~If targeting a squad or squadron, may eliminate one minion in it.~~                                                       |
|     {%- include text-with-symbols.html content="[TR]" -%}     | Kill a specialist in a Custom Squad; GM discretion: it can be random or not.                                                |

#### If leading a squad or squadron

|                                 Cost                                  | Result                                                                                                                                                                                                                                                                                      |
| :-------------------------------------------------------------------: | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| {%- include text-with-symbols.html content="[AD][AD][AD] or [TR]" -%} | On any check, as an incidental, order his squad into a new formation (requires the Leadership check).                                                                                                                                                                                       |
|         {%- include text-with-symbols.html content="[TR]" -%}         | The minion allies may make a free, immediate attack. Calculate this attack as if all the minions in the squad or squadron are an independent minion group. No minion group can have more than 5 ranks in a skill for the purposes of this attack, even if there are more than five minions. |

### Spending Threat & Despair during Squad Combat

#### If leading a squad or squadron

|                                 Cost                                  | Result                                                                                                                                                                                                                                                                                                                                                     |
| :-------------------------------------------------------------------: | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|         {%- include text-with-symbols.html content="[TH]" -%}         | One minion is separated from it and placed at close range.                                                                                                                                                                                                                                                                                                 |
|       {%- include text-with-symbols.html content="[TH][TH]" -%}       | Cannot redirect the next successful attack to a minion.                                                                                                                                                                                                                                                                                                    |
| {%- include text-with-symbols.html content="[TH][TH][TH] or [DE]" -%} | If in a formation, that formation is broken.                                                                                                                                                                                                                                                                                                               |
|         {%- include text-with-symbols.html content="[DE]" -%}         | A minor collision between squad mates occurs (see collision rules in the AoR Core, page 256). In addition, the two affected minions are separated from the squadron and moved to close range. Note that because minions are immediately incapacitated by Critical Hits, this means that both minions are lost unless their roll for the Critical Hit is 0. |
|       {%- include text-with-symbols.html content="[DE][DE]" -%}       | It is considered disbanded.                                                                                                                                                                                                                                                                                                                                |

### Formations

-   A leader can order his squad into a formation by making an Average ({%- include text-with-symbols.html content="[DI][DI]" -%}) Leadership check as a maneuver. Add a {% include text-with-symbols.html content="[BO]" %} if the minions possess Discipline.
-   Success means the squad is transitioned to the formation, failure means the squad loses any formation benefits; previous or otherwise.

#### Squad Formations

-   **Dug In** – Assumes a defensive posture to increase survivability under heavy fire. Add {% include text-with-symbols.html content="[SE]" %} to any attack targeting the squad. This effect stacks with other bonuses.
-   **Skirmish** – Soldiers are given overlapping fire arcs. Use to ward off ambushes. Add {% include text-with-symbols.html content="[BO]" %} to any Vigilance checks made by the squad to determine initiative or to any Perception checks to detect enemies. Enemies need to spend 1 more {% include text-with-symbols.html content="[AD]" %} to activate Auto-fire or Blast weapon qualities.
-   **Close** – Concentrates fire to a single target. Add {% include text-with-symbols.html content="[BO]" %} to any attack made by the squad.
-   **Mission Specialist** – Represents a skilled team of specialists. Squad leader can use a Leadership check to perform a single Computers, Mechanics, Medicine, Skullduggery, Survival, or Knowledge check. Can only be used a number of times equal to Leadership ranks per session.
    -   Requires a Custom Squad
-   **Comm Silence** – Moves the squad undetected. Add {% include text-with-symbols.html content="[BO]" %} to all Stealth checks made by the unit.
-   **Search Party** – Used for squad search patterns. Add {% include text-with-symbols.html content="[BO]" %} to any Survival checks to track a target and to all Perception checks.

#### Squadron Formations

-   **Attack Formation** – Concentrate fire on a single target. Add {% include text-with-symbols.html content="[BO]" %} to any attack made by the squadron.
-   **Evasive Maneuvers** – Erratic flight patterns to make it harder to be hit. Add {% include text-with-symbols.html content="[BO]" %} to all attempts to gain the advantage, and add {% include text-with-symbols.html content="[SE]" %} to enemy attempts to gain the advantage. Enemies must spend an additional {% include text-with-symbols.html content="[AD]" %} to activate Auto-fire or Blast weapon qualities.
-   **Running Dark** – Hides the squad from sensor and visual scans. Downgrade difficulty of Stealth checks made by the unit. Upgrade the difficulty of all Leadership checks.
-   **Sensor Sweep** – Allows the squad to scan in all directions. Add {% include text-with-symbols.html content="[BO]" %} to any Vigilance checks to determine initiative and to Computers and Perception checks to detect targets.
-   **Skilled Navigator** – Represents a skilled navigator within the squad. Squadron leader can substitute a Leadership check for a single Astrogation, Computers, Mechanics, or Knowledge check. Can only be used a number of times equal to Leadership ranks per session.
    -   Applies only to Capital Ships or Custom Squadron; GM discretion applies
-   **Screen Formation** – Optimized shield strategy. Add 1 to ship defense in all zones. If the squadron entering this maneuver does not have shields or has lost them ~~upgrade the difficulty of this check one step~~ change formation.

# Custom Squads

A Custom Squads is a special unit purchased using Contribution Ranks. See [Rewards (NPCs)](/rules/ranks-and-rewards/npcs) for more info.

-   A Custom Squad cost 1 CR.
-   1 minion out of 4 is a specialist.
-   The specialties must be chosen when purchasing the Custom Squad; for example a medic, a computer geek, and a mechanic guy.

# Change log

## 2020-05-05

-   Add the notion of Custom Squads
-   Add constraints to Squadron Formation: **Skilled Navigator**
-   Add constraints to Squad Formation: **Mission Specialist**

## 2020-05-03

-   Initial Revision
