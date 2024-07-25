#!/bin/sh

# Prepare and launch smart-thing GUI

# need to be root
if [ "$(id -u)" != "0" ]; then
    echo "Must be run as root"
    exit 1
fi

echo "Stopping superbird app, it is ok if this step fails"
/etc/init.d/S95supervisord stop
mv /etc/init.d/S95supervisord /etc/init.d/K95supervisord
echo "Activating chroot"
./scripts/activate-chroot.sh