<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Frequency/Time</title>
</head>
<body>
<form action="FTs.jsp" method="get">
<p>Put dimensionless damping ratio</p>
dimensionless damping ratio: <input type="text" name="s" /><br/>
<p>Put the natural frequency of oscilation </p>
natural frequency of oscillation: <input type="text" name="wn" /><br/>
<p>Put the initial angle velocity</p>
initial velocity: <input type="text" name="v" />rad/s<br/>
<p>Put the initial angle</p>
initial angle: <input type="text" name="a" />°<br/>
<p>Put the Disturbance Power</p>
Disturbance Power: <input type="text" name="dp" />per unit<br/>
<p>Put the H constant(per unit inertia)</p>
H: <input type="text" name="h" /><br/>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>