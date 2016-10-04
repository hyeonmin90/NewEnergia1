<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Energy Storage</title>
<%
String v1=request.getParameter("c");
String v2=request.getParameter("g");
String v3=request.getParameter("r");
String v4=request.getParameter("v");
String v5=request.getParameter("pl");
String v6=request.getParameter("rc");
String v7=request.getParameter("e");


double c=Double.parseDouble(v1);
double g=Double.parseDouble(v2);
double r=Double.parseDouble(v3);
double v=Double.parseDouble(v4);
double pl=Double.parseDouble(v5);
double rc=Double.parseDouble(v6);
double e=Double.parseDouble(v7);

double ia=(g-v)/r;
double ib=v/rc;
double pf=0.5*c*Math.pow(v, 2);
double pb=(0.5*Math.pow(ia, 2)*r)+(0.5*rc*Math.pow(ib, 2));
%>
<script type="text/javascript">
window.onload = function () {

    var chart = new CanvasJS.Chart("chartContainer",
    {
      zoomEnabled: true,
      title:{
        text: "Energy Storage"
      },
      axisY:{
        includeZero: false
      },
      data: data,  // random generator below

   });

    chart.render();
  }

   var limit = 10;    //increase number of dataPoints by increasing this

    var y = 0;
    var data = []; var dataSeries = { type: "line" };
    var dataPoints = [];
    for (var i = 0; i < limit; i += 1) {
    	c=<%=c %>;
    	g=<%=g %>;
    	r=<%=r %>;
    	v=<%=v %>;
    	pl=<%=pl %>
    	rc=<%=rc %>
    	e=<%=e %>
    	pf=<%=pf %>
    	pb=<%=pb %>
    	if(pl>(pl-pb) && pl>=pf){
    	y=e+((pf-pl)*i)-(pb*i);
         dataPoints.push({
          x: i,
          y: y
           });
         }else if((pl-pf)>=pl && pl>=pf){
        	 y=e+((pf-pl)*i);
             dataPoints.push({
              x: i,
              y: y
               });
         }else if(pl>(pl-pb) && pl<pf){
        	 y=e-(pb*i);
             dataPoints.push({
              x: i,
              y: y
               });
         }else if((pl-pb)>=pl && pl<pf){
        	 y=e;
             dataPoints.push({
              x: i,
              y: y
               });
         }
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
	column-axis:Storage Energy(kW)<br/>
	Width-axis: time[s]<br/>
	capacitance:<%=c %><br/>
    generator voltage(rectifier):<%=g %>V<br/>
    resistance:<%=r %>Ω<br/>
    voltage of capacitance:<%=v %>V<br/>
    Load Power:<%=pl %>kW/s<br/>
    capacitance resistance:<%=rc %>Ω<br/>
    initial energy:<%=e %>kW<br/>
</body>
</html>