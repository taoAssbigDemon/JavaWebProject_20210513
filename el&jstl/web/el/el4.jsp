<%--
  Created by IntelliJ IDEA.
  User: taoAssbigDemon
  Date: 2021/5/15
  Time: 11:33
                    --等晚风来解忧
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el的隐式对象</title>
</head>
<body>
${pageContext.request}
${pageContext.request.contextPath}
<%--在JSP页面动态的获取虚拟目录--%>

<%----%>
<% response.sendRedirect(request.getContextPath()+""); %>
</body>
</html>
