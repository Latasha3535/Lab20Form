<%--
  Created by IntelliJ IDEA.
  User: Antonella
  Date: 2/28/17

  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>db3</title>

</head>
<body>

    <%
  //you need this for JDBC with MySQL in version 5
  //even though you're not supposed to
   Class.forName("com.mysql.jdbc.Driver");
  Connection connection = DriverManager.getConnection(
           "jdbc:mysql://localhost:3306/gcdojo",
            "jdbc",
          "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
             "DELETE FROM Customers\n" +
                     "WHERE CustomerID='" +
                    request.getParameter("id") +
                   "'");
 %>

<h1>Company Deleted</h1>
The company (ID=<%= request.getParameter("id") %>)
was deleted from the database.
<p>
       <a href="process.jsp.jsp">&leftarrow; Back to index</a>
%>



<table BORDER="1">
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Namee</th>
        <th>Phone</th>
        <th>City</th>
        <th>State</th>
        <th>Zip</th>
        <th>Class</th>
    </tr>
        <% while(resultset != null && resultset.next()){ %>
    <TR>
        <td> <%= resultset.getString("id") %></td>
        <td> <%= resultset.getString("firstName") %></td>
        <td> <%= resultset.getString("lastName") %></td>
        <td> <%= resultset.getString("Phone") %></td>
        <td> <%= resultset.getString("City") %></td>
        <td> <%= resultset.getString("State") %></td>
        <td> <%= resultset.getString("Zip") %></td>
        <td> <%= resultset.getString("Class") %></td>
        <td> <a href="deleteCustomer.jsp?id=<%resultset.getString("id")%></td>

  </TR>
  <% }
    //cleaning up after myself
    if (resultset != null) {
      resultset.close();
    }
    if (statement != null) {
      statement.close();
    }
    if (connection != null) {
      connection.close();
    }
  %>
</table>
</body>
</html>