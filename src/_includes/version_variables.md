{%- capture version -%}
  {%- if page.collection == 'latest' -%}
     {{site.data.ds.current-version}}
  {%- else -%}
     {{page.collection | remove: "v"}}
  {%- endif -%}
{%- endcapture -%}

{%- capture version-no-dot -%}
  {%- if page.collection == 'latest' -%}
     {{site.data.ds.current-version | remove: '.'}}
  {%- else -%}
     {{page.collection | remove: '.' | remove: "v"}}
  {%- endif -%}
{%- endcapture -%}

{%- capture HTTPSCertFileName -%}
   HTTPS-DataSpliceServer.p12
{%- endcapture -%}