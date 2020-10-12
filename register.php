
<?php require 'include/header.php'; ?>
<body>


<!-- Wrap -->
<div id="wrap"> 
  
  <!-- header -->
  <?php require 'include/header_links.php'; ?>
  <!--======= HOME MAIN SLIDER =========-->
  <section class="chart-page  padding-100-pge padding-bottom-100">
      <div class="container"> 
        
        <!-- Payments Steps -->
        <div class="shopping-cart"> 
          
          <!-- SHOPPING INFORMATION -->
          <div class="cart-ship-info">
            <div class="row"> 
              
              <!-- ESTIMATE SHIPPING & TAX -->
              <div class="col-sm-12">
                <h6>REGISTER</h6>
                <form class="register_user" method="post">
                  <ul class="row">
                    
                    <!-- Name -->
                    <li class="col-md-6">
                      <label> *FIRST NAME
                        <input type="text" name="first-name" placeholder="First Name" required>
                      </label>
                    </li>
                    <!-- LAST NAME -->
                    <li class="col-md-6">
                      <label> *LAST NAME
                        <input type="text" name="last-name" placeholder="Last Name" required>
                      </label>
                    </li>
                    
                    <!-- EMAIL ADDRESS -->
                    <li class="col-md-4">
                      <label> *EMAIL ADDRESS
                        <input type="text" name="email-addr" placeholder="Email Address" required>
                      </label>
                    </li>
                    <!-- PHONE -->
                    <li class="col-md-4">
                      <label> *PHONE
                        <input type="text" name="phone" placeholder="Phone" required>
                      </label>
                    </li>
                    <li class="col-md-4">
                      <label> *AREA
                        <select class="select_area_reg">

                        </select>
                      </label>
                    </li>
                    
                    <!-- LAST NAME -->
                    <li class="col-md-6">
                      <label> *PASSWORD
                        <input type="password" name="password" placeholder="Password" required>
                      </label>
                    </li>
                    
                    <!-- LAST NAME -->
                    <li class="col-md-6">
                      <label> *CONFIRM PASSWORD
                        <input type="password" name="confirm-pwd" placeholder="Confirm Password" required>
                      </label>
                    </li>
                    <!-- PHONE -->
                    <li class="col-md-6">
                      <button type="submit" class="btn">REGISTER NOW</button>
                    </li>
                  </ul>
                </form>
              </div>
            </div>
          </div>
          <br>
          <p>Already Registered ? <a href="login.php" class="link_arrow">Login here</a>
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
  getSelectArea();
</script>
</body>
</html>