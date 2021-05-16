<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: taoAssbigDemon
  Date: 2021/5/15
  Time: 12:39
                    --等晚风来解忧
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>jstl的if标签</title>
</head>
<body>
    <%--
        c:if标签
            1.属性
                *test 是它的必须属性，接受boolean表达式
                    *如果表达式为true，则显示if标签体的内容，如果表达式为false，则不显示。
    --%>

<c:if test="true">
    <h1>我是真的皮</h1>
</c:if>
<br>

<%
    //案例:判断list集合是否为空，如果不为空，则显示遍历集合

    List list = new ArrayList();
    list.add("aaa");
    request.setAttribute("list",list);
    request.setAttribute("number",3);
%>

<c:if test="${not empty list}">
    遍历集合......
</c:if>

<c:if test="${number % 2 != 0}">
    ${number}是奇数
</c:if>
<c:if test="${number} % 2 == 0">
    ${number}是偶数
</c:if>
</body>
</html>
