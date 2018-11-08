---
---
# DITA Map Files

The DITA standard calls for maps to have a .ditamap extension. The use of the extension is a construct that helps humans easily recognize the file as a map without having to open it. In practice, DITA-OT will output maps correctly regardless of the file's extension as long as it's content is well-formed. {{site.data.project.project-title}} uses Jekyll to output its maps with an .html extension. Given the need, incorporating a custom Jekyll extension could output the file with the proper extension.

{{ site.data.alerts.webonly}}

{% include_relative example.md %}

{{site.data.alerts.end}}

