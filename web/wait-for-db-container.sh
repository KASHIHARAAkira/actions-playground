#!/bin/bash

apt-get update
apt-get install wait-for-it
wait-for-it -s -t 60 mariadb:3306 -- npm test
