<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                Class.forName("oracle.jdbc.driver.OracleDriver");  
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe","system","12345");
      
                String s = request.getParameter("uname");
                String p = request.getParameter("psw");
                out.println(s);
                
                String  sql = "select * from userdetails where username='"+s+"' and password='"+p+"'";
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                if(rs.next()){%>
                    out.print("Login Success");
                    <jsp:forward page="list.jsp"/>
                 <%}
                else{%>
                   out.print("Invalid Credentials");
                   <jsp:include page="/index.html"/>
                <%}%>  
    </body>
</html>
