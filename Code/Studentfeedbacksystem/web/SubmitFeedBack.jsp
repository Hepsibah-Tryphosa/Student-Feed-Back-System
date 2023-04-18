<%@page import="com.feedback.db.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
String topic    = request.getParameter("topicname");
String user     = request.getParameter("userName");
String mail     = request.getParameter("mail");
String feedback = request.getParameter("feedback");

 Connection con       = null;
 PreparedStatement ps = null;
 String query = "insert into allfeedback values(?,?,?,?)";
 try{
 con = DBConnection.getConnection();
 ps = con.prepareStatement(query);
 ps.setString(1, topic);
 ps.setString(2, user);        
 ps.setString(3, mail);
 ps.setString(4, feedback);
 int no = ps.executeUpdate();
 if(no>0){
 response.sendRedirect("FootBall.jsp?msg1=success");
 }
 else{
 response.sendRedirect("FootBall.jsp?msg1=faild");
 }
 }catch(Exception e){
 System.out.println("FeedBack Error:"+e.getMessage());
 }finally{
 try{
 ps.close();
 con.close();
 }catch(Exception e){}
 }
      
%>