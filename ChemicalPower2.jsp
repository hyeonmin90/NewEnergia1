<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Chemical Power</title>
</head>
<body>
<%
String v1=request.getParameter("minus");
String v2=request.getParameter("plus");
String v3=request.getParameter("electrons");
String v4=request.getParameter("ion");
double p=(double)(Math.random()*50);
double f=8780.69;
double g=Double.parseDouble(v1);
double n=Double.parseDouble(v2);
double v=Double.parseDouble(v3);
double u=Double.parseDouble(v4);
double e=Math.log(g/n)*f*p*u/v;
%>
chemical Power:<%= e %>kW/s<br/>
mol density of minus:<%=g %>mol<br/>
mol density of plus:<%=n %>mol<br/>
the amount of electrons:<%=v %><br/>
ion coefficient:<%=u %>
</body>
</html>