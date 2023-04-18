<%@page import="java.sql.*" %>
<%@page import="com.feedback.db.DBConnection" %>
<%

String studentName = request.getParameter("studentname");
String fid         = request.getParameter("fid");
String fnamne      = request.getParameter("facultyName");
String subject     = request.getParameter("subject");
String depart      = request.getParameter("depart");

int first   = Integer.parseInt(request.getParameter("first"));
int second  = Integer.parseInt(request.getParameter("second"));
int third   = Integer.parseInt(request.getParameter("third"));
int fourth  = Integer.parseInt(request.getParameter("fourth"));
int fifth   = Integer.parseInt(request.getParameter("fifth"));
int sixth   = Integer.parseInt(request.getParameter("sixth"));
int seventh = Integer.parseInt(request.getParameter("seventh"));
int eighth  = Integer.parseInt(request.getParameter("eighth"));
int ninth   = Integer.parseInt(request.getParameter("ninth"));
int tenth   = Integer.parseInt(request.getParameter("tenth"));

int totalFeedBack = first+second+third+fourth+fifth+sixth+seventh+eighth+ninth+tenth;


Connection con=null;
PreparedStatement ps = null;
ResultSet rs = null;
int feedno =0;
String query ="insert into facultyfeedback values(?,?,?,?,?,?)";
try{
con = DBConnection.getConnection();
ps = con.prepareStatement(query);
ps.setString(1,studentName);
ps.setString(2, fid);
ps.setString(3, fnamne);
ps.setString(4, subject);
ps.setString(5, depart);
ps.setInt(6, totalFeedBack);
int no = ps.executeUpdate();
if(no>0){
response.sendRedirect("FacultyFeedback.jsp?msg=success&&fid="+fid+"&&fname="+fnamne+"&&subject="+subject+"&&dept="+depart);
}else{
    response.sendRedirect("FacultyFeedback.jsp?msg=faild&&fid="+fid+"&&fname="+fnamne+"&&subject="+subject+"&&dept="+depart);
}
}catch(Exception e){
     System.out.println("Execute Current Query:"+e.getMessage());
     response.sendRedirect("FacultyFeedback.jsp?msg=faild&&fid="+fid+"&&fname="+fnamne+"&&subject="+subject+"&&dept="+depart);
}
finally{
try{
ps.close();
con.close();
}catch(Exception e){}
}

%>