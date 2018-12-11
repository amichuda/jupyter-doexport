
{%- extends 'null.tpl' -%}

{%- block header -%}
/*
Stata Do File converted from Jupyter notebook
*/
{% endblock header %}

{% block in_prompt %}
{% if resources.global_content_filter.include_input_prompt -%}
    * In[{{ cell.execution_count if cell.execution_count else ' ' }}]:
{% endif %}
{% endblock in_prompt %}

{% block input %}
{{ cell.source | magic_converter }}
{% endblock input %}

{% block markdowncell scoped %}
{{ cell.source | comment_lines(prefix='* ') }}
{% endblock markdowncell %}
