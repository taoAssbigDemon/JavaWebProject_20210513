<%--
  Created by IntelliJ IDEA.
  User: taoAssbigDemon
  Date: 2021/5/13
  Time: 13:38
                    --等晚风来解忧
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1><%= request.getSession().getAttribute("user") %>欢迎您</h1>
</body>
</html>
