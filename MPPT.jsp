<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>MPPT</title>
<%
String v1=request.getParameter("t");
String v2=request.getParameter("a");
String v4=request.getParameter("i");

double t=Double.parseDouble(v1);
double a=Double.parseDouble(v2);
double c=Double.parseDouble(v4);
double q=1.6/Math.pow(10, 19);
double k=1.38/Math.pow(10, 23);
double l=q/(k*t);
double pp=Math.pow(2.178,l);
Double max=(double) Integer.MAX_VALUE;
for (int i =0; i<100; i++) {
	double p=(a-c*(Math.pow(pp, i)-1))*i;
	if (max < p) {
		max=p;
	}
   
}

double v22=Math.asin(((q*a)+1)/(c*Math.sqrt(2)))-Math.PI/4;
double v=-(((k*t*Math.PI)/(q*4))+((k*t)/q)*Math.asin(0.5*Math.sin((q*v22)/(k*t))-0.5*Math.cos((q*v22)/(k*t))-0.5));
double r=Math.pow(max, 2)/v;
double ii=v/r;
%>
<script type="text/javascript">
window.onload = function () {

    var chart = new CanvasJS.Chart("chartContainer",
    {
      zoomEnabled: true,
      title:{
        text: "MPPT"
      },
      axisY:{
        includeZero: false
      },
      data: data,  // random generator below

   });

    chart.render();
  }

   var limit = 100;    //increase number of dataPoints by increasing this

    var y = 0;
    var data = []; var dataSeries = { type: "line" };
    var dataPoints = [];
    for (var i = 0; i < limit; i ++) {
    	a=<%=a %>
    	c=<%=c %>
    	pp=<%=pp %>
    	y=a-c*(Math.pow(pp, i)-1);
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
	width-axis: voltage<br/>
	column-axis: Power(kW/s)<br/>
	initial current:<%= c %>[A]<br/>
	temperature:<%= t %>K<br/>
	light current:<%= a %>[A]</br>
	Maximum power: <%=max %>(kW/s)</br>
	voltage at the power:<%=v %>[v]<br/>
	resistance at the power:<%=r %>Ω<br/>
	current at the power:<%=ii %>[A]
</body>
</html>