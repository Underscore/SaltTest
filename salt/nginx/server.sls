{% from nginx/map.jinja" import nginx with context %}

{% if grains['os_family'] == 'Debian' %}

nginx_debconf_install:
  pkg.installed: []

{% endif %}
