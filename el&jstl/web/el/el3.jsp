<%@ page import="cn.taoass.domain.User" %>
<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: taoAssbigDemon
  Date: 2021/5/15
  Time: 8:47
                    --等晚风来解忧
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el获取数据</title>
</head>
<body>
<%
    User user = new User();
    user.setName("Neil");
    user.setAge("23");
    user.setBirthday(new Date());

    request.setAttribute("u",user);

    List list = new ArrayList();
    list.add("aaa");
    list.add("bbb");
    list.add(user);

    Map map = new HashMap();
    map.put("sname","李四");
    map.put("gender","23");
    map.put("user",user);

    request.setAttribute("map",map);

    request.setAttribute("list",list);
%>

<h3>使用el来获取对象中的值</h3>
<%--
    *通过的是对象的属性来获取
        *setter 或 getter 去掉set 或者get， 再将剩余部分首字母变小写
        *setName --> Name --> name
 --%>
${requestScope.u}  <br>
<%-- 返回的是user 对象的字符串表示形式 --%>

${requestScope.u.name}<br>
${u.age}<br>
${u.birthday}<br>

<%-- 格式化时间 表达--%>
${u.birStr}

<%-- List 与 map --%>
<%--获取值--%>
<h3>el获取List值</h3>
${list}<br>
${list[0]}<br>
${list[1]}<br>
${list[10]}<br>
<%--Ps:在el中如果list角标越界，则不会报错，只会在页面中显示一个空字符串--%>
<%--在el中的list中存对象，来获取对象的属性值--%>
${list[2].name}


<h3>el获取Map值</h3>
${map.gender}<br>
${map["gender"]}<br>
<%-- 两种方法，获取同样的值 --%>

${map.user.name}

</body>
</html>
