<?php 
 
 require 'db.php';
$data = json_decode(file_get_contents('php://input'), true);
$uid = $data['uid'];
if($uid == '')
{
	$returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Something Went wrong  try again !");
}
else 
{
	$cy = $con->query("select * from user where id=".$uid."");
	$count = $con->query("select * from user where id=".$uid."")->num_rows;
	if($count != 0)
	{
	$p = array();
	$q = array();
	if($row = $cy->fetch_assoc())
	{
		$p['id'] = $row['id'];
		$p['name'] = $row['name'];
		$p['email'] = $row['email'];
		$p['mobile'] = $row['mobile'];
		$q[] = $p;
	}
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