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
        <li><a href="AdminSport.jsp" class="current">Sports</a></li>
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
            <h3 class="service1">Feedback Of Football</h3>
          <%
Connection con =null;
PreparedStatement ps = null,ps1=null;
ResultSet rs = null;
String query1 = "select count from football where qid=?";
String query2 = "select sum(ratingvalue) from football";
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
<p>Total FeedBack Percentage of The FootBall Game is: <b style="color: #333399" ><%=totalFeedBack%> &nbsp;%</b> </p>
 
        </div>
        
        <div class="col_w300">
            <h3 class="service2">Feedback Of Baseball</h3>
              <%
Connection conbaseball =null;
PreparedStatement psbase = null,ps1base=null;
ResultSet rsbase = null;
String query1base = "select count from baseball where qid=?";
String query2base = "select sum(ratingvalue) from baseball";
int sumofRatingbase=0;
int nousersRequestbase =0;
float totalFeedBackbase=0.0f;
int finalRequestbase=0;
try{
conbaseball =  DBConnection.getConnection();
psbase = conbaseball.prepareStatement(query1base);
psbase.setString(1,"user");
rsbase = psbase.executeQuery();
rsbase.next();
nousersRequestbase = rsbase.getInt(1);

ps1base = conbaseball.prepareStatement(query2base);
rsbase= ps1base.executeQuery();
rsbase.next();
sumofRatingbase = rsbase.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestbase = nousersRequestbase*50;
 totalFeedBackbase = (float)((sumofRatingbase*100)/finalRequestbase);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
// e.printStackTrace();   
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1base.close();
psbase.close();
rsbase.close();
conbaseball.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The BaseBall Game is: <b style="color: #333399" ><%=totalFeedBackbase%> &nbsp;%</b> </p>

        </div>
        
        <div class="col_w300 last_col">
            <h3 class="service3">Feedback Of Basketball</h3>
         <%
Connection conbasket =null;
PreparedStatement psbasket = null,ps1basket=null;
ResultSet rsbasket = null;
String query1basket = "select count from basketBall where qid=?";
String query2basket = "select sum(ratingvalue) from basketBall";
int sumofRatingbasket=0;
int nousersRequestbasket =0;
float totalFeedBackbasket=0.0f;
int finalRequestbasket=0;
try{
conbasket =  DBConnection.getConnection();
psbasket = conbasket.prepareStatement(query1basket);
psbasket.setString(1,"user");
rsbasket = psbasket.executeQuery();
rsbasket.next();
nousersRequestbasket = rsbasket.getInt(1);

ps1basket = conbasket.prepareStatement(query2basket);
rsbasket= ps1basket.executeQuery();
rsbasket.next();
sumofRatingbasket = rsbasket.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestbasket = nousersRequestbasket*50;
 totalFeedBackbasket = (float)((sumofRatingbasket*100)/finalRequestbasket);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1basket.close();
psbasket.close();
rsbasket.close();
conbasket.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The BasketBall Game is: <b style="color: #333399" ><%=totalFeedBackbasket%> &nbsp;%</b> </p>   
        </div>
            <div class="col_w300 last_col">
            <h3 class="service4">Feedback Of Badminton</h3>
             <%
Connection conbadminton =null;
PreparedStatement psbadminton = null,ps1badminton=null;
ResultSet rsbadminton = null;
String query1badminton = "select count from batminton where qid=?";
String query2badminton = "select sum(ratingvalue) from batminton";
int sumofRatingbadminton=0;
int nousersRequestbadminton =0;
float totalFeedBackbadminton=0.0f;
int finalRequestbadminton=0;
try{
conbadminton =  DBConnection.getConnection();
psbadminton = conbadminton.prepareStatement(query1badminton);
psbadminton.setString(1,"user");
rsbadminton = psbadminton.executeQuery();
rsbadminton.next();
nousersRequestbadminton = rsbadminton.getInt(1);

ps1badminton = conbadminton.prepareStatement(query2badminton);
rsbadminton = ps1badminton.executeQuery();
rsbadminton.next();
sumofRatingbadminton = rsbadminton.getInt(1);
//System.out.println("Total Rating are:"+sumofRating);
 finalRequestbadminton = nousersRequestbadminton*50;
 totalFeedBackbadminton = (float)((sumofRatingbadminton*100)/finalRequestbadminton);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{
ps1badminton.close();
psbadminton.close();
rsbadminton.close();
conbadminton.close();
}catch(Exception e){}
}
%>    
<br/>
<p>Total FeedBack Percentage of The BadMinton Game is: <b style="color: #333399" ><%=totalFeedBackbadminton%> &nbsp;%</b> </p>

        </div>
        
        <div class="cleaner"></div>
    </div>
    
    <div class="content_box content_box_last">
    	<div class="col_w460">
        	<h2> Welcome to Sport Feedback</h2>
                <div class="image_wrapper image_fl"><img src="images/fotballpng.jpg" alt="Image 02" /></div>
          
            <p>Football is the name for many sports. The most popular type of football is Association football, 
which is also named "soccer". Football can also mean American football (gridiron), 
rugby union, rugby league, Australian Rules Football, Gaelic football or Canadian football.
</p>
            <p>            
                American football Soccer The name football comes from the two words "foot" and "ball". It is named football because the players of the game walk and run (on foot) while playing, as opposed to polo and other games played on horseback. The ball is often kicked with the foot, but depending on the game, it can also be hit using other parts of the body (in association football) and handling the ball is a part of many other football variants.
            </p>
            
            <div class="cleaner_h20"></div>
            
            
            
        </div>
        
        <div class="col_w460 last_col">
        	<h2>Organized Baseball Leagues</h2>
                <div class="image_wrapper"><img src="images/baseball-3.png" width="100" height="100" alt="Image 03" /></div>
            <p>American Legion Baseball is a variety of amateur baseball played by teenage boys in 50 states in the USA. More than five thousand teams participate each year. The American Legion Department of South Dakota established the program in 1925 at Milbank, South Dakota</p>
           
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