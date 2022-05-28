#!/bin/sh

echo "Start to setup MariaDB."

echo "😪"

sleep 30 #To suspend the initializing forcibly in 30 sec to check the order to start the Node.js service after deploying the MariaDB service.

echo "⛄"

echo ${MARIADB_ROOT_PASSWORD}
mariadb -u root -p${MARIADB_ROOT_PASSWORD} --execute "create user '${MARIADB_API_USER}'@'%' identified by '${MARIADB_API_PASSWORD}';"
mariadb -u root -p${MARIADB_ROOT_PASSWORD} --execute "create user '${MARIADB_DEL_USER}'@'%' identified by '${MARIADB_DEL_PASSWORD}';"
mariadb -u root -p${MARIADB_ROOT_PASSWORD} --execute \
"grant select, update, insert, delete on Race.user to '${MARIADB_USER}'@'${MARIADB_HOST}';
grant select, update, insert, delete on Race.car to '${MARIADB_USER}'@'${MARIADB_HOST}';

grant select on Race.car to '${MARIADB_API_USER}'@'${MARIADB_HOST}';
"

echo "world🍻"
