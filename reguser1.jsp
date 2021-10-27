<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String g =  request.getParameter("username");
        out.print(g);
        %>
    <center><h2>Registration Successful....<br> 
            <a href="viewdetails.jsp?username=<%=request.getParameter("username")%>">Click here</a> to view Registration Details</h2></center>
    </body>
</html>
