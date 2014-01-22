{% set emacs = salt['grains.filter_by']({
    'Debian': { 'name': 'emacs23-nox' },
    'RedHat': { 'name': 'emacs-nox' },
}) %}

{{ emacs.name }}:
  pkg:
    - installed
git:
  pkg:
    - installed
tmux:
  pkg:
    - installed
tree:
  pkg:
    - installed
zsh:
  pkg:
    - installed
