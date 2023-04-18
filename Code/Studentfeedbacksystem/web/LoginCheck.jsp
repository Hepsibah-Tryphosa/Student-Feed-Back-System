<%@page import="com.feedback.db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
 String j_username = request.getParameter("j_username");
 String j_password = request.getParameter("j_password");

 Connection con = null;
 PreparedStatement ps = null;
 ResultSet rs = null;
 String query = "select *from studentdata where username=? and pwd=?";
 
 try{
 con = DBConnection.getConnection();
 ps  = con.prepareStatement(query);
 ps.setString(1, j_username);
 ps.setString(2, j_password);
 rs  = ps.executeQuery();
 if(rs.next()){
    session.setAttribute("username", j_username);
    response.sendRedirect("StudentHome.jsp");

 }
 else if(j_username.equals("Admin")&& j_password.equals("Admin")){
 response.sendRedirect("AdminHome.jsp");
 }
 else{
 response.sendRedirect("index.jsp?msg=Login Faild");
 }
 }catch(Exception e){
     e.printStackTrace();
 System.out.println("Login Error is:"+e.getMessage());
 }
 
%>