base:
  'salt':
    - hostname
    - consul

  'minion* and G@os:Ubuntu':
    - mysql
    - consul

  'minion* and G@os:RedHat':
    - mysql
    - consul
