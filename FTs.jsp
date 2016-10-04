<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Frequency/Time</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/mathjs/0.15.0/math.min.js"></script> 
</head>
<canvas width="500" height="500" id="myCanvas"></canvas>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="canvasjs-1.9.0/jquery.canvasjs.min.js"></script>
<body  onload="calculation()">
<%
String v1=request.getParameter("s");
String v2=request.getParameter("wn");
String v4=request.getParameter("v");
String v5=request.getParameter("a");
String v6=request.getParameter("dp");
String v7=request.getParameter("h");

double s=Double.parseDouble(v1);
double wn=Double.parseDouble(v2);
double v=Double.parseDouble(v4);
double a=Double.parseDouble(v5);
double dp=Double.parseDouble(v6);
double h=Double.parseDouble(v7);

double wd=wn*Math.sqrt(1-Math.pow(s, 2));
double m=((a*dp)/(2*h*wn))/Math.sqrt(1-Math.pow(s,2));
double l=-s*(wn);
double b=1/(Math.PI*2);
%>
<div class="box-body">
            
             <div class="flot x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px;
              bottom: 0px; right: 0px; display: block;">
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 0px; text-align: center;">0</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 24.25px; text-align: center;">1</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 48.5px; text-align: center;">2</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 72.75px; text-align: center;">3</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 97px; text-align: center;">4</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 121.25px; text-align: center;">5</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 145.5px; text-align: center;">6</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 169.75px; text-align: center;">7</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 194px; text-align: center;">8</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 218.25px; text-align: center;">9</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 241.5px; text-align: center;">10</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 265.75px; text-align: center;">11</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 290px; text-align: center;">12</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 314.25px; text-align: center;">13</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 338.5px; text-align: center;">14</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 362.75px; text-align: center;">15</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 387px; text-align: center;">16</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 411.25px; text-align: center;">17</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 435.5px; text-align: center;">18</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 459.75px; text-align: center;">19</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 484px; text-align: center;">20</div>
              
              
              </div>
              <div class="flot-y axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 492.75px; left: 1px; text-align: right;">-360</div>
             
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 468.113px; left: 1px; text-align: right;">-324</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 443.476px; left: 1px; text-align: right;">-288</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 418.839px; left: 1px; text-align: right;">-252</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 394.202px; left: 1px; text-align: right;">-226</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 369.565px; left: 1px; text-align: right;">-190</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 344.928px; left: 1px; text-align: right;">-154</div>
             
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 320.291px; left: 1px; text-align: right;">-118</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 295.654px; left: 1px; text-align: right;">-72</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 271.017px; left: 1px; text-align: right;">-36</div>
              
              
              
             
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 221.743px; left: 1px; text-align: right;">36</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 197.106px; left: 1px; text-align: right;">72</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 172.469px; left: 1px; text-align: right;">108</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 147.832px; left: 1px; text-align: right;">144</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 123.195px; left: 1px; text-align: right;">180</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 98.558px; left: 1px; text-align: right;">216</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 73.921px; left: 1px; text-align: right;">252</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 49.284px; left: 1px; text-align: right;">288</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 24.642px; left: 1px; text-align: right;">324</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 0px; left: 1px; text-align: right;">360</div>
              
              </div>
<script type="text/javascript">
var canvas=document.getElementById('myCanvas'),
c=canvas.getContext('2d');
n=100,
xMin=-10,
xMax=10,
yMin=-500,
yMax=500,
math = mathjs(),

l=<%=l %>
m=<%=m %>
wd=<%=wd %>
v=<%=v %>
b=<%=b %>

expr = b+'*('+v+'+'+m+'*cos('+l+'*t+x)*sin('+wd+'*t+x)+'+m+'*sin('+l+'*t+x)*sin('+wd+'*t+x))',
scope = { 
		x: 0,
		t: 0
			}, 
	tree = math.parse(expr, scope),
	time=0,
	timeIncrement=0.06;

drawCurve();
startAnimation();
function drawCurve(){
	var i, xPixel, yPixel,
	percentX, percentY,
	mathX, mathY;
	c.clearRect(0, 0, canvas.width, canvas.height);
	c.beginPath();
	for(i=0; i<n; i++){
		percentX=i/(n-1);
		mathX=percentX*(xMax-xMin) + xMin;
		mathY=evaluateMathExpr(mathX);
		percentY=(mathY-yMin)/(yMax-yMin);
		percentY=1-percentY;
		xPixel=percentX*canvas.width;
		yPixel=percentY*canvas.height;
		c.lineTo(xPixel, yPixel);
	}
	c.stroke();
}
function evaluateMathExpr(mathX){
	scope.x=mathX;
	scope.t=time;
	return tree.eval();
}
function startAnimation(){
	(function animloop(){
		requestAnimationFrame(animloop);
		render();
	}());
}
function render(){
	time+=timeIncrement;
	drawCurve();
}
function receiving() {
	  document.rtcForm.rtcInput.value = calculation();
	  setTimeout("receiving()", 1000);  
	}
function calculation() {
	 var frm = document.forms['rtcForm'];
	  var d = new Date();
	  setTimeout("calculation()", 1000);
	  t=d.getTime();
	  frm.rtcInput.value=b*(v+m*Math.cos(l*t)*Math.sin(wd*t)+m*Math.cos(l*t)*Math.sin(wd*t));
	  max=Math.max(b*(v+m*Math.cos(l*(t))*Math.sin(wd*(t))+m*Math.cos(l*(t))*Math.sin(wd*(t))),
			  b*(v+m*Math.cos(l*(t-0.06))*Math.sin(wd*(t-0.06))+m*Math.cos(l*(t-0.06))*Math.sin(wd*(t-0.06))),
			  b*(v+m*Math.cos(l*(t-0.12))*Math.sin(wd*(t-0.12))+m*Math.cos(l*(t-0.12))*Math.sin(wd*(t-0.12))),
			  b*(v+m*Math.cos(l*(t-0.18))*Math.sin(wd*(t-0.18))+m*Math.cos(l*(t-0.18))*Math.sin(wd*(t-0.18))),
			  b*(v+m*Math.cos(l*(t-0.24))*Math.sin(wd*(t-0.24))+m*Math.cos(l*(t-0.24))*Math.sin(wd*(t-0.24))),
			  b*(v+m*Math.cos(l*(t-0.3))*Math.sin(wd*(t-0.3))+m*Math.cos(l*(t-0.3))*Math.sin(wd*(t-0.3))),
		      b*(v+m*Math.cos(l*(t-0.36))*Math.sin(wd*(t-0.36))+m*Math.cos(l*(t-0.36))*Math.sin(wd*(t-0.36))),
		      b*(v+m*Math.cos(l*(t-0.42))*Math.sin(wd*(t-0.42))+m*Math.cos(l*(t-0.42))*Math.sin(wd*(t-0.42))),
		      b*(v+m*Math.cos(l*(t-0.48))*Math.sin(wd*(t-0.48))+m*Math.cos(l*(t-0.48))*Math.sin(wd*(t-0.48))),
		      b*(v+m*Math.cos(l*(t-0.54))*Math.sin(wd*(t-0.54))+m*Math.cos(l*(t-0.54))*Math.sin(wd*(t-0.54))),
		      b*(v+m*Math.cos(l*(t-0.6))*Math.sin(wd*(t-0.6))+m*Math.cos(l*(t-0.6))*Math.sin(wd*(t-0.6))),
		      b*(v+m*Math.cos(l*(t-0.66))*Math.sin(wd*(t-0.66))+m*Math.cos(l*(t-0.66))*Math.sin(wd*(t-0.66))),
		      b*(v+m*Math.cos(l*(t-0.72))*Math.sin(wd*(t-0.72))+m*Math.cos(l*(t-0.72))*Math.sin(wd*(t-0.72))),
		      b*(v+m*Math.cos(l*(t-0.78))*Math.sin(wd*(t-0.78))+m*Math.cos(l*(t-0.78))*Math.sin(wd*(t-0.78))),
		      b*(v+m*Math.cos(l*(t-0.84))*Math.sin(wd*(t-0.84))+m*Math.cos(l*(t-0.84))*Math.sin(wd*(t-0.84))),
		      b*(v+m*Math.cos(l*(t-0.9))*Math.sin(wd*(t-0.9))+m*Math.cos(l*(t-0.9))*Math.sin(wd*(t-0.9))),
		      b*(v+m*Math.cos(l*(t-0.96))*Math.sin(wd*(t-0.96))+m*Math.cos(l*(t-0.96))*Math.sin(wd*(t-0.96))),
		      b*(v+m*Math.cos(l*(t-1))*Math.sin(wd*(t-1))+m*Math.cos(l*(t-1))*Math.sin(wd*(t-1)))
			  		
	  ); 
	  var p=b*(v+m*Math.cos(l*t)*Math.sin(wd*t)+m*Math.cos(l*t)*Math.sin(wd*t));
	  if(p>=max){
			 max=p;
	  }
	  if(min>=p){
		  min=p;
	  }
	  if(max>min){
		  alert("Unstable");
	  }
	}
</script>
<form name="rtcForm">
value: <input type="text" name="rtcInput" size="12" readonly="readonly" />
</form>
column-axis: frequency<br/>
width-axis: time<br/>
dimensionless damping ratio: <%=v1 %><br/>
natural frequency of oscillation: <%=v2 %><br/>
initial angle velocity:<%=v %>m/s<br/>
initial angle:<%=a %>°<br/>
Disturbance power:<%=dp %>per unit<br/>
H constant:<%=h %><br/>


</body>
</html>