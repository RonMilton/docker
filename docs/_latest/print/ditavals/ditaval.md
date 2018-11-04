---
---
# Ditavals

You can think of [ditavals](https://docs.oasis-open.org/dita/v1.2/os/spec/common/about-ditaval.html) as conditional processing filters of content or build flags. In {{site.data.project.project-title}}, they are used to filter out content for print transformations (i.e., web-only content).

If {{site.data.project.project-title}} was documenting an actual product, you could use it to filter content between different audiences, too. Using flags in the content, you can instruct the DITA-OT to print the content within the opening and closing tags whenever a map gets printed. The map would set the filter in its yaml. For example, `filter: dev-audience`. When Jekyll creates the map, the ditaval property gets created and added. To output for multiple audiences, you would just run multiple maps with different ditavals: user-guide-advanced.ditamap, user-guide-beginner.ditamap.

{{site.data.alerts.note}}In {{site.data.project.project-title}} the actual extensions will be .html, but they operate as .ditamap files.{{site.data.alerts.end}} 

{%- capture ditavalex -%}
A build will process each file in the _ditaval folder, creating a ditaval file for each (albeit with an .html extension). This .yml file would reside in the content/_ditaval folder in the {{site.data.project.project-title}} directory structure.
~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<val>{% raw %}
  {% for item in page.val %}
    <prop action="{{ item.prop.action }}" att="{{ item.prop.attribute }}" val="{{ item.prop.value }}"/>
  {% endfor %}
{% endraw %}</val>
~~~
{%- endcapture -%}

{%- capture ditamapex -%}
Using the `filter: dev` attribute on the yaml that defines the PDF will set the correct filter to apply on the ditamap. This file would reside in the content/_ditamap folder in the {{site.data.project.project-title}} directory structure.
~~~yml
---
title: Project PDF
# Add 'dev' filter
filter: dev
topics: 
   - topic:
       title: Introduction
       href: intro/overview.html
---
~~~
{%- endcapture -%}

{%- capture topicex -%}
The content that should not appear in a particular output should be inside an HTML tag with the `audience` attribute set to `dev`.

~~~md
General content here.
<div audience="dev">
Content only developers need to see.
</div>
~~~

If you set a data element to output the HTML, you can update all instances at once should the need arise. For example, if you needed to change audience name.

~~~md
General content here.{% raw %}
{{site.data.alerts.devonly}}
Content only developers need to see.
{{site.data.alerts.end}}{% endraw %}
~~~

In the prior example, `{% raw %}{{site.data.alerts.devonly}}{% endraw %}` would be set to `<div audience="dev">` and `{% raw %}{{site.data.alerts.end}}{% endraw %}` would evaluate to `</div>`. If at some point the need arose to change all filters that were once `dev` to `dev-gen`, then you would only need to change the relevant entry in the _data\alerts.yml file. 
{%- endcapture -%}

The following example shows the three files involved in the process: the ditaval, ditamap, and topic files.

<div class="row" audience="webonly" style="border: 1px solid #ccc; padding-top: 1rem;">
    <div class="col-4">
      <div class="list-group" id="list-tab" role="tablist">
        <a class="list-group-item list-group-item-action active" id="list-ditaex-list" data-toggle="list" href="#list-ditaval" role="tab" aria-controls="ditaex">ditaval</a>
        <a class="list-group-item list-group-item-action" id="list-ditaex-list" data-toggle="list" href="#list-ditamap" role="tab" aria-controls="ditaex">ditamap</a>
        <a class="list-group-item list-group-item-action" id="list-topicex-list" data-toggle="list" href="#list-topic" role="tab" aria-controls="ditaex">topic</a>
      </div>
    </div>
    <div class="col-8">
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-ditaval" role="tabpanel" aria-labelledby="list-ditaex-list" markdown="1">{{ditavalex|markdownify}}</div>
        <div class="tab-pane fade show" id="list-ditamap" role="tabpanel" aria-labelledby="list-ditaex-list" markdown="1">{{ditamapex|markdownify}}</div>
        <div class="tab-pane fade show" id="list-topic" role="tabpanel" aria-labelledby="list-topicex-list" markdown="1">{{topicex|markdownify}}</div>
      </div>
    </div>
</div>

<div class="d-none" markdown="1">
**Ditaval**  
{{ditavalex}}
**Ditamap**  
{{ditamapex}}
**Topic**  
{{topicex}}
</div>

