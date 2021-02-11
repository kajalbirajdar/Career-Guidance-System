<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.Dbconn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
<%
String User=(String)session.getAttribute("name");
int SubId=0,Subject=0,obtain=0,total=0,score=0;
Dbconn db=new Dbconn();
Connection con=db.conn();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from scoretable1 where User='"+User+"' order by TimeNDate desc");
if(rs.next())
{
	SubId=rs.getInt(2);
	obtain=rs.getInt(3);
	total=rs.getInt(4);
	score=rs.getInt(5);
}
int remainscore=100-score;
%>
<script type="text/javascript">
window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer",
	{
		title:{
			text: "Score Test 2"
		},
		legend: {
			maxWidth: 350,
			itemWidth: 120
		},
		data: [
		{
			type: "pie",
			showInLegend: true,
			legendText: "{indexLabel}",
			dataPoints: [
				{ y: <%=score%>, indexLabel: "Obtained Score" },
				{ y: <%=remainscore%>, indexLabel: "Remaining Score" },
				
			]
		}
		]
	});
	chart.render();
}
</script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</head>
<body>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
</body>
</html>