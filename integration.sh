#!/bin/bash
cd /home/sergiogonzalez/js

git clone https://github.com/sergiogonzalez087/my.repo/upload

mv /home/sergiogonzalez/my.repo/integrationconfig.json /home/sergiogonzalez/js
mv /mnt/versiones/soysocio/KnownUser/integrationconfig.json /mnt/versiones/soysocio/KnownUser/js.old/integrationconfig.json$(date +"%Y%m%d")
mv /mnt/versiones/www/KnownUser/integrationconfig.json /mnt/versiones/www/KnownUser/js.old/integrationconfig.json$(date +"%Y%m%d")
mv /var/www/soysocio/KnownUser/integrationconfig.json /var/www/soysocio/KnownUser/js.old/integrationconfig.json$(date +"%Y%m%d")

cp /home/sergiogonzalez/js/integrationconfig.json /mnt/versiones/soysocio/KnownUser/
cp /home/sergiogonzalez/js/integrationconfig.json /mnt/versiones/www/KnownUser/
cp /home/sergiogonzalez/js/integrationconfig.json /var/www/soysocio/KnownUser/
service apache2 restart
