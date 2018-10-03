nginx:
  pkg.installed: []
  service.running:
    - require:
      - pkg: nginx

web-conf:
  file.managed:
    - source: salt://nginx/files/wordpress
    - name: /etc/nginx/site-available/wordpress
    - user: root
    - mode: 644
  cmd.run:
    - name: sudo ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/wordpress
