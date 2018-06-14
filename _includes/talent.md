{::options parse_block_html="true" /}
<section class="talent">
<header>
### {{ talent.Name }}{% if talent.Depreciated != "" %} (depreciated on: {{ talent.Depreciated }}){% endif %}

**Tier:** {{ talent.Tier }}

**Activation:** {{ talent.Activation }}

**Ranked:** {{ talent.Ranked }}
</header>

{% include text-with-symbols.html content=talent.Text %}

<footer>
**Source:** {{ talent.Source }}
{% if talent.From != talent.Name %}(origin: {{ talent.From }}){% endif %}
</footer>
</section>
