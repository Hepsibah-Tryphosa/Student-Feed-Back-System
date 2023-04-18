<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*" %>
<%@page import="com.feedback.db.DBConnection" %>
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
<body> 

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
        <li><a href="AdminHome.jsp" >Home</a></li>
        <li><a href="AdminSport.jsp">Sports</a></li>
        <li><a href="AdminGastronome.jsp">Gastronome</a></li>
        <li><a href="AdminCSUFDepartment.jsp">CSUF Department</a></li>
        <li><a href="AdminLibraries.jsp">Libraries</a></li>
        <li><a href="AdminFaculties.jsp" class="current">Faculties</a></li>
        <li><a href="Logout.jsp">LogOut</a></li>
    </ul>    	

	<div class="cleaner"></div>
</div> <!-- end of templatetooplate_menu -->
    
<div id="tooplate_content">

	<div id="services">
        <div class="col_w300">
            <h3 class="service1">Feedback Of Faculties 1</h3>
          <%
Connection confac1 =null;
PreparedStatement psfac1 = null,ps1fac1=null;
ResultSet rsfac1 = null;
String query1fac1 = "select count from faculties1 where qid=?";
String query2fac1 = "select sum(ratingvalue) from faculties1";
int sumofRatingfac1=0;
int nousersRequestfac1 =0;
float totalFeedBackfac1=0.0f;
int finalRequestfac1=0;
try{
confac1 =  DBConnection.getConnection();
psfac1 = confac1.prepareStatement(query1fac1);
psfac1.setString(1,"user");
rsfac1 = psfac1.executeQuery();
rsfac1.next();
nousersRequestfac1 = rsfac1.getInt(1);

ps1fac1 = confac1.prepareStatement(query2fac1);
rsfac1= ps1fac1.executeQuery();
rsfac1.next();
sumofRatingfac1 = rsfac1.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestfac1 = nousersRequestfac1*50;
 totalFeedBackfac1 = (float)((sumofRatingfac1*100)/finalRequestfac1);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1fac1.close();
psfac1.close();
rsfac1.close();
confac1.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Faculties 1  is: <b style="color: #333399" ><%=totalFeedBackfac1%> &nbsp;%</b> </p>

        </div>
        
        <div class="col_w300">
            <h3 class="service2">Feedback Of Faculties 2</h3>
            <%
Connection confac2 =null;
PreparedStatement psfac2 = null,ps1fac2=null;
ResultSet rsfac2 = null;
String query1fac2 = "select count from faculties2 where qid=?";
String query2fac2 = "select sum(ratingvalue) from faculties2";
int sumofRatingfac2=0;
int nousersRequestfac2 =0;
float totalFeedBackfac2=0.0f;
int finalRequestfac2=0;
try{
confac2 =  DBConnection.getConnection();
psfac2 = confac2.prepareStatement(query1fac2);
psfac2.setString(1,"user");
rsfac2 = psfac2.executeQuery();
rsfac2.next();
nousersRequestfac2 = rsfac2.getInt(1);

ps1fac2 = confac2.prepareStatement(query2fac2);
rsfac2= ps1fac2.executeQuery();
rsfac2.next();
sumofRatingfac2 = rsfac2.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestfac2 = nousersRequestfac2*50;
 totalFeedBackfac2 = (float)((sumofRatingfac2*100)/finalRequestfac2);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1fac2.close();
psfac2.close();
rsfac2.close();
confac2.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Faculties 2  is: <b style="color: #333399" ><%=totalFeedBackfac2%> &nbsp;%</b> </p>
        </div>
        
        <div class="col_w300 last_col">
            <h3 class="service3">Feedback Of Faculties 3</h3>
       <%
Connection confac3 =null;
PreparedStatement psfac3 = null,ps1fac3=null;
ResultSet rsfac3 = null;
String query1fac3 = "select count from faculties3 where qid=?";
String query2fac3 = "select sum(ratingvalue) from faculties3";
int sumofRatingfac3=0;
int nousersRequestfac3 =0;
float totalFeedBackfac3=0.0f;
int finalRequestfac3=0;
try{
confac3 =  DBConnection.getConnection();
psfac3 = confac3.prepareStatement(query1fac3);
psfac3.setString(1,"user");
rsfac3 = psfac3.executeQuery();
rsfac3.next();
nousersRequestfac3 = rsfac3.getInt(1);

ps1fac3 = confac3.prepareStatement(query2fac3);
rsfac3= ps1fac3.executeQuery();
rsfac3.next();
sumofRatingfac3 = rsfac3.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestfac3 = nousersRequestfac3*50;
 totalFeedBackfac3 = (float)((sumofRatingfac3*100)/finalRequestfac3);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1fac3.close();
psfac3.close();
rsfac3.close();
confac3.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Faculties 3 is: <b style="color: #333399" ><%=totalFeedBackfac3%> &nbsp;%</b> </p>

        </div>
            <div class="col_w300 last_col">
            <h3 class="service1">Feedback Of Faculties 4</h3>
            <%
Connection con =null;
PreparedStatement ps = null,ps1=null;
ResultSet rs = null;
String query1 = "select count from faculties4 where qid=?";
String query2 = "select sum(ratingvalue) from faculties4";
int sumofRating=0;
int nousersRequest =0;
float totalFeedBack=0.0f;
int finalRequest=0;
try{
con =  DBConnection.getConnection();
ps = con.prepareStatement(query1);
ps.setString(1,"user");
rs = ps.executeQuery();
rs.next();
nousersRequest = rs.getInt(1);

ps1 = con.prepareStatement(query2);
rs= ps1.executeQuery();
rs.next();
sumofRating = rs.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequest = nousersRequest*50;
 totalFeedBack = (float)((sumofRating*100)/finalRequest);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1.close();
ps.close();
rs.close();
con.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Faculties 4 is: <b style="color: #333399" ><%=totalFeedBack%> &nbsp;%</b> </p>
        </div>
        <div class="col_w300 last_col">
            <h3 class="service2">Add Faculties</h3>
            <form action="AddFaculty.jsp" method="post">
                <pre>
<%
com.feedback.model.FacultyIDGenerate id = new com.feedback.model.FacultyIDGenerate();
int fid = id.facultyID();
String facultyID ="CSU"+fid;
%>
Faculty ID  : <input type="text" name="fid" value="<%=facultyID%>" readonly/>
Faculty Name: <input type="text" name="fname" required="required"/>
Subject     : <input type="text" name="subject" required="required"/>
Experience  : <input type="text" name="experience" required="required"/>
Department  : <input type="text" name="department" required="required"/><br/>
         <input type="submit" value="Submit"/>     <input type="reset" value="Reset"/>
<%
 String message=request.getParameter("msg");

       if(message!=null && message.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Faculty Added Success</blink></font>");
	}
       else if(message!=null && message.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>Faculty Already Existed</blink></font>");
       }
      
%>
                </pre>
            </form>
        </div>
         <div class="col_w300 last_col">
            <h3 class="service3">Faculty Feedbacks</h3>
            <form action="AdminFacultyNamesFeedback.jsp" method="post">
                Select Faculty Name:<select name="fname" required="required">
                    <option value="">--Select Faculty Name--</option>
            <%
              Connection fcon    = null;
              PreparedStatement fps = null;
              ResultSet frs = null;
              String fquery = "select fid,fname from faculty";
              String facID = null;
              String fname = null;
       
       try{
       con = DBConnection.getConnection();
       fps  = con.prepareStatement(fquery);
       frs = fps.executeQuery();
       while(frs.next()){
       facID = frs.getString(1);
       fname = frs.getString(2);
       String facultyName = fname+"("+facID+")";
       %>
       <option value="<%=facID%>"><%=facultyName%></option>
                    <%
       }
         }catch(Exception ee){
         System.out.println("Error at Geting facuklty");
         }finally{
         try{
         frs.close();
         fps.close();
         fcon.close();
         }catch(Exception e){
         
         }
         }
            %>
            
                </select>
            <input type="submit" value="Fetch"/>
            </form>
            
        </div>
        <div class="cleaner"></div>
    </div>
    
    <div class="content_box content_box_last">
    	<div class="col_w460">
        	<h2> Welcome to Faculty Feedback</h2>
                <div class="image_wrapper image_fl"><img src="images/faculty1.jpg" alt="Image 02" /></div>
          
            <p>University is known for global leadership in education, and the University faculty is composed of men and women who are world-class scholars. Faculty members are passionate and curious individuals who continue their own research while teaching at Harvard. They come from across the country and all over the world, bringing with them a diverse wealth of knowledge. </p>
            <p>            
                A faculty is a division within a university comprising one subject area, 
or a number of related subject areas. 
In American usage such divisions are generally referred to as colleges 
(e.g., "college of arts and sciences") or schools (e.g., "school of business"), 
but may also mix terminology. Harvard University has a faculty of arts and sciences but a law school.
            </p>
            
            <div class="cleaner_h20"></div>
            
            
            
        </div>
        
        <div class="col_w460 last_col">
        	<h2>Faculty</h2>
                <div class="image_wrapper"><img src="images/facultydpharm.jpg" width="320" height="150" alt="Image 03" /></div>
            <p>
                The  University which served as a model for most of the later medieval universities in Europe and North America, 
had four faculties: the Faculties of Theology, Law, Medicine, and finally the Faculty of Arts, 
from which every student had to graduate in order to continue his training in one of the other three, 
sometimes known as the higher faculties. The privilege to establish these four faculties was usually part 
of all medieval charters for universities, but not every university could do so in practice. 

            </p>
           
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