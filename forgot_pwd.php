
<?php require 'include/header.php'; ?>
<body>

<!-- Wrap -->
<div id="wrap"> 
  
  <!-- header -->
  <?php require 'include/header_links.php'; ?>

  <?php
      if(isset($_SESSION['umobile'])){ ?>
        <script type="text/javascript">window.location.href = 'index.php';</script>
  <?php    }

  ?>
  <!--======= HOME MAIN SLIDER =========-->
  <section class="chart-page padding-100-pge padding-bottom-100">
      <div class="container"> 
        
        <!-- Payments Steps -->
        <div class="shopping-cart"> 
          
          <!-- SHOPPING INFORMATION -->
          <div class="cart-ship-info">
            <div class="row"> 
              
              <!-- ESTIMATE SHIPPING & TAX -->
              <div class="col-sm-7">
                <h6>FORGOT PASSWORD</h6>
                <form class="forgot-pwd-user" method="post">
                  <ul class="row">
                    
                    <!-- Name -->
                    <li class="col-md-12">
                      <label> MOBILE
                        <input type="text" name="user-mobile" placeholder="Mobile Number" required>
                      </label>
                    </li>
                    
                    <!-- LOGIN -->
                    <li class="col-md-4">
                      <button type="submit" class="btn">Submit</button>
                    </li>
                    
                    <!-- CREATE AN ACCOUNT -->
                    <li class="col-md-4">
                    </li>
                    
                    <!-- FORGET PASS -->
                    <li class="col-md-4">
                      <div class="checkbox margin-0 margin-top-20 text-right">
                        <a href="login.php" class="link_arrow">Go to login</a>
                      </div>
                    </li>
                  </ul>
                </form>
                
              </div>
              
            </div>
          </div>
          <br>
          <p>New to <b>pinktokri.com</b> ? <a href="register.php" class="link_arrow">Register here</a>
        </div>
      </div>
    </section>
  </div>
  
  <!--======= FOOTER =========-->
  <?php require 'include/footer.php'; ?>
  <!--======= RIGHTS =========--> 
  
</div>
<?php require 'include/js.php'; ?>

</body>
</html>