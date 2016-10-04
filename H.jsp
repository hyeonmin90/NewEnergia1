<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Value</title>
</head>
<body>
<%
String v1=request.getParameter("j");
String v2=request.getParameter("w");
String v3=request.getParameter("sb");
String v4=request.getParameter("pm");
String v5=request.getParameter("a");
String v6=request.getParameter("f");
String v7=request.getParameter("d");

double j=Double.parseDouble(v1);
double w=Double.parseDouble(v2);
double sb=Double.parseDouble(v3);
double pm=Double.parseDouble(v4);
double a=Double.parseDouble(v5);
double f=Double.parseDouble(v6);
double d=Double.parseDouble(v7);
double h=(j*Math.pow(w,2))/(2*sb);
double ps=pm*Math.cos(a);
double wn=Math.sqrt((Math.PI*f*ps)/h);
double s=(d/2)*Math.sqrt((Math.PI*f)/(h*ps));

%>
H constant(per unit inertia constant):<%=h %>
natural frequency of oscillation:<%=wn %>
dimensionless damping ratio:<%=s %>
</body>

</html>