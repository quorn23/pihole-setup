#!/bin/bash

# execute sudo ./installer.sh

function pause(){
   read -p "$*"
}

apt-get install -y php-cli php-sqlite3 php-intl php-curl
clear
echo ""
echo ""
echo ""
echo ""
echo "*************************************"
echo "*  Required apt packages installed  *"
echo "*************************************"
echo ""
pause 'Press [Enter] key to continue...'
clear
echo ""
echo ""
echo ""
echo ""
wget -O - https://raw.githubusercontent.com/jacklul/pihole-updatelists/master/install.sh | bash
echo ""
echo ""
echo ""
echo ""
echo "**********************************"
echo "*  pihole updatelists installed  *"
echo "**********************************"
echo ""
pause 'Press [Enter] key to continue...'
clear
echo ""
echo ""
echo ""
echo ""
curl -o /etc/cron.d/updatelists https://raw.githubusercontent.com/quorn23/pihole-setup/main/updatelists
chmod +x /etc/cron.d/updatelists
echo ""
echo ""
echo ""
echo ""
echo "*****************************************************"
echo "*  script downloaded and crontab entry created  *"
echo "*****************************************************"
echo ""
pause 'Press [Enter] key to continue...'
clear
echo ""
echo ""
echo ""
echo ""
curl -o /etc/pihole-updatelists.conf https://raw.githubusercontent.com/quorn23/pihole-setup/main/pihole-updatelists.conf
chown root:root /etc/pihole-updatelists.conf
echo ""
echo ""
echo ""
echo ""
echo "***************************************"
echo "  pihole-updatelists.conf downloaded  *"
echo "***************************************"
echo ""
pause 'Press [Enter] key to continue...'
clear
echo ""
echo ""
echo ""
echo -e "\033[32m***************************************\033[0m"
echo -e "\033[32m*          All done!                  *\033[0m"
echo -e "\033[32m***************************************\033[0m"
