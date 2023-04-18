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
        <li><a href="AdminLibraries.jsp" class="current">Libraries</a></li>
        <li><a href="AdminFaculties.jsp">Faculties</a></li>
        <li><a href="Logout.jsp">LogOut</a></li>
    </ul>    	

	<div class="cleaner"></div>
</div> <!-- end of templatetooplate_menu -->
    
<div id="tooplate_content">

	<div id="services">
        <div class="col_w300">
            <h3 class="service1">Feedback Of Pollak Library</h3>
          <%
Connection conlib1 =null;
PreparedStatement pslib1 = null,ps1lib1=null;
ResultSet rslib1 = null;
String query1lib1 = "select count from library1 where qid=?";
String query2lib1 = "select sum(ratingvalue) from library1";
int sumofRatinglib1=0;
int nousersRequestlib1 =0;
float totalFeedBacklib1=0.0f;
int finalRequestlib1=0;
try{
conlib1 =  DBConnection.getConnection();
pslib1 = conlib1.prepareStatement(query1lib1);
pslib1.setString(1,"user");
rslib1 = pslib1.executeQuery();
rslib1.next();
nousersRequestlib1 = rslib1.getInt(1);

ps1lib1 = conlib1.prepareStatement(query2lib1);
rslib1= ps1lib1.executeQuery();
rslib1.next();
sumofRatinglib1 = rslib1.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestlib1 = nousersRequestlib1*50;
 totalFeedBacklib1 = (float)((sumofRatinglib1*100)/finalRequestlib1);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1lib1.close();
pslib1.close();
rslib1.close();
conlib1.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Pollak Library  is: <b style="color: #333399" ><%=totalFeedBacklib1%> &nbsp;%</b> </p>

        </div>
        
        <div class="col_w300">
            <h3 class="service2">Feedback Of Library</h3>
               <%
Connection conlib2 =null;
PreparedStatement pslib2 = null,ps1lib2=null;
ResultSet rslib2 = null;
String query1lib2 = "select count from library2 where qid=?";
String query2lib2 = "select sum(ratingvalue) from library2";
int sumofRatinglib2=0;
int nousersRequestlib2 =0;
float totalFeedBacklib2=0.0f;
int finalRequestlib2=0;
try{
conlib2 =  DBConnection.getConnection();
pslib2 = conlib2.prepareStatement(query1lib2);
pslib2.setString(1,"user");
rslib2 = pslib2.executeQuery();
rslib2.next();
nousersRequestlib2 = rslib2.getInt(1);

ps1lib2 = conlib2.prepareStatement(query2lib2);
rslib2= ps1lib2.executeQuery();
rslib2.next();
sumofRatinglib2 = rslib2.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestlib2 = nousersRequestlib2*50;
 totalFeedBacklib2 = (float)((sumofRatinglib2*100)/finalRequestlib2);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1lib2.close();
pslib2.close();
rslib2.close();
conlib2.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Library is: <b style="color: #333399" ><%=totalFeedBacklib2%> &nbsp;%</b> </p>

        </div>
        
    <!--    <div class="col_w300 last_col">
            <h3 class="service3">Feedback Of Library3</h3>
           <%
Connection conlib3 =null;
PreparedStatement pslib3 = null,ps1lib3=null;
ResultSet rslib3 = null;
String query1lib3 = "select count from library3 where qid=?";
String query2lib3 = "select sum(ratingvalue) from library3";
int sumofRatinglib3=0;
int nousersRequestlib3 =0;
float totalFeedBacklib3=0.0f;
int finalRequestlib3=0;
try{
conlib3 =  DBConnection.getConnection();
pslib3 = conlib3.prepareStatement(query1lib3);
pslib3.setString(1,"user");
rslib3 = pslib3.executeQuery();
rslib3.next();
nousersRequestlib3 = rslib3.getInt(1);

ps1lib3 = conlib3.prepareStatement(query2lib3);
rslib3= ps1lib3.executeQuery();
rslib3.next();
sumofRatinglib3 = rslib3.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestlib3 = nousersRequestlib3*50;
 totalFeedBacklib3 = (float)((sumofRatinglib3*100)/finalRequestlib3);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1lib3.close();
pslib3.close();
rslib3.close();
conlib3.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Library 3 is: <b style="color: #333399" ><%=totalFeedBacklib3%> &nbsp;%</b> </p>

        </div>
            <div class="col_w300 last_col">
            <h3 class="service4">Feedback Of Library4</h3>
            <%
Connection con =null;
PreparedStatement ps = null,ps1=null;
ResultSet rs = null;
String query1 = "select count from library4 where qid=?";
String query2 = "select sum(ratingvalue) from library4";
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
<p>Total FeedBack Percentage of The Library 4  is: <b style="color: #333399" ><%=totalFeedBack%> &nbsp;%</b> </p>

        </div>
    -->    
        <div class="cleaner"></div>
    </div>
    
    <div class="content_box content_box_last">
    	<div class="col_w460">
        	<h2> Welcome to Library Feedback</h2>
                <div class="image_wrapper image_fl"><img src="images/libraryimage.jpg" width="100" height="100" alt="Image 02" /></div>
          
            <p>The Library strives to provide an excellent standard of customer service. Library user feedback is welcomed and used to improve the Library services. </p>
            <p>            
                If Library users experience a problem inside the Library, they are advised to report it to a staff member as soon as possible, so that the issue can be addressed immediately. Where action cannot be taken immediately, the member of staff will explain the reasons for this.
                Where necessary, the Library will advise users that their feedback will be reviewed by the manager of the relevant service area. The manager will investigate and make recommendations, and a response will be sent within ten working days.
            </p>
            
            <div class="cleaner_h20"></div>
            
            
            
        </div>
        
        <div class="col_w460 last_col">
        	<h2>Books in Library</h2>
                <div class="image_wrapper"><img src="images/digitallibrary.jpg" width="320" height="140" alt="Image 03" /></div>
            <p>
                A library is a collection of sources of information and similar resources, 
made accessible to a defined community for reference or borrowing.
It provides physical or digital access to material, and may be a physical 
building or room, or a virtual space, or both.          </p>
           
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