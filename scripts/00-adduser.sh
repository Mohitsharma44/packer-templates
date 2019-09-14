#!/usr/bin/env bash -eux

# Add the ssh_user to sudoers
echo "$SSH_USER    ALL=(ALL)    NOPASSWD: ALL" >> "/etc/sudoers.d/$SSH_USER"
