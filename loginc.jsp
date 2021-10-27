<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>hie</title>
<style>
A.l:hover {

text-decoration: none;
font-family:arial;
font-size:14px;
color: #000000;


}
A.l {

text-decoration: underline;
font-family:arial;
font-size:14px;
color: #000000;


}
</style>
</head>
<body>
<table align="center" width="900px" border=0>
<tr> <td align="right"><a href="index.jsp" class="l" style="color:#000000;">Home</a>
<%
if((session.getAttribute("userid")!=null))
{
	%>

&nbsp;|&nbsp;<a href="welcome.jsp" class="l" style="color:#000000;">My Account</a>&nbsp;|&nbsp;<a href="logout.jsp" class="l" style="color:#000000;">Logout</a>
<%
}
%>
</td>
</tr>
</table>
</body>
</html>
