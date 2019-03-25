base:
  'minion*':
    - mysql
    - beacons
    - schedule
    - apache

    - consul

  'salt':
    - consul

  'ssh-minion':
    - mysql
