<%@page import="java.sql.*" %>
<%@page import="com.feedback.db.DBConnection" %>
<%
String ft1 = request.getParameter("ft1");
int first  = Integer.parseInt(request.getParameter("first"));

String ft2 = request.getParameter("ft2");
int second  = Integer.parseInt(request.getParameter("second"));

String ft3 = request.getParameter("ft3");
int third  = Integer.parseInt(request.getParameter("third"));

String ft4 = request.getParameter("ft4");
int fourth  = Integer.parseInt(request.getParameter("fourth"));

String ft5 = request.getParameter("ft5");
int fifth  = Integer.parseInt(request.getParameter("fifth"));

String ft6 = request.getParameter("ft6");
int sixth  = Integer.parseInt(request.getParameter("sixth"));

String ft7 = request.getParameter("ft7");
int seventh  = Integer.parseInt(request.getParameter("seventh"));

String ft8 = request.getParameter("ft8");
int eighth  = Integer.parseInt(request.getParameter("eighth"));

String ft9 = request.getParameter("ft9");
int ninth  = Integer.parseInt(request.getParameter("ninth"));

String ft10 = request.getParameter("ft10");
int tenth  = Integer.parseInt(request.getParameter("tenth"));

String []qArray ={ft1,ft2,ft3,ft4,ft5,ft6,ft7,ft8,ft9,ft10};

String query1 = "select ratingvalue from library1 where qid=?";
String update ="update library1 set ratingvalue=? where qid=?";
Connection con=null;
PreparedStatement ps = null,ps1=null;
ResultSet rs = null;
int feedno =0;
try{
con = DBConnection.getConnection();
//First Question
ps =con.prepareStatement(query1);
ps.setString(1, ft1);
rs = ps.executeQuery();
rs.next();
int f1 = rs.getInt(1);
int ans1  = f1+first;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans1);
ps1.setString(2,ft1);
ps1.executeUpdate();

//second Question

ps =con.prepareStatement(query1);
ps.setString(1, ft2);
rs = ps.executeQuery();
rs.next();
int f2 = rs.getInt(1);
int ans2  = f2+second;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans2);
ps1.setString(2,ft2);
ps1.executeUpdate();

//third Question
ps =con.prepareStatement(query1);
ps.setString(1, ft3);
rs = ps.executeQuery();
rs.next();
int f3 = rs.getInt(1);
int ans3  = f3+third;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans3);
ps1.setString(2,ft3);
ps1.executeUpdate();

//fourth Question

ps =con.prepareStatement(query1);
ps.setString(1, ft4);
rs = ps.executeQuery();
rs.next();
int f4 = rs.getInt(1);
int ans4  = f4+fourth;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans4);
ps1.setString(2,ft4);
ps1.executeUpdate();

//Fifth Question
ps =con.prepareStatement(query1);
ps.setString(1, ft5);
rs = ps.executeQuery();
rs.next();
int f5 = rs.getInt(1);
int ans5  = f5+fifth;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans5);
ps1.setString(2,ft5);
ps1.executeUpdate();

//Sixth Questions
ps =con.prepareStatement(query1);
ps.setString(1, ft6);
rs = ps.executeQuery();
rs.next();
int f6 = rs.getInt(1);
int ans6  = f6+sixth;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans6);
ps1.setString(2,ft6);
ps1.executeUpdate();

//Seventh Questions

ps =con.prepareStatement(query1);
ps.setString(1, ft7);
rs = ps.executeQuery();
rs.next();
int f7 = rs.getInt(1);
int ans7  = f7+seventh;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans7);
ps1.setString(2,ft7);
ps1.executeUpdate();

//Eight Questions

ps =con.prepareStatement(query1);
ps.setString(1, ft8);
rs = ps.executeQuery();
rs.next();
int f8 = rs.getInt(1);
int ans8  = f8+eighth;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans8);
ps1.setString(2,ft8);
ps1.executeUpdate();

//Ninth Questions

ps =con.prepareStatement(query1);
ps.setString(1, ft9);
rs = ps.executeQuery();
rs.next();
int f9 = rs.getInt(1);
int ans9  = f9+ninth;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans9);
ps1.setString(2,ft9);
ps1.executeUpdate();

//Tenth Questions
ps =con.prepareStatement(query1);
ps.setString(1, ft10);
rs = ps.executeQuery();
rs.next();
int f10 = rs.getInt(1);
int ans10  = f10+ninth;
ps1 = con.prepareStatement(update);
ps1.setInt(1, ans10);
ps1.setString(2,ft10);
ps1.executeUpdate();

String queryCount = "select count from library1 where qid=?";
String updateCount ="update library1 set count=? where qid=?";

ps =con.prepareStatement(queryCount);
ps.setString(1, "user");
rs = ps.executeQuery();
rs.next();
int count = rs.getInt(1);
count++;
ps1 = con.prepareStatement(updateCount);
ps1.setInt(1, count);
ps1.setString(2,"user");
ps1.executeUpdate();
response.sendRedirect("Library1.jsp?msg=success");
System.out.println("Success");
}catch(Exception e){
    System.out.println("Execute Current Query:"+e.getMessage());
}
finally{
try{
ps1.close();
rs.close();
ps.close();
con.close();
}catch(Exception e){}
}

%>