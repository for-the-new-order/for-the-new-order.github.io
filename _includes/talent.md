{::options parse_block_html="true" /}
<section class="talent">
<header>
### {{ talent.Name }}{% if talent.Depreciated and talent.Depreciated != "" %} (depreciated on: {{ talent.Depreciated }}){% endif %}

**Tier:** {{ talent.Tier }}

**Activation:** {{ talent.Activation }}

**Ranked:** {{ talent.Ranked }}

{% if talent.Prerequisite and talent.Prerequisite != "" %}**Prerequisite:** {{ talent.Prerequisite }}{% endif %}
</header>

{% include text-with-symbols.html content=talent.Text %}

{% if talent.Source %}
<footer>
**Source:** {% include talent-sources.html source=talent.Source %}
{% if talent.From and talent.From != talent.Name %}(origin: {{ talent.From }}){% endif %}
</footer>
{% endif %}
</section>
