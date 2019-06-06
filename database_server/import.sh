#!/bin/bash


set -u
sleep 4
echo "Database $MYSQL_DATABASE import start..." 
mysql -u root -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < /etc/magento223.sql
supervisorctl stop database_import && supervisorctl remove database_import
echo "Database $MYSQL_DATABASE imported" 
exit 1
