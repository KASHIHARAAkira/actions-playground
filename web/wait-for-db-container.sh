#!/bin/bash

set -e
cmd="$@"

apt-get -y update
apt-get -y install mariadb-server

echo "🍏"

until mariadb -u $MARIADB_WEB_USER --port $MARIADB_PORT -p$MARIADB_WEB_PASSWORD -D $MARIADB_DATABASE -e 'exit' ; do
  2>&1 echo "$DB_HOST is unavailable - sleeping"
  sleep 10
done

>&2 echo "$DB_HOST is up"

npm test

exec $cmd
