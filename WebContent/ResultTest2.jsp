<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.Dbconn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carieer Guidance</title>
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
       <div class="h_phone" style="font-size: 18px;">Logged Used:<label style="color: red;"><%=session.getAttribute("name") %></label> </div>
      <h1 ><a href="LoginPage.jsp">Carieer Guidance</a></h1>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="menu_block">
    <div class="container_12">
      <div class="grid_12">
        
          <ul class="sf-menu">
            <li class="with_ul"><a href="UserHome.jsp">Home Page</a></li>
            <li class="current"><a href="Test.jsp">Test</a></li>
           
            
            <li class="with_ul"><a href="Login">Logout</a></li>
          </ul>
        
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>
  <div class="white">
    <div class="container_12">
     
     <div class="grid_10 prefix_2">
        <h3 style="margin-left: 20%">Test 2 Result</h3>
	</div>

      <div class="col-md-8 col-md-offset-2">
      
			      
			<div class="form-group">
			<table class="table table-responsive table-bordered">
			<%
			String User=(String)session.getAttribute("name");
			String SubId="",Subject="",obtain="",total="",score="";
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from scoretable1 where User='"+User+"' order by TimeNDate desc");
			if(rs.next())
			{

				SubId=rs.getString(2);
				obtain=rs.getString(3);
				total=rs.getString(4);
				score=rs.getString(5);
			}
			
			Statement st2=con.createStatement();
			ResultSet rs2=st2.executeQuery("select * from subject where id='"+SubId+"'");
			if(rs2.next())
			{
			Subject=rs2.getString(2);
			}
			%>

			<tr>
			<td class="col-md-3"><label>Subject</label></td>
			<td class="col-md-5"><%=Subject %></td>
			</tr>
			
			<tr>
			<td class="col-md-3" style="color: red"><label>Obtained Marks</label></td>
			<td class="col-md-5"><%=obtain %></td>
			</tr>
			
			<tr>
			<td class="col-md-3" style="color: red"><label>Total Marks</label></td>
			<td class="col-md-5"><%=total %></td>
			</tr>
			
			<tr>
			<td class="col-md-3" style="color: red"><label>Score</label></td>
			<td class="col-md-5"><%=score %>%</td>
			</tr>
			</table>
			
			</div>
			
	 </div>    
	 
	       <div class="col-md-5 " align="center">
	       <%
	       String Area="";
	       int obtscore=Integer.parseInt(score);
	       if(obtscore>60)
	       {
	    	   Area="Science Field";
	       }
	       else if(obtscore<60 && obtscore>40)
	       {
	    	   Area="Commerse Field";
	       }
	       else
	       {
	    	   Area="Arts Field";
	       }
	       System.out.println("Recommeded area===>"+Area);
	       %>
	       <h5>Recommended Career is <%=Area %> for future</h5>
	       <h5>Thank You...</h5>
	       </div>

			<div class="col-md-5 col-md-offset-1 " align="center">
			<iframe src="Piachart.jsp" width="500" height="500"></iframe>
	       </div>

      <div class="clear"></div> 
    </div>
  </div>
  
  <footer>
  <div class="container_12">
<div class="f_bot">
    <div class="container_12">
      <div class="grid_12">Design by: <a href="http://www.templatemonster.com/"></a></div>
    </div>
  </div>
  </div>
</footer>

</body>
</html>