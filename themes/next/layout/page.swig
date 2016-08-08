{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}
  {% set page_title_suffix = ' | ' + config.title %}

  {% if page.type === "categories" %}
    {{ __('title.category') + page_title_suffix }}
  {% elif page.type === "tags" %}
    {{ __('title.tag') + page_title_suffix }}
  {% else %}
    {{ page.title + page_title_suffix }}
  {% endif %}
{% endblock %}

{% block content %}

  <div id="posts" class="posts-expand">
    {# tagcloud page support #}
    {% if page.type === "tags" %}
      <div class="tag-cloud">
        <div class="tag-cloud-title">
            {{ _p('counter.tag_cloud', site.tags.length) }}
        </div>
        <div class="tag-cloud-tags">
          {{ tagcloud({min_font: 12, max_font: 30, amount: 200, color: true, start_color: '#ccc', end_color: '#111'}) }}
        </div>
      </div>
    {% elif page.type === 'categories' %}
      <div class="category-all-page">
        <div class="category-all-title">
            {{ _p('counter.categories', site.categories.length) }}
        </div>
        <div class="category-all">
          {{ list_categories() }}
        </div>
      </div>
	  
	{% elif page.type === 'photos' %}
	
		My Photos
		<link type="text/css" href="/fancybox/jquery.fancybox.css" rel="stylesheet">
		<div class="instagram">
			<section class="archives album">
				<ul class="img-box-ul"></ul>
			</section>
		</div>  
		
		{{ page.content }}
		
		<script>
		$(document).ready(function () {
			init: function () {
				var that = this;
				$.getJSON("/photos/data.json", function (data) {
        

					that.render(that.page, data);
					that.scroll(data);
				});
			},
			render: function (page, data) {
				var begin = (page - 1) * this.offset;
				var end = page * this.offset;
				if (begin >= data.length) return;
				var html, li = "";
				for (var i = begin; i < end && i < data.length; i++) {
					li += '<li><div class="img-box">' + '<a class="img-bg" rel="example_group" href="http://zerone.qiniudn.com/wallpaper/Wally/' + data[i] + '"></a>' + '<img lazy-src="http://zerone.qiniudn.com/wallpaper/Wally/' + data[i] + '" />' + '</li>';
				}
				$(".img-box-ul").append(li);
				$(".img-box-ul").lazyload();
				$("a[rel=example_group]").fancybox();
			},
		});
		</script>
		
		
		
		
		
		
    {% else %}
      {{ page.content }}
    {% endif %}
  </div>

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
