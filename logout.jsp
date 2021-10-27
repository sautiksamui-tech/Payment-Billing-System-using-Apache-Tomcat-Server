<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
session.invalidate();
response.sendRedirect("Login.jsp");
%>
</body>
</html>
