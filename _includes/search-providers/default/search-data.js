pages = [
    {%- for _page in site.pages -%}
        {%- if _page.title != blank -%}
        {'title':{{ _page.title | jsonify }},
          'excerpt': {{ _page.excerpt |jsonify }},
          {%- include snippets/prepend-baseurl.html path=_page.url -%}
          {%- assign _url = __return -%}
          'url':{{ _url | jsonify }}}
          {%- unless forloop.last -%},{%- endunless -%}
        {%- endif -%}
    {%- endfor -%}
]

window.TEXT_SEARCH_DATA={
  'posts': [],
  'pages': pages
};
