<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Generation Graph</title>
</head>
<body>
<form action="Windg.jsp" method="get">

<p>Put altitude of your location </p>
altitude: <input type="text" name="z" />m<br/>
<p>Put the temperature </p>
temperature: <input type="text" name="t" />K<br/>
<p>Put the area of rotation.</p>
area: <input type="text" name="a" />m²<br/>


<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>