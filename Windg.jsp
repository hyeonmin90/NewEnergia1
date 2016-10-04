<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Generation(Altitude)</title>
<%
String v1=request.getParameter("z");
String v2=request.getParameter("t");
String v4=request.getParameter("a");

double z=Double.parseDouble(v1);
double t=Double.parseDouble(v2);
double a=Double.parseDouble(v4);
double k=-0.034*(z/t);
double p=Math.pow(2.187, k);
%>
<script type="text/javascript">
window.onload = function () {

    var chart = new CanvasJS.Chart("chartContainer",
    {
      zoomEnabled: true,
      title:{
        text: "Generation Graph(Altitude)"
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
    	
    	t=<%=t %>;
    	a=<%=a %>;
    	p=<%=p %>;
    	y=(1/2)*(353049/t)*p*Math.pow(i, 3)*a;
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
	width-axis: wind velocity[m/s]<br/>
	column-axis: Generation(kW/year)<br/>
	altitude:<%= v1 %>m<br/>
	temperature:<%= t %>K<br/>
	area:<%= a %>m²<br/>
</body>
</html>