<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Generation</title>
</head>
<body>
<% 
String v1=request.getParameter("lat");
String v2=request.getParameter("len1");
String v3=request.getParameter("len2");

double s1=Double.parseDouble(v1);
double s2=Double.parseDouble(v2);
double s3=Double.parseDouble(v3);
double s4=Math.atan(s3/s2);
double GENERATOR_VALUE=62495;
double s5=180*s4;

double calcFirst = Math.pow((6-(s1/1000)), 2);
double res = 0.4237-(0.00821 * calcFirst);
double result=0.99*res;

double calcSec=Math.pow((6.5-(s1/1000)), 2);
double res1 = 0.5055+(0.00595 * calcSec);
double result1=0.99*res1;

double calcFin=Math.pow((2.5-(s1/1000)), 2);
double res2=0.2711-(0.01858*calcFin);
double result2=1.01*res2;

double A=Math.exp(-result2/Math.cos(s4));
double B=result+(result1*A);
double GenerationData=GENERATOR_VALUE*(0.271+0.706*B);
%>
<form action="add" method="get">
Altitude(m): <%= v1 %>m <br/>
Angle: <%= s5 %>°<br/>
Generation(kW/m²): <%= GenerationData %>kW/m² <br/><br/>

</form>
</body>
</html>