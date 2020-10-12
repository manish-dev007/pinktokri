
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
        <h5 class="txt_head">My Address</h5>
        <button type="buton" class="btn btn_add_new_item" data-toggle="modal" data-target="#add_new-addr_modal">Add New Address</button>
        <br><br>
        <!-- Payments Steps -->
        <div class="shopping-cart adr_block">
          
          

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
  getAddresHistory(<?php echo $uid; ?>);
  
</script>
</body>
</html>