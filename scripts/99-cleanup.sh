#/usr/bin/env bash -eux

apt-get -y autoremove
apt-get -y clean

echo "cleaning up dhcp leases"
rm /var/lib/dhcp/* 2>/dev/null

echo "cleaning bash history"
unset HISTFILE
truncate -s0 /root/.bash_history
truncate -s0 "/home/$SSH_USER/.bash_history"

exit 0
