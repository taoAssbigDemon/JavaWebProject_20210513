<%--
  Created by IntelliJ IDEA.
  User: taoAssbigDemon
  Date: 2021/5/12
  Time: 22:16
                    --等晚风来解忧
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录案例</title>
    <script>
        window.onload = function () {
            document.getElementById("img").onclick = function () {
                this.src = "/response/checkCodeServlet?time="+new Date().getTime();
            }
        }
    </script>
    <style>
        div{
            color: red;
        }
    </style>
</head>
<body>
    <form action="${pageContext.request.contextPath}/loginServlet" method="post">
        <table>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>验证码</td>
                <td><input type="text" name="checkCode"></td>
            </tr>
            <tr>
                <td colspan="2"><img id="img" src="/response/checkCodeServlet"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="登录"></td>
            </tr>
        </table>
        <div><%= request.getAttribute("cc_error") == null ?"":request.getAttribute("cc_error")%></div>
        <div><%= request.getAttribute("login_error") == null ?"":request.getAttribute("login_error")%></div>
    </form>
</body>
</html>
