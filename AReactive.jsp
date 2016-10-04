<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Reduction Reactive</title>
<%
String v1=request.getParameter("R");
String v2=request.getParameter("I");
String v3=request.getParameter("C");

double s1=Double.parseDouble(v1);
double s2=Double.parseDouble(v2);
double s3=Double.parseDouble(v3);

%>
<script type="text/javascript">
window.onload = function () {

    var chart = new CanvasJS.Chart("chartContainer",
    {
      zoomEnabled: true,
      title:{
        text: "Frequency and Angle"
      },
      axisY:{
        includeZero: false
      },
      data: data,  // random generator below

   });

    chart.render();
  }

   var limit = 500;    //increase number of dataPoints by increasing this

    var y = 0;
    var data = []; var dataSeries = { type: "line" };
    var dataPoints = [];
    for (var i = 0; i < limit; i += 1) {
    	
        R=<%=s1 %>;
        L=<%=s2 %>;
        C=<%=s3 %>;
    	y=Math.atan((2*Math.PI*i*L+2*Math.PI*i*C)/R)
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
width-axis: frequency<br/>
column-axis: Angle<br/>
resistance: <%=s1 %>Ω<br/>
inductance:<%=s2 %><br/>
capacitance:<%=s3 %><br/>
</body>
</html>