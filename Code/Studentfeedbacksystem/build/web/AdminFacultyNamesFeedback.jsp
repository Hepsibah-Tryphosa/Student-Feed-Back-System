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
    <h2>Faculty feedback by students</h2>
	<div id="services">
            <table class="CSSTableGenerator">
                <tr>
                    <th>S.no</th>
                    <th>Faculty Name</th>
                    <th>Student Name</th>
                    <th>Subject Name</th>
                    <th>Department</th>
                    <th>Feedback Score</th>
                </tr>
            
<%
String fid = request.getParameter("fname");
String fname = null;
float avg=0.0f;
  Connection con =null;
PreparedStatement ps = null,ps1=null;
ResultSet rs = null;
String query1 = "select count(*) from facultyfeedback where fid=?";
String query2 = "select sum(feedback),facultyname,studentname,subject,department from facultyfeedback where fid=? group by studentname ;";
int sumofRating=0;
int finalFeedScore=0;
int nousersRequest =0;
float totalFeedBack=0.0f;
int finalRequest=0;
try{
con =  DBConnection.getConnection();
ps = con.prepareStatement(query1);
ps.setString(1,fid);
rs = ps.executeQuery();
rs.next();
nousersRequest = rs.getInt(1);
//System.out.println("No Of request:"+nousersRequest);
ps1 = con.prepareStatement(query2);
ps1.setString(1, fid);
rs= ps1.executeQuery();
String sname=null;

String deptno=null;
String subject=null;

int i =0;
 while(rs.next()){
     i++;
sumofRating = sumofRating+rs.getInt(1);

fname = rs.getString(2);
sname = rs.getString(3);
deptno= rs.getString(4);
subject = rs.getString(5);
%>
<tr>
    <td><%=i%></td>
    <td><%=fname%></td>
    <td><%=sname%></td>
    <td><%=subject%></td>
    <td><%=deptno%></td>
    <td><a href="javascript:window.open('facultyfeedstudet.jsp?sname=<%=sname%>&&fname=<%=fname%>', 'yourWindowName', 'width=200,height=150');">Click</a></td>
</tr>
            <%
        
//System.out.println("Total Rating are:"+sumofRating);
 finalRequest = nousersRequest*50;
 //System.out.println("User Request:"+finalRequest);
 
 //System.out.println("FFFFF is:"+totalFeedBack);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
 //avg +=totalFeedBack;
// System.out.println("Average is:"+avg);
}
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
totalFeedBack = (float)((sumofRating*100)/finalRequest);
%>  
</table>
<br/>
<h2>Total FeedBack Percentage of The Faculty <b><%=fname%></b>  is: <b style="color: #333399" ><%=totalFeedBack%> &nbsp;%</b> </h2>
<br/><br/>
    

        <div class="cleaner"></div>
        <h3>Descriptive Feedback</h3>
        
  <Table class="CSSTableGenerator">
    
    <tr>
        <th>S.no</th>
        <th>Topic</th>
        <th>Student Name</th>
        <th>Mail</th>
        <th>FeedBack</th>
    </tr>
<%
 Connection con3 = null;
 PreparedStatement ps3 = null;
 ResultSet rs3 = null;
 String query3 = "select *from allfeedback where topicname=?";
 try{
  con3 = DBConnection.getConnection();
  ps3 = con3.prepareStatement(query3);
  ps3.setString(1, "hictose");
  rs3 = ps3.executeQuery();
  int no3=0;
  while(rs3.next()){
      no3++;
  %>
  <tr>
      <Td><%=no3%></Td>
      <Td><%=rs3.getString(1)%></Td>
      <Td><%=rs3.getString(2)%></Td>
      <Td><%=rs3.getString(3)%></Td>
      <Td><%=rs3.getString(4)%></Td>
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