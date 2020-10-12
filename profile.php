
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
 <section class="padding-top-100 padding-bottom-100 pages-in chart-page">
      <div class="container"> 

        <div class="shopping-cart profile_page">
          <div class="cart-ship-info">
            <div class="row"> 
              
              <!-- ESTIMATE SHIPPING & TAX -->
              <div class="col-sm-8">
                <h6>My Profile</h6>
                <form class="update_user_acc" method="post">
                  <ul class="row">
                    
                    <!-- Name -->
                    <li class="col-md-12">
                      <label> *USER NAME
                        <input type="text" name="user-name" placeholder="User Name" required>
                      </label>
                    </li>
                    
                    <!-- EMAIL ADDRESS -->
                    <li class="col-md-12">
                      <label> *EMAIL ADDRESS
                        <input type="email" name="email-addr" placeholder="Email Address" readonly required>
                      </label>
                    </li>
                    <!-- PHONE -->
                    <li class="col-md-12">
                      <label> *PHONE
                        <input type="number" name="phone" placeholder="Phone" readonly required>
                      </label>
                    </li>
                    <input type="hidden" name="Uid">
                    
                    <li class="col-md-6">
                      <button type="submit" class="btn">UPDATE</button>
                    </li>
                  </ul>
                </form>
              </div>
            </div>
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
<script type="text/javascript">
  getProfileInfoId(<?php echo $uid; ?>);
  
</script>
</body>
</html>