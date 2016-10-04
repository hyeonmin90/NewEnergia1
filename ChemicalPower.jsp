<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ChemicalPower</title>
</head>
<body>
<form action="ChemicalPower2.jsp" method="get">
<p>Type the mol density at the minus pole.</p>
mol density of minus:<input type="text" name="minus" />mol<br/>
<p>Type the mol density at the plus pole.</p>
mol density of plus:<input type="text" name="plus" />mol<br/>
<p>Type the amount of electrons which move.</p>
the amount of electrons:<input type="text" name="electrons"/><br/>
<p>Type the ion coefficient.</p>
ion coefficient:<input type="text" name="ion"/><br/>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>