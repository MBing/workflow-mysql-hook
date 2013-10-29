==========================================================
Git Hook for export MySQL + BASH script for import MySQL
=========================================================

Start Here
===========

wp-db.php
---------
Edit this file to provide your MySQL Database settings. This file should
be in the top folder of your project.

pre-commit.sample
-----------------
Change the name to 'pre-commit' and put this file in the folder .git/hooks/

import-db.sh
------------
Use this file to import a MySQL Database. This file also uses the settings
provided in wp-db.php. Make sure this is also in the same directory.

To execute this script simply type:
    ./import-db.sh

It will ask for a Database name which it will create and it is going to look for
a file with the same name provided as a Database in the wp-db.php file. This with 
the extension of '.sql' .
