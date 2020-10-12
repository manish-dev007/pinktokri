<!Doctype html>
<html>
    <head>
        <title>Pinktokri | Payment Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .cart-table-payment{
            padding: 25px 34px 0;
        }
        .qty-payment{
            padding: 13px 20px;
            background-color: white;
            border-radius: 38px;
            height: 50px;
            width: 50px;
            font-weight: 700;
        }
        .cart_pricing{
            margin-bottom:unset;
        }
        #container.drishy #modal{
            width:500px !important;
        }
        .site-logo img{
            padding: 10% 0;
        }
        .center-screen {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          text-align: center;
          min-height: 50vh;
        }
        .total_amt_blk{
            padding: 5%;
            border: 1px solid #dbd5d5;
            border-radius: 5px;
        }
        .total_amt_blk span{
            font-weight: bold;
            font-size: 25px;
        }
        .final_pay_process{
            margin-top: 1%;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    </head>
    <body>

        <header class="header-section">
        <div class="header-top" style="padding: 0px 0 14px;border-bottom: 1px solid #eee;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 text-center text-lg-left">
                        <!-- logo -->
                        <a href="#" class="site-logo">
                            <img src="../../sysadmin/<?php echo $fset['logo']; ?>" alt="PinkTokri">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
        <section class="cart-section spad orders_main_cont">
        <div class="container">
            <br><h4>Payment</h4><br>
            <div class="row"> 
                    <div class="col-md-12 orders_infos">                            
                        <div class="center-screen">
                            <div class="total_amt_blk">
                                <h4>Total Amount : <span>Rs. <?php echo ($payment_amt); ?></span>   </h4>
                            </div>
                        <form name='razorpayform' class="final_pay_process" action="verify.php" method="POST">
                            <input type="hidden" name="razorpay_payment_id" id="razorpay_payment_id">
                            <input type="hidden" name="razorpay_signature"  id="razorpay_signature" >

                        <a href="../../checkout.php" class="btn btn-warning"><i class="fa fa-times" aria-hidden="true"></i>&nbsp;&nbsp;Cancel payment</a>
                            <button type="submit" class="btn btn-primary btn_pay_final_order" id="rzp-button1"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;&nbsp;Pay</button>
                        </form>
                    </div>
                        </div>
                    </div>
        </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    
    </body>
</html>


<script>
var options = <?php echo $json?>;
options.handler = function (response){
    document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
    document.getElementById('razorpay_signature').value = response.razorpay_signature;
    document.razorpayform.submit();
};
options.theme.image_padding = false;
options.modal = {
    ondismiss: function() {
        console.log("This code runs when the popup is closed");
    },
    escape: true,
    backdropclose: false
};
var rzp = new Razorpay(options);
document.getElementById('rzp-button1').onclick = function(e){
    rzp.open();
    e.preventDefault();
}
</script>