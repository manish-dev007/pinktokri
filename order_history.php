
<?php require 'include/header.php'; ?>
<body>
<?php 
if (!isset($_SESSION['umobile'])) { ?>
  <script type="text/javascript">window.location.href = 'login.php';</script>
<?php }

?>

<!-- Wrap -->
<div id="wrap"> 
  
  <!-- header -->
  <?php require 'include/header_links.php'; ?>
 <section class="padding-top-50 padding-bottom-70 pages-in chart-page mob_full_screen">
      <div class="container"> 
        <h5>Orders</h5><br><br>
        <!-- Payments Steps -->
        <div class="shopping-cart text-center o_history_web">
          <div class="cart-head">
            <ul class="row">
              <!-- PRODUCTS -->
              <li class="col-sm-3 text-left">
                <h6>ORDER ID</h6>
              </li>
              <!-- NAME -->
              <li class="col-sm-2 text-left">
                <h6>ORDER DATE</h6>
              </li>
              <!-- PRICE -->
              <li class="col-sm-3" style="text-align: left;">
                <h6>DELIVERY PERSON INFO</h6>
              </li>
              
              <!-- TOTAL PRICE -->
              <li class="col-sm-2">
                <h6>TOTAL</h6>
              </li>
              <li class="col-sm-2">
                <h6>ORDER STATUS</h6>
              </li>
            </ul>
          </div>
          
          <div class="order_history_block">

          </div>
        </div>
        <div class="o_history_mob">
          
        </div>
        <div class="o_history_details padding-bottom-50">
          <div class="row">
              <div class="col-md-6 col-data">
                <ul>
                  <li class="p_method"><span></span></li>
                  <li class="oid">&nbsp;</li>
                  <li class="oid">Order Id : <b></b></li>
                  <li class="odate">Order Date : <b></b></li>
                  <li class="delivdate">Delivery Date : <b></b></li>
                  <li class="oslot">TimeSlot : <b></b></li>
                  <li class="odelivcharge">Delivery : <b></b></li>
                  <li class="total_amt">Total : <b></b></li>
                  <li class="oaddress">Address : <b></b></li>
                </ul>    
                <p class="o_staus">Order Status : <span></span></p>            
              </div>
              <div class="col-md-6">
                <div class="checkout_pg_items">
                  <ul>
                      
                  </ul>
              </div>
              </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  
  <!--======= FOOTER =========-->
  <?php require 'include/footer.php'; ?>
  <!--======= RIGHTS =========--> 
  
</div>
<?php require 'include/js.php'; ?>
<script type="text/javascript">
  getOrderHistory();
  
</script>
</body>
</html>