<?php

extract($_GET);  



if ($categ_id == '' or $categ_name == '') {

  header("Location: index.php");

}

$categ_id = base64_decode($categ_id);

$categ_name = base64_decode($categ_name);

?>

<?php require 'include/header.php'; ?>

<body>





<!-- Wrap -->

<div id="wrap"> 

  

  <!-- header -->

  <?php require 'include/header_links.php'; ?>

<section class="shop-page padding-top-50 padding-bottom-100">

      <div class="container">

        <div class="row"> 

          

          <!-- Shop SideBar -->

          <div class="col-sm-3">

            <div class="shop-sidebar"> 

              

              <!-- Category -->

              <h5 class="shop-tittle margin-bottom-30">category</h5>

              <ul class="shop-cate">

                <?php 

                  $categ_pros = $con->query("select * from category order by catname ASC");

                  while($row_categ_pros = $categ_pros->fetch_assoc())

                  {



                    $count = $con->query("SELECT * FROM product WHERE status='1' and cid = '".$row_categ_pros['id']."'")->num_rows;

                ?>

                <li><a href="products.php?categ_id=<?php echo base64_encode($row_categ_pros['id']); ?>&categ_name=<?php echo base64_encode($row_categ_pros['catname']); ?>"> <?php echo $row_categ_pros['catname']; ?> <span><?php echo $count; ?></span></a></li>

              <?php } ?>

              </ul>

              

              <!-- FILTER BY PRICE

              <h5 class="shop-tittle margin-top-60 margin-bottom-30">FILTER BY PRICE</h5> -->

              

              

            </div>

          </div>

          

          <!-- Item Content -->

          <div class="col-sm-9">

            <div class="item-display">

              <div class="row">

                <div class="col-xs-6"> <span class="product-num categ_head"><?php echo $categ_name; ?></span> </div>

                

                <!-- Products Select -->

                <div class="col-xs-6">

                  <div class="pull-right"> 

                    

                    <!-- sort By -->

                    <select class="selectpicker select_filter_price">

                      <option value="0">Sort By</option>

                      <option value="h2l">Price - High to Low</option>

                      <option value="l2h">Price - Low to High</option>

                    </select>

                     </div>

                </div>

              </div>

            </div>

            <?php
              $showRecordPerPage = 30;
              if(isset($_GET['page']) && !empty($_GET['page'])){
              $currentPage = $_GET['page'];
              }else{
              $currentPage = 1;
              }
              $startFrom = ($currentPage * $showRecordPerPage) - $showRecordPerPage;
              $totalProduct = $con->query("SELECT * FROM product WHERE status=1 and cid = '".$categ_id."' order by id desc")->num_rows;
              $lastPage = ceil($totalProduct/$showRecordPerPage);
              $firstPage = 1;
              $nextPage = $currentPage + 1;
              $previousPage = $currentPage - 1;                 
          ?>

            <!-- Popular Item Slide -->

            <div class="papular-block row all_pros_block"> 

              <?php 
              $sel_pros = $con->query("select * from product where status=1 and cid = '".$categ_id."' order by id desc LIMIT $startFrom,$showRecordPerPage");

              while($row_pros = $sel_pros->fetch_assoc())

              {

                $ab = explode('$;',$row_pros['pprice']);

                $net = explode('$;',$row_pros['pgms']);

                

                $rand_n = rand(10,100);

              ?>

              <!-- Item -->

              <div class="col-md-4 swipe_pros" style="height: 300px;">

                <div class="item" data-price="<?php echo $ab[0]; ?>"> 

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

                    <div class="inn"><a href="product_info.php?productId=<?php echo base64_encode($row_pros['id']); ?>&pName=<?php echo base64_encode($row_pros['pname']); ?>"><i class="icon-magnifier"></i></a> </div>

                  </div>

                </div>

              </div>

              <!-- Item Name -->

              <div class="item-name"> <a href="product_info.php?productId=<?php echo base64_encode($row_pros['id']); ?>&pName=<?php echo base64_encode($row_pros['pname']); ?>"><?php echo $row_pros['pname']; ?></a>

              </div>

              <!-- Price --> 

              <div class="product_price pr-<?php echo $rand_n; ?>">

                <?php echo (empty($ab[0])) ? '0' : '<span class="price pr_pro_'.$row_pros['id'].'">₹'.$ab[0].'</span>'; ?>

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

              

            <?php } ?>

            </div>

            
            <?php
            $base_url = $_SERVER['REQUEST_URI'];
            
            if($totalProduct > $showRecordPerPage){ ?>
            <ul class="pagination in-center">
            <?php if($currentPage != $firstPage) { ?>
              <li><a href="<?php echo $base_url; ?>&page=<?php echo $firstPage ?>"><i class="fa fa-angle-left"></i></a></li>
            <?php } ?>
            <?php if($currentPage >= 2) { ?>
              <li><a href="<?php echo $base_url; ?>&page=<?php echo $previousPage ?>"><?php echo $previousPage ?></a></li>
            <?php } ?>
            <li class="active"><a href="?page=<?php echo $currentPage ?>"><?php echo $currentPage ?></a></li>
            <?php if($currentPage != $lastPage) { ?>
              <li><a href="<?php echo $base_url; ?>&page=<?php echo $nextPage ?>"><?php echo $nextPage ?></a></li>
              <li><a href="<?php echo $base_url; ?>&page=<?php echo $lastPage ?>"><i class="fa fa-angle-right"></i></a></li>            
            <?php } ?>
            </ul>
            <?php } ?>

          </div>

        </div>

      </div>

    </section>

    <br><br><br><br>

  </div>

  <?php require 'include/model.php'; ?>

  

  <!--======= FOOTER =========-->

  <?php require 'include/footer.php'; ?>

  <!--======= RIGHTS =========--> 

  

</div>

<?php require 'include/js.php'; ?>



</body>

</html>