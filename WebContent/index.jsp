<html>
<head>
<title>JSP Countdown Timer Script</title>
<link href="./style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src='./script.js'></script>
<body>
<%
String hours = "00"; //change hours
String minutes = "30";//change minutes
String seconds = "00";//change Seconds
String clock = hours+":"+minutes+":"+seconds;
%>
<div class='content' align='center'>

    <div class="top" align='center'>

  
  <div class="top_con" align='center'>
    <ul class="top_con_ul_pos1" align='center'>
    <li><span id="hrs"><% out.println(hours); %></span></li>
    <li><span id="mts"><% out.println(minutes); %></span></li>
    <li><span id="sec"><% out.println(seconds); %></span></li>
    
    </ul>

    
    
  </div>
      
  </div>
	
    <div style="font-size: 10px;color: #dadada;" id="dumdiv">
<a href="http://www.hscripts.com" id="dum" style="text-decoration:none;color: #dadada;">&copy;H</a></div> 
  </div>
  
<div id='hms' style='display:none;'><% out.println(""+clock+""); %></div>

<script>
 count();
</script>
</body></html>