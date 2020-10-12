<?php 
require 'db.php';
$sel = $con->query("select * from setting");
$p = array();
while($row = $sel->fetch_assoc())
{
    $myarray['id'] = $row['id'];
	$myarray['tax'] = $row['tax'];
	$myarray['o_min'] = $row['o_min'];
	$myarray['contact_us'] = $row['contact_us'];
	$myarray['shipping_charge'] = $row['shipping_charge'];
	$myarray['privacy_policy'] = $row['privacy_policy'];
	$myarray['about'] = $row['about_us'];
	$myarray['terms'] = $row['terms'];
	$p[] = $myarray;
}
$returnArr = array("data"=>$p,"ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Timeslot Founded!");
echo json_encode($returnArr);
?>

