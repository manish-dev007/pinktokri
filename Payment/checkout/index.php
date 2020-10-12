<?php
session_start();
extract($_GET);  

$payment_amt = base64_decode($payment_amt);
$currency = 'INR';
if($payment_amt == '' || $paymentToken == ''){ ?>
    <script type="text/javascript">window.location.href = '../../checkout.php';</script>
<?php }
if (!isset($_SESSION['uid'])) { ?>
  <script type="text/javascript">window.location.href = '../../login.php';</script>
<?php }

if(!isset($_COOKIE['cart_items_cookie'])){ ?>
        <script type="text/javascript">window.location.href = '../../checkout.php';</script>
<?php } 
require('config.php');
require('razorpay-php/Razorpay.php');
use Razorpay\Api\Api;
$card_hold_name = $email = $mobile = '';
$cart_pro = $con->query("select * from user where id='".$_SESSION['uid']."'");
if($row_cart = $cart_pro->fetch_assoc())
{
    $card_hold_name = $row_cart['name'];
    $email = $row_cart['email'];
    $mobile = $row_cart['mobile'];
}
$store_name = 'PinkTokri';
$store_logo = '../../sysadmin/'.$fset["logo"];
$merchant_order_id = '0000';

$api = new Api($keyId, $keySecret);
$orderData = [
    'receipt'         => 3456,
    'amount'          => $payment_amt * 100,
    'currency'        => $currency,
    'payment_capture' => 1
];
$razorpayOrder = $api->order->create($orderData);
$razorpayOrderId = $razorpayOrder['id'];
$_SESSION['razorpay_order_id'] = $razorpayOrderId;
$_SESSION['merchant_order_id'] = $merchant_order_id;
$displayAmount = $amount = $orderData['amount'];
if ($displayCurrency !== 'INR') {
    $url = "https://api.fixer.io/latest?symbols=$displayCurrency&base=INR";
    $exchange = json_decode(file_get_contents($url), true);

    $displayAmount = $exchange['rates'][$displayCurrency] * $amount / 100;
}
$data = [
    "key"               => $keyId,
    "amount"            => $amount,
    "name"              => $store_name,
    "description"       => "",
    "image"             => $store_logo,
    "prefill"           => [
    "name"              => $card_hold_name,
    "email"             => $email,
    "contact"           => $mobile,
    ],
    "notes"             => [
    "address"           => "",
    "merchant_order_id" => $merchant_order_id,
    ],
    "theme"             => [
    "color"             => "#e50c81"
    ],
    "order_id"          => $razorpayOrderId,
];

if ($displayCurrency !== 'INR')
{
    $data['display_currency']  = $displayCurrency;
    $data['display_amount']    = $displayAmount;
}

$json = json_encode($data);


require("checkout/manual.php");
$html = '';    

?>