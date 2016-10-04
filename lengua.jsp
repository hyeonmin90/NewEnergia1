<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>lengua</title>
    <style>

        #header, #content, #footer {
            width:1000px;
            margin : 0 auto;
            overflow:hidden;
        }

        #header .left_space, #content .left_space, #footer .left_space { 
            width:150px; height:150px;
            float:left;
            background-color:#f3f3f3;
            border:1px solid #cccccc;
        }

        #header .center_space, #content .center_space, #footer .center_space { 
            width:694px; height:150px;
            float:left;
            background-color:#f3f3f3;
            border:1px solid #cccccc;
        }

        #header .right_space, #content .right_space, #footer .right_space { 
            width:150px; height:150px;
            float:right;
            background-color:#f3f3f3;
            border:1px solid #cccccc;
        }

        #header .left_space, #footer .right_space {
            border-radius:30px 0;
        }

        #header .right_space, #footer .left_space  {
            border-radius:0 30px;
        }

        #content .left_space  {
            border-radius:0 30px 30px 0;
            height:300px;
        }

        #content .right_space  {
            border-radius:30px 0 0 30px;
            height:300px;
        }

        #header .center_space  {
            border-radius:0 0 30px 30px;
        }

        #content .center_space  {
            border-radius:30px;
            height:300px;
        }

        #footer .center_space  {
            border-radius:30px 30px 0 0;
        }

        #content .center_space ul li {
            list-style:none;
            float:left;
            padding:0 40px;
            font-weight:bold;
            font-size:20px;
        }

        #content .hiseoul {
            clear:both;
            padding:10px;
        }

    </style>
</head>
<body>
    <div id="header">
        <div class="left_space"></div>
        <div class="center_space"></div>
        <div class="right_space"></div>
    </div>

    <div id="content">
        <div class="left_space"></div>
        <div class="center_space">
            
            <div class="hiseoul">
               <h1>Lengua selecion</h1>
                <p>Puedes que hacer click basa. </br>
                <p>Pero, en pagina de grafico, entrada, selecion, estos sitios de letro es ingles</p>
            </div>
            <div>
                <ul>
                    <li><a href="����������.jsp" target="_blank">Coreano</li>
                    <li><a href="EnergyPro.jsp" target="_blank">Ingles</li>
                    <li><a href="Energia.jsp" target="_blank">Espanol</li>
                    
  </ul>
            </div>
        </div>
        
        <div class="right_space"></div>
        
    </div>

    <div id="footer">
        <div class="left_space"></div>
        <div class="center_space"></div>
        <div class="right_space"></div>
    </div>
     
</body>
</html>