# vim: ft=yaml
consul:
  service: True
  user: consul
  group: consul

  version: 1.4.3
  download_host: releases.hashicorp.com

  config:
    server: True
    bind_addr: 0.0.0.0

    enable_debug: True

    datacenter: eu

    encrypt: "RIxqpNlOXqtr/j4BgvIMEw=="

    bootstrap_expect: 3
    retry_interval: 15s
    retry_join:
      - 172.31.30.156
      - 172.31.23.189
      - 172.31.29.253

    ui: true
    log_level: info
    data_dir: /var/consul

#  register:
#    - name: Redis
#      checks:
#        - script: /usr/local/share/consul/check_redis.py
#          interval: 10s
#  scripts:
#    - source: salt://consul/files/consul/check_redis.py
#      name: /usr/local/share/consul/check_redis.py
#      context:
#        port: 6379

consul_template:
  service: False

  config:
    consul: 127.0.0.1:8500
    log_level: info

  tmpl:
    - name: example.com
      source: salt://files/example.com.ctmpl
      config:
        template:
          source: /etc/consul-template/tmpl-source/example.com.ctmpl
          destination: /etc/nginx/sites-enabled/example.com
          command: systemctl restart nginx
