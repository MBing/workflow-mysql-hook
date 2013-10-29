#!/usr/bin/env php

<?php 

#################################################################
#								#
# It is not necessary to create constants of course		#
# You may as well put these variables directly into the array	#
# This was only for clarity reasons				#
#								#
#################################################################

define("DB_NAME", "YOUR_DB_NAME_HERE");
define("DB_USER", "YOUR_USERNAME_HERE");
define("DB_PASSWORD", "YOUR_PASSWORD_HERE");
define("DB_HOST", "YOUR_HOST_HERE");

# Put the constants into an array
# [] only work with PHP as of version 5.4
$array = ['DBNAME' => DB_NAME,
	'DBUSER' => DB_USER,
	'DBPASS' => DB_PASSWORD,
	'DBHOST' => DB_HOST
	];

## For pre PHP version 5.4 use this:
# $array = array('DBNAME' => DB_NAME,
#		'DBUSER' => DB_USER,
#		'DBPASS' => DB_PASSWORD,
#		'DBHOST' => DB_HOST
#		);
#


# Output the array as a string with spaces between
echo implode(' ', $array);

?>
