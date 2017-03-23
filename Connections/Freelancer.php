<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
//
// This file created by Dreamweaver dialog for a local WAMP server, 
// to connect to the Freelancer mysql database.
// For using with a remote database, replace the strings in the
// _Freelancer variables.
//
$hostname_Freelancer = "localhost";
$database_Freelancer = "freelancer";
$username_Freelancer = "root";
$password_Freelancer = "";
$Freelancer = mysql_pconnect($hostname_Freelancer, $username_Freelancer, $password_Freelancer) or trigger_error(mysql_error(),E_USER_ERROR); 
?>