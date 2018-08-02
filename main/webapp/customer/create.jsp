<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/08/2018
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>

</head>
<body>
<h1>Create new customer</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/customer">back to customer list</a>
</p>
<form  method="post">
    <fieldset>
        <legend>Create new customer</legend>
        <table>
            <tr>
                <td>name</td>
                <td><input type="text" name="name" id="input name"></td>
            </tr>
            <tr>
                <td>email</td>
                <td><input type="text" name="email" id="input email"></td>
            </tr>
            <tr>
                <td>address</td>
                <td><input type="text" name="address" id="input adress"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit"  value="create new customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
