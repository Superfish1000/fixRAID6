# fixRAID6
Simple script for enabling RAID5 and 6 on Rockstor 4.1.0.0 by enabling "unsupported" BTRFS features and installing stable kernel backports.

This script is written to be a lazy way to reenable RAID5/6 on installs where it has been disabled by the upstream OpenSUSE image and to install stable kernel backports to gain new and improved BRFS support.

I am in no way affiliated with the Rockstor team and this script is my own.  If you choose to run it you do so at your own will and knowing that it has the potential to damage your system and take responsability for this.

To run, you can use the following command.  Naturally you must have internet access.

bash <(curl -s https://raw.githubusercontent.com/Superfish1000/fixRAID6/main/fixRAID6.sh)
