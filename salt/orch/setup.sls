set_hostname:
  salt.function:
    - name: network.mod_hostname
    - tgt: 'minion1'
    - arg:
      - minion1

configure_db_minion:
  salt.state:
    - tgt: 'minion2'
    - highstate: True

configure_web_minion:
  salt.state:
    - tgt: 'minion1'
    - sls:
      - apache
      - mysql.client
