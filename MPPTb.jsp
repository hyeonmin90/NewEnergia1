<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>MPPT</title>
</head>
<body>
<form action="MPPT.jsp" method="get">
<p>Put temperature in K </p>
temperature: <input type="text" name="t" />K<br/>
<p>Put the light current </p>
light current: <input type="text" name="a" />[A]<br/>
<p>Put the initial current.</p>
initial current: <input type="text" name="i" />[A]<br/>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>