<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/08/2018
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer list</title>
</head>
<body>
<h1>Customer</h1>
<p>
    <a href="/customer?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="x1">
        <tr>
            <td><a href="/customer?action=view&id=${x1.getId()}">${x1.getName()}</a></td>
            <td>${x1.getEmail()}</td>
            <td>${x1.getAddress()}</td>
            <td><a href="/customer?action=edit&id=${x1.getId()}">edit</a></td>
            <td><a href="/customer?action=delete&id=${x1.getId()}">delete</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
