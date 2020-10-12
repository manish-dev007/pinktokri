<div id="loader" class="load_page">

  <img src="img/loader.gif">

</div>

  <header>

    <?php

          $umob = $uemail = $uname = $uid = '';

              if(isset($_SESSION['umobile'])){

                $umob = $_SESSION['umobile'];

              }else{

                $umob = '';

              }



              if(isset($_SESSION['uemail'])){

                $umob = $_SESSION['uemail'];

                $uemail = $_SESSION['uemail'];

              }else{

                $umob = '';

                $uemail ='';

              }



              if(isset($_SESSION['uname'])){

                $uname = $_SESSION['uname'];

              }else{

                $uname = '';

              }



              if(isset($_SESSION['uid'])){

                $uid = $_SESSION['uid'];

              }else{

                $uid = '';

              }



          ?>

    <div class="sticky">

      <div class="container"> 

        <?php include_once 'include/sidebar.php'; ?>

        <!-- Logo -->

        <div class="logo logo_web"> <a href="index.php"><img class="img-responsive" src="sysadmin/<?php echo $fset['logo']; ?>" alt="" ></a> </div>

        <nav class="navbar ownmenu">

          <div class="navbar-header">

            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"><i class="fa fa-navicon"></i></span> </button>

          </div>

          

              <input type="hidden" value="<?php echo $uid; ?>" class="hiddenuId">

              <input type="hidden" value="<?php echo $umob; ?>" class="hiddenuMob">

              <input type="hidden" value="<?php echo $uname; ?>" class="hiddenuname">

              <input type="hidden" value="<?php echo $uemail; ?>" class="hiddenueamil">

          

          <!-- NAV -->

          <div class="collapse navbar-collapse" id="nav-open-btn">

            <ul class="nav">

              

              <li>

                  <div class="custom-search-input">

                <div class="input-group col-md-12">

                    <input type="text" class="form-control input-lg searchItem" placeholder="Search for products.." />

                    <span class="input-group-btn">

                        <button class="btn btn-info btn-lg" type="button">

                            <i class="glyphicon glyphicon-search"></i>

                        </button>

                    </span>

                </div>

            </div>

            <input type="hidden" class="shipping_charge">

            <input type="hidden" class="o_min">

            <ul class="list-group resultSearch"></ul>

              </li>

              <!-- MEGA MENU -->

              <li class="dropdown megamenu"> <a href="#." class="dropdown-toggle" data-toggle="dropdown">Shop By Category <i class="fa fa-angle-down"></i></a>

                <div class="dropdown-menu">

                  <div class="row"> 

                    

                   

                    <!-- New Arrival 

                    <div class="col-md-5">

                      <h5>NEW ARRIVAL 2016 <span>(Best Collection)</span></h5>

                      <img class="nav-img" src="images/nav-img.png" alt="" >

                      <p>Lorem ipsum dolor sit amet,<br>

                        consectetur adipiscing elit. <br>

                        Donec faucibus maximus<br>

                        vehicula.</p>

                      <a href="#." class="btn btn-small btn-round">SHOP NOW</a> </div>-->

                    <!-- TOp Rate Products -->

                    <div class="col-md-5">

                      <h6>TOp Discounted Products</h6>

                      <div class="top-rated">

                        <ul>

                          <?php 

                            $sel_pros_disc = $con->query("select * from product where status=1 and popular = 1 order by discount desc LIMIT 3");

                            while($row_pros_diss = $sel_pros_disc->fetch_assoc())

                            {

                              $ab11 = explode('$;',$row_pros_diss['pprice']);

                          ?>

                          <li>

                            <div class="media-left">

                              <div class="cart-img"> <img class="media-object img-responsive" src="sysadmin/<?php echo $row_pros_diss['pimg']; ?>" alt="..."> </div>

                            </div>

                            <div class="media-body">

                              <h6 class="media-heading"><a href="product_info.php?productId=<?php echo base64_encode($row_pros_diss['id']); ?>&pName=<?php echo base64_encode($row_pros_diss['pname']); ?>"><?php echo $row_pros_diss['pname']; ?></a></h6>

                              <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>

                              <?php echo (empty($ab11[0])) ? '0' : '<span class="price">₹'.$ab11[0].'</span>'; ?>

                              <span class="disc_pross"><?php echo $row_pros_diss['discount']; ?>%

                      <span>OFF</span></span>

                          </li>

                        <?php } ?>

                        </ul>

                      </div>

                    </div>



                    <div class="col-md-4">

                      <h6>TOp Rate Products</h6>

                      <div class="top-rated">

                        <ul>

                          <?php 

                            $sel_pros_top = $con->query("select * from product where status=1 ORDER BY RAND() ASC LIMIT 3");

                            while($row_pros_top = $sel_pros_top->fetch_assoc())

                            {

                              $ab11 = explode('$;',$row_pros_top['pprice']);

                          ?>

                          <li>

                            <div class="media-left">

                              <div class="cart-img"> <img class="media-object img-responsive" src="sysadmin/<?php echo $row_pros_top['pimg']; ?>" alt="...">  </div>

                            </div>

                            <div class="media-body">

                              <h6 class="media-heading"><a href="product_info.php?productId=<?php echo base64_encode($row_pros_top['id']); ?>&pName=<?php echo base64_encode($row_pros_top['pname']); ?>"><?php echo $row_pros_top['pname']; ?></a></h6>

                              <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>

                              <?php echo (empty($ab11[0])) ? '0' : '<span class="price">₹'.$ab11[0].'</span>'; ?>

                          </li>

                        <?php } ?>

                        </ul>

                      </div>

                    </div>

                    

                    

                       <!-- Shop Pages -->

                    <div class="col-md-3 top_header_categ">

                      <h6>Categories</h6>

                      <ul>

                        

                      </ul>

                    </div>

                  </div>

                </div>

              </li>

            </ul>

          </div>



          <div class="col-md-12 progrs_pay">

                <div class="progress red">

                    <div class="progress-bar progress-bar-danger progress-bar-striped active" style="width:100%;">



                    </div><br>

                    <p>Redirecting to Payment Page...</p>

                </div>

            </div>

          

          <!-- Nav Right -->

          <div class="nav-right">

            <ul class="navbar-right">

              <?php if ($umob == '') { ?>

                <li class="user-acc"> <a href="login.php"><i class="icon-user"></i> </a></li>

              <?php }else{ ?>

              

              <li class="dropdown user-acc"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" ><i class="icon-user"></i> </a>

                <ul class="dropdown-menu">

                  <li>

                    <h6>HELLO! <b><?php echo strtoupper($uname); ?></b></h6>

                  </li>

                  <li><a href="checkout.php">View CART</a></li>

                  <li><a href="profile.php">ACCOUNT INFO</a></li>

                  <li><a href="order_history.php">ORDER HISTORY</a></li>

                  <li><a href="my_address.php">MY ADDRESS</a></li>

                  <li><a href="include/logout.php">LOG OUT</a></li>

                </ul>

              </li>

            <?php } ?>

              <?php

              $elementCount = 0;

                if (isset($_COOKIE['cart_items_cookie'])) {

                  $json_array  = json_decode($_COOKIE['cart_items_cookie'], true);

                  $elementCount  = count($json_array);

                }

              ?>

              <!-- USER BASKET -->

              <li class="dropdown user-basket"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><i class="icon-basket-loaded"></i><span class="span_cart_num"><?php echo $elementCount; ?></span> </a>

                <ul class="dropdown-menu">

                  <?php

                  $total = 0;

                  if (isset($_COOKIE['cart_items_cookie'])) {

                    $json_arrays  = json_decode($_COOKIE['cart_items_cookie'], true);

                      foreach($json_arrays as $key => $val) {

                          $cart_pro = $con->query("select * from product where id='".$key."'");

                          if($row_cart = $cart_pro->fetch_assoc())

                          {

                            $pro_price = '';

                            $ab = explode(',',$val);

                            $subT = $ab[0]*$ab[2];

                            $total +=$subT;

                           ?>

                            <li class="cartItem-<?php echo $key; ?>">

                                <div class="media-left">

                                  <div class="cart-img"> <a href="#"> <img class="media-object img-responsive" src="sysadmin/<?php echo $row_cart['pimg']; ?>" alt="..."> </a> </div>

                                </div>

                                <div class="media-body">

                                  <h6 class="media-heading"><?php echo $row_cart['pname']; ?> (₹ <?php echo $ab[2]; ?>)</h6>

                                  <span class="net_wt">Net: <b><?php echo $ab[1]; ?></b></span> <span class="qty">QTY: <b><?php echo $ab[0]; ?></b></span> <span class="price">Subtotal: ₹ <?php echo $subT; ?><i class="fa fa-trash" onclick="deletecartItem('<?php echo base64_encode($key); ?>',<?php echo $subT; ?>);" style="float: right;color: #af1a1a;cursor: pointer;" aria-hidden="true"></i></span>  </div>

                              </li>

                        <?php  }

                      }

                    }

                  ?>

                  <?php if ($elementCount < 1) { ?>

                    <li class="head_drop_subt"><h5 class="text-center">no items in your cart</h5></li>

                  <?php }else{ ?>

                    <li class="head_drop_subt"><h5 class="text-center">SUBTOTAL: <label class="spN_subt spn-0089">₹ <b><?php echo $total; ?></b></label></h5></li>

                  <?php } ?>
                  <input type="hidden" class="cart_subTval" value="<?php echo $total; ?>">
                  

                  <li class="margin-0 head_drop_links">

                    <div class="row">

                      <div class="col-xs-12 "> 

                        <?php if ($elementCount < 1) { ?>

                          <a href="index.php" class="btn">Shop Now</a>

                        <?php }else{ ?>

                            <a href="checkout.php" class="btn">CHECK OUT</a>

                        <?php } ?>

                        

                      </div>

                    </div>

                  </li>

                </ul>

              </li>

              

            </ul>

          </div>

        </nav>

      </div>

    </div>

  </header>