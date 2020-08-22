<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: lkre
  Date: 22.08.2020
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dzisiaj jest...</title>
</head>
<body>
<p>
    Dzisiaj jest
    <%
        String time = LocalDateTime.now().toString();
        out.print(time);
    %>
</p>
</body>
</html>
