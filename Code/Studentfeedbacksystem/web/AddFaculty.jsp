<%@page import="com.feedback.db.DBConnection" %>
<%@page import="java.sql.*" %>
<html>
    <head>
        
    </head>
    <body>
<%
       String fid        = request.getParameter("fid");
       String fname      = request.getParameter("fname");
       String subject    = request.getParameter("subject");
       String experience = request.getParameter("experience");
       String department = request.getParameter("department");
       Connection con    = null;
       PreparedStatement ps = null;
       String query = "insert into FACULTY values(?,?,?,?,?)";
       
       try{
       con = DBConnection.getConnection();
       ps  = con.prepareStatement(query);
       ps.setString(1, fid);
       ps.setString(2, fname);
       ps.setString(3, subject);
       ps.setString(4, experience);
       ps.setString(5, department);
       int no = ps.executeUpdate();
       if(no>0){
       
       response.sendRedirect("AdminFaculties.jsp?msg=success");
       }else{
       
       response.sendRedirect("AdminFaculties.jsp?msg=faild");
       
       }
       }catch(Exception e){
         
       response.sendRedirect("AdminFaculties.jsp?msg=faild");
       
       System.out.println("Error AT Faculty Adding");
       }
       finally{
       try{
       ps.close();
       con.close();
       }catch(Exception e){}
       }
%>
    </body>
</html>