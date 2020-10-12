var result = '';

var proName = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

var a = btoa(proName);

var charactersLength = proName.length;

for ( var i = 0; i < charactersLength; i++ ) {

    result += proName.charAt(Math.floor(Math.random() * charactersLength))+a;

}

 $(document).ready(function () {

  var swiper = new Swiper('.swiper-container', {

    navigation: {

      nextEl: '.swiper-button-next',

      prevEl: '.swiper-button-prev',

    },

  });

  

     $(window).on("load", function () {



      



      $.ajax({

        type: 'POST',

        url: 'sysadmin/api/cat.php',

        dataType: 'json',

        success: function(response){

           var resp = response.data;

           var prnt = '';

           $.each(resp, function(i, item) {

              prnt += '<div class="item">'+

            '<a href="products.php?categ_id='+window.btoa(item.id)+'&categ_name='+window.btoa(item.catname)+'"><div class="item-img"> <img class="img-1" src="sysadmin/'+item.catimg+'" alt="'+item.catname+'" >'+

            '</div></a>'+

            '<div class="item-name"> <a href="products.php?categ_id='+window.btoa(item.id)+'&categ_name='+window.btoa(item.catname)+'">'+item.catname+'</a>'+

            '</div></div>';

            });

          $('.categ_block .block-slide').html(prnt);

        }

      });



      $.ajax({

        type: 'POST',

        url: 'sysadmin/api/cat.php',

        dataType: 'json',

        success: function(response){
           var resp = response.data;

           var prnt = '';

           $.each(resp, function(i, item) {

              prnt += '<li> <a href="products.php?categ_id='+window.btoa(item.id)+'&categ_name='+window.btoa(item.catname)+'">'+item.catname+' </a> </li>';

            });

          $('.top_header_categ ul').html(prnt);

        }

      });



    });

});



$(".newsletter-form").submit(function(e) {

    e.preventDefault(); 



    var email = $('input[name=email_news]').val();

    var url = 'sysadmin/api/newsletter.php';



      var userdata = {

            email:email,

        }

      

      $.ajax({

             type: "POST", 

             url: url,

             data: JSON.stringify(userdata),

             dataType: 'json',

             contentType: 'application/json',

             success: function(response)

             {

                  alert(response.ResponseMsg);

                  window.location.href = ''; 

             }



           });



});





$("#registration-form #uphone").on("keypress keyup blur", function (event) {

  $(this).val($(this).val().replace(/[^\d].+/, ""));

  if ((event.which < 48 || event.which > 57)) {

    event.preventDefault();

  }

  if ($("#registration-form #uphone").val().length > 9 ) {

    event.preventDefault();

  }

});





$('.login-user input[name=user-mobile]').on("keypress keyup blur", function (event) {

  $(this).val($(this).val().replace(/[^\d].+/, ""));

  if ((event.which < 48 || event.which > 57)) {

    event.preventDefault();

  }

  if ($('.login-user input[name=user-mobile]').val().length > 9 ) {

    event.preventDefault();

  }

});



$(".register_user input[name=phone]").on("keypress keyup blur", function (event) {

  $(this).val($(this).val().replace(/[^\d].+/, ""));

  if ((event.which < 48 || event.which > 57)) {

    event.preventDefault();

  }

  if ($(".register_user input[name=phone]").val().length > 9 ) {

    event.preventDefault();

  }

});



$(".forgot-pwd-user input[name=user-mobile]").on("keypress keyup blur", function (event) {

  $(this).val($(this).val().replace(/[^\d].+/, ""));

  if ((event.which < 48 || event.which > 57)) {

    event.preventDefault();

  }

  if ($(".forgot-pwd-user input[name=user-mobile]").val().length > 9 ) {

    event.preventDefault();

  }

});



$(".forgot-pwd-user").submit(function(e) {

    e.preventDefault(); 



    var email = $('input[name=user-mobile]').val();

    var url = 'sysadmin/api/forgot.php';



      var userdata = {

            email:email,

        }

      

      $.ajax({

             type: "POST", 

             url: url,

             data: JSON.stringify(userdata),

             dataType: 'json',

             contentType: 'application/json',

             success: function(response)

             {

                  console.log(response.ResponseMsg);

             }



           });



});





  $(".register_user").submit(function(e) {

    e.preventDefault(); 



    var fname = $('input[name=first-name]').val();

    var lname = $('input[name=last-name]').val();

    var email = $('input[name=email-addr]').val();

    var phone = $('input[name=phone]').val();

    var pwd = $('input[name=password]').val();

    var area = $('.select_area_reg').val();

    var confirm_pwd = $('input[name=confirm-pwd]').val();

    if (confirm_pwd == '') {

      alert('Please Enter password Again..!');

      $('input[name=confirm-pwd]').focus();

    }if (pwd != confirm_pwd) {

      alert('Password and Confirm password Should Match');

      $('input[name=confirm-pwd]').focus();

    }else{

      var uname = fname+" "+lname;

      var url = 'sysadmin/api/register.php';



      var userdata = {

            name: uname,

            email:email,

            mobile:phone,

            ccode:'+91',

            area:area,

            password:pwd,

        }

      

      $.ajax({

             type: "POST", 

             url: url,

             data: JSON.stringify(userdata),

             dataType: 'json',

             contentType: 'application/json',

             success: function(response)

             {

                if (response.ResponseCode == '200') {

                  alert(response.ResponseMsg);

                  window.location.href = 'login.php';

                }

                if (response.ResponseCode == '401') {

                  alert(duce.ResponseMsg);

                }

                var subject = 'Pinktokri Acoount Registration';

                var message = 'Dear '+uname+', You have Registered Successfully.';

                $.ajax({

                  type: "POST", 

                  url: 'include/action.php?id=send-email',

                  data: {'uname':uname,'uemail':email,'subject':subject,'message':message},

                  success: function(response){

                    console.log(response);

                  }

            

                }); 

             }

           });

    }

    

});



$(".login-user").submit(function(e) {

    e.preventDefault(); 



    var mobile = $('input[name=user-mobile]').val();

    var pwd = $('input[name=password]').val();



      var url = 'sysadmin/api/login.php';

      var userdata = {

            mobile:mobile,

            password:pwd,

            imei:'imei',

        }

      $.ajax({

             type: "POST", 

             url: url,

             data: JSON.stringify(userdata),

             contentType: 'application/json',

             success: function(response)

             {

                var duce = jQuery.parseJSON(response);

                if (duce.ResponseCode == '200') {

                  var name = duce.user.name;var email = duce.user.email;var uid = duce.user.id;

                  makeLogin(mobile,email,name,uid);

                }

                if (duce.ResponseCode == '401') {

                  alert(duce.ResponseMsg);

                }

             }

           });

    

});





function makeLogin(mobile,email,name,uid){



  $.ajax({

             type: "POST", 

             url: 'include/action.php?id=login-user',

             data: {"mobile":mobile,"email":email,"name":name,"uid":uid},

             success: function(response)

             {

                if (response == 'y') {

                  window.location.href = ''; 

                }

             }

           });

}





function getOrderHistory(){

    var uid = $('.hiddenuId').val();



    var userdata = {

            uid: uid,

        }



  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/history.php',

        data: JSON.stringify(userdata),

        dataType: 'json',

        contentType: 'application/json',

        success: function(response){

          var prnt = prnt_m = '';

          if (response.ResponseCode == '200') {

             var resp = response.Data;

             $.each(resp, function(i, item) {

              var o_status = '';

              if (item.status == 'completed') {

                o_status = '<span class="badge badge-success">'+item.status+'</span>';

              }else if (item.status == 'pending') {

                o_status = '<span class="badge badge-warning">'+item.status+'</span>';

              }else if (item.status == 'cancelled') {

                o_status = '<span class="badge badge-danger">'+item.status+'</span>';

              }



              var rider_info = '';

              var d_status = '';

              if (item.rider_status == 'Delivered') {

                d_status = '<span class="badge badge-success">'+item.rider_status+'</span>';

                rider_info = '<li class="col-sm-3 rider_info"><h6><span class="lbl">Phone : </span>'+item.rider_mobile+'</h6><p><span class="lbl">Name : </span>'+item.rider_name+'</p><p>'+d_status+'</p></li>';

              }else if (item.rider_status == 'Assigned') {

                d_status = '<span class="badge badge-warning">'+item.rider_status+'</span>';

                rider_info = '<li class="col-sm-3 rider_info"><h6><span class="lbl">Phone : </span>'+item.rider_mobile+'</h6><p><span class="lbl">Name : </span>'+item.rider_name+'</p><p>'+d_status+'</p></li>';

              }else{

                d_status = '<span class="badge badge-danger">Not Assigned</span>';

                rider_info = '<li class="col-sm-3 rider_info"><p>'+d_status+'</p></li>';

              }





              prnt += '<ul class="row"><li class="col-sm-3 text-left"><h6>'+item.oid+'</h6></li><li class="col-sm-2 text-left"><h5 class="order_date">'+item.order_date+'</h5></li>'+rider_info+'<li class="col-sm-2"><h6>₹ '+item.total+'</h6></li><li class="col-sm-2"><h6>'+o_status+'</h6><span class="info_more" onclick=getOrderInfo("'+item.oid+'");>Info</span></li><li class="col-sm-1"></li></ul>';





              prnt_m += '<ul> <li><p class="mob_oid">Order ID: <b>'+item.oid+'</b></p> <p class="mob_status">'+o_status+'</p><p class="mob_price"><b>₹ '+item.total+'</b></p><p class="mob_more"><span onclick=getOrderInfo("'+item.oid+'");>Info</span></p></li> </ul>';

              });

          }

          if (response.ResponseCode == '401') {

             prnt = '<p class="resp_text_not">'+response.ResponseMsg+'</p>';

          }

           

          $('.order_history_block').html(prnt);



          $('.o_history_mob').html(prnt_m);

        }

      });

}



$(".add_new_adrs_form").submit(function(e) {

    e.preventDefault(); 



    var uid = $('.hiddenuId').val();

    var umob = $('.hiddenuMob').val();

    var fname = $('input[name=first-name]').val();

    var lname = $('input[name=last-name]').val();

    var state = $('input[name=state]').val();

    var city = $('input[name=city]').val();

    var landmark = $('input[name=landmark]').val();

    var adr_type = $('.select_adr_type').val();

    var address = $('input[name=address]').val();

    var pincode = $('input[name=pincode]').val();

    var adr_id = $('input[name=adr_id]').val();



      var uname = fname+" "+lname;

      var url = 'sysadmin/api/address.php';



      var userdata = {

            uid: uid,

            name: uname,

            hno: address,

            society:city,

            area:state,

            pincode:pincode,

            type:adr_type,

            landmark:landmark,

            aid:adr_id,

        }

      

      $.ajax({

             type: "POST", 

             url: url,

             data: JSON.stringify(userdata),

             contentType: 'application/json',

             success: function(response)

             {

              //console.log(response);

              var duce = jQuery.parseJSON(response);

              

                if (duce.ResponseCode == '200') {

                  alert(duce.ResponseMsg);

                  $("#add_new-addr_modal .close").click();

                  getAddresHistory(uid);

                  getAddresHistoryCheckout(uid);

                }

                if (duce.ResponseCode == '401') {

                  alert(duce.ResponseMsg);

                } 

             }

           });

    

});



function getAddresHistory(uid){

var umob = $('.hiddenuMob').val();

    var userdata = {

            uid: uid,

        }



  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/alist.php',

        data: JSON.stringify(userdata),

        dataType: 'json',

        contentType: 'application/json',

        success: function(response){

          //console.log(response);

          var prnt = '';

          if (response.ResponseCode == '200') {

             var resp = response.ResultData;

             $.each(resp, function(i, item) {               

                prnt += '<div class="address_history_block"><p class="adr_name a1">'+item.name+'</p><p class="adr_name a2"> |</p><p class="adr_name a3">'+umob+'</p><div class="adr_name a4 dropdown"> <img src="img/menu_icon.png" class="icon-menu dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><div class="dropdown-menu" aria-labelledby="dropdownMenu2"> <button class="dropdown-item" type="button" onclick="getAdrById('+item.id+','+item.uid+');">Edit</button> <button class="dropdown-item" type="button">Delete</button></div></div><p class="adr_type">'+item.type+'</p><p class="adr_adrs">'+item.hno+','+item.society+',<br>'+item.landmark+','+item.area+' - '+item.pincode+'</p></div>';

              });

          }

          if (response.ResponseCode == '401') {

             prnt = '<p class="resp_text_not">'+response.ResponseMsg+'</p>';

          }

           

          $('.adr_block').html(prnt);

        }

      });

}



function getSelectArea(){

  $.ajax({

        type: 'POST',

        url: 'sysadmin/api/area.php',

        dataType: 'json',

        success: function(response){

           var resp = response.data;

           var prnt = '';

           $.each(resp, function(i, item) {

              prnt += '<option value="'+item.name+'">'+item.name+'</option>';

            });

          $('.select_area_reg').html(prnt);

        }

      });

}



function getAdrById(adrId,Uid){

  var userdata = {

            aid: adrId,

            uid: Uid,

        }

      

  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/adr_fetch.php',

        data: JSON.stringify(userdata),

        contentType: 'application/json',

        success: function(response)

        {

          var duce = jQuery.parseJSON(response);

            if (duce.ResponseCode == '401') {

              alert('Address not Found..!');

            }

            if (duce.ResponseCode == '200') {

              $('#add_new-addr_modal').modal('show'); 



              $('.hiddenuId').val(Uid);

              $('input[name=adr_id]').val(duce.ResultData[0].id);

              $('input[name=first-name]').val(duce.ResultData[0].name);

              $('input[name=last-name]').val('');

              $('input[name=state]').val(duce.ResultData[0].area);

              $('input[name=city]').val(duce.ResultData[0].society);

              $('input[name=landmark]').val(duce.ResultData[0].landmark);

              $('.select_adr_type').val(duce.ResultData[0].type);

              $('input[name=address]').val(duce.ResultData[0].hno);

              $('input[name=pincode]').val(duce.ResultData[0].pincode);

            }

        }

  });

  

}











$(".update_user_acc").submit(function(e) {

    e.preventDefault(); 



    var uid = $('input[name=Uid]').val();

    var uname = $('input[name=user-name]').val();

    var email = $('input[name=email-addr]').val();

    var phone = $('input[name=phone]').val();



    var url = 'sysadmin/api/profile_update.php';



      var userdata = {

            uid: uid,

            name: uname,

            email: email,

            phone:phone,

        }

      

      $.ajax({

             type: "POST", 

             url: url,

             data: JSON.stringify(userdata),

             contentType: 'application/json',

             success: function(response)

             {

              //console.log(response);

              var duce = jQuery.parseJSON(response);

              

                if (duce.ResponseCode == '200') {

                  alert(duce.ResponseMsg);

                  getProfileInfoId(uid);

                }

                if (duce.ResponseCode == '401') {

                  alert(duce.ResponseMsg);

                } 

             }

           });

    

});



function getProfileInfoId(Uid){

  var userdata = {

            uid: Uid,

        }

      

  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/profile_info.php',

        data: JSON.stringify(userdata),

        contentType: 'application/json',

        success: function(response)

        {

          var duce = jQuery.parseJSON(response);

            if (duce.ResponseCode == '401') {

              alert(duce.ResponseMsg);

            }

            if (duce.ResponseCode == '200') {



              $('input[name=Uid]').val(duce.ResultData[0].id);

              $('input[name=user-name]').val(duce.ResultData[0].name);

              $('input[name=email-addr]').val(duce.ResultData[0].email);

              $('input[name=phone]').val(duce.ResultData[0].mobile);

            }

        }

  });

  

}





function addToCart(proId) {



  var pro_qty = $('.qty_inc #quantity').val();

  var pro_net_wt = $('.select_pro-qty').children("option:selected"). val();

  var pro_price = $('.pros_price .price').text();



  var product_id = proId;



  var fd = new FormData();

    fd.append('product_id',product_id);

    fd.append('product_qty',pro_qty);

    fd.append('pro_net_wt',pro_net_wt);

    fd.append('pro_price',pro_price);



    var url = "include/action.php?id=add-to-cart";



    $.ajax({

           type: "POST", 

           url: url,

           data: fd,

           contentType: false,

           processData: false,

           success: function(response)

           {

            //console.log(response);

              var duce = jQuery.parseJSON(response);

              if (duce.status == 'exist') {

                alert('Product Already Exists..!');

              }   

              if (duce.status == 'added') {

                $('.span_cart_num').text(Object.keys(duce.data).length);



                  var iteminfo = pro_qty+","+pro_net_wt+","+pro_price.replace( /₹/g, "");

                  getInstantcartitem(window.atob(product_id),iteminfo);

                

              }           

           }

         });

}





function addToCartPros(proId,proi) {



  var pro_qty = 1;

  var pro_net_wt = $('.all_pro_sel.selpro-'+proId).children("option:selected").val();

  var pro_price = $('.product_price.pr-'+proi+' .price.pr_pro_'+proId).text();

  var action = 'add';

  var subT = 0;



  var product_id = window.btoa(proId);

  var fd = new FormData();

    fd.append('product_id',product_id);

    fd.append('product_qty',pro_qty);

    fd.append('pro_net_wt',pro_net_wt);

    fd.append('pro_price',pro_price);



    var url = "include/action.php?id=add-to-cart";



    $.ajax({

           type: "POST", 

           url: url,

           data: fd,

           contentType: false,

           processData: false,

           success: function(response)

           {

            //console.log(response);

              var duce = jQuery.parseJSON(response);

              if (duce.status == 'exist') {

                alert(duce.status);

              }   

              if (duce.cart_items == 2 || duce.cart_items == 1) {

                $('.dropdown-menu .head_drop_links .col-xs-12').html('<a href="checkout.php" class="btn">CHECK OUT</a>');

                $('.dropdown-menu .head_drop_subt').css('display','none');

              }

              if (duce.status == 'added') {

                $('.span_cart_num').text(Object.keys(duce.data).length); 

                var subTs = 0;

                $.each(duce.data, function(i, item) {  

                  subTs = item.itemqty;

                  var array = subTs.split(",");

                  var qty = array[0];

                  var net = array[1];

                  var price = array[2];

                  subT += parseInt(qty*price);

                });

                  var iteminfo = pro_qty+","+pro_net_wt+","+pro_price.replace( /₹/g, "");
                  $('.cart_subTval').val(subT);  
                  $('.spN_subt b').text('₹'+subT);

                  getInstantcartitem(window.atob(product_id),iteminfo,action,subT);

                  $('.add_more_cart_btn_bl_'+proId+' .btn_pro_add').css('display','none');

                  $('.add_more_cart_btn_bl_'+proId).append('<div class="add_more_input_inc"><input type="text" value="'+pro_qty+'" min="0" max="100" class="cls_add_more_item_cart_'+proId+'"/><div id="inc-button" class="spinner-button" onclick="addToCartProsInc('+proId+','+proi+');">+</div><div id="dec-button" class="spinner-button" onclick="addToCartProsDec('+proId+','+proi+');">-</div></div>');



              }           

           }

         });

}





function addToCartProsInc(proId,proi) {

  var action = 'add';

  var pro_qty = $('.add_more_input_inc .cls_add_more_item_cart_'+proId).val();

  $('.add_more_input_inc .cls_add_more_item_cart_'+proId).val(parseInt(pro_qty)+parseInt(1));

  var pro_net_wt = $('.all_pro_sel.selpro-'+proId).children("option:selected").val();

  var pro_price = $('.product_price.pr-'+proi+' .price.pr_pro_'+proId).text();



  var new_qty = parseInt(pro_qty)+parseInt(1);

  updatecartItems(new_qty,proId,proi,action,pro_net_wt,pro_price);   

}



function addToCartProsDec(proId,proi) {

  var action = 'del';

  var pro_qty = $('.add_more_input_inc .cls_add_more_item_cart_'+proId).val();

  var pro_net_wt = $('.all_pro_sel.selpro-'+proId).children("option:selected").val();

  var pro_price = $('.product_price.pr-'+proi+' .price.pr_pro_'+proId).text();

  var new_qty = parseInt(pro_qty)-parseInt(1);

  if (new_qty < 1) {

    new_qty = 0;

    $('.add_more_input_inc .cls_add_more_item_cart_'+proId).val(new_qty);

    var subT = $('.cart_subTval').val();


    deletecartItem(window.btoa(proId),subT);    

  }else{

    $('.add_more_input_inc .cls_add_more_item_cart_'+proId).val(parseInt(pro_qty)-parseInt(1));

    updatecartItems(new_qty,proId,proi,action,pro_net_wt,pro_price);  

  }

  

}



function UpdatecartPros(proId,proi) {

  var new_qty = $('.qty_inc .input-number').val();

  var pro_net_wt = $('.select_pro-qty').children("option:selected").val();

  var pro_price = $('.pros_price .price span').text();

  var action = '';

  if (new_qty < 1) {

    var subT = $('.spn-0089').text();

    deletecartItem(window.btoa(proId),subT);

    action = 'del';

  }else{

    action = 'add';

    updatecartItems(new_qty,proId,proi,action,pro_net_wt,pro_price);

  }

}



function updatecartItems(new_qty,proId,proi,action,pro_net_wt,pro_price){

  var product_id = window.btoa(proId);


    var fd = new FormData();

    fd.append('product_id',product_id);

    fd.append('product_qty',new_qty);

    fd.append('pro_net_wt',pro_net_wt);

    fd.append('pro_price',pro_price);

    $('.overlayLoad').show();

    var url = "include/action.php?id=update-to-cart";

    $.ajax({

           type: "POST", 

           url: url,

           data: fd,

           contentType: false,

           processData: false,

           success: function(response)

           {

              var subTs = 0;var subT = 0;

              var duce = jQuery.parseJSON(response);

              var iteminfo = new_qty+","+pro_net_wt+","+pro_price.replace( /₹/g, "");

              $.each(duce.data, function(i, item) {  

                subTs = item.itemqty;

                var array = subTs.split(",");

                var qty = array[0];

                var net = array[1];

                var price = array[2];

                subT += parseInt(qty*price);

              });

              var ship_c = $('.shipping_charge').val();

              var o_min = $('.o_min').val();



              if (subT < o_min) {

                $('.spN_shipping_c b').text('₹'+ship_c);

              }else{

                $('.spN_shipping_c b').text('₹0');

              }

              getInstantcartitem(window.atob(product_id),iteminfo,action,subT);

              $('.cartItem-'+proId).remove();
              $('.spN_subt b').text('₹'+subT);  
              $('.cart_subTval').val(subT);          



           }

         });

}





function getInstantcartitem(itemid,iteminfo,action,subT){

  var array = iteminfo.split(",");

  var qty = array[0];

  var net = array[1];

  var price = array[2];

  var subT1 = qty*price;

  var subT_old = '';
   
  var dataspnSubT = $('.cart_subTval').val();

  if (dataspnSubT == '') {

    subT_old = 0;

  }else{

    subT_old = dataspnSubT;

  }

  var tax_old = $('.total_b001 .spN_tax b').text();

  var pdata = {

    product_id: itemid,

  }

  var subTs = 0;

  var pid = window.btoa(itemid);

  var total_tax = 0;

  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/fetch_cart_data.php',

        data: JSON.stringify(pdata),

        contentType: 'application/json',

        success: function(response){

          $('.overlayLoad').hide();

          var duces = JSON.parse(response);

          var resp = duces.ResultData; var input_f = '';var input_chk = '';

          //console.log(response);

            $.each(resp, function(i, item) {    

              input_f += '<li class="cartItem-'+item.id+'"><div class="media-left"><div class="cart-img"> <a href="#"> <img class="media-object img-responsive" src="sysadmin/'+item.pimg+'" alt="..."> </a></div></div><div class="media-body"><h6 class="media-heading">'+item.pname+' (₹ '+price+')</h6> <span class="net_wt">Net: <b>'+net+'</b></span> <span class="qty">QTY: <b>'+qty+'</b></span> <span class="price">Subtotal: ₹ '+subT1+'<i class="fa fa-trash" onclick=deletecartItem("'+pid+'",'+subT1+'); style="float: right;color: #af1a1a;cursor: pointer;" aria-hidden="true"></i></span></div></li>';

              subTs = 1*price;

              var rand_n = Math.floor(Math.random() * 6) + 1;

              total_tax = item.ptax;

              input_chk += '<div class="checkout_pg_items"><li class="cartItem-'+item.id+'"><div class="media-left"><div class="cart-img"> <a href="#"> <img class="media-object img-responsive" src="sysadmin/'+item.pimg+'" alt="..."> </a></div></div><div class="media-body product_price pr-'+rand_n+'"><h5>'+item.pname+' (₹ <span class="price pr_pro_'+item.id+'">'+price+'</span>)</h5> <span class="net_wt"><select class="all_pro_sel selpro-'+item.id+'"><option value="'+net+'">'+net+'</option></select></span><div class="add_more_input_inc"> <input type="text" value="'+qty+'" min="0" max="100" class="cls_add_more_item_cart_'+item.id+'"><div id="inc-button" class="spinner-button" onclick="addToCartProsInc('+item.id+','+rand_n+');">+</div><div id="dec-button" class="spinner-button" onclick="addToCartProsDec('+item.id+','+rand_n+');">-</div></div><br><p class="subtotal">Subtotal: <b>₹ '+subT1+'</b></p></div></li></div>';

            });

            var subtTax = 0;

            total_tax = parseInt(subTs*total_tax/100);

            if (action == 'add') {

              subtTax = parseInt(tax_old)+parseInt(total_tax);

              $('.total_b001 .spN_tax b').text(subtTax);

            }

            if (action == 'del') {

              subtTax = parseInt(tax_old)-parseInt(total_tax);

              $('.total_b001 .spN_tax b').text(subtTax);

            }            

            $('.user-basket .dropdown-menu').prepend(input_f);

            $('.checkout_order_detail').prepend(input_chk);



            var ship_c = $('.shipping_charge').val();

            var o_min = $('.o_min').val();

              if (subT < o_min) {

                ship_c = ship_c;

              }else{

                ship_c = 0;

              }

            $('.spN_total_cost b').text(parseInt(subT)+parseInt(subtTax)+parseInt(ship_c));

        }



  });

}





function getAddresHistoryCheckout(uid){

  var umob = $('.hiddenuMob').val();

    var userdata = {

            uid: uid,

        }

  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/alist.php',

        data: JSON.stringify(userdata),

        dataType: 'json',

        contentType: 'application/json',

        success: function(response){

          //console.log(response);

          var prnt = '';

          if (response.ResponseCode == '200') {

             var resp = response.ResultData;

             $.each(resp, function(i, item) {               

                prnt += '<div class="address_history_checkout_block"><label class="container_chk"><input type="radio" onclick="chkRadio();" name="radio_chk" value="'+item.id+'"><span class="checkmark"></span></label><div class="chk-adr"><p class="adr_name a1">'+item.name+'</p><p class="adr_name a2"> |</p><p class="adr_name a3">'+umob+'</p><p class="adr_type">'+item.type+'</p><p class="adr_adrs">'+item.hno+','+item.society+','+item.landmark+','+item.area+' - '+item.pincode+'</p></div></div>';

              });

          }

          if (response.ResponseCode == '401') {

             prnt = '<p class="resp_text_not">'+response.ResponseMsg+'</p>';

          }

           

          $('.adr_block_checkout').html(prnt);



          $(".adr_block_checkout").fadeIn(300);

          $(".form_add_addr_check").fadeOut(300);

          $(".add_new_adr_chk").css('display','block');

          $(".cancel_chk_adr").css('display','none');

        }

      });

}



$('.add_new_adr_chk').click(function() {

  $(".adr_block_checkout").fadeOut(300);

  $(".form_add_addr_check").fadeIn(300);

  $(".add_new_adr_chk").css('display','none');

  $(".cancel_chk_adr").css('display','block');

});



$('.cancel_chk_adr').click(function() {

  $(".adr_block_checkout").fadeIn(300);

  $(".form_add_addr_check").fadeOut(300);

  $(".add_new_adr_chk").css('display','block');

  $(".cancel_chk_adr").css('display','none');

});



function getPaymethod(){

  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/paymentgateway.php',

        success: function(response){

            var resp = response.data; var input_f = '';

            $.each(resp, function(i, item) {    

              input_f += '<li><div class="radio"><input type="radio" name="check_pay_optino" id="'+item.id+'" value="'+item.title+'"><label for="'+item.id+'"> '+item.title+'</label></div></li>';

            });

            

            $('.pay_option').html(input_f);

        }

  });

}

$(document).ready(function() {
    $('#datePicker')
        .datepicker({
            format: 'dd/mm/yyyy',
            startDate: "+0d"
        })
        .on('changeDate', function(e) {
            // Revalidate the date field
            getTimeSlot();
        });

});



function getTimeSlot(){
  var date = $('.date_select').val();
  var d = new Date();
  var todayDate = d.getDate() + "/" + (d.getMonth()+1) + "/" + d.getFullYear();
   
  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/timeslot.php',

        success: function(response){

          var duces = JSON.parse(response);

          //console.log(duces);

            var resp = duces.data; var input_f = '';

            $.each(resp, function(i, item) {    

              input_f += '<option value="'+item.mintime+' - '+item.maxtime+'">'+item.mintime+' - '+item.maxtime+'</option>';

            });

            

            $('.time_slot_select').html(input_f);

        }

  });

}

getSettingData();

function getSettingData(){

  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/setting.php',

        success: function(response){

          var duces = JSON.parse(response);

          $('.o_min').val(duces.data[0].o_min);

          $('.footer_adr').html(duces.data[0].contact_us);

          $('.shipping_charge').val(duces.data[0].shipping_charge);

          $('.privacy_page').html(duces.data[0].privacy_policy);

          $('.about_content').html(duces.data[0].about);

          $('.terms_Conditions').html(duces.data[0].terms);

        }

  });

}



$('.btn_odr_plc').click(function (e) {

  var total_a = $('.spN_total_cost b').text();

  var min_amt = $('.o_min').val();

  if (parseInt(total_a) < parseInt(min_amt)) {

      alert('*Minimum Order Amount is '+min_amt);

  }else if ($('.hiddenuId').val() == '') {

      alert('*Please Login First to Continue..!');

      window.location.href = 'login.php';

  }else if (!$('.adr_block_checkout input[name="radio_chk"]').is(":checked")) {

      alert('*Please Select an Address..!');

  }else if ($('.date_select').val() == '') {

      alert('*Please Select Date..!');

      $('.date_select').focus();

  }else if (!$('.pay-meth input[name="check_pay_optino"]').is(":checked")) {

      alert('*Please Select Pay Option..!');

  }else if (!$('input[name="check_terms"]').is(":checked")) {

      alert('*Please Select Terms and Conditions..!');

  }else{

      var address_id = $('.adr_block_checkout input[name="radio_chk"]:checked').val();

      var pay_option = $('.pay-meth .pay_option input[name="check_pay_optino"]:checked').val();

      var uid = $('.hiddenuId').val();

      var ddate = $('.date_select').val();

      var time_slot = $('.time_slot_select').val();

      var ship_charge = $('.ship-charge').val();







      var url = "include/action.php?id=cart_checkout";

      $.ajax({

             type: "POST", 

             url: url,

             success: function(response)

             {

              var duces = JSON.parse(response);

              var total_pr = 0;

              var pids = '';

              $.each(duces, function(i, item) {  

                total_pr += parseFloat(item.qty)*parseFloat(item.cost);

                pids += item.pid+",";

              });

                var userdata = {

                      pname: duces,

                      address_id: address_id,

                      p_method: pay_option,

                      uid: uid,

                      ddate: ddate,

                      timeslot: time_slot,

                      tid: '0',

                      total: total_pr,

                      ship_charge: ship_charge,

                }

                if ($('.pay-meth input[name="check_pay_optino"]:checked').attr('id') == 1) {

                  $(".progrs_pay").fadeIn(300);

                  pay_online_process(userdata,total_a,pids)

                }else{

                  pay_cod_process(userdata,pids);

                }

                

             }

           });

  }



});



function pay_cod_process(userdata,pids){
  $.ajax({

    type: "POST", 

    url: 'sysadmin/api/order.php',

    data: JSON.stringify(userdata),

    contentType: 'application/json',

    success: function(resp){

      var res_f = JSON.parse(resp);

      if (res_f.ResponseCode == '200') {

        alert(res_f.ResponseMsg);

        var odr_id = res_f.oid;

        sendBookingConfirmation(userdata,odr_id);

        unsetProCookies(pids);

      }else{

        alert('Error Occured');

      }

    }



  });

}



function pay_online_process(userdata,total_a,pids){

  $.ajax({

    type: "POST", 

    url: "include/action.php?id=cart_online_pay",

    data: {"udata":userdata,"pids":pids},

    success: function(response)

    {

        setTimeout(function(){ window.location = 'Payment/checkout/?paymentToken='+result+'&payment_amt='+window.btoa(total_a); }, 3000);

    }

  });



}



function sendBookingConfirmation(userdata,odr_id){

  var uemail = $('.hiddenueamil').val();

  var uid = $('.hiddenuId').val();

  var uname = $('.hiddenuname').val();

  var subject = 'Order Booking Confirmation';

  var message = 'Hello '+uname+', Your Order has booked Sucfcessfully';

  var userdata = {

    oid: odr_id,

    uid: uid,

}

$.ajax({

type: "POST", 

url: 'sysadmin/api/search_order.php',

data: JSON.stringify(userdata),

contentType: 'application/json',

success: function(response){

  var prnt = '';

  var subTot = 0;

  var duce = jQuery.parseJSON(response);

  if (duce.ResponseCode == '200') {
  	prnt += '<tr> <th>'+(i+1)+'</th> <td><img style="padding-right: 15px;width:10%;" src="http://www.pinktokri.com/sysadmin/'+item.p_img+'" alt="...">'+item.p_name+'</td><td>'+item.p_type+'</td><td>'+item.qnty+'</td><td>&#x20B9; '+item.price+'</td><td>&#x20B9; '+item.p_subtotal+'</td></tr>';

    $.each(duce.ResultData[0].product_list, function(i, item) { 

      prnt += '<tr> <th>'+(i+1)+'</th> <td><img style="padding-right: 15px;width:15%;" src="http://www.pinktokri.com/sysadmin/'+item.p_img+'" alt="...">'+item.p_name+'</td><td>'+item.p_type+'</td><td>'+item.qnty+'</td><td>'+item.price+'</td><td>₹ '+item.p_subtotal+'</td></tr>';

      subTot += parseInt(item.p_subtotal);

    });

    var total = parseInt(subTot)+parseInt(duce.ResultData[0].tax)+parseInt(duce.ResultData[0].ship_charge);

    prnt +='<tr> <th colspan="5" style="text-align: right;">Subtotal</th> <td>&#x20B9; '+subTot+'</td></tr><tr> <th colspan="5" style="text-align: right;">Total Tax</th> <td>&#x20B9;'+duce.ResultData[0].tax+'</td></tr><tr> <th colspan="5" style="text-align: right;">Shipping Charge</th> <td>&#x20B9; '+duce.ResultData[0].ship_charge+'</td></tr><tr> <th colspan="5" style="text-align: right;">Total </th> <td>&#x20B9; '+total+'</td></tr>';
    prnt += '</table></div>';
    message = message+prnt;

    $.ajax({

      type: "POST", 

      url: 'include/action.php?id=send-email',

      data: {'uname':uname,'uemail':uemail,'subject':subject,'message':message},

      success: function(response){

        console.log(response);

      }



    });

  }else{

    alert(duce.ResponseMsg);

  }

}



});



}



function unsetProCookies(pids){

    var url = "include/action.php?id=delete-cart-item";

    var pid = pids.slice(0,-1);

    var myarray = pid.split(',');



    for(var i = 0; i < myarray.length; i++)

    {

      $.ajax({

             type: "POST", 

             url: url,

             data: {"id":window.btoa(myarray[i])},

             success: function(response)

             {

                setTimeout(function(){ window.location = 'order_history.php'; }, 2000);

             }



           });

    }

}



$('.select_pro-qty').change(function() {

    var sel_qty = $(this).val();

    var hiddennetwt = $('.hiddennetwt').val(); 

    var hiddenpprice = $('.hiddenpprice').val(); 





    var array1 = hiddennetwt.split("$;");

    var array2 = hiddenpprice.split("$;");

    if (sel_qty == array1[0]) {

      $('.pros_price .price').html('<small>₹</small>'+array2[0]);

    }

    if (sel_qty == array1[1]) {

      $('.pros_price .price').html('<small>₹</small>'+array2[1]);

    }



});





$('.searchItem').keyup(function(){

  $('.resultSearch').html('');

  var searchField = $('.searchItem').val();

    if (searchField == '') {

      $('.searchItem').val('');

    }else{

      var userdata = {

            item: searchField,

        }



  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/searchbar.php',

        data: JSON.stringify(userdata),

        dataType: 'json',

        contentType: 'application/json',

        success: function(response){

              //console.log(response);  

              var resultdata = '';   



              var prnt = '';

              if (response.ResponseCode == '200') {

                 var resp = response.ResultData;

                 $.each(resp, function(i, item) {               

                    prnt += '<li class="list-group-item link-class"><a href="product_info.php?productId='+window.btoa(item.id)+'&pName='+window.btoa(item.pname)+'"><div class="img_list"><img src="sysadmin/'+item.pimg+'" height="40" width="40" class="img-thumbnail" /></div><div class="pro_list_info"><p>'+item.pname+' </p><p class="text-muted">'+item.cat_name+' <i class="fa fa-angle-double-right" aria-hidden="true"></i></p></div></a></li>';

                  });

              }

              if (response.ResponseCode == '401') {

                 prnt = '<p class="resp_text_not">'+response.ResponseMsg+'</p>';

              }

               

              $('.resultSearch').html(prnt);

          }

      });

  }

 });



function deletecartItem(id,subT) {
console.log(id+', '+subT); 
  var cart_n = $('.span_cart_num').text();
  var total_cart = $('.cart_subTval').val();

  var fd = new FormData();

  fd.append('id',id);



    var url = "include/action.php?id=delete-cart-item";



    $.ajax({

           type: "POST", 

           url: url,

           data: fd,

           contentType: false,

           processData: false,

           success: function(response)

           {

            var res_f = JSON.parse(response);

              $('.cartItem-'+window.atob(id)).remove();    

              if (cart_n >= 1) { $('.span_cart_num').text(cart_n-1);    } 
  

              var totl = parseInt(total_cart)-parseInt(res_f.total);
              $('.spN_subt').html('₹<b>'+totl+'</b>');     
              $('.cart_subTval').val(totl);     



              $('.add_more_cart_btn_bl_'+window.atob(id)+' .btn_pro_add').css('display','block');

              $('.add_more_cart_btn_bl_'+window.atob(id)+' .add_more_input_inc').remove();       


              var toal_spN = 0;
              var ship_c = $('.shipping_charge').val();

              var o_min = $('.o_min').val();

                if (subT < o_min) {

                  ship_c = ship_c;

                  $('.spN_shipping_c').text('₹'+ship_c);

                  toal_spN = parseInt(subT)-parseInt(res_f.total)+parseInt(ship_c);
                  console.log(parseInt(subT)+'-'+parseInt(res_f.total)+'-'+parseInt(ship_c));

                  $('.spN_total_cost b').text(toal_spN);

                }else{

                  ship_c = 0;

                  $('.spN_shipping_c').text('₹0');

                  toal_spN = parseInt(subT)-parseInt(res_f.total)+parseInt(ship_c);
                  console.log(parseInt(subT)+'-'+parseInt(res_f.total)+'+'+parseInt(ship_c));

                  $('.spN_total_cost b').text(toal_spN);

                }

                

                if (res_f.cart_items == '0') {

                  $('.shopping-cart').html('<div class="cart-err"><h3>You have no items in your Cart..!</h3><a href="index.php" class="btn  btn-dark margin-top-30">SHOP MORE</a></div>');

                  $('.dropdown-menu').html('<li><h5 class="text-center">NO Items in your Cart</h5></li><li class="margin-0"><div class="row"><div class="col-xs-12 "> <a href="index.php" class="btn">SHOP NOW</a></div></div></li>');

                }

           }

         });

}





$('.select_filter_price').change(function() {

  var sortingMethod = $(this).val();

  

  if(sortingMethod == 'l2h') {

    sortProductsPriceAscending();

  } else if (sortingMethod == 'h2l') {

    sortProductsPriceDescending();

  }else{



  }

});



function sortProductsPriceAscending() {

  var gridItems = $('.swipe_pros');

  gridItems.sort(function(a, b) {

    return $('.item', a).data("price") - $('.item', b).data("price");

  });



  $(".all_pros_block").append(gridItems);

}



function sortProductsPriceDescending() {

  var gridItems = $('.swipe_pros');



  gridItems.sort(function(a, b) {

    return $('.item', b).data("price") - $('.item', a).data("price");

  });



  $(".all_pros_block").append(gridItems);

}











function change_pros_net(id) { 



    var net_q = $('.selpro-'+id).val(); 

    var hiddennetwt = $('.hiddennet-'+id).val(); 

    var hiddenpprice = $('.hiddenprice-'+id).val(); 



    var array1 = hiddennetwt.split("$;");

    var array2 = hiddenpprice.split("$;");

    if (net_q == array1[0]) {

      $('.pr_pro_'+id).html('₹'+array2[0]);

    }

    if (net_q == array1[1]) {

      $('.pr_pro_'+id).html('₹'+array2[1]);

    }

    if (net_q == array1[2]) {

      $('.pr_pro_'+id).html('₹'+array2[2]);

    }

    if (net_q == array1[3]) {

      $('.pr_pro_'+id).html('₹'+array2[3]);

    }

    if (net_q == array1[4]) {

      $('.pr_pro_'+id).html('₹'+array2[4]);

    }



}





$('.add_more_input_inc ').click(function(e){

        e.preventDefault();

        var quantity = parseInt($('#quantity').val());

          $('#quantity').val(quantity + 1);

        });



     $('.quantity-left-minus').click(function(e){

        e.preventDefault();

        var quantity = parseInt($('#quantity').val());

            if(quantity>0){

            $('#quantity').val(quantity - 1);

            }

    });





$(document).ready(function(){



var quantitiy=0;

   $('.quantity-right-plus').click(function(e){

        e.preventDefault();

        var quantity = parseInt($('#quantity').val());

          $('#quantity').val(quantity + 1);

        });



     $('.quantity-left-minus').click(function(e){

        e.preventDefault();

        var quantity = parseInt($('#quantity').val());

            if(quantity>0){

            $('#quantity').val(quantity - 1);

            }

    });

    

});

function chkRadio() {

    $('html, body').animate({

        scrollTop: $(".cols_mob_odr").offset().top

    }, 1000);

}



function getOrderInfo(oid) {

  $(".o_history_details").fadeIn(300);

  $(".o_history_web").fadeOut(300);

  $(".o_history_mob").fadeOut(300);



  var uid = $('.hiddenuId').val();



  var userdata = {

            oid: oid,

            uid: uid,

        }

  $.ajax({

        type: "POST", 

        url: 'sysadmin/api/search_order.php',

        data: JSON.stringify(userdata),

        contentType: 'application/json',

        success: function(response){

          var prnt = '';

          var subTot = 0;

          var duce = jQuery.parseJSON(response);

          if (duce.ResponseCode == '200') {

            $('.o_history_details .oid b').text(duce.ResultData[0].oid);

            $('.o_history_details .odate b').text(duce.ResultData[0].order_date);

            $('.o_history_details .delivdate b').text(duce.ResultData[0].ddate);

            $('.o_history_details .oslot b').text(duce.ResultData[0].timesloat);

            $('.o_history_details .total_amt b').text(duce.ResultData[0].total);

            $('.o_history_details .p_method span').text(duce.ResultData[0].p_method);

            $('.o_history_details .o_staus span').text(duce.ResultData[0].status);

            $('.o_history_details .oaddress b').text(duce.ResultData[0].address_id);

            $.each(duce.ResultData[0].product_list, function(i, item) { 

              prnt += '<li class="cartItem-'+item.pid+'"> <div class="media-left"> <div class="cart-img"> <a href="#"> <img class="media-object img-responsive" src="sysadmin/'+item.p_img+'" alt="..."> </a> </div> </div> <div class="media-body product_price pr-27"> <h5>'+item.p_name+' (₹ <span class="price pr_pro_66">'+item.price+'</span>)</h5> <span class="net_wt">'+item.p_type+'</span> <span class="qty">Qty. : <b>'+item.qnty+'</b></span> <p class="subt">Subtotal: ₹ '+item.p_subtotal+'</p> </div> </li>';

              subTot += parseInt(item.p_subtotal);

            });

            var total = parseInt(subTot)+parseInt(duce.ResultData[0].tax)+parseInt(duce.ResultData[0].ship_charge);

            prnt +='<li class="subTInfo"> <div class="media-left">Subtotal : </div><div class="media-right"><b>₹'+subTot+'</b></div></li><li class="subTInfo"> <div class="media-left">Total Tax : </div><div class="media-right"><b>₹'+duce.ResultData[0].tax+'</b></div></li><li class="subTInfo"> <div class="media-left">Shipping Charge : </div><div class="media-right"><b>₹'+duce.ResultData[0].ship_charge+'</b></div></li><li class="subTInfo"> <div class="media-left"><h4>Total : </h4></div><div class="media-right"><h4><b>₹'+total+'</b></h4></div></li>';

            $('.o_history_details .checkout_pg_items ul').html(prnt);
            if(duce.ResultData[0].status == 'pending'){              
              var cancel_odr = '<a href="#" class="btn cancel_odr_btn" onclick=cancel_order("'+oid+'",'+uid+');>Cancel Order</a>';
              $('.o_staus').append(cancel_odr);
            }

          }else{

            alert(duce.ResponseMsg);

          }

        }



      });

}


function cancel_order(oid,uid){
  var userdata = {
    oid: oid,
    uid: uid,
  }
  $.ajax({
  type: "POST", 
  url: 'sysadmin/api/cancel_odr.php',
  data: JSON.stringify(userdata),
  contentType: 'application/json',
  success: function(response){
    var duce = jQuery.parseJSON(response);
    if(duce.ResponseCode == '200'){
      alert(duce.ResponseMsg);
      window.location.href = ''; 
    }else{
      alert(duce.ResponseMsg);
    }
  }

});
}






jQuery(function ($) {



$("#close-sidebar").click(function() {

  $(".sidebar-wrapper").css('left','-300px');

});

$("#show-sidebar").click(function() {

  $(".sidebar-wrapper").css('left','0px');

});





   

   

});







$('.slider').each(function() {

  var $this = $(this);

  var $group = $this.find('.slide_group');

  var $slides = $this.find('.slide');

  var bulletArray = [];

  var currentIndex = 0;

  var timeout;

  

  function move(newIndex) {

    var animateLeft, slideLeft;

    

    advance();

    

    if ($group.is(':animated') || currentIndex === newIndex) {

      return;

    }

    

    bulletArray[currentIndex].removeClass('active');

    bulletArray[newIndex].addClass('active');

    

    if (newIndex > currentIndex) {

      slideLeft = '100%';

      animateLeft = '-100%';

    } else {

      slideLeft = '-100%';

      animateLeft = '100%';

    }

    

    $slides.eq(newIndex).css({

      display: 'block',

      left: slideLeft

    });

    $group.animate({

      left: animateLeft

    }, function() {

      $slides.eq(currentIndex).css({

        display: 'none'

      });

      $slides.eq(newIndex).css({

        left: 0

      });

      $group.css({

        left: 0

      });

      currentIndex = newIndex;

    });

  }

  

  function advance() {

    clearTimeout(timeout);

    timeout = setTimeout(function() {

      if (currentIndex < ($slides.length - 1)) {

        move(currentIndex + 1);

      } else {

        move(0);

      }

    }, 8000);

  }

  

  $('.next_btn').on('click', function() {

    if (currentIndex < ($slides.length - 1)) {

      move(currentIndex + 1);

    } else {

      move(0);

    }

  });

  

  $('.previous_btn').on('click', function() {

    if (currentIndex !== 0) {

      move(currentIndex - 1);

    } else {

      move(3);

    }

  });

  

  $.each($slides, function(index) {

    var $button = $('<a class="slide_btn">&bull;</a>');

    

    if (index === currentIndex) {

      $button.addClass('active');

    }

    $button.on('click', function() {

      move(index);

    }).appendTo('.slide_buttons');

    bulletArray.push($button);

  });

  

  advance();

});










    