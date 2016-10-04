<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Voltage(10)</title>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/mathjs/0.15.0/math.min.js"></script> 
<body onload="calculation()">
<%
String v4=request.getParameter("v");
String v8=request.getParameter("x11");
String v9=request.getParameter("w11");
String v10=request.getParameter("ca");
String v11=request.getParameter("in");
String v12=request.getParameter("pa");
String v15=request.getParameter("le");


double v=Double.parseDouble(v4);
double x11=Double.parseDouble(v8);
double w11=Double.parseDouble(v9);
double ca=Double.parseDouble(v10);
double in=Double.parseDouble(v11);
double pa=Double.parseDouble(v12);
double le=Double.parseDouble(v15);

double st=Math.sqrt(in/ca);
double g=0.5;
double se=v*Math.sqrt(in*ca)*le;
double sm=0.5*v*Math.sqrt(in*ca)*le;
double kt=Math.sin(se)/Math.sin(sm);
double xw=w11/x11;
double ks=kt*st;
double vv=0.5*v;
%>
<canvas width="500" height="500" id="myCanvas"></canvas>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="canvasjs-1.9.0/jquery.canvasjs.min.js"></script>

<div class="box-body">
            
              <div class="flot x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px;
              bottom: 0px; right: 0px; display: block;">
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 0px; text-align: center;">0</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 48.5px; text-align: center;">1</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 97px; text-align: center;">2</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 145.5px; text-align: center;">3</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 194px; text-align: center;">4</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 242.5px; text-align: center;">5</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 291px; text-align: center;">6</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 339.5px; text-align: center;">7</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 388px; text-align: center;">8</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 436.5px; text-align: center;">9</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 247.5px; left: 485px; text-align: center;">10</div>
              
              
              </div>
              <div class="flot-y axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
               <div class="flot-tick-label tickLabel" style="position: absolute; top: 495px; left: 1px; text-align: right;">-10</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 470.25px; left: 1px; text-align: right;">-9</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 445.5px; left: 1px; text-align: right;">-8</div>
             
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 420.75px; left: 1px; text-align: right;">-7</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 396px; left: 1px; text-align: right;">-6</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 371.25px; left: 1px; text-align: right;">-5</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 346.5px; left: 1px; text-align: right;">-4</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 321.75px; left: 1px; text-align: right;">-3</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 297px; left: 1px; text-align: right;">-2</div>
             
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 270.25px; left: 6px; text-align: right;">-1</div>
              
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 222.75px; left: 1px; text-align: right;">1</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 198px; left: 1px; text-align: right;">2</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 173.25px; left: 1px; text-align: right;">3</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 148.5px; left: 1px; text-align: right;">4</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 123.75px; left: 1px; text-align: right;">5</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 99px; left: 1px; text-align: right;">6</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 74.25px; left: 1px; text-align: right;">7</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 49.5px; left: 1px; text-align: right;">8</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 24.75px; left: 1px; text-align: right;">9</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 0px; left: 1px; text-align: right;">10</div>
             
              </div>
              
<script type="text/javascript">

var canvas=document.getElementById('myCanvas'),
c=canvas.getContext('2d');
n=100,
xMin=-10,
xMax=10,
yMin=-10,
yMax=10,
math = mathjs(),
v=<%=v %>
g=<%=g %>
pa=<%=pa %>
xw=<%=xw %>
ks=<%=ks %>
w11=<%=w11 %>
vv=<%=vv%>
sm=<%= sm%>
expr = xw+'*cos('+0.5+'*x+'+vv+'*t+'+0.5+'*'+pa+')*'+ks, 
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
	  frm.rtcInput.value=xw*Math.cos(vv*t+0.5*pa)*ks;
	  var m=w11*Math.sin(v*t+pa);	
	  var skk=xw*Math.cos(vv*t+0.5*pa)*ks;
		 if(skk=m){
			alert("stable");
			 }else{
			alert("unstable"); 
		 }
			 
			}
	
</script>
<form name="rtcForm">
value: <input type="text" name="rtcInput" size="12" readonly="readonly" />
</form>
initial angle velocity:<%=v %>rad/s<br/>
maximum voltage:<%=x11 %>V<br/>
initial power:<%=w11 %>kW/s<br/>
capacitance:<%=ca %><br/>
inductance:<%=in %><br/>
phase angle:<%=pa %>°<br/>
length:<%=le %>km<br/>
</body>
</html>