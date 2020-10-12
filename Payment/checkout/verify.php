<?php
session_start(); 
if($_POST['razorpay_payment_id'] == '' || $_POST['razorpay_signature'] == ''){ ?>
    <script type="text/javascript">window.location.href = '../../checkout.php';</script>
<?php    
}
if (!isset($_SESSION['uid'])) { ?>
  <script type="text/javascript">window.location.href = '../../login.php';</script>
<?php } ?>
<style>
    .pay_status{
        font-family: 'roboto', sans-serif;
        background-color: #ddd9d9;
        width: 40%;
        text-align: center;
        margin: 0 auto;
        display: block;
        margin-top: 15%;
        padding: 1%;
        border-radius: 4px;
    }
    .succ_status{
        font-size: 25px;
        color: #0c6a0c;
    }
    .fail_status{
        font-size: 25px;
        color: #d91438;
    }
    .pay_status .fa{
        font-size: 60px;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<input type="hidden" class="hidn_pids" value='<?php echo json_encode($_SESSION['check_pid']); ?>'>
<input type="hidden" class="hidn_checkout_data" value='<?php echo json_encode($_SESSION['checkout_online_pay']); ?>'>
<?php 
date_default_timezone_set("Asia/Kolkata"); 
$creation_date = date("Y-m-d h:i:sa");
require('config.php');

require('razorpay-php/Razorpay.php');
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;

$rs_pay_check = $con->query("select * from payment_pinktokri where payment_id = '".$_POST['razorpay_payment_id']."' and order_parent_id = '".$_SESSION['merchant_order_id']."'");
$rows_pay_check = $rs_pay_check->num_rows;
if ($rows_pay_check > 0) {
    $html = "<script>setTimeout(function(){ window.location = '../../order_history.php'; }, 1000);</script>";
    $html = "hello";
}else{

$success = true;

$error = "Payment Failed";

if (empty($_POST['razorpay_payment_id']) === false)
{
    $api = new Api($keyId, $keySecret);

    try
    {
        // Please note that the razorpay order ID must
        // come from a trusted source (session here, but
        // could be database or something else)
        $attributes = array(
            'razorpay_order_id' => $_SESSION['razorpay_order_id'],
            'razorpay_payment_id' => $_POST['razorpay_payment_id'],
            'razorpay_signature' => $_POST['razorpay_signature']
        );

        $api->utility->verifyPaymentSignature($attributes);
    }
    catch(SignatureVerificationError $e)
    {
        $success = false;
        $error = 'Razorpay Error : ' . $e->getMessage();
    }
}
?>
    <input type="hidden" class="hidn_odr_id" value="<?php echo $_POST['razorpay_payment_id']; ?>">
<?php
if ($success === true)
{
	$query_trans="insert into payment_pinktokri(payment_id,order_parent_id,order_id,signature_hash,creation_date) VALUES('".$_POST['razorpay_payment_id']."','".$_SESSION['merchant_order_id']."','".$_SESSION['razorpay_order_id']."','".$_POST['razorpay_signature']."','$creation_date')";
    $rs_trans=$con->query($query_trans);
    if($rs_trans){
        /*$exp_d_date = date('d-m-Y', strtotime($pro_order_date. ' + 7 days'));
		$exp_deliv1 = strtotime($exp_d_date);
		$exp_deliv_date = date('d M, Y', $exp_deliv1);
        $uphone = $_COOKIE['uId'];
        $usrmsg = 'Your Order has been booked successfully..! your order ID is <u>'.$_SESSION['merchant_order_id'].'</u> and will be deliver on '.$exp_deliv_date.'. Thanks for using <u>Industrial Trade Solution.</u>';
        send_OTP($usrmsg,$uphone);*/
?>
    <script type="text/javascript">
        order_pay();
        function order_pay(){
        var pay_id = $('.hidn_odr_id').val();
        var userdata = $('.hidn_checkout_data').val();
        var pids = $('.hidn_pids').val();
        $.ajax({
            type: "POST", 
            url: '../../sysadmin/api/order.php',
            data: userdata,
            contentType: 'application/json',
            success: function(resp){
              var res_f = JSON.parse(resp);
              if (res_f.ResponseCode == '200') {
                alert(res_f.ResponseMsg);
                var odr_id = res_f.oid;
                updateodrPayid(odr_id,pay_id);
                unsetProCookies(pids,odr_id);

              }else{
                alert('Error Occured');
              }
            }

          });

        }


        function unsetProCookies(pids,odr_id){
            pids = pids.replace(/['"]+/g, '');
            var url = "../../include/action.php?id=delete-cart-item";
            var pid = pids.slice(0,-1);
            var myarray = pid.split(',');
            for(var i = 0; i < myarray.length; i++)
            {
              $.ajax({
                     type: "POST", 
                     url: url,
                     data: {"id":window.btoa(myarray[i])},
                     success: function(response)
                     {
                        console.log(response);
                     }

                   });
            }
        }

        function updateodrPayid(odr_id,pay_id) {
            $.ajax({
                     type: "POST", 
                     url: "../../include/action.php?id=updatepayIdOrder",
                     data: {"odr_id":odr_id,"pay_id":pay_id},
                     success: function(response)
                     {
                        setTimeout(function(){ window.location = 'order_history.php'; }, 2000);
                     }

                   });
        }
    </script>
<?php
        $html = "<div class='pay_status'><p class='succ_status'><i class='fa fa-check-circle'></i><br>Your payment was successful</p></div>";
    }
}
else
{
    $html = "<div class='pay_status'><p class='fail_status'><i class='fa fa-times'></i><br>Your payment failed</p>
             <p>{$error}</p></div>";
}
    $html .= "<script>setTimeout(function(){ window.location = '../../order_history.php'; }, 2000);</script>";
}
echo $html;


/*function send_OTP($usrmsg,$uphone){
	// Account details
	$apiKey = urlencode('YC9ijq+wpso-f9CP7nlI0y4SGyI0tMNhrcINYmFAQt');
	
	// Message details
	$numbers = array($uphone);
	$sender = urlencode('TXTLCL');
	$message = rawurlencode($usrmsg.'\nVisit www.industrialtradesolution.com for more.');
 
	$numbers = implode(',', $numbers);
 
	// Prepare data for POST request
	$data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message);
 
	// Send the POST request with cURL
	$ch = curl_init('https://api.textlocal.in/send/');
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$response = curl_exec($ch);
	curl_close($ch);
	
	// Process your response here
	//echo $response;
}
*/