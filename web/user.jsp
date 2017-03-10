<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/6/2017
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import = "java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>

</head>
<body>
<%
    //you need this for JDBC with MySQL in version 5
    //even though youre not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/northwind",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
            "INSERT INTO Customers " +
                    "(CustomerID, CompanyName)" +
                    "VALUES ('" + request.getParameter("CustomerID")
                    + "','" + request.getParameter("CompanyName")
                    +"');");
%>
%>


Customer ID: <%= request.getParameter("CustomerID") %><br>
Company Name: <%= request.getParameter("CompanyName") %><br>

<%
    //cleaning up after myself
    if (statement != null) {
        statement.close();
    }
    if (connection != null) {
        connection.close();
    }
%>

</body>
</html>
</body>
</html>
