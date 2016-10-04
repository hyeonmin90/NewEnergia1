<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Energy Storage</title>
</head>
<body>
<form action="Storage.jsp" method="get">
<p>Put the capacitance of your battery </p>
capacitance: <input type="text" name="c" />K<br/>
<p>Put the generator rectifier voltage(solar: generator voltage). </p>
generator voltage(rectifier): <input type="text" name="g" />V<br/>
<p>Put the total resistance(except resistance connecting to battery parallel).</p>
resistance: <input type="text" name="r" />Ω<br/>
<p>Put the voltage of capacitance.</p>
voltage of capacitance: <input type="text" name="v" />V<br/>
<p>Put the Load Power.</p>
Load Power: <input type="text" name="pl" />kW/s<br/>
<p>Put the resistance connecting to battery parallel.</p>
capacitance resistance: <input type="text" name="rc" />Ω<br/>
<p>Put the initial energy of battery.</p>
initial energy: <input type="text" name="e" />kW<br/>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>