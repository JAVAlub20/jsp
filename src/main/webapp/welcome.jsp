<%--
  Created by IntelliJ IDEA.
  User: lkre
  Date: 22.08.2020
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="calulator" class="pl.sda.Calculator" />
<html>
<head>
    <title>Podnoszenie do potęgi</title>
</head>
<body>
    5 <sup>2</sup> wynosi:
<%
    int square = calulator.square(5);
    out.print(square);
%>.
</body>
</html>
