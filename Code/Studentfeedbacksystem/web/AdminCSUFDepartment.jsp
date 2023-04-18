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
        <li><a href="AdminCSUFDepartment.jsp" class="current">CSUF Department</a></li>
        <li><a href="AdminLibraries.jsp">Libraries</a></li>
        <li><a href="AdminFaculties.jsp">Faculties</a></li>
        <li><a href="Logout.jsp">LogOut</a></li>
    </ul>    	

	<div class="cleaner"></div>
</div> <!-- end of templatetooplate_menu -->
    
<div id="tooplate_content">

	<div id="services">
        <div class="col_w300">
            <h3 class="service1">Feedback College of Education</h3>
         <%
Connection conorg =null;
PreparedStatement psorg = null,ps1org=null;
ResultSet rsorg = null;
String query1org = "select count from organization where qid=?";
String query2org = "select sum(ratingvalue) from organization";
int sumofRatingorg=0;
int nousersRequestorg =0;
float totalFeedBackorg=0.0f;
int finalRequestorg=0;
try{
conorg =  DBConnection.getConnection();
psorg = conorg.prepareStatement(query1org);
psorg.setString(1,"user");
rsorg = psorg.executeQuery();
rsorg.next();
nousersRequestorg = rsorg.getInt(1);

ps1org = conorg.prepareStatement(query2org);
rsorg= ps1org.executeQuery();
rsorg.next();
sumofRatingorg = rsorg.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestorg = nousersRequestorg*50;
 totalFeedBackorg = (float)((sumofRatingorg*100)/finalRequestorg);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at College OF Engineering:"+e.getMessage());
}
finally{
try{
ps1org.close();
psorg.close();
rsorg.close();
conorg.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The College Of Engineering is: <b style="color: #333399" ><%=totalFeedBackorg%> &nbsp;%</b> </p>

        </div>
        
        <div class="col_w300">
            <h3 class="service2">Feedback College of Engineering and Computer Science</h3>
             <%
Connection conmba =null;
PreparedStatement psmba = null,ps1mba=null;
ResultSet rsmba = null;
String query1mba = "select count from mbadepart where qid=?";
String query2mba = "select sum(ratingvalue) from mbadepart";
int sumofRatingmba=0;
int nousersRequestmba =0;
float totalFeedBackmba=0.0f;
int finalRequestmba=0;
try{
conmba =  DBConnection.getConnection();
psmba = conmba.prepareStatement(query1mba);
psmba.setString(1,"user");
rsmba = psmba.executeQuery();
rsmba.next();
nousersRequestmba = rsmba.getInt(1);

ps1mba = conmba.prepareStatement(query2mba);
rsmba= ps1mba.executeQuery();
rsmba.next();
sumofRatingmba = rsmba.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestmba = nousersRequestmba*50;
 totalFeedBackmba = (float)((sumofRatingmba*100)/finalRequestmba);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at College of Engineering and :"+e.getMessage());
}
finally{
try{
ps1mba.close();
psmba.close();
rsmba.close();
conmba.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The College of Engineering and Computer Science is: <b style="color: #333399" ><%=totalFeedBackmba%> &nbsp;%</b> </p>
        </div>
        
        <div class="col_w300 last_col">
            <h3 class="service3">Feedback College of Health and Human Development</h3>
          <%
Connection concomm =null;
PreparedStatement pscomm = null,ps1comm=null;
ResultSet rscomm = null;
String query1comm = "select count from Community where qid=?";
String query2comm = "select sum(ratingvalue) from Community";
int sumofRatingcomm=0;
int nousersRequestcomm =0;
float totalFeedBackcomm=0.0f;
int finalRequestcomm=0;
try{
concomm =  DBConnection.getConnection();
pscomm = concomm.prepareStatement(query1comm);
pscomm.setString(1,"user");
rscomm = pscomm.executeQuery();
rscomm.next();
nousersRequestcomm = rscomm.getInt(1);

ps1comm = concomm.prepareStatement(query2comm);
rscomm= ps1comm.executeQuery();
rscomm.next();
sumofRatingcomm = rscomm.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestcomm = nousersRequestcomm*50;
 totalFeedBackcomm = (float)((sumofRatingcomm*100)/finalRequestcomm);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at College of Health Feedback:"+e.getMessage());
}
finally{
try{
ps1comm.close();
pscomm.close();
rscomm.close();
concomm.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The College of Health and Human Development is: <b style="color: #333399" ><%=totalFeedBackcomm%> &nbsp;%</b> </p>
        </div>
        <div class="cleaner"></div>
    </div>
            <div class="col_w300 last_col">
            <h3 class="service4">Feedback College of Humanities And Social Sciences</h3>
           <%
Connection con =null;
PreparedStatement ps = null,ps1=null;
ResultSet rs = null;
String query1 = "select count from political where qid=?";
String query2 = "select sum(ratingvalue) from political";
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
    
System.out.println("Error at College of Humanities Feedback:"+e.getMessage());
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
<p>Total FeedBack Percentage of The College of Humanities And Social Sciences is: <b style="color: #333399" ><%=totalFeedBack%> &nbsp;%</b> </p>

        </div>
        
<div class="col_w300 last_col">
            <h3 class="service4">Feedback College of Natural Science and Mathematics</h3>
           <%
Connection con44 =null;
PreparedStatement ps44 = null,ps144=null;
ResultSet rs44 = null;
String query144 = "select count from collegeofnatural where qid=?";
String query244 = "select sum(ratingvalue) from collegeofnatural";
int sumofRating44=0;
int nousersRequest44 =0;
float totalFeedBack44=0.0f;
int finalRequest44=0;
try{
con44 =  DBConnection.getConnection();
ps44 = con44.prepareStatement(query144);
ps44.setString(1,"user");
rs44 = ps44.executeQuery();
rs44.next();
nousersRequest44 = rs44.getInt(1);

ps144 = con44.prepareStatement(query244);
rs44= ps144.executeQuery();
rs44.next();
sumofRating44 = rs44.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequest44 = nousersRequest44*50;
 totalFeedBack44 = (float)((sumofRating44*100)/finalRequest44);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at College of Natural Feedback:"+e.getMessage());
}
finally{
try{
ps144.close();
ps44.close();
rs44.close();
con44.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The College of Natural Science and Mathematics: <b style="color: #333399" ><%=totalFeedBack44%> &nbsp;%</b> </p>

        </div>     
  

        <div class="col_w300">
            <h3 class="service2">Feedback Mihaylo College of Business and Economics</h3>
             <%
Connection conmba55 =null;
PreparedStatement psmba55 = null,ps1mba55=null;
ResultSet rsmba55 = null;
String query1mba55 = "select count from mihaylocollege where qid=?";
String query2mba55 = "select sum(ratingvalue) from mihaylocollege";
int sumofRatingmba55=0;
int nousersRequestmba55 =0;
float totalFeedBackmba55=0.0f;
int finalRequestmba55=0;
try{
conmba55 =  DBConnection.getConnection();
psmba55 = conmba55.prepareStatement(query1mba55);
psmba55.setString(1,"user");
rsmba55 = psmba55.executeQuery();
rsmba55.next();
nousersRequestmba55 = rsmba55.getInt(1);

ps1mba55 = conmba55.prepareStatement(query2mba55);
rsmba55= ps1mba55.executeQuery();
rsmba55.next();
sumofRatingmba55 = rsmba55.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestmba55 = nousersRequestmba55*50;
 totalFeedBackmba55 = (float)((sumofRatingmba55*100)/finalRequestmba55);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    //e.printStackTrace();
System.out.println("Error at Mihaylo College Feedback:"+e.getMessage());
}
finally{
try{
ps1mba55.close();
psmba55.close();
rsmba55.close();
conmba55.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of Mihaylo College of Business and Economics is: <b style="color: #333399" ><%=totalFeedBackmba%> &nbsp;%</b> </p>
        </div>
   <div class="cleaner"></div>
    </div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;   <div class="col_w300">
            <h3 class="service2">Feedback Degree Programs</h3>
             <%
Connection conmba5555 =null;
PreparedStatement psmba5555 = null,ps1mba5555=null;
ResultSet rsmba5555 = null;
String query1mba5555 = "select count from degreecollege where qid=?";
String query2mba5555 = "select sum(ratingvalue) from degreecollege";
int sumofRatingmba5555=0;
int nousersRequestmba5555 =0;
float totalFeedBackmba5555=0.0f;
int finalRequestmba5555=0;
try{
conmba5555 =  DBConnection.getConnection();
psmba5555 = conmba5555.prepareStatement(query1mba5555);
psmba5555.setString(1,"user");
rsmba5555 = psmba5555.executeQuery();
rsmba5555.next();
nousersRequestmba5555 = rsmba5555.getInt(1);

ps1mba5555 = conmba5555.prepareStatement(query2mba5555);
rsmba5555= ps1mba5555.executeQuery();
rsmba5555.next();
sumofRatingmba5555 = rsmba5555.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestmba5555 = nousersRequestmba5555*50;
 totalFeedBackmba5555 = (float)((sumofRatingmba5555*100)/finalRequestmba5555);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    //e.printStackTrace();
System.out.println("Error at Degree Programs Feedback:"+e.getMessage());
}
finally{
try{
ps1mba5555.close();
psmba5555.close();
rsmba5555.close();
conmba5555.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of Degree Programs is: <b style="color: #333399" ><%=totalFeedBackmba%> &nbsp;%</b> </p>
        </div>
  <div class="cleaner"></div>
    </div>  <br/>    
    <div class="content_box content_box_last">
    	<div class="col_w460">
        	<h2> Organization Feedback</h2>
                <div class="image_wrapper image_fl"><img src="images/organization.jpg" width="150" height="150" alt="Image 02" /></div>
          
            <p>The study of organizations includes a focus on optimizing organizational structure. 
According to management science, most human organizations fall roughly into four types.</p>
            <p>            
                These consist of a group of peers who decide as a group, perhaps by voting. The difference between a jury and a committee is that the members of the committee are usually assigned to perform or lead further actions after the group comes to a decision, whereas members of a jury come to a decision. In common law countries, legal juries render decisions of guilt, liability and quantify damages; juries are also used in athletic contests, book awards and similar activities. Sometimes a selection committee functions like a jury. In the Middle Ages, juries in continental Europe were used to determine the law according to consensus among local notables.
            </p>
            
            <div class="cleaner_h20"></div>
            
            
            
        </div>
        
        <div class="col_w460 last_col">
        	<h2>Organization Peoples</h2>
                <div class="image_wrapper"><img src="images/business-people2-resized-600.png" width="320" height="150" alt="Image 03" /></div>
            <p>
                Over the years there has been some dispute as to the best definition of feedback. According to Ashby (1956), mathematicians and theorists interested in the principles of feedback mechanisms prefer the definition of circularity of action, which keeps the theory simple and consistent. For those with more practical aims, feedback should be a deliberate effect via some more tangible connection.
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