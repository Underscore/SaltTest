php:
  pkg.installed: []
  service.running:
    - require:
      - pkg: php
      - pkg: php-mysql
