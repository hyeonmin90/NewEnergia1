<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Frequency/Power</title>
</head>
<body>
<% 
String v1=request.getParameter("d");
String v2=request.getParameter("r");

double d=Double.parseDouble(v1);
double r=Double.parseDouble(v2);
double pf=1/(r+d);
%>
frequency change per power: <%=pf %><br/>
damping constance: <%=d %><br/>
resistance:<%=r %><br/>
</body>
</html>