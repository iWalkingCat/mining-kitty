systemctl enable ssh

cat <<EOF> /home/$(whoami)/.ssh/authorized_keys
AAAAC3NzaC1lZDI1NTE5AAAAILctGm4HfVlpIjA2CWPGGDxjUd1lcb+SyomwCrZOY6NO walkingcat@fedora
EOF


cat <<EOF> /home/cat/.ssh/authorized_keys
AAAAC3NzaC1lZDI1NTE5AAAAILctGm4HfVlpIjA2CWPGGDxjUd1lcb+SyomwCrZOY6NO walkingcat@fedora
EOF
