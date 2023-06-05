# pihole-setup
Quick'n'dirty script to setup db update etc on a pihole based on dietpi. 

An ugly script to install the great pihole-updatelists from
https://github.com/jacklul/pihole-updatelists
Installs requirements, adds a cronjob and my config, so i can have it up quickly.
Will send a daily notification with the update fetch of the lists, if Pihole has an update available and used disk space.
Tested as VM and LXC container on proxmox with Dietpi.
