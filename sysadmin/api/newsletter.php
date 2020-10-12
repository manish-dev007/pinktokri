<?php 
require 'db.php';
$data = json_decode(file_get_contents('php://input'), true);
if($data['email'] == '')
{
    $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Something Went Wrong!");
}
else
{
    
    $email = strip_tags(mysqli_real_escape_string($con,$data['email']));
     
     
     
    $checkmob = $con->query("select * from newsletter where email='".$email."'");
    $checkemail = $con->query("select * from newsletter where email='".$email."'");
   
    if($checkmob->num_rows != 0)
    {
        $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Mobile Number Already Used!");
    }
     else if($checkemail->num_rows != 0)
    {
        $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Email Address Already Used!");
    }
    else
    {
       
        $timestamp = date("Y-m-d H:i:s");
        
        $con->query("insert into newsletter(`email`,`date`)values('".$email."','".$timestamp."')");
    
        $returnArr = array("ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Registration successfully!");
    }
    
    
}

echo json_encode($returnArr);