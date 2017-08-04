<%--
  Created by IntelliJ IDEA.
  User: cjx
  Date: 2017/8/3
  Time: 15:30
  To change this template use File | Settings | File Templates.

  使用Servlet处理登录信息
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
    <h1>用户登录</h1>
    <hr>
    <form name="loginform" action="Servlet/LoginServlet" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="mypassword"></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input type="password" name="passwordconfirm"></td>
            </tr>
            <tr>
                <td>电子邮箱：</td>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>
                    <label><input type="radio" name="gender" value="Male" checked="checked">男</label>
                    <label><input type="radio" name="gender" value="Female">女</label>
                </td>
            </tr>
            <tr>
                <td>出生日期：</td>
                <td><input type="date" name="birthday" onclick=""></td>
            </tr>
            <tr>
                <td>爱好：</td>
                <td>
                    <label><input type="checkbox" name="hobby" value="NBA">NBA</label>
                    <label><input type="checkbox" name="hobby" value="music">音乐</label>
                    <label><input type="checkbox" name="hobby" value="movie">电影</label>
                    <label><input type="checkbox" name="hobby" value="internet">上网</label>
                </td>
            </tr>
            <tr>
                <td>自我介绍：</td>
                <td><textarea rows="6" cols="16" name="introduce"></textarea></td>
            </tr>
            <tr>
                <td>接受协议：</td>
                <td><label><input type="checkbox" name="isaccept" value="true">我接受该协议</label></td>
            </tr>
            <tr >
                <td colspan="2" align="center">
                    <input type="submit" name="submit" value="提交">
                    <input type="button" name="cancel" value="取消">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
