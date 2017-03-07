<%--
 Created by IntelliJ IDEA.
 User: paperspace
 Date: 3/1/2017
 Time: 11:52 AM
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web REsponse</title>
</head>
<body>
<h1> From Processed</h1>

Your Name: <%=request.getParameter("firstName")%>
Your Last: <%=request.getParameter("lastName")%>
Your Phone: <%=request.getParameter("Phone")%>
Your City:<%=request.getParameter("City")%>
Your State<%=request.getParameter("State")%>
Your zip: <%=request.getParameter("Zip")%>


</body>
</html>