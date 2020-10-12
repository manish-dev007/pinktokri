<?php

session_start();

extract($_GET); 

$conn = new mysqli("localhost", "pinktokridb", "Work@9897", "pinktokridb");



if ($id == 'login-user') {

	$umob = $_POST['mobile'];

	$email = $_POST['email'];

	$name = $_POST['name'];

	$uid = $_POST['uid'];

	$_SESSION["umobile"] = $umob;

	$_SESSION["uemail"] = $email;

	$_SESSION["uname"] = $name;

	$_SESSION["uid"] = $uid;

	echo "y";

}



if ($id == 'add-to-cart') {

	//var_dump($_POST);die;

	$product_id = base64_decode($_POST['product_id']);

	$product_qty = $_POST['product_qty'];

	$pro_net_wt = $_POST['pro_net_wt'];

	$pro_price = ltrim($_POST['pro_price'], '₹');

	$total_price=0;

	$response = array();

	$response['data'] = array();

	// initialize empty cart items array

	$cart_total = 0;

	$cart_items=array();

	if (isset($_COOKIE['cart_items_cookie'])){

		$cookie_dec = json_decode($_COOKIE['cart_items_cookie'] , true);

		if (empty($cookie_dec)) {

			$cart_total = 1;

		}else{

			$cart_total = 0;

		}

	}else{

		$cart_total = 2;

	}



	// add new item on array

	$cart_items[$product_id]=$product_id;

	$cart_items[$product_id]=$product_qty.",".$pro_net_wt.",".$pro_price;



	// read the cookie

	$cookie = isset($_COOKIE['cart_items_cookie'])?$_COOKIE['cart_items_cookie']:'';

	$cookie = stripslashes($cookie);

	$saved_cart_items = json_decode($cookie, true);

		    

	// if $saved_cart_items is null, prevent null error

	if(!$saved_cart_items){

		$saved_cart_items=array();

	}



	// check if the item is in the array, if it is, do not add

	if(array_key_exists($product_id, $saved_cart_items)){

		// redirect to product list and tell the user it was already added to the cart

		$response['status']="exist";

	}else{

		if(count($saved_cart_items)>0){

			foreach($saved_cart_items as $key=>$value){

			    // add old item to array, it will prevent duplicate keys

			    $cart_items[$key]=$value;

			}

		}

		if(count($cart_items)>0){

		    foreach($cart_items as $key=>$value){

		    // add old item to array, it will prevent duplicate keys

				$col=array();

		        $col['itemid']=$key;

		        $col['itemqty']=$value;

		        //$col['itemqty']=$itemqty;

		        array_push($response['data'], $col);		             

			}

		}

		$response['status']="added";



		$response['cart_items']=$cart_total;

		//$response['items']=$col;

		$json = json_encode($cart_items, true);

		//echo $json;

		setcookie('cart_items_cookie', $json,time() + 2592000, "/");

	}

	echo json_encode($response,JSON_PRETTY_PRINT);

	//$json_cart = json_encode($cart);



	//setcookie('cart', $json_cart, time() + 60*100000, '/'); 

}





if ($id == 'delete-cart-item') {

	$item_id = base64_decode($_POST['id']);

	$cart_items=array();

	$cookie_dec = json_decode($_COOKIE['cart_items_cookie'] , true);

	$cart_items["cart_items"] = array();

	$idata = '';



	foreach($cookie_dec as $key => $val) {

		if($key==$item_id){

			$idata = $val;break;

		}

	}

	$dataDecode = explode(',', $idata);

	$total = ($dataDecode[0]*$dataDecode[2]);

	//var_dump($dataDecode);

	$cart_items["total"] = $total;

	unset($cookie_dec[$item_id]);

	$cart_toal = 1;

	if (empty($cookie_dec)) {

		$cart_toal = 0;

	}

	$cart_items["cart_items"] = $cart_toal;

	echo json_encode($cart_items,JSON_PRETTY_PRINT);

	setcookie('cart_items_cookie', json_encode($cookie_dec),time() + 2592000, "/");

}





if ($id == 'update-to-cart') {

	$product_id = base64_decode($_POST['product_id']);

	$product_qty = $_POST['product_qty'];

	$pro_net_wt = $_POST['pro_net_wt'];

	$pro_price = ltrim($_POST['pro_price'], '₹');

	$total_price=0;

	$response = array();

	$response['data'] = array();

	// initialize empty cart items array

	$cart_items=array();



	// add new item on array

	$cart_items[$product_id]=$product_id;

	$cart_items[$product_id]=$product_qty.",".$pro_net_wt.",".$pro_price;

	// read the cookie

	$cookie = isset($_COOKIE['cart_items_cookie'])?$_COOKIE['cart_items_cookie']:'';

	$cookie = stripslashes($cookie);

	$saved_cart_items = json_decode($cookie, true);





	foreach($cart_items as $key => $val)

	{

	    if(array_search($key, $saved_cart_items) === false)

	    {

	        unset($saved_cart_items[$key]);

	    }

	}

	// if $saved_cart_items is null, prevent null error

	if(!$saved_cart_items){

		$saved_cart_items=array();

	}

		if(count($saved_cart_items)>0){

			foreach($saved_cart_items as $key=>$value){

			    // add old item to array, it will prevent duplicate keys

			    $cart_items[$key]=$value;

			}

		}

	



		if(count($cart_items)>0){

		    foreach($cart_items as $key=>$value){

		    // add old item to array, it will prevent duplicate keys

				$col=array();

		        $col['itemid']=$key;

		        $col['itemqty']=$value;

		        //$col['itemqty']=$itemqty;



		        array_push($response['data'], $col);		             

			}

		}

		$response['status']="added";

		//$response['items']=$col;

		$json = json_encode($cart_items, true);

		//echo $json;

		setcookie('cart_items_cookie', $json,time() + 2592000, "/");

	

	echo json_encode($response,JSON_PRETTY_PRINT);

	//$json_cart = json_encode($cart);



	//setcookie('cart', $json_cart, time() + 60*100000, '/'); 

}

if ($id == 'cart_checkout') {

	if (isset($_COOKIE['cart_items_cookie'])) {

		$cookie_val = $_COOKIE['cart_items_cookie'];

		$json_cookie_d = json_decode($cookie_val);

		$pro_id = $pro_ptax = '';
		$pro_name = '';

		$arr = array();

		foreach ($json_cookie_d as $key => $value) {

			$result = $conn->query("SELECT pname,ptax FROM product where id = '".$key."'");

			if ($result->num_rows > 0) {

			  if($row = $result->fetch_assoc()) {

			  	$pro_name = str_replace( "'", "", $row['pname'] );

			  	$pro_ptax = $row['ptax'];

			  }     

			}

			if($pro_ptax == ''){

				$pro_ptax = '0';

			}

			$pro_id = $key;

			$vals = explode(',',$value);

			$arr[] = array('title' => $pro_name, 'pid' => $pro_id, 'ptax' => $pro_ptax, 'weight' => $vals[1], 'cost' => $vals[2], 'qty' => $vals[0]);	

		}

		echo json_encode($arr);

	}else{

		echo "N";

	}

}



if ($id == 'cart_online_pay') {

	//$data = json_decode(file_get_contents('php://input'), true);

	$_SESSION["checkout_online_pay"] = $_POST['udata'];

	$_SESSION["check_pid"] = $_POST['pids'];

}



if ($id == 'updatepayIdOrder') {

	$odr_id = $_POST['odr_id'];

	$pay_id = $_POST['pay_id'];

	$result = $conn->query("update orders set payment_id = '".$pay_id."' where oid = '".$odr_id."'");

	unset($_SESSION["checkout_online_pay"]);unset($_SESSION["check_pid"]);unset($_SESSION["razorpay_order_id"]);

}



if($id == 'send-email'){

		$f_name = $_POST['uname'];

		$subject = $_POST['subject'];

		$fromemail = "info@pinktokri.com";

		$toemail = $_POST['uemail']; //please change this email id

						

		$mailheaders = "MIME-Version: 1.0" . PHP_EOL;

		$mailheaders .= "Content-type: text/html; charset=iso-8859-1" . PHP_EOL;

		$mailheaders .= "From: " . $fromemail . PHP_EOL;

		$mailheaders .= "Reply-To: " . $fromemail . PHP_EOL;

		$mailheaders .= "X-Mailer: PHP/" . phpversion();

		$mailheaders .= "X-Priority: 1" . PHP_EOL;

			

		$message = $_POST['message'];;

		

		mail($toemail, $subject, $message, $mailheaders, "-odb -f $fromemail");	

}





?>