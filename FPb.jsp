<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Frequency Power</title>
</head>
<body>
<form action="FP.jsp" method="get">
<p>Put the damping contant</p><br/>
damping constant: <input type="text" name="d" />km<br/><br/><br/>
<p>Put the total resistance</p>
resistance: <input type="text" name="r" />Ω<br/>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>
