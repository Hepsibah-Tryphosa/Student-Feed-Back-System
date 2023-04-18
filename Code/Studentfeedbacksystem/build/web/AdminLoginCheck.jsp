<%
String userName = request.getParameter("aname");
String password = request.getParameter("pswd");

if(userName.equalsIgnoreCase("Admin")&& password.equalsIgnoreCase("Admin") ){
response.sendRedirect("AdminHome.jsp");
}else{
response.sendRedirect("index.jsp?msg1=faild");
}


%>