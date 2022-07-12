<%-- 
    Document   : pie
    Created on : 9 Nov, 2020, 6:40:33 AM
    Author     : HOME
--%>

<%@page import="phjava.datadao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE HTML>
<html>
<head>
    
</head>
<body style="background-color:orange ;">
    <%
        datadao d=new datadao();
        d.graph();
        %>

        <div id="chartContainer" style="float:left; height: 300px; width: 600px;"></div>  
        
<div id="chartContainer2" style="float:right; height: 300px; width: 700px;"></div>
<div id="chartContainer1" style="height: 300px; width: 100%; float:left; " ></div>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
         
                  
                  <sql:query dataSource = "${ds}" var = "res">
                      SELECT * from graph
          </sql:query>
              <c:forEach var = "row" items = "${res.rows}">

<script>
       window.onload = function(){
var chart1 = new CanvasJS.Chart("chartContainer1", {
	theme: "light1",// "light2", "dark1", "dark2"
        backgroundColor:"orange",
	animationEnabled: true, 		
	title:{
		text: "Event"
	},
	data: [
	{
		
		type: "column",
		dataPoints: [
			{ label: "wedding",  y: ${row.wc} },
			{ label: "birthday", y: ${row.bc} },
			{ label: "fashion show", y: ${row.fc} ,color:"#08313A" },
			{ label: "baby shower",  y: ${row.bsc},color:"#107869" },
			{ label: "others",  y: ${row.oc}}
		]
	}
	]
});

var chart2 = new CanvasJS.Chart("chartContainer2", {
	animationEnabled: true,
        backgroundColor:"orange",
        //theme: "light2",
	title:{
		text: "package"
	},
        axisX:{
		interval: 1
	},
	axisY2:{
		interlacedColor: "darkblue",
		gridColor: "orange",
	},
	data: [
	{
		
		type: "bar",
                axisYType: "secondary",
		color: "#6599FF",
		dataPoints: [
			{ label: "photogragher",  y: ${row.photo} },
			{ label: "videographer", y:${row.video} },
			{ label: "photographer & videographer", y: ${row.b}}
		]
	}
	]
});

var chart = new CanvasJS.Chart( "chartContainer",{
	animationEnabled: true,
        color:"black",
        backgroundColor:"orange",
        theme: "light1",
	title: {
		text: "work",
               // color:"black"
	},
	data: [{
		type: "pie",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: ${row.completed}, label: "completed"},
			{y: ${row.pending}, label: "pending",color:" #cc3366"},
		]
	}]
});

chart2.render();
chart1.render();
chart.render();
}
</script>
</c:forEach>

</body>
</html>
