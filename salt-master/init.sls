salt-master:
  service:
    - running
    - watch:
      - file: /etc/salt/master

/etc/salt/master:
  file.managed:
    - source: salt://salt-master/master
    - mode: 644
    - user: root
    - template: jinja
    - group: root
