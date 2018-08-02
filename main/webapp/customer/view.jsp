<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/08/2018
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
</head>
<body>
<h1>Customer Detail</h1>
<table>
    <tr>
        <td>Name:</td>
        <td>${requestScope["view"].getName()}</td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>${requestScope["view"].getEmail()}</td>
    </tr>
    <tr>
        <td>Address:</td>
        <td>${requestScope["view"].getAddress()}</td>
    </tr>
</table>

</body>
</html>
