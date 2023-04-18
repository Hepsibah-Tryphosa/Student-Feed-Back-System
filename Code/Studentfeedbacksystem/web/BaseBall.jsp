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

    <link rel="stylesheet" type="text/css" href="./css/user.css"/>
    <link rel="stylesheet" type="text/css" href="./css/table.css"/>
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
   <%
String userName =(String)session.getAttribute("username");            
%>
         
        <div id="middle_content">
        	<h2>Student Feedback on Sports</h2>
            <p>College is a lot better than I thought it would be. One of the best things is although its hard work, I have a lot more freedom than at school and I have made loads of new friends</p>
           
        </div>
    
    </div>
</div>
    
<div id="tooplate_content">  

   
            <p style="font-family: monospace;font-size: large">
                Dear <b style="color: #333399" ><%=userName%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label id="lblTime" style=" font-weight:bold"></label> <br/><br/> 
                &nbsp;&nbsp;&nbsp;&nbsp;Thank you for giving us the opportunity to serve you better. Please help us by taking a few minutes to tell us about the service that you have received so far. We appreciate your business and want to make sure we meet your expectations.

Sincerely, <b style="color: #333399" >BaseBall </b> Team Manager
</p><br/>
<br/>
<form action="BaseBallFeedback.jsp" method="post">
<div class="CSSTableGenerator" >
    
  <table>
                
    <tr>
                    <th>S.no</th>
                    <th>Questions</th>
                    <th>Option A</th>
                    <th>Option B</th>
                    <th>Option C</th>
                    <th>Option D</th>
                    <th>Option E</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Overall, I am very satisfied with the way BaseBall team performed on this Occasions</td>
                    <td><input required type="radio" name="first" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="first" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="first" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="first" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="first" value="5"> Strongly Agree </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Compared to how you felt about BaseBall team before their performance</td>
                    <td><input required type="radio" name="second" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="second" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="second" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="second" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="second" value="5"> Strongly Agree </td>
      </tr>
      <tr>
                    <td>3</td>
                    <td>The Athletic Department wants to know what you think about Baseball team playing experience</td>
                    <td><input required type="radio" name="third" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="third" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="third" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="third" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="third" value="5"> Strongly Agree </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>How did your perform on BaseBall team</td>
                    <td><input required type="radio" name="fourth" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="fourth" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="fourth" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="fourth" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="fourth" value="5"> Strongly Agree </td>
      </tr>
      <tr>
                    <td>5</td>
                    <td>How important was performance on these players</td>
                    <td><input required type="radio" name="fifth" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="fifth" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="fifth" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="fifth" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="fifth" value="5"> Strongly Agree </td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Overall, how satisfied were you with your new players</td>
                    <td><input required type="radio" name="sixth" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="sixth" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="sixth" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="sixth" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="sixth" value="5"> Strongly Agree </td>
      </tr>
      <tr>
                    <td>7</td>
                    <td>Have you ever contacted BaseBall Administrative</td>
                    <td><input required type="radio" name="seventh" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="seventh" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="seventh" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="seventh" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="seventh" value="5"> Strongly Agree </td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>If you contacted BaseBall Administrative, have all problems been resolved to your complete satisfaction?</td>
                    <td><input required type="radio" name="eighth" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="eighth" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="eighth" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="eighth" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="eighth" value="5"> Strongly Agree </td>
      </tr>
      <tr>
                    <td>9</td>
                    <td>Based on your awareness of BaseBall team,is it better, the same, or worse than other BaseBall teams</td>
                    <td><input required type="radio" name="ninth" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="ninth" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="ninth" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="ninth" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="ninth" value="5"> Strongly Agree </td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Based on your experience with BaseBall team, would you recommend this game to a friend</td>
                    <td><input required type="radio" name="tenth" value="1"> Strongly Disagree </td>
                    <td><input required type="radio" name="tenth" value="2"> Somewhat Disagree </td>
                    <td><input required type="radio" name="tenth" value="3"> Neither Agree nor Disagree </td>
                    <td><input required type="radio" name="tenth" value="4"> Somewhat Agree </td>
                    <td><input required type="radio" name="tenth" value="5"> Strongly Agree </td>
      </tr>
      
            </table><br/>
            <input type="hidden" value="ft1" name="ft1"/>
            <input type="hidden" value="ft2" name="ft2"/>
            <input type="hidden" value="ft3" name="ft3"/>
            <input type="hidden" value="ft4" name="ft4"/>
            <input type="hidden" value="ft5" name="ft5"/>
            <input type="hidden" value="ft6" name="ft6"/>
            <input type="hidden" value="ft7" name="ft7"/>
            <input type="hidden" value="ft8" name="ft8"/>
            <input type="hidden" value="ft9" name="ft9"/>
            <input type="hidden" value="ft10" name="ft10"/>
            
    
</div>
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="Submit Your Feedback" name="submit" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>
    <br/>
    <%
       String message=request.getParameter("msg");

       if(message!=null && message.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Thanking you for Your Feedback!</blink></font>");
	}
       else if(message!=null && message.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>Techincale Error</blink></font>");
       }
       %>
     </form>   
     
     
 <%
Connection con =null;
PreparedStatement ps = null,ps1=null;
ResultSet rs = null;
String query1 = "select count from baseball where qid=?";
String query2 = "select sum(ratingvalue) from baseball";
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
<h2>Total FeedBack Percentage of The BaseBall Game is: <b style="color: #333399" ><%=totalFeedBack%> &nbsp;%</b> </h2>
<br/><br/>
<form action="SubmitFeedBack.jsp" method="post">
    <table class="CSSTableGenerator">
        <tr>
            <td>Topic Name</td>
            <td><input style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 800px;height: 30px;font-weight: bolder;font-size: 17px" type="text" readonly="" name="topicname" value="BaseBall"/></td>
        </tr>
        
        <tr>
            <td>User Name</td>
            <td><input type="text" readonly="" name="userName" value="<%=userName%>" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 800px;height: 30px;font-weight: bolder;font-size: 17px"></td>
        
        </tr>
        <tr>
            <td>Mail</td>
            <td><input type="email" required name="mail" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 800px;height: 30px;font-weight: bolder;font-size: 17px"></td>
        
        </tr>
         <tr>
            <td>Message</td>
            <td><textarea name="feedback" rows="4" cols="100" required></textarea> </td>
        
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Submit" name="submit" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/> </td>
        </tr>
        
    </table>
            <br/><br/>
            <%
       String msg=request.getParameter("msg1");

       if(msg!=null && msg.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Thanking you for Your Feedback!</blink></font>");
	}
       else if(msg!=null && msg.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>you Allready Given The Feedback</blink></font>");
       }
       %>
</form>
        
        </div>
          
        </div>   
    
        <h1></h1>
</div>

<div id="tooplate_footer_wrapper">

     
     <!-- end of templatetooplate_footer -->
</div> 
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>