#!/bin/bash
data=(`./wp-db.php`)
#########################################
#										#
#	This file should be in the same dir	#
#   as the above mentioned file			#
#	To execute file --> ./import_db.sh	#
#										#
#########################################

# echo ${data[0]} //DB_NAME
# echo ${data[1]} //DB_USER
# echo ${data[2]} //DB_PASSWORD
# echo ${data[3]} //DB_HOST

mysqlshow -u ${data[1]} -p${data[2]}
read -e -p "If you want to change the DB name, change it here: " -i ${data[0]} db_name
read -e -p "Are you sure to import $db_name from ${data[0]}.sql? " -i "y" -n 1 -r


if [[ $REPLY =~ ^[Yy]$ ]]
then
	# create a new database with the specified name
	mysql -u ${data[1]} -p${data[2]} -e "create database $db_name"
	echo "Database $db_name created!"
	# import the tables into the newly created database
    mysql -u ${data[1]} -p${data[2]} -h ${data[3]} $db_name < ${data[0]}.sql
	echo "Database succesfully imported!"
	mysqlshow -u ${data[1]} -p${data[2]}
fi

