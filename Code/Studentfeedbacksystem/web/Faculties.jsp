<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.feedback.db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
        
       
          
    </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Feed Back System </title>
<meta name="keywords" content="corporate blue, theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Feed Back System is a free website template provided by tooplate.com" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

    <link rel="stylesheet" type="text/css" href="./css/user.css">
    <link rel="stylesheet" type="text/css" href="./css/table.css">
    <script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
        function ShowCurrentTime() {
        var dt = new Date();
        document.getElementById("lblTime").innerHTML = dt.toLocaleTimeString();
        window.setTimeout("ShowCurrentTime()", 1000); // Here 1000(milliseconds) means one 1 Sec  
}
</script>
<!--   Free Website Template by t o o p l a t e . c o m   -->
</head>
<body onLoad="noBack(),ShowCurrentTime();" onpageshow="if (event.persisted) noBack();" onUnload=""> 

<div id="tooplate_header_wrapper">
	<div id="tooplate_header">
    
    	<div id="site_title">
            <h2 style="color: #b2c9d2">Feedback System</h2><span style="color: #b2c9d2">Student Feedback System</span></a>
        </div> <!-- end of site_title -->
        
        <div id="header_right">
        
        	
                    
              <!--  <ul>
                    <li><a href="#"><img src="images/facebook.png" alt="facebook" /></a></li>
                    <li><a href="#"><img src="images/twitter.png" alt="twitter" /></a></li>
                    <li><a href="#"><img src="images/linkedin.png" alt="linkin" /></a></li>
                    <li><a href="#"><img src="images/technorati.png" alt="technorati" /></a></li>
                    <li><a href="#"><img src="images/myspace.png" alt="myspace" /></a></li>                
                </ul>-->
                
			         
           <div id="search_box">
              <jsp:include page="studentmenu.html"></jsp:include>  
            </div>     	
       
    
    </div>
</div>

<div id="tooplate_middle_wrapper">
	<div id="tooplate_middle">
    
            <img src="images/studentfeedback.jpg" width="350" height="200" alt="Image 01" />
        
        <div id="middle_content">
        	<h2>Student Feedback on Sports</h2>
            <p>College is a lot better than I thought it would be. One of the best things is although its hard work, I have a lot more freedom than at school and I have made loads of new friends</p>
           
        </div>
    
    </div>
</div>
    
<div id="tooplate_content">  

       
        </div>   
    
        <h1></h1>
</div>

<div id="tooplate_footer_wrapper">

     
     <!-- end of templatetooplate_footer -->
</div> 
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>