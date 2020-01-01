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
    <title>test.jsp</title>
    <script type="text/javascript">
        function check(form){
            if(form.first.value==''||form.second.value==''||form.third.value==''||form.fourth.value==''){
                alert("不能为空!");
                return false;
            }
        }
    </script>
</head>
<body>
<h1><%=request.getAttribute("user")%>,欢迎你</h1>
<form action="TestServlet" method="post">
    下面开始答题:
    <table>
        <tr>
            <td> 第一题:</td>
            <td><input type="radio" name="first" value="A">A
                <input type="radio" name="first" value="B">B
            </td>
        </tr>
        <tr>
            <td>第二题:</td>
            <td>
                <input type="radio" name="second" value="A">A
                <input type="radio" name="second" value="B">B
            </td>
        </tr>
        <tr>
            <td>第三题:</td>
            <td><input type="radio" name="third" value="A">A
                <input type="radio" name="third" value="B">B
            </td>
        </tr>
        <tr>
            <td>第四题:</td>
            <td><input type="radio" name="fourth" value="A">A
                <input type="radio" name="fourth" value="B">B
            </td>
        </tr>
    </table>
    <input type="submit" value="提交" onclick="return check(this.form)"/>
</form>
</body>
</html>
