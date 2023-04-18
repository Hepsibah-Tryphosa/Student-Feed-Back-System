<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
                
   

	<div class="cleaner"></div>
</div> <!-- end of templatetooplate_menu -->
    
<div id="tooplate_content">

	<div id="services">
        <div class="col_w300">
            <h3 class="service1">Student Login</h3>
             <div class="col_w460">
                 <div id="contact_form">
                   <form method="post" name="contact" action="LoginCheck.jsp">
	
                       <label for="author">Login Name:</label> <input type="text" required size="20"  id="author" name="j_username" />
				<div class="cleaner_h10"></div>
							
                                <label for="email">Password:</label> <input type="password" required name="j_password" id="email" />
				<div class="cleaner_h10"></div>
                                <input type="submit" value="Submit">
                   </form>
			  
                 </div>
             </div>
        </div>
        
        <div class="col_w300">
            <h3 class="service2">Admin Login</h3>
            <div class="col_w460">
                 <div id="contact_form">
                   <form method="post" name="contact" action="AdminLoginCheck.jsp">
	
                       <label for="author">Login Name:</label> <input type="text" required size="20"  id="author" name="aname" />
				<div class="cleaner_h10"></div>
							
                                <label for="email">Password:</label> <input type="password" required name="pswd" id="email" />
				<div class="cleaner_h10"></div>
                                <input type="submit" value="Submit"><br/>
                                    <%
       String msg1=request.getParameter("msg1");

       if(msg1!=null && msg1.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Compus Register Success <a href=index.jsp>login</a></blink></font>");
	}
       else if(msg1!=null && msg1.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>Login Faild please check the Username and password</blink></font>");
       }
       %>  
                   </form>
			  
                 </div>
             </div>
        </div>
        
        <div class="col_w300 last_col">
            <h3 class="service3">Student Registration </h3>
            <div class="col_w460">
                <div id="contact_form">
                    <form name="loginForm" action="./CompusRegisterController" method="post" id="Form1">

 <label for="j_username">Username</label>
 <input name="j_username" required type="text" size="20" id="Username" tabindex="1" class="SignInTextBox">
<label for="j_password">Password</label>
<input name="j_password" required type="password" size="20" id="Password" tabindex="2" class="SignInTextBox">
<br>
<label for="j_password">CWID</label>
<input name="j_cwid" type="text" required size="20" id="Password" tabindex="2" class="SignInTextBox">
<label for="j_password">pin</label>
<input name="j_pin" type="text" required size="20" id="Password" tabindex="2" class="SignInTextBox">
<label for="j_email">Email</label>
<input name="j_email" type="email" required size="20" id="Password" tabindex="2" class="SignInTextBox">
       
<input type="submit" name="btnSignIn" value="Register" tabindex="3" class="SignInButton">
<div style="margin: 10px 0px; font-size: 11pt; font-weight: bold;">

</div>
   
  <%
       String msg=request.getParameter("msg");

       if(msg!=null && msg.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Compus Register Success <a href=index.jsp>login</a></blink></font>");
	}
       else if(msg!=null && msg.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>Username already exist or CWID is wrong</blink></font>");
       }
       %>  
</form>

                </div>
            </div>
        </div>
        
        <div class="cleaner"></div>
    </div>
    
    <div class="content_box content_box_last">
    	<div class="col_w460">
        	<h2> Welcome to Our Feedback Site</h2>
                <div class="image_wrapper image_fl"><img src="images/faculty.jpg" alt="Image 02" /></div>
          
            <p>This is JSP/mysql based faculty evaluation system which gives web-based graphical report. Students can give feedback in 10 Questions. Jsp is used for filtration.</p>
            <p>The Project entitled as Student Staff Feedback System is used to provide feedback in an easy and quick manner to the college principal and Hod. So we call it as Student Staff Feedback System which delivers via the student staff  interface as online system which acting as a Service Provider By using this technology we can make fast feedback about the staff by students on time to head of departments as they referred in online system. This project has four kinds of users Student, Staff, Hod, and Principal. The student can give feedback in online system provided by college staff. First of staff can prepare questions to the online system. After that it was viewed by the students and can give feedback about the lecturers</p>
            
            <div class="cleaner_h20"></div>
           
            
            
        </div>
        
        <div class="col_w460 last_col">
        	<h2>Faculty Development Feedback</h2>
            <div class="image_wrapper"><img src="images/tooplate_image_03.jpg" alt="Image 03" /></div>
            <p>The rapid growth of online learning has led to the development of faculty inservice evaluation models focused on quality improvement of degree programs. Based on current 'best practices' of student online assessment, the Online Faculty Development and Assessment System (OFDAS), was designed to serve the dual purpose of faculty development and classroom learning environment assessment.</p>
            <p>Results, as illustrated in this paper, show that the OFDAS encouraged faculty to reflect on the professionalism of their teaching skills. Implications are discussed in terms of emphasizing the process of online teaching, knowledge acquisition, and incorporating varying perspectives, all which yielded a comprehensive view of faculty teaching attitudes and their relationship to student's perceptions of their classroom environment</p>
            
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