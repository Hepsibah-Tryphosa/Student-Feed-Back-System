<%-- 
    Document   : Logout
    Created on : Aug 19, 2015, 5:06:47 PM
    Author     : Ramu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }            
          
    </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
        <h1>Hello World!</h1>
        <%
        session.invalidate();
        response.sendRedirect("index.jsp");
        %>
    </body>
</html>
