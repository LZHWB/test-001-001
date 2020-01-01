<%--
  Created by IntelliJ IDEA.
  User: lenovo1
  Date: 2019/12/31
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login.jsp</title>
</head>
<body>
${message}
<form action="LoginServlet" method="post">
    用户名:<input type="text" name="username"/><br/>
    密码:<input type="password" name="password"/><br/>
    <input type="submit" value="提交"/>
    <input type="reset" value="重置"/>
</form>
</body>
</html>
