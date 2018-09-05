deploy_web:
  salt.runner:
    - name: cloud.profile
    - prof: nginx
    - instances:
      - web1

configure_web_minion:
  salt.state:
    -tgt: 'web1'
    -sls:
      - ngnix
      - mysql.client

deploy_db:
  salt.runner:
    - name: cloud.profile
    - prof: mysql
    - instances:
      - db1

configure_db_minion:
  salt.state:
    -tgt: 'db1'
    -sls:
      - mysql

deploy_php:
  salt.runner:
    - name: cloud.profile
    - prof: mysql
    - instances:
      - php1

configure_php_minion:
  salt.state:
    -tgt: 'php1'
    -sls:
      - php
      - mysql.client

