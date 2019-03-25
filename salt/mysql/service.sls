{% from "mysql/map.jinja" import mysql with context %}

mysql_service_enable:
  service.enabled:
    - name: {{ mysql.service }}


mysql_service_running:
  service.running:
    - name: {{ mysql.service }}
