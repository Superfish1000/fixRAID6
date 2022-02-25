# fixRAID6
Simple script for enabling RAID5 and 6 on Rockstor 4.1.0.0 by enabling "unsupported" BTRFS features and installing stable kernel backports.

This script is written to be a lazy way to reenable RAID5/6 on installs where it has been disabled by the upstream OpenSUSE image and to install stable kernel backports to gain new and improved BRFS support.

This code was in part defived from my experiences trying to re-enable RAID 6 on my NAS unit and in part derived from the fantastic kernel backport instalation instructions put out by the rockstor team that are available here.
https://rockstor.com/docs/howtos/stable_kernel_backport.html

They offer a full reasoning an instructions on how to impliment this manually, and this script is ecentially automating the process they outlined.

I am in no way affiliated with the Rockstor team and this script is my own.  If you choose to run it you do so at your own will and knowing that it has the potential to damage your system and you take responsability for this.

To run, you can use the following command.  Naturally you must have internet access.

bash <(curl -s https://raw.githubusercontent.com/Superfish1000/fixRAID6/main/fixRAID6.sh)
