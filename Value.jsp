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
double se=v*Math.sqrt(in*ca)*le;
double sm=0.5*v*Math.sqrt(in*ca)*le;
double kt=Math.sin(se)/Math.sin(sm);
double xw=w11/x11;
double ks=kt*st;
double va=xw*ks;
%>
Value:<%=va %>
</body>
</html>