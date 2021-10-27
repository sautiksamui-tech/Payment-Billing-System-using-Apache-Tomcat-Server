<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
      Class.forName("oracle.jdbc.driver.OracleDriver");  
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe","system","12345");
      String s = request.getParameter("username");
      String  sql = "select * from userdetails where username='"+s+"'";
      PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                if(rs.next()){
                    out.print("Login Success+<br>");
                    out.print("First Name:- \t"+rs.getString(1));
                    out.print("Last Name:- \t"+rs.getString(2));
                    out.print("User Name \t"+rs.getString(3));
                    out.print("Password \t"+rs.getString(4));
                    out.print("Mobile number \t"+rs.getString(5));
                    out.print("Address \t"+rs.getString(6));
                    out.print("Country \t"+rs.getString(7));
                    out.print("State \t"+rs.getString(8));
                }
                else{
                   out.print("Invalid Credentials");
                }
            %>
