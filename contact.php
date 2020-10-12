

<?php require 'include/header.php'; ?>

<body>





<!-- Wrap -->

<div id="wrap"> 

  

  <!-- header -->

  <?php require 'include/header_links.php'; ?>

<section class="sub-bnr">
    <div class="position-center-center">
      <div class="container">
        <h4>contact us</h4>
        <ol class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li class="active">contact</li>
        </ol>
      </div>
    </div>
  </section>

  <!--======= HOME MAIN SLIDER =========-->

  <section class="contact padding-top-100 padding-bottom-100">
      <div class="container">
        <div class="contact-form">
          <h5>PLEASE fill-up Few details</h5>
          <div class="row">
            <div class="col-md-8"> 
              
              <!--======= Success Msg =========-->
              <div id="contact_message" class="success-msg"> <i class="fa fa-paper-plane-o"></i>Thank You. Your Message has been Submitted</div>
              
              <!--======= FORM  =========-->
              <form role="form" id="contact_form" class="contact-form" method="post" onSubmit="return false">
                <ul class="row">
                  <li class="col-sm-6">
                    <label>full name *
                      <input type="text" class="form-control" name="name" id="name" placeholder="">
                    </label>
                  </li>
                  <li class="col-sm-6">
                    <label>Email *
                      <input type="text" class="form-control" name="email" id="email" placeholder="">
                    </label>
                  </li>
                  <li class="col-sm-6">
                    <label>Phone *
                      <input type="text" class="form-control" name="company" id="company" placeholder="">
                    </label>
                  </li>
                  <li class="col-sm-6">
                    <label>SUBJECT
                      <input type="text" class="form-control" name="website" id="website" placeholder="">
                    </label>
                  </li>
                  <li class="col-sm-12">
                    <label>Message
                      <textarea class="form-control" name="message" id="message" rows="5" placeholder=""></textarea>
                    </label>
                  </li>
                  <li class="col-sm-12">
                    <button type="submit" value="submit" class="btn" id="btn_submit" onClick="proceed();">SEND MAIL</button>
                  </li>
                </ul>
              </form>
            </div>
            
            <!--======= ADDRESS INFO  =========-->
            <div class="col-md-4">
              <div class="contact-info">
                <h6>OUR ADDRESS</h6>
                <div class="footer_adr">

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!--======= MAP =========-->
    <div id="map"><iframe class="iframe_map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3500.572983686827!2d77.15727331464522!3d28.672501882402038!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d025089ee0d9b%3A0x26298f7b1a8dbf96!2sOnkar%20Nagar%20Underpass%2C%20Tulsi%20Nagar%2C%20Inderlok%2C%20New%20Delhi%2C%20Delhi%20110035!5e0!3m2!1sen!2sin!4v1602143275821!5m2!1sen!2sin" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>

  </div>

  

  <!--======= FOOTER =========-->

  <?php require 'include/footer.php'; ?>

  <!--======= RIGHTS =========--> 

  

</div>

<?php require 'include/js.php'; ?>



</body>

</html>