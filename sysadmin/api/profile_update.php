<?php 
 
require 'db.php';
$data = json_decode(file_get_contents('php://input'), true);
$uid = $data['uid'];
if($data['uid'] == '' or $data['name'] == '' or $data['email'] == '' or $data['phone'] == '')
{
	$returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Something Went wrong  try again !");
}
else 
{
	$count = $con->query("select * from user where id=".$uid."")->num_rows;
	if($count != 0)
	{
		$con->query("update user set name='".$data['name']."',email='".$data['email']."',mobile=".$data['phone']." where id=".$uid."");
		$returnArr = array("ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"User Information Get Successfully!!!","ResultData"=>$q);
	}
	else 
	{
		$returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"User Not Found!!");
	}
}
echo json_encode($returnArr);
mysqli_close($con);
?> 	