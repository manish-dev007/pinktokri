<?php 

require 'db.php';

$data = json_decode(file_get_contents('php://input'), true);



if($data['uid'] == '')

{

 $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Something Went Wrong!");    

}

else

{

    

$uid =  $data['uid'];

$ddate = $data['ddate'];

//$a = explode('/',$ddate);

//$ddate = $a[2].'-'.$a[1].'-'.$a[0];

$timesloat = $data['timeslot'];

$oid ='#'.uniqid();

$pname = $data['pname'];

$status = 'pending';

$p_method = $data['p_method'];

$address_id = $data['address_id'];

$timestamp = date("Y-m-d");

$tid = $data['tid'];

$ship_charge = $data['ship_charge'];

$total = number_format((float)$data['total'], 2, '.', '');

$e= array();

$p = array();

$w=array();

$pp = array();

$q = array();

$tax_p = 0;

for($i=0;$i<count($pname);$i++)

{

$e[] = $pname[$i]['title'];

$p[] = $pname[$i]['pid'];

$w[] = $pname[$i]['weight'];

$t[] = $pname[$i]['ptax'];



$pp[] = $pname[$i]['cost'];

$q[] = $pname[$i]['qty'];

$subt = $pname[$i]['cost']*$pname[$i]['qty'];

$tax_p += ($subt)*($pname[$i]['ptax']/100);

}



$pname = implode('$;',$e);

$pid = implode('$;',$p);

$ptype = implode('$;',$w);

$pprice = implode('$;',$pp);

$qty = implode('$;',$q);

$ptax = implode('$;',$t);

$totl_amt = $total+$ship_charge+$tax_p;





$con->query("insert into orders(`oid`,`uid`,`pname`,`pid`,`ptype`,`pprice`,`ptax`,`ddate`,`timesloat`,`order_date`,`status`,`qty`,`total`,`p_method`,`address_id`,`tax`,`tid`,`ship_charge`)values('".$oid."',".$uid.",'".$pname."','".$pid."','".$ptype."','".$pprice."','".$ptax."','".$ddate."','".$timesloat."','".$timestamp."','".$status."','".$qty."',".$totl_amt.",'".$p_method."',".$address_id.",".$tax_p.",'".$tid."','".$ship_charge."')");

$returnArr = array("ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Order Placed Successfully!!!","oid"=>$oid);

}



echo json_encode($returnArr);