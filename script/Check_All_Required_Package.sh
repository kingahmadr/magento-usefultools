#!/bin/bash
echo '================================================'
echo 'Check all the required dependencies for Magento in the system'
echo '================================================'
echo ''
echo '1. Check the system operating system'
echo
hostnamectl | grep -i 'Operating System' | awk '{$1=$1};1'
echo '================================================'
echo '2. Check the Nginx version'
echo ''
nginx -v;sleep 1s
echo '================================================'
echo '3. check the php version'
echo ''
php -version;sleep 1s
echo '================================================'
echo '4. check the php7.4 extensions'
php7.4 -m | sed ':n;N;s/\n */ /;tn;P;D';sleep 1s
echo '================================================'
echo '5 check the MariaDB server version (note: this command will work if you left the MariaDB server settings are default)'
mysql -uroot -e "SELECT VERSION();"
echo '================================================'
echo '6. check the Elasticsearch connection on port 9200'
curl -s 'http://localhost:9200';sleep 1s
echo '================================================'
