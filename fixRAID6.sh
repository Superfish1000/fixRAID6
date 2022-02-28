#!/bin/bash
if test "$(id -u)" -ne 0 ; then
    sudo "$0" "$1"
    exit $?
fi

read -t 25 -N 1 -p "Do you wish to enable unsupported BTRFS features? (y)yes:" unSup

echo ""

if [ "${unSup,,}" == "y" ]
then
    echo "Enabling unsupported BTRFS features..."

    #Enable unsupported BTRFS options
    echo "options btrfs allow_unsupported=1"  > /etc/modprobe.d/02-btrfs.conf

    echo "Rebuilding initrd..."
    mkinitrd
fi

echo "Installing stable kernel backport..."

echo "Adding new repos..."

zypper --non-interactive addrepo --refresh https://download.opensuse.org/repositories/Kernel:/stable:/Backport/standard/ Kernel_stable_Backport
zypper --non-interactive addrepo --refresh https://download.opensuse.org/repositories/filesystems/15.3/ filesystems
zypper --non-interactive --gpg-auto-import-keys refresh

echo "Upgrading kernel..."

zypper --non-interactive up --no-recommends --allow-vendor-change

read -t 25 -N 1 -p "Waiting 25 seconds before reboot.  Press any key to cancel reboot..." answer

if test -z "${answer,,}"
then
        echo "rebooting"
        reboot now
fi
