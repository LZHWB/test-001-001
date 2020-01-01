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
    <title>result.jsp</title>
</head>
<body>
<h1>测试结果为:</h1>
<br>
<table border="0">
    <tr>
        <td>成绩</td>
        <td>等级</td>
    </tr>
    <tr>
        <td><%=request.getAttribute("count")%></td>
        <td><%=request.getAttribute("grade")%></td>
    </tr>
</table>
</body>
</html>
