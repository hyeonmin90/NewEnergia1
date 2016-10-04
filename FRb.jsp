<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Frequency/Impedance</title>
</head>
<body>
<form action="FR.jsp" method="get">
<p>Please set the panel vertically to measure angle.</p><br/>
<p>Put the resistance</p>
resistance: <input type="text" name="R" />Ω<br/>
<p>Put the reactance constance</p>
reactance constance: <input type="text" name="I" /><br/>
<p>Put the capacitance constance</p>
capacitance constance: <input type="text" name="C" /><br/>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>