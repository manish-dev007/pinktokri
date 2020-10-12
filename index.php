
<?php require 'include/header.php'; ?>
<body>

<!-- LOADER -->


<!-- Wrap -->
<div id="wrap"> 
  
  <!-- header -->
  <?php require 'include/header_links.php'; ?>
  <!--======= HOME MAIN SLIDER =========-->
  <section class="home-slider"> 
  

<div class="slide_buttons">
</div>
<div class="slider">
  <div class="slide_viewer">
    <div class="slide_group">
      <?php 
            $sel = $con->query("select * from banner");
            $i=0;
            while($row = $sel->fetch_assoc())
            {
            ?>
            <div class="slide">
              <img src="sysadmin/<?php echo $row['bimg']; ?>">
            </div>
        <?php } ?>


    </div>
  </div>
</div>
<div class="directional_nav">
  <div class="previous_btn" title="Previous">
    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="45px" height="45px" viewBox="-11 -11.5 65 66">
      <g>
        <g>
          <path fill="#474544" d="M-10.5,22.118C-10.5,4.132,4.133-10.5,22.118-10.5S54.736,4.132,54.736,22.118
			c0,17.985-14.633,32.618-32.618,32.618S-10.5,40.103-10.5,22.118z M-8.288,22.118c0,16.766,13.639,30.406,30.406,30.406 c16.765,0,30.405-13.641,30.405-30.406c0-16.766-13.641-30.406-30.405-30.406C5.35-8.288-8.288,5.352-8.288,22.118z"/>
          <path fill="#474544" d="M25.43,33.243L14.628,22.429c-0.433-0.432-0.433-1.132,0-1.564L25.43,10.051c0.432-0.432,1.132-0.432,1.563,0	c0.431,0.431,0.431,1.132,0,1.564L16.972,21.647l10.021,10.035c0.432,0.433,0.432,1.134,0,1.564	c-0.215,0.218-0.498,0.323-0.78,0.323C25.929,33.569,25.646,33.464,25.43,33.243z"/>
        </g>
      </g>
    </svg>
  </div>
  <div class="next_btn" title="Next">
    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="45px" height="45px" viewBox="-11 -11.5 65 66">
      <g>
        <g>
          <path fill="#474544" d="M22.118,54.736C4.132,54.736-10.5,40.103-10.5,22.118C-10.5,4.132,4.132-10.5,22.118-10.5	c17.985,0,32.618,14.632,32.618,32.618C54.736,40.103,40.103,54.736,22.118,54.736z M22.118-8.288	c-16.765,0-30.406,13.64-30.406,30.406c0,16.766,13.641,30.406,30.406,30.406c16.768,0,30.406-13.641,30.406-30.406 C52.524,5.352,38.885-8.288,22.118-8.288z"/>
          <path fill="#474544" d="M18.022,33.569c 0.282,0-0.566-0.105-0.781-0.323c-0.432-0.431-0.432-1.132,0-1.564l10.022-10.035 			L17.241,11.615c 0.431-0.432-0.431-1.133,0-1.564c0.432-0.432,1.132-0.432,1.564,0l10.803,10.814c0.433,0.432,0.433,1.132,0,1.564 L18.805,33.243C18.59,33.464,18.306,33.569,18.022,33.569z"/>
        </g>
      </g>
    </svg>
  </div>
</div>

  </section>
  
  <!-- Content -->
  <div id="content"> 
    
    <!-- New Arrival -->
    <section class="padding-top-10 padding-bottom-150 categ_block">
      <div class="container"> 
        
        <!-- Main Heading -->
        <div class="heading text-center">
          <h4>Shop By Category</h4></div>
        
        <!-- Popular Item Slide -->
        <div class="papular-block block-slide categ_block"> 
          
          
          
        </div>
      </div>
    </section>
    
    <!-- Popular Products -->
    <section class="shop-page padding-top-100 padding-bottom-100">
      <div class="container">
        <div class="heading text-center">
          <h4>Top Selling Products</h4></div>
        
        <!-- Popular Item Slide -->
        <div class="papular-block row"> 
          <div class="swiper-container swipe_pros">
            <div class="swiper-wrapper">
              <?php 
              $sel_pros = $con->query("select * from product where status=1 and popular = 1 order by id desc LIMIT 20");
              while($row_pros = $sel_pros->fetch_assoc())
              {
                $ab = explode('$;',$row_pros['pprice']);
                $net = explode('$;',$row_pros['pgms']);

                $rand_n = rand(10,100);
              ?>
              <div class="swiper-slide swipe_pros"><div class="col-md-12">
            <div class="item"> 
              <?php if($row_pros['discount'] != 0){ ?>
                    <div class="on-sale">
                      <?php echo $row_pros['discount']; ?>%
                      <span>OFF</span>
                    </div>
                 <?php } ?>
              <!-- Item img -->
              <div class="item-img"> <img class="img-1" src="sysadmin/<?php echo $row_pros['pimg']; ?>" alt="" > <img class="img-2" src="sysadmin/<?php echo $row_pros['pimg']; ?>" alt="" > 
                <!-- Overlay -->
                <div class="overlay">
                  <div class="position-center-center">
                    <div class="inn"><a href="product_info.php?productId=<?php echo base64_encode($row_pros['id']); ?>&pName=<?php echo base64_encode($row_pros['pname']); ?>"><i class="icon-magnifier"></i></a>  </div>
                  </div>
                </div>
              </div>
              <!-- Item Name -->
              <div class="item-name"> <a href="product_info.php?productId=<?php echo base64_encode($row_pros['id']); ?>&pName=<?php echo base64_encode($row_pros['pname']); ?>"><?php echo $row_pros['pname']; ?></a>
              </div>
              <!-- Price --> 
              <div class="product_price pr-<?php echo $rand_n; ?>">
                <?php echo (empty($ab[0])) ? '0' : '<p class="price pr_pro_'.$row_pros['id'].'">₹'.$ab[0].'</p>'; ?>
                <input type="hidden" class="hiddennet-<?php echo $row_pros['id']; ?>" value="<?php echo $row_pros['pgms']; ?>">
                <input type="hidden" class="hiddenprice-<?php echo $row_pros['id']; ?>" value="<?php echo $row_pros['pprice']; ?>">
                 <div class="add_more_cart_btn_bl_<?php echo $row_pros['id']; ?>" style="display: inline;">
                  
                  <?php
                    $abc = '';$key_f = '';
                    if (isset($_COOKIE['cart_items_cookie'])) {
                      $json_array_s  = json_decode($_COOKIE['cart_items_cookie'], true);
                      foreach($json_array_s as $key => $val) { 
                          if ($key == $row_pros['id']) {
                            $abc = explode(',',$val);
                            $key_f = $key;
                          }
                      }
                        if ($key_f == $row_pros['id']) { ?>
                          <div class="add_more_input_inc">
                          <input type="text" value="<?php echo $abc[0]; ?>" min="0" max="100" class="cls_add_more_item_cart_<?php echo $row_pros['id']; ?>"><div id="inc-button" class="spinner-button" onclick="addToCartProsInc(<?php echo $row_pros['id']; ?>,<?php echo $rand_n; ?>);">+</div><div id="dec-button" class="spinner-button" onclick="addToCartProsDec(<?php echo $row_pros['id']; ?>,<?php echo $rand_n; ?>);">-</div></div>
                          <button type="button" class="btn_pro_add" style="display: none;" onclick="addToCartPros(<?php echo $row_pros['id']; ?>,<?php echo $rand_n; ?>);">Add</button>
                      <?php  }else{ ?>
                        <button type="button" class="btn_pro_add" onclick="addToCartPros(<?php echo $row_pros['id']; ?>,<?php echo $rand_n; ?>);">Add</button>
                      <?php  }
                  ?>
                        
                    <?php
                    }else{ ?>
                      <button type="button" class="btn_pro_add" onclick="addToCartPros(<?php echo $row_pros['id']; ?>,<?php echo $rand_n; ?>);">Add</button>
                  <?php  }
                  ?>
                </div>
                 <select class="all_pro_sel selpro-<?php echo $row_pros['id']; ?>" data-id="pro-<?php echo $row_pros['id']; ?>" onchange="change_pros_net(<?php echo $row_pros['id']; ?>)";>
                  <?php foreach ($net as $key) { ?>
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

    <?php 
      $sel_categ_home = $con->query("select * from home where status=1");
      while($row_categ_home = $sel_categ_home->fetch_assoc())
      {

    ?>
    <section class="shop-page padding-top-100 padding-bottom-100">
      <div class="container">
        <div class="heading">
          <h4 class="item_head_left"><?php echo $row_categ_home['title']; ?></h4>
          <div class="item-name item_more"> <a href="products.php?categ_id=<?php echo base64_encode($row_categ_home['cid']); ?>&categ_name=<?php echo base64_encode($row_categ_home['title']); ?>">more <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
              </div>
        </div>
        
        <!-- Popular Item Slide -->
        <div class="papular-block row"> 
          <div class="swiper-container swipe_pros">
            <div class="swiper-wrapper">
              <?php 
              $sel_pros1 = $con->query("select * from product where status=1 and cid = '".$row_categ_home['cid']."' order by id DESC LIMIT 20");
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
                          <button type="button" class="btn_pro_add" style="display: none;" onclick="addToCartPros(<?php echo $row_pros1['id']; ?>,<?php echo $rand_n1; ?>);">Add</button>
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

    
    
                  <?php } ?>
  </div>
  
  <!--======= FOOTER =========-->
  <?php require 'include/footer.php'; ?>
  <!--======= RIGHTS =========--> 
  
</div>
<?php require 'include/js.php'; ?>

</body>
</html>