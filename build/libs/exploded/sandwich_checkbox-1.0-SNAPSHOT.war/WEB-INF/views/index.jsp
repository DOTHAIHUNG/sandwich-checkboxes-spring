<%--
  Created by IntelliJ IDEA.
  User: GodBJ
  Date: 2019-01-02
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sandwich</title>
</head>
<body>
<h1>Sandwich Condiments</h1>
<form:form method="POST" action="/choose">
    <table>
        <tr>
            <td><form:label path="favoriteComdiments">Favorite Condiments</form:label></td>
            <td><form:checkboxes path="favoriteComdiments" items="${favoriteComdimentsList}"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Save"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
