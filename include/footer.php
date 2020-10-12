

  <footer>

    <div class="container"> 

      

      <!-- ABOUT Location -->

      <div class="col-md-3">

        <div class="about-footer"> <img class="margin-bottom-30" src="sysadmin/<?php echo $fset['logo']; ?>" alt="" style="width: 100%;">

          

        </div>

      </div>

      

      <!-- HELPFUL LINKS -->

      <div class="col-md-3">

        <h6>HELPFUL LINKS</h6>

        <ul class="link">

          <li><a href="about.php"> About Us</a></li>

          <li><a href="terms.php"> Terms & Conditions</a></li>

          <li><a href="contact.php"> Contact Us</a></li>

          <li><a href="#"> Support</a></li>

          <li><a href="policy.php"> Privacy Policy</a></li>

          <li><a href="profile.php"> My Account</a></li>

        </ul>

      </div>

      

      <!-- SHOP -->

      

      

      <!-- MY ACCOUNT -->

      <div class="col-md-3">

        <h6>Top Categories</h6>

        <ul class="link categ-footer-link">

          <?php 

            $footer_categ = $con->query("select * from category order by id ASC LIMIT 6");

            while($row_cat = $footer_categ->fetch_assoc())

            {              

          ?>

          <li><a href="products.php?categ_id=<?php echo base64_encode($row_cat['id']); ?>&categ_name=<?php echo base64_encode($row_cat['catname']); ?>"> <?php echo $row_cat['catname']; ?></a></li>

        <?php } ?>

        </ul>

      </div>

      <div class="col-md-3">

        <h6>Contact Us</h6>
        <div class="footer_adr">

        </div>
        

      </div>

      

      <!-- Rights -->

    

      <div class="rights"> 

        <p>© <script>document.write(new Date().getFullYear())</script> <a href="http://www.pinktokri.com"><b>pinktokri.com</b></a> All right reserved. | Developed By <a href="https://www.doorsstudio.com/" target="_blank"><b>Doors Studio</b></a></p>

        <div class="scroll"> <a href="#wrap" class="go-up"><i class="lnr lnr-arrow-up"></i></a> </div>

      </div>

    </div>

  </footer>

  