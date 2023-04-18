<%@page import="java.sql.*" %>
<%@page import="com.feedback.db.DBConnection" %>
<html>
    <head>
        
    </head>
    <body>
        
<%
String sname = request.getParameter("sname");
String fname = request.getParameter("fname");

Connection con =null;
PreparedStatement ps = null,ps1=null;
ResultSet rs = null;
String query1 = "select count(studentname) from facultyfeedback where studentname=? and facultyname=?";
String query2 = "select sum(feedback) from facultyfeedback where studentname=? and facultyname=?";
int sumofRating=0;
int nousersRequest =0;
float totalFeedBack=0.0f;
int finalRequest=0;
try{
con =  DBConnection.getConnection();
ps = con.prepareStatement(query1);
ps.setString(1,sname);
ps.setString(2, fname);
rs = ps.executeQuery();
if(rs.next()){
nousersRequest = rs.getInt(1);
}else{}
//System.out.println("Req1:"+nousersRequest);
ps1 = con.prepareStatement(query2);
ps1.setString(1, sname);
ps1.setString(2, fname);
rs= ps1.executeQuery();
if(rs.next()){
sumofRating = rs.getInt(1);
}else{}
//System.out.println("Total Rating are:"+sumofRating);
 finalRequest = nousersRequest*50;
 //System.out.println("final Request is:"+finalRequest);
 totalFeedBack = (float)((sumofRating*100)/finalRequest);
 out.println("FeedBack Score of "+sname+" is:"+totalFeedBack);
 //System.out.println(sumofRating+":"+finalRequest+":"+totalFeedBack);
}catch(Exception e){
    //e.printStackTrace();
System.out.println("Error at Calculating Feedback:"+e.getMessage());
}
finally{
try{

con.close();
}catch(Exception e){
//e.printStackTrace();}
}
}
//out.println(sname+":"+fname);
%>
<br/>
<INPUT TYPE="Button" VALUE="CLOSE" onClick="self.close()">

    </body>
</html>