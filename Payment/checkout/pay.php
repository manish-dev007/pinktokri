<?php
session_start();
extract($_GET);  
if($_POST['merchant_order_id'] == '' || $_POST['card_hold_name'] == '' || $_POST['send_phone'] == ''){ ?>
    <script type="text/javascript">window.location.href = '../../checkout.php';</script>
<?php }
if (!isset($_SESSION['uid'])) { ?>
		<script type="text/javascript">window.location.href = '../../login.php';</script>
<?php } 
require('config.php');
require('razorpay-php/Razorpay.php');
use Razorpay\Api\Api;


$api = new Api($keyId, $keySecret);
$orderData = [
    'receipt'         => 3456,
    'amount'          => $_POST['total_amt'] * 100,
    'currency'        => $_POST['currency'],
    'payment_capture' => 1
];
$razorpayOrder = $api->order->create($orderData);
$razorpayOrderId = $razorpayOrder['id'];
$_SESSION['razorpay_order_id'] = $razorpayOrderId;
$_SESSION['merchant_order_id'] = $_POST['merchant_order_id'];
$displayAmount = $amount = $orderData['amount'];
if ($displayCurrency !== 'INR') {
    $url = "https://api.fixer.io/latest?symbols=$displayCurrency&base=INR";
    $exchange = json_decode(file_get_contents($url), true);

    $displayAmount = $exchange['rates'][$displayCurrency] * $amount / 100;
}
$data = [
    "key"               => $keyId,
    "amount"            => $amount,
    "name"              => $_POST['store_name'],
    "description"       => "",
    "image"             => $_POST['store_logo'],
    "prefill"           => [
    "name"              => $_POST['card_hold_name'],
    "email"             => $_POST['send_email'],
    "contact"           => $_POST['send_phone'],
    ],
    "notes"             => [
    "address"           => "",
    "merchant_order_id" => $_POST['merchant_order_id'],
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