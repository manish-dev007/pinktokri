<?php 
 
 require 'db.php';
$data = json_decode(file_get_contents('php://input'), true);
$oid = $data['oid'];
$uid = $data['uid'];

if($uid == '' or $oid == '')
{
	$returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Something Went wrong  try again !");
}
else 
{
	$count = $con->query("select * from orders where uid=".$uid." and oid='".$oid."'")->num_rows;
	if($count != 0)
	{
        $cy = $con->query("update orders set status = 'cancelled' where uid='".$uid."' and oid='".$oid."'");
    $returnArr = array("ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Order Cancelled Successfully!!!");
}
else 
{
	$returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Order Not Found!!");
}
}
echo json_encode($returnArr);
mysqli_close($con);
?> 	