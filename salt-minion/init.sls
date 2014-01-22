salt-minion:
  service:
    - running
    - watch:
      - file: /etc/salt/minion

/etc/salt/minion:
  file.managed:
    - source: salt://salt-minion/minion
    - mode: 644
    - user: root
    - template: jinja
    - group: root
