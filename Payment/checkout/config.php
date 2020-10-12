<?php
require '../../sysadmin/include/dbconfig.php';
$keyid = $keyval = '';
$razor_pro = $con->query("select * from payment_list where id='1'");
if($row_razor = $razor_pro->fetch_assoc())
{
	$keyid = $row_razor['cred_title'];
	$keyval = $row_razor['cred_value'];
}
$keyId = $keyid;
$keySecret = $keyval;
$displayCurrency = 'INR';
error_reporting(E_ALL);
ini_set('display_errors', 1);
