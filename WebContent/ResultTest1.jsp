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
        <h3 style="margin-left: 20%">Test1 Result</h3>
	</div>

      <div class="col-md-8 col-md-offset-2">
      
			      
			<div class="form-group">
			<table class="table table-responsive table-bordered">
			<%
			String User=(String)session.getAttribute("name");
			String count1="",count2="",count3="",count4="",count5="",obtain="",total="",score="";
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from scoretable where User='"+User+"' order by TimeNDate desc");
			if(rs.next())
			{
				count1=rs.getString(2);
				count2=rs.getString(3);
				count3=rs.getString(4);
				count4=rs.getString(5);
				count5=rs.getString(6);
				obtain=rs.getString(7);
				total=rs.getString(8);
				score=rs.getString(9);
			}
			
			%>
			<tr>
			<td class="col-md-3"><label>Apptitude Marks</label></td>
			<td class="col-md-5"><%=count1 %></td>
			</tr>
			
			<tr>
			<td class="col-md-3"><label>English Marks</label></td>
			<td class="col-md-5"><%=count2 %></td>
			</tr>
			
			<tr>
			<td class="col-md-3"><label>Logical Resoning</label></td>
			<td class="col-md-5"><%=count3 %></td>
			</tr>
			
			<tr>
			<td class="col-md-3"><label>Social Science</label></td>
			<td class="col-md-5"><%=count4 %></td>
			</tr>
			
			<tr>
			<td class="col-md-3"><label>Mathematics</label></td>
			<td class="col-md-5"><%=count5 %></td>
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
	       String col="";
	       String subid="";
	       Statement st1=con.createStatement();
	       ResultSet rs1=st1.executeQuery("SELECT @var_max_val:= GREATEST(Aptitude, English, LogicalReasoning, SocialScience, Math) AS max_value, CASE @var_max_val WHEN Aptitude THEN 'Aptitude' WHEN English THEN 'English' WHEN LogicalReasoning THEN 'LogicalReasoning' WHEN SocialScience THEN 'SocialScience' WHEN Math THEN 'Math' END AS max_value_column_name FROM scoretable where user='"+User+"'");
	       while(rs1.next())
	       {
	    	   col=rs1.getString(2);
	    	   String maxval=rs1.getString(1);
	       }
	       
	       if(col.equals("Aptitude"))
	       {
	    	   subid="1";
	       }
	       else if(col.equals("English"))
	       {
	    	   subid="2";
	       }
	       else if(col.equals("LogicalReasoning"))
	       {
	    	   subid="3";
	       }
	       else if(col.equals("SocialScience"))
	       {
	    	   subid="4";
	       }
	       else
	       {
	    	   subid="5";
	       }
	       System.out.println("SubID===>"+subid);
	       %>
	       <h5>Recommended Subject is <%=col %> for Test 2</h5>
	       </div>
	       <div class="col-md-5 col-md-offset-1" style="margin-top: 5%" align="center">
			<form action="Test2.jsp" method="post">
			<table class="table table-responsive table-bordered">
			<tr>
			<td class="col-md-6" colspan="2" align="center" ><input type="hidden" name="subid" value="<%=subid %>"><input style=" font-size: 18px;" type="submit" class="btn btn-primary" name="btn_Submit" id="btn_Submit" Value="Take test2"></td>
			</tr>
			</table>
	       </form>
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