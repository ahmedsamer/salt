restore_rh_mysql_server_config:
  local.state.single:
    - tgt: 'E@minion* and G@os_family:RedHat'
    - tgt_type: compound
    - args:
      - fun: file.managed
      - name: /etc/my.cnf.d/server.cnf
      - source: salt://mysql/files/rh_mysqld.cnf
