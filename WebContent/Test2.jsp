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
     <iframe style="margin-left: 80%" src="index.jsp"></iframe>
     <div class="grid_10 prefix_2">
        <h3 style="margin-left: 20%; margin-top: -20% ">Secondry Test</h3>
	</div>

      <div class="col-md-8 col-md-offset-2">
	 <form role="form" action="Test2" method="post">
			
			<%
			String subId=request.getParameter("subid");
			int ii=0;
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("SELECT * FROM que_ans_table where subject='"+subId+"' ORDER BY RAND() LIMIT 20");

			%>
			<div class="form-group">
			<table class="table table-responsive">

		<%
		while(rs.next())
		{
			ii++;
		String quest=rs.getString("question");
		int questid=rs.getInt("id");
		String op1=rs.getString("option1");
		String op2=rs.getString("option2");
		String op3=rs.getString("option3");
		String op4=rs.getString("option4");
		%>
	        <tr>
			<td class="col-md-2"><input type="hidden" name="Aque<%=ii%>" value="<%=questid%>"><b>Question <%=ii %> </b></td>
		    <td class="col-md-6"><textarea rows="1" cols="80" disabled="disabled" ><%=quest %></textarea> </td>
		    </tr>
		
		    <tr>
			<td class="col-md-2"><label for="txt_Password">Options:</label></td>
			<td class="col-md-6">
			<label class="radio-inline">
		    <input type="radio" name="Aans<%=ii %>" value="<%=op1 %>"><%=op1 %>
    		</label>
    		<label class="radio-inline">
		    <input type="radio" name="Aans<%=ii %>" value="<%=op2 %>"><%=op2 %>
    		</label>
    		<label class="radio-inline">
      		<input type="radio" name="Aans<%=ii %>" value="<%=op3 %>"><%=op3 %>
    		</label>
    		<label class="radio-inline">
     		 <input type="radio" name="Aans<%=ii %>" value="<%=op4 %>"><%=op4 %>
    		</label>
			</tr>
		<%
		}
		%>
			</table>
			</div>
			
			<div class="form-group">
			<table class="table table-responsive table-bordered">
			<tr>
			<td class="col-md-6" colspan="2" align="center" ><input type="hidden" name="subid" value="<%=subId %>"><input style="width: 100px; height: 30px; font-size: 18px;" type="submit" class="btn-primary" name="btn_Submit" id="btn_Submit" Value="Submit test"><br>
			</td>
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
      <div class="grid_12">Design by: <a href="http://www.templatemonster.com/"></a></div>
    </div>
  </div>
  </div>
</footer>

</body>
</html>