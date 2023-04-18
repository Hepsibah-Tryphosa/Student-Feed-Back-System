<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.feedback.db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Feed Back System </title>
<meta name="keywords" content="corporate blue, theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Feed Back System is a free website template provided by tooplate.com" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="./css/table.css"/>
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
        
       
          
    </script>
<!--   Free Website Template by t o o p l a t e . c o m   -->
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload=""> 

<div id="tooplate_header_wrapper">
	<div id="tooplate_header">
    
    	<div id="site_title">
            <h1><h3 style="color: #b2c9d2">Feedback System</h3><span style="color: #b2c9d2">Student Feedback System</span></a></h1>
        </div> <!-- end of site_title -->
        
        <div id="header_right">
        
        	<div id="social_box">
              <!--  <ul>
                    <li><a href="#"><img src="images/facebook.png" alt="facebook" /></a></li>
                    <li><a href="#"><img src="images/twitter.png" alt="twitter" /></a></li>
                    <li><a href="#"><img src="images/linkedin.png" alt="linkin" /></a></li>
                    <li><a href="#"><img src="images/technorati.png" alt="technorati" /></a></li>
                    <li><a href="#"><img src="images/myspace.png" alt="myspace" /></a></li>                
                </ul>-->
                <div class="cleaner"></div>
			</div>   
			         
            <!-- <div id="search_box">
                <form action="#" method="get">
                    <input type="text" value="Search" name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                  <input type="submit" name="Search" value="" id="searchbutton" title="Search" />
                </form>
            </div>-->
            	
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

 <div id="tooplate_menu">
                
    <ul>
        <li><a href="AdminHome.jsp" class="current">Home</a></li>
        <li><a href="AdminSport.jsp">Sports</a></li>
        <li><a href="AdminGastronome.jsp">Gastronome</a></li>
        <li><a href="AdminCSUFDepartment.jsp">CSUF Department</a></li>
        <li><a href="AdminLibraries.jsp">Libraries</a></li>
        <li><a href="AdminFaculties.jsp">Faculties</a></li>
        <li><a href="Logout.jsp">LogOut</a></li>
    </ul>    	

	<div class="cleaner"></div>
</div> <!-- end of templatetooplate_menu -->
    
<div id="tooplate_content">

	<div id="services">
        <div class="col_w300">
            <h3 class="service1">Total Student Feedback</h3>
            <%
String dept = request.getParameter("dept");

%>
            <p>       
<p align="center" >FeedBack of the <%=dept%> </p>
<br/><Table class="CSSTableGenerator">
    
    <tr>
        <th>S.no</th>
        <th>Topic</th>
        <th>Student Name</th>
        <th>Mail</th>
        <th>FeedBack</th>
    </tr>
<%
 Connection con = null;
 PreparedStatement ps = null;
 ResultSet rs = null;
 String query = "select *from allfeedback where topicname=?";
 try{
  con = DBConnection.getConnection();
  ps = con.prepareStatement(query);
  ps.setString(1, dept);
  rs = ps.executeQuery();
  int no=0;
  while(rs.next()){
      no++;
  %>
  <tr>
      <Td><%=no%></Td>
      <Td><%=rs.getString(1)%></Td>
      <Td><%=rs.getString(2)%></Td>
      <Td><%=rs.getString(3)%></Td>
      <Td><%=rs.getString(4)%></Td>
  </tr>
    <%
  }
  }catch(Exception e){
  System.out.println("Getting Error at dept FeddBack:"+e.getMessage());
 }finally{
  try{
  rs.close();
  ps.close();
  con.close();
  }catch(Exception ee){}
 }
    
%>
    
</Table>
<br/><br/>
                
            </p>
               
        <div class="cleaner"></div>
    </div>
    
  <div class="content_box content_box_last">
    	<div class="col_w460">
        	<h2>Basketball Feedback</h2>
                <div class="image_wrapper image_fl"><img src="images/basketball.jpg" height="120" width="120" alt="Image 02" /></div>
          
            <p>Basketball is a sport played by two teams of five players on a rectangular court. The objective is to shoot a ball through a hoop 18 inches (46 cm) in diameter and 10 feet (3.048 m) high mounted to a backboard at each end. Basketball is one of the world most popular and widely viewed sports. The National Basketball Association  is the most popular and widely. </p>
            <p>A team can score a field goal by shooting the ball through the basket during regular play. 
A field goal scores three points for the shooting team if the player shoots from behind the 
three-point line, and two points if shot from in front of the line. 
A team can also score via free throws, which are worth one point, 
after the other team was assessed with certain fouls.</p>
            
            <div class="cleaner_h20"></div>
            
        </div>
        
        <div class="col_w460 last_col">
        	<h2>Sed venenatis mattis dignissim</h2>
                <div class="image_wrapper"><img src="images/feedbackimage.jpg" height="120" width="120" alt="Image 03" /></div>
            <p>Feedback occurs when outputs of a system are routed back as inputs as part of a chain of cause-and-effect that forms a circuit or loop.The system can then be said to feed back into itself. The notion of cause-and-effect has to be handled carefully when applied to feedback systems</p>
            
        </div>
		
        <div class="cleaner"></div>            
    </div>
	
    <div class="cleaner"></div>
</div>

<div id="tooplate_footer_wrapper">

     <div id="tooplate_footer">
    
        Copyright © 2048 <a href="#">Company Name</a>
    
    </div> 
     <!-- end of templatetooplate_footer -->
</div> 
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>