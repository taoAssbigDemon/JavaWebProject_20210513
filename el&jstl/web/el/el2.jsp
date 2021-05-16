<%--
  Created by IntelliJ IDEA.
  User: taoAssbigDemon
  Date: 2021/5/15
  Time: 8:29
                    --等晚风来解忧
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el获取域中的数据</title>
</head>
<body>
<%
    //在域中存储数据
    request.setAttribute("name","zhangsan");
    session.setAttribute("age","23");
    session.setAttribute("name","lisi");
%>

<h3>el获取值</h3>
${requestScope.name}
${sessionScope.age}
${sessionScope.taoAssbigDemon}

${name}
</body>
</html>
