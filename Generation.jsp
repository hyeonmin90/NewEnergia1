<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Generation</title>

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
<p> choose the latitude where you are.</p>
<div id="content">
<ul>
<li><a href="tropicalG.jsp" target="_blank">tropical</a></li>
<li><a href="warmG.jsp" target="_blank">warm</a><li>
<a href="potalG.jsp" target="_blank">potal</a>
<li><a href="coldG.jsp" target="_blank">cold</a></li>
</ul>
</div>
</body>
</html>