nginx:
  pkg.installed: []
  service.running:
    - require:
      - pkg: nginx

web-conf:
  file.managed:
    - source: salt://nginx/files/nginx.conf
    - name: /etc/nginx/conf.d/bryce.conf
    - user: root
    - mode: 644
