<%--
 Created by IntelliJ IDEA.
 User: paperspace
 Date: 3/1/2017
 Time: 11:52 AM
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*"%>
<html>
<head>
    <title>Web REsponse</title>
</head>
<body>
<%
    //you need this for JDBC with MySQL in version 5
    //even though youre not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/gcdojo",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
            "INSERT INTO signup " +
                    "(`First Name`, `Last Name`, `Phone Number`, City, State, Zip, Class )" +
                    " VALUES ('" + request.getParameter("firstName")
                    + "','" + request.getParameter("lastName")
                    + "','" +request.getParameter("Phone")
                    + "','" +  request.getParameter("City")
                    + "','" +request.getParameter("State")
                    +"','" +request.getParameter("Zip")
                    +"','" +request.getParameter("Class")
                    +"');");
%>
<h1> From Processed</h1>

Your Name: <%=request.getParameter("firstName")%><br>
Your Last: <%=request.getParameter("lastName")%><br>
Your Phone: <%=request.getParameter("Phone")%><br>
Your City:<%=request.getParameter("City")%><br>
Your State<%=request.getParameter("State")%><br>
Your Zip: <%=request.getParameter("Zip")%><br>
Your Class: <%=request.getParameter("Class")%><br>

</body>
</html>