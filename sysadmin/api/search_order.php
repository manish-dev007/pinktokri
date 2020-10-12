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
	
	$cy = $con->query("select * from orders where uid='".$uid."' and oid='".$oid."'");
	$count = $con->query("select * from orders where uid='".$uid."' and oid='".$oid."'")->num_rows;
	if($count != 0)
	{
	$p = array();
	$q = array();
	$p['product_list'] = array();
	if($row = $cy->fetch_assoc())
	{

		$response = array();
		$response['data'] = array();

		$pid=explode('$;',$row['pid']);
		$pprice=explode('$;',$row['pprice']);
		$pname=explode('$;',$row['pname']);
		$qty=explode('$;',$row['qty']);
		$ptype = explode('$;',$row['ptype']);
		$pimg = '';
		if(count($pid)>0){
			for($i=0;$i<sizeof($pid);$i++){
				$col=array();
				$col['pid']=$pid[$i];
				$p_f = $con->query("select * from product where id='".$pid[$i]."'");
				if($row_p = $p_f->fetch_assoc())
				{
					$pimg = $row_p['pimg'];
				}
				$col['p_name']=$pname[$i];
				$col['p_img']=$pimg;
				$col['price']=$pprice[$i];
				$col['qnty']=$qty[$i];
				$col['p_type']=$ptype[$i];
				$col['p_subtotal']=$pprice[$i]*$qty[$i];

				array_push($p['product_list'],$col);
			}
		}
		$p_addr = '';
		$p_adr = $con->query("select * from address where id='".$row['address_id']."'");
		if($row_adr = $p_adr->fetch_assoc())
		{
			$p_addr = $row_adr['hno'].", ".$row_adr['society'].", ".$row_adr['landmark'].", ".$row_adr['area'].", ".$row_adr['pincode'];
		}

		$p['oid'] = $row['oid'];
		$p['uid'] = $row['uid'];
		$p['ddate'] = $row['ddate'];
		$p['timesloat'] = $row['timesloat'];
		$p['order_date'] = $row['order_date'];
		$p['status'] = $row['status'];

		$p['total'] = $row['total'];
		$p['p_method'] = $row['p_method'];
		$p['r_status'] = $row['r_status'];
		$p['tax'] = $row['tax'];
		$p['ship_charge'] = $row['ship_charge'];
		$p['address_id'] = $p_addr;
		$q[] = $p;
	}
	$returnArr = array("ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Order Info Get Successfully!!!","ResultData"=>$q);
}
else 
{
	$returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Order Not Found!!");
}
}
echo json_encode($returnArr);
mysqli_close($con);
?> 	