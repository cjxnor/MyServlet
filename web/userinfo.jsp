<%--
  Created by IntelliJ IDEA.
  User: cjx
  Date: 2017/8/3
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
    <h1>用户信息</h1>
    <jsp:useBean id="UserInfo" class="entity.User" scope="session"></jsp:useBean>
    <table align="center">
        <tr>
            <td>用户名：</td>
            <td><jsp:getProperty name="UserInfo" property="username"></jsp:getProperty></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><jsp:getProperty name="UserInfo" property="mypassword"></jsp:getProperty></td>
        </tr>
        <tr>
            <td>电子邮箱：</td>
            <td><jsp:getProperty name="UserInfo" property="email"></jsp:getProperty></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td><jsp:getProperty name="UserInfo" property="gender"></jsp:getProperty></td>
        </tr>
        <tr>
            <td>出生日期：</td>
            <td>

            </td>
        </tr>
        <tr>
            <td>爱好：</td>
            <td>

            </td>
        </tr>
        <tr>
            <td>自我介绍：</td>
            <td><jsp:getProperty name="UserInfo" property="introduce"></jsp:getProperty></td>
        </tr>
        <tr>
            <td>是否接受协议：</td>
            <td><jsp:getProperty name="UserInfo" property="proAccept"></jsp:getProperty></td>
        </tr>
    </table>
</body>
</html>
