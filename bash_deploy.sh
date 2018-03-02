#!/bin/bash
#This bash file will migrate source code and database of server
#Pull new source code from git
echo '========================================='
echo 'Deployment Logs:'

echo '------------Development Server--------------'
cd /path/to/project
git pull <repository> <branch>
# Example git pull origin master

#Migrate development database
echo '------------Development Server Database Migration--------------'
/path/to/flyway/flyway -url=jdbc:postgresql://<database-ip-address>:<port>/<database-name> -locations=filesystem:<path-to-sql-folder> migrate
# Example: /path/to/flyway/flyway -url=jdbc:postgresql://172.0.0.1:5432/database1 -locations=filesystem:/var/www/project/public_html/database migrate
