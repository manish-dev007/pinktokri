

<?php

extract($_GET);  



if ($productId == '') {

  header("Location: index.php");

}

$pro_id = base64_decode($productId);

?>

<?php require 'include/header.php'; ?>

<body>



<!-- Wrap -->

<div id="wrap"> 

  

  <!-- header -->

  <?php require 'include/header_links.php'; ?>



  <?php

    $pro_cid = 0;

    $pros_info = $con->query("select * from product where id='".$pro_id."'");

    if($row_pros = $pros_info->fetch_assoc())

    {

      $pro_cid = $row_pros['cid'];

      $rand_n = rand(10,100);

  ?>

  <section class="padding-top-50 padding-bottom-100">

      <div class="container"> 

        

        <!-- SHOP DETAIL -->

        <div class="shop-detail">

          <div class="row"> 

            

            <!-- Popular Images Slider -->

            <div class="col-md-7"> 

              

              <!-- Images Slider -->

              <div class="images-slider">

                <ul class="slides">

                  <li data-thumb="sysadmin/<?php echo $row_pros['pimg']; ?>"> <img class="img-responsive" src="sysadmin/<?php echo $row_pros['pimg']; ?>"  alt=""> </li>

                </ul>

              </div>

            </div>

            

            <!-- COntent -->

            <div class="col-md-5">

              <h4><?php echo $row_pros['pname']; ?></h4>

              <p><?php echo $row_pros['sname']; ?></p>



              <?php

                $ab = explode('$;',$row_pros['pprice']);



              ?>





              <p class="pros_price">

              <?php echo (empty($ab[0])) ? '0' : '<span class="price">₹<span>'.$ab[0].'</span></span>'; ?>

              

              </p>

              <!-- Sale Tags -->

              <div class="on-sale"> <?php echo $row_pros['discount']; ?>% <span>OFF</span> </div>

              

              <!-- Item Detail -->

              <p><?php echo $row_pros['psdesc']; ?></p>

              

              <?php

                $ab_qty = explode('$;',$row_pros['pgms']);

              ?>



              <?php

                    $total_qty = 1;

                    if (isset($_COOKIE['cart_items_cookie'])) {

                    $json_arrays2  = json_decode($_COOKIE['cart_items_cookie'], true);

                    foreach($json_arrays2 as $key => $val) {

                      if ($key == $pro_id) {

                        $dec_info = explode(',', $val);

                        $total_qty = $dec_info[0];

                        break;

                      }

                    } 

                  }

                  ?>

              <input type="hidden" class="hiddennetwt" value="<?php echo $row_pros['pgms']; ?>">

              <input type="hidden" class="hiddenpprice" value="<?php echo $row_pros['pprice']; ?>">

              <!-- Short By -->

              <div class="some-info">

                <ul class="row margin-top-30">

                  



                  <li class="col-xs-3 qty_inc">

                    <div class="quinty"> 

                                        <div class="input-group">

                                    <span class="input-group-btn">

                                        <button type="button" class="quantity-left-minus btn btn-number"  data-type="minus" data-field="">

                                          <span class="glyphicon glyphicon-minus"></span>

                                        </button>

                                    </span>

                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="<?php echo $total_qty; ?>" min="1" max="100">

                                    <span class="input-group-btn">

                                        <button type="button" class="quantity-right-plus btn btn-number" data-type="plus" data-field="">

                                            <span class="glyphicon glyphicon-plus"></span>

                                        </button>

                                    </span>

                                </div>

                    </div>

                  </li>

                  <li class="col-xs-3">

                    <div class="quinty"> 

                      <!-- QTY -->

                      <select class="selectpicker select_pro-qty" data-id="<?php echo $pro_id; ?>">

                        <?php

                          foreach ($ab_qty as $key) { ?>

                            <option value="<?php echo $key; ?>"><?php echo $key; ?></option>

                        <?php  }

                        ?>

                      </select>

                    </div>

                  </li>

                  <!-- ADD TO CART -->

                  <?php

                    $exst = 0;

                    if (isset($_COOKIE['cart_items_cookie'])) {

                    $json_arrays1  = json_decode($_COOKIE['cart_items_cookie'], true);

                    foreach($json_arrays1 as $key => $val) {

                      if ($key == $pro_id) {

                        $exst = 1;

                        break;

                      }

                    } 

                  }

                  ?>

                  <li class="col-xs-12"> 

                    <?php if ($exst == 0) { ?>

                        <a href="javascript:void(0);" class="btn btn_add_cart" onclick="addToCart('<?php echo base64_encode($pro_id); ?>');">ADD TO CART</a>

                  <?php  }if ($exst == 1) { ?>

                      <a href="javascript:void(0);" class="btn btn_update_cart008" onclick="UpdatecartPros('<?php echo $pro_id; ?>','<?php echo $rand_n; ?>');">ADD TO CART</a> 

                  <?php  } ?>                    

                    

                  </li>

                  

                </ul>

                

                <!-- INFOMATION 

                <div class="inner-info">

                  <h6>DELIVERY INFORMATION</h6>

                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum finibus ligula a scelerisque gravida. Nullam laoreet tortor ac maximus alique met, consectetur adipiscing elit. </p>

                  <h6>SHIPPING & RETURNS</h6>-->

                  <!--

                  <h6>SHARE THIS PRODUCT</h6>

                  

                  <ul class="social_icons">

                    <li><a href="#."><i class="icon-social-facebook"></i></a></li>

                    <li><a href="#."><i class="icon-social-twitter"></i></a></li>

                    <li><a href="#."><i class="icon-social-tumblr"></i></a></li>

                    <li><a href="#."><i class="icon-social-youtube"></i></a></li>

                    <li><a href="#."><i class="icon-social-dribbble"></i></a></li>

                  </ul>

                </div>-->

              </div>

            </div>

          </div>

        </div>

        

        <!--======= PRODUCT DESCRIPTION =========-->

        <div class="item-decribe"> 

          <!-- Nav tabs -->

          <ul class="nav nav-tabs animate fadeInUp" data-wow-delay="0.4s" role="tablist">

            <li role="presentation" class="active"><a href="#descr" role="tab" data-toggle="tab">DESCRIPTION</a></li>

            <!--<li role="presentation"><a href="#review" role="tab" data-toggle="tab">REVIEW (03)</a></li>-->

          </ul>

          

          <!-- Tab panes -->

          <div class="tab-content animate fadeInUp" data-wow-delay="0.4s"> 

            <!-- DESCRIPTION -->

            <div role="tabpanel" class="tab-pane fade in active" id="descr">

              <?php echo $row_pros['psdesc']; ?>

            </div>

            

            <!-- REVIEW -->

            <div role="tabpanel" class="tab-pane fade" id="review">

              <h6>3 REVIEWS FOR SHIP YOUR IDEA</h6>

              

              <!-- REVIEW PEOPLE 1 -->

              <div class="media">

                <div class="media-left"> 

                  <!--  Image -->

                  <div class="avatar"> <a href="#"> <img class="media-object" src="images/avatar-1.jpg" alt=""> </a> </div>

                </div>

                <!--  Details -->

                <div class="media-body">

                  <p class="font-playfair">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut

                    labore et dolore magna aliqua.”</p>

                  <h6>TYRION LANNISTER <span class="pull-right">MAY 10, 2016</span> </h6>

                </div>

              </div>

              

              <!-- REVIEW PEOPLE 1 -->

              

              <div class="media">

                <div class="media-left"> 

                  <!--  Image -->

                  <div class="avatar"> <a href="#"> <img class="media-object" src="images/avatar-2.jpg" alt=""> </a> </div>

                </div>

                <!--  Details -->

                <div class="media-body">

                  <p class="font-playfair">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut

                    labore et dolore magna aliqua.”</p>

                  <h6>TYRION LANNISTER <span class="pull-right">MAY 10, 2016</span> </h6>

                </div>

              </div>

              

              <!-- ADD REVIEW -->

              <h6 class="margin-t-40">ADD REVIEW</h6>

              <form>

                <ul class="row">

                  <li class="col-sm-6">

                    <label> *NAME

                      <input type="text" value="" placeholder="">

                    </label>

                  </li>

                  <li class="col-sm-6">

                    <label> *EMAIL

                      <input type="email" value="" placeholder="">

                    </label>

                  </li>

                  <li class="col-sm-12">

                    <label> *YOUR REVIEW

                      <textarea></textarea>

                    </label>

                  </li>

                  <li class="col-sm-6"> 

                    <!-- Rating Stars -->

                    <div class="stars"> <span>YOUR RATING</span> <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>

                  </li>

                  <li class="col-sm-6">

                    <button type="submit" class="btn btn-dark btn-small pull-right no-margin">POST REVIEW</button>

                  </li>

                </ul>

              </form>

            </div>

          </div>

        </div>

      </div>

    </section>



  <?php } ?>

    



    <section class="shop-page padding-top-100 padding-bottom-100">

      <div class="container">

        <div class="heading text-center">

          <h4>You might be interested in</h4></div>

        

        <!-- Popular Item Slide -->

        <div class="papular-block row"> 

          <div class="swiper-container swipe_pros">

            <div class="swiper-wrapper">

              <?php 

              $sel_pros1 = $con->query("select * from product where cid='".$pro_cid."'");

              while($row_pros1 = $sel_pros1->fetch_assoc())

              {

                $ab1 = explode('$;',$row_pros1['pprice']);

                $net1 = explode('$;',$row_pros1['pgms']);





                $rand_n1 = rand(10,100);

              ?>

              <div class="swiper-slide swipe_pros"><div class="col-md-12">

            <div class="item"> 

              <?php if($row_pros1['discount'] != 0){ ?>

                    <div class="on-sale">

                      <?php echo $row_pros1['discount']; ?>%

                      <span>OFF</span>

                    </div>

                 <?php } ?>

              <!-- Item img -->

              <div class="item-img"> <img class="img-1" src="sysadmin/<?php echo $row_pros1['pimg']; ?>" alt="" > <img class="img-2" src="sysadmin/<?php echo $row_pros1['pimg']; ?>" alt="" > 

                <!-- Overlay -->

                <div class="overlay">

                  <div class="position-center-center">

                    <div class="inn"><a href="product_info.php?productId=<?php echo base64_encode($row_pros1['id']); ?>&pName=<?php echo base64_encode($row_pros1['pname']); ?>"><i class="icon-magnifier"></i></a>  </div>

                  </div>

                </div>

              </div>

              <!-- Item Name -->

              <div class="item-name"> <a href="product_info.php?productId=<?php echo base64_encode($row_pros1['id']); ?>&pName=<?php echo base64_encode($row_pros1['pname']); ?>"><?php echo $row_pros1['pname']; ?></a>

              </div>

              <!-- Price --> 

              <div class="product_price pr-<?php echo $rand_n1; ?>">

                <?php echo (empty($ab1[0])) ? '0' : '<p class="price pr_pro_'.$row_pros1['id'].'">₹'.$ab1[0].'</p>'; ?>

                <input type="hidden" class="hiddennet-<?php echo $row_pros1['id']; ?>" value="<?php echo $row_pros1['pgms']; ?>">

                <input type="hidden" class="hiddenprice-<?php echo $row_pros1['id']; ?>" value="<?php echo $row_pros1['pprice']; ?>">

                 <div class="add_more_cart_btn_bl_<?php echo $row_pros1['id']; ?>" style="display: inline;">

                  

                  <?php

                    $ab1c = '';$key_f1 = '';

                    if (isset($_COOKIE['cart_items_cookie'])) {

                      $json_array_s  = json_decode($_COOKIE['cart_items_cookie'], true);

                      foreach($json_array_s as $key => $val) { 

                          if ($key == $row_pros1['id']) {

                            $ab1c = explode(',',$val);

                            $key_f1 = $key;

                          }

                      }

                        if ($key_f1 == $row_pros1['id']) { ?>

                          <div class="add_more_input_inc">

                          <input type="text" value="<?php echo $ab1c[0]; ?>" min="0" max="100" class="cls_add_more_item_cart_<?php echo $row_pros1['id']; ?>"><div id="inc-button" class="spinner-button" onclick="addToCartProsInc(<?php echo $row_pros1['id']; ?>,<?php echo $rand_n1; ?>);">+</div><div id="dec-button" class="spinner-button" onclick="addToCartProsDec(<?php echo $row_pros1['id']; ?>,<?php echo $rand_n1; ?>);">-</div></div>

                      <?php  }else{ ?>

                        <button type="button" class="btn_pro_add" onclick="addToCartPros(<?php echo $row_pros1['id']; ?>,<?php echo $rand_n1; ?>);">Add</button>

                      <?php  }

                  ?>

                        

                    <?php

                    }else{ ?>

                      <button type="button" class="btn_pro_add" onclick="addToCartPros(<?php echo $row_pros1['id']; ?>,<?php echo $rand_n1; ?>);">Add</button>

                  <?php  }

                  ?>

                </div>

                 <select class="all_pro_sel selpro-<?php echo $row_pros1['id']; ?>" data-id="pro-<?php echo $row_pros1['id']; ?>" onchange="change_pros_net(<?php echo $row_pros1['id']; ?>)";>

                  <?php foreach ($net1 as $key) { ?>

                    <option value="<?php echo $key; ?>"><?php echo $key; ?></option>

                  <?php } ?>

                   

                 </select>

                

              </div>

            </div>

          </div>

        </div>

            <?php } ?>

            </div>

          </div>

          

        </div>

      </div>

    </section>



    <br><br>

  </div>

  

  <!--======= FOOTER =========-->

  <?php require 'include/footer.php'; ?>

  <!--======= RIGHTS =========--> 

  

</div>

<?php require 'include/js.php'; ?>

</body>

</html>