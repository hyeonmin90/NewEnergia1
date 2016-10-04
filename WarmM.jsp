<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Generation Graph</title>
<%
String v2=request.getParameter("len1");
String v3=request.getParameter("len2");

double s2=Double.parseDouble(v2);
double s3=Double.parseDouble(v3);
double s4=Math.atan(s3/s2);
double s5=s4*180;
%>
<script type="text/javascript">
window.onload = function () {

    var chart = new CanvasJS.Chart("chartContainer",
    {
      zoomEnabled: true,
      title:{
        text: "Solar Energy by altitude"
      },
      axisY:{
        includeZero: false
      },
      data: data,  // random generator below

   });

    chart.render();
  }

   var limit = 7000;    //increase number of dataPoints by increasing this

    var y = 0;
    var data = []; var dataSeries = { type: "line" };
    var dataPoints = [];
    for (var i = 0; i < limit; i += 1) {
    	
        a=<%=s4 %>;
    	calcFirst = Math.pow((6-(i/1000)), 2);
    	res = 0.4237-(0.00821 * calcFirst);
    	result=0.97*res;

    	calcSec=Math.pow((6.5-(i/1000)), 2);
    	res1 = 0.5055+(0.00595 * calcSec);
    	result1=0.99*res1;

    	calcFin=Math.pow((2.5-(i/1000)), 2);
    	res2=0.2711-(0.01858*calcFin);
    	result2=1.02*res2;

    	A=Math.exp(-result2/Math.cos(a));
    	B=result+(result1*A);
    	y=62495*(0.271+0.706*B);
         dataPoints.push({
          x: i,
          y: y
           });
        }
     dataSeries.dataPoints = dataPoints;
     data.push(dataSeries);

	</script>
<script type="text/javascript" src="canvasjs-1.9.0/jquery.canvasjs.min.js"></script> 
<title>Insert title here</title>

</head>

<body>
<div id="chartContainer" style="height: 400px; width: 100%;">
	</div>
	width-axis: altitude[m]<br/>
	column-axis: Generation(kW/m²)<br/>
	Angle:<%= s5 %>°
</body>
</html>