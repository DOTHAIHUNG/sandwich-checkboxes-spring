<%--
  Created by IntelliJ IDEA.
  User: GodBJ
  Date: 2019-01-02
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sandwich Chose</title>
</head>
<body>
<h1>Gia vi them vao</h1>
<table>
    <tr>
        <td>Gia vi ban da lua chon</td>
        <td><% String[] favoriteComdiments = (String[]) request.getAttribute("favoriteComdiments");
            for (String comdiment : favoriteComdiments) {
                out.println(comdiment);
            }
        %></td>
    </tr>
</table>
</body>
</html>
