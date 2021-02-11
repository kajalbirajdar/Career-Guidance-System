<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forensic Investigation in Cloud using VM Snapshots</title>
<meta charset="utf-8">
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script	src="js/jquery.touchSwipe.min.js"></script>
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: false, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: true,
        waitBannerAnimation: false,
        progressBar: false
    })
});
$(window).load(
    function () {
        $('.carousel1').carouFredSel({
            auto: false,
            prev: '.prev1',
            next: '.next1',
            width: 1030,
            items: {
                visible: {
                    min: 1,
                    max: 4
                },
                height: 'auto',
                width: 157,
            },
            responsive: true,
            scroll: 1,
            mousewheel: false,
            swipe: {
                onMouse: true,
                onTouch: true
            }
        });
    });
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<header>
  <div class="container_12">
    <div class="grid_12">
      <h1 ><a href="LoginHome.jsp">Carieer Guidance</a></h1>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="menu_block">
    <div class="container_12">
      <div class="grid_12">
        
          <ul class="sf-menu">
            <li class="with_ul"><a href="LoginPage.jsp">Login</a></li>
            <li class="current"><a href="Registration.jsp">New User</a></li>
            
          </ul>
        
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>
  <div class="white">
    <div class="container_12">
     
     <div class="grid_4 prefix_4">
        <h3 style="margin-left: 20%">Login Form</h3>
	</div>

      <div class="col-md-6 col-md-offset-3">
			<form role="form" action="Registration" method="post">
			<div class="form-group">
			<table class="table table-responsive table-bordered">
	       <tr>
			<td class="col-md-2"><label for="txt_Uname">User name:</label></td>
		    <td class="col-md-6"><input type="text"  class="form-control" name="txt_Uname"  required id="txt_Uname" placeholder="Enter User Name"></td>
		    </tr>
			<tr>
			<td class="col-md-2"><label for="txt_Address">Address:</label></td>
		    <td class="col-md-6"><input type="text"  class="form-control" name="txt_Address"  required id="txt_Address" placeholder="Enter Address"></td>
		    </tr>
		    
		    <tr>
			<td class="col-md-2"><label for="txt_Number">Mobile No:</label></td>
		    <td class="col-md-6"><input type="text"  class="form-control" name="txt_Number"  required id="txt_Number" placeholder="Enter number"></td>
		    </tr>
		    <tr>
		    
		    <tr>
			<td class="col-md-2"><label for="txt_Email">Email Id:</label></td>
		    <td class="col-md-6"><input type="text"  class="form-control" name="txt_Email"  required id="txt_Email" placeholder="Enter Email Id"></td>
		    </tr>
		    
		    <tr>
		    <tr>
			<td class="col-md-2"><label for="txt_Password">Password:</label></td>
			<td class="col-md-6"><input type="password" class="form-control" name="txt_Password" required id="txt_Password" placeholder="Enter Password"></td>
			</tr>
			
			<tr>
		    <tr>
			<td class="col-md-2"><label for="txt_ConPassword">Confirm Password:</label></td>
			<td class="col-md-6"><input type="password" class="form-control" name="txt_ConPassword" required id="txt_ConPassword" placeholder="Enter confirm Password"></td>
			</tr>

			<tr>
			<td class="col-md-6" colspan="2" align="center" ><input style="width: 100px; height: 30px; font-size: 18px;" type="submit" class="btn-primary" name="btn_Submit" id="btn_Submit" Value="Login"><br>
			<a class="active" href="Registration.jsp" >Create New User</a></td>
			</tr>
			</table>
			</div>
			</form> 			
			</div>
      
      <div class="clear"></div> 
    </div>
  </div>
  
  <footer>
  <div class="container_12">
<div class="f_bot">
    <div class="container_12">
      <div class="grid_12">Designed by:Nilima <a href="http://www.templatemonster.com/"></a></div>
    </div>
  </div>
  </div>
</footer>

</body>
</html>