<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>MPPT</title>

    <style>
        #content {
            width:300px;
        }

        ul li {
            border:1px solid #cccccc;
            padding:10px;
            list-style:none;
        }

        ul li:first-of-type {
            border-radius : 10px 10px 0 0;
        }

        ul li:last-of-type {
            border-radius : 0 0 10px 10px;
        }
    </style>


</head>
<body>
<p> choose the voltage which you are in condition.</p>
<div id="content">
<ul>
<li><a href="MPPT1b.jsp" target="_blank">10</a></li>
<li><a href="MPPTb.jsp" target="_blank">100</a></li>
<li><a href="MPPT2b.jsp" target="_blank">1000</a></li>
<li><a href="MPPT3b.jsp" target="_blank">10000</a></li>
<li><a href="MPPT4b.jsp" target="_blank">100000</a></li>
<li><a href="MPPT5b.jsp" target="_blank">1000000</a></li>
<li><a href="MPPT6b.jsp" target="_blank">10000000</a></li>
</ul>
</div>
</body>
</html>