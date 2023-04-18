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
        <li><a href="AdminGastronome.jsp" class="current">Gastronome</a></li>
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
            <h3 class="service1">Feedback Of Italian Food</h3>
      
        <%
Connection conbreakfast =null;
PreparedStatement psbreakfast = null,ps1breakfast=null;
ResultSet rsbreakfast = null;
String query1breakfast = "select count from breakfast where qid=?";
String query2breakfast = "select sum(ratingvalue) from breakfast";
int sumofRatingbreakfast=0;
int nousersRequestbreakfast =0;
float totalFeedBackbreakfast = 0.0f;
int finalRequestbreakfast=0;
try{
conbreakfast =  DBConnection.getConnection();
psbreakfast = conbreakfast.prepareStatement(query1breakfast);
psbreakfast.setString(1,"user");
rsbreakfast = psbreakfast.executeQuery();
rsbreakfast.next();
nousersRequestbreakfast = rsbreakfast.getInt(1);

ps1breakfast = conbreakfast.prepareStatement(query2breakfast);
rsbreakfast = ps1breakfast.executeQuery();
rsbreakfast.next();
sumofRatingbreakfast = rsbreakfast.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestbreakfast = nousersRequestbreakfast*50;
 totalFeedBackbreakfast = (float)((sumofRatingbreakfast*100)/finalRequestbreakfast);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1breakfast.close();
psbreakfast.close();
rsbreakfast.close();
conbreakfast.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Italian is: <b style="color: #333399" ><%=totalFeedBackbreakfast%> &nbsp;%</b> </p>

        </div>
        
        <div class="col_w300">
            <h3 class="service2">Feedback Of Chinese</h3>
       <%
Connection conlunch =null;
PreparedStatement pslunch = null,ps1lunch=null;
ResultSet rslunch = null;
String query1lunch = "select count from lunch where qid=?";
String query2lunch = "select sum(ratingvalue) from lunch";
int sumofRatinglunch=0;
int nousersRequestlunch =0;
float totalFeedBacklunch=0.0f;
int finalRequestlunch=0;
try{
conlunch =  DBConnection.getConnection();
pslunch = conlunch.prepareStatement(query1lunch);
pslunch.setString(1,"user");
rslunch = pslunch.executeQuery();
rslunch.next();
nousersRequestlunch = rslunch.getInt(1);

ps1lunch = conlunch.prepareStatement(query2lunch);
rslunch = ps1lunch.executeQuery();
rslunch.next();
sumofRatinglunch = rslunch.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestlunch = nousersRequestlunch*50;
 totalFeedBacklunch = (float)((sumofRatinglunch*100)/finalRequestlunch);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1lunch.close();
pslunch.close();
rslunch.close();
conlunch.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Chinese is: <b style="color: #333399" ><%=totalFeedBacklunch%> &nbsp;%</b> </p>

        </div>
        
        <div class="col_w300 last_col">
            <h3 class="service3">Feedback Of Confectionary</h3>
 <%
Connection condinner =null;
PreparedStatement psdinner = null,ps1dinner=null;
ResultSet rsdinner = null;
String query1dinner = "select count from dinner where qid=?";
String query2dinner = "select sum(ratingvalue) from dinner";
int sumofRatingdinner=0;
int nousersRequestdinner =0;
float totalFeedBackdinner=0.0f;
int finalRequestdinner=0;
try{
condinner =  DBConnection.getConnection();
psdinner = condinner.prepareStatement(query1dinner);
psdinner.setString(1,"user");
rsdinner = psdinner.executeQuery();
rsdinner.next();
nousersRequestdinner = rsdinner.getInt(1);

ps1dinner = condinner.prepareStatement(query2dinner);
rsdinner = ps1dinner.executeQuery();
rsdinner.next();
sumofRatingdinner = rsdinner.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestdinner = nousersRequestdinner*50;
 totalFeedBackdinner = (float)((sumofRatingdinner*100)/finalRequestdinner);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1dinner.close();
psdinner.close();
rsdinner.close();
condinner.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The Confectionary is: <b style="color: #333399" ><%=totalFeedBackdinner%> &nbsp;%</b> </p>
        </div>
          <!--  <div class="col_w300 last_col">
            <h3 class="service4">#</h3>
             
<p></p>

        </div>-->
        
        <div class="cleaner"></div>
         <div class="col_w300">
            <h3 class="service2">Feedback of Grill</h3>
             <%
Connection conmba =null;
PreparedStatement psmba = null,ps1mba=null;
ResultSet rsmba = null;
String query1mba = "select count from grill where qid=?";
String query2mba = "select sum(ratingvalue) from grill";
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
<p>Total FeedBack Percentage of The Grill is: <b style="color: #333399" ><%=totalFeedBackmba%> &nbsp;%</b> </p>
        </div>
        
       
    </div>
    
    <div class="content_box content_box_last">
    	<div class="col_w460">
        	<h2>Lunch Section</h2>
                <div class="image_wrapper image_fl"><img src="images/lunch.png"  width="100" height="100" alt="Image 02" /></div>
          
            <p>Lunch is a midday meal of varying size depending on the culture. The origin of the words lunch and luncheon relate to a small meal originally eaten at any time of the day or night, but during the 20th century gradually focused toward a small or mid-sized meal eaten at midday. Lunch is the second meal of the day after breakfast.</p>
            <p>            
               In medieval Germany, there are references to similariar, a sir lunchentach according to the OED, a noon draught  of ale, with bread  an extra meal between midday dinner and supper, especially during the long hours of hard labour during haying or early harvesting. In general, during the Middle Ages the main meal for almost everyone took place at midday where there was no need for artificial lighting.
            </p>
            
            <div class="cleaner_h20"></div>
            
            
            
        </div>
        
        <div class="col_w460 last_col">
        	<h2>About Dinner</h2>
                <div class="image_wrapper"><img src="images/dinner.png" width="100" height="100" alt="Image 03" /></div>
            <p>This is a list of American foods and dishes. There are a few foods that predate colonization, and the European colonization of the Americas brought about the introduction of a large number of new ingredients and cooking styles. This variety continued expanding well into the 19th and 20th centuries, oportional to the influx of immigrants from additional foreign nations. There is a rich diversity in food preparation throughout the U.S.</p>
           
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