<?php 
 
 require 'db.php';
$data = json_decode(file_get_contents('php://input'), true);
$product_id = $data['product_id'];
if($product_id == '')
{
	$returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Something Went wrong  try again !");
}
else 
{
	$cy = $con->query("select * from product where id='".$product_id."'");
	$count = $con->query("select * from product where id=".$product_id."")->num_rows;
	if($count != 0)
	{
	$p = array();
	$q = array();
	if($row = $cy->fetch_assoc())
	{
		$p['id'] = $row['id'];
		$p['pname'] = $row['pname'];
		$p['sname'] = $row['sname'];
		$p['cid'] = $row['cid'];
		$p['sid'] = $row['sid'];

		$p['psdesc'] = $row['psdesc'];
		$p['pgms'] = $row['pgms'];
		$p['pprice'] = $row['pprice'];
		$p['status'] = $row['status'];
		$p['stock'] = $row['stock'];
		$p['pimg'] = $row['pimg'];
		$p['ptax'] = $row['ptax'];
		$q[] = $p;
	}
	$returnArr = array("ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Product Data Get Successfully!!!","ResultData"=>$q);
}
else 
{
	$returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Product Not Found!!");
}
}
echo json_encode($returnArr);
mysqli_close($con);
?> 	