package Servlet;

import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 处理login.jsp的请求
 *
 */
@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /**
         * 用户实体类
         */
        User user = new User();

        /**
         * 表单中用户的用户名、密码、邮箱、性别、自我介绍、生日、爱好和是否接受协议
         */
        String username;
        String mypassword;
        String email;
        String gender;
        String introduce;
        String proAccept;
        Date birthday;
        String[] hobby;

        /**
         * 转换表单中的日期
         */
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");

        try {

            /**
             * 获取浏览器提交的表单数据
             */
            username = request.getParameter("username");
            mypassword = request.getParameter("mypassword");
            email = request.getParameter("email");
            gender = request.getParameter("gender");
            introduce = request.getParameter("introduce");
            birthday = simpleDateFormat.parse(request.getParameter("birthday"));
            hobby = request.getParameterValues("hobby");
            proAccept = request.getParameter("proAccept");

            /**
             * 将表单数据保存到用户实体类中
             */
            user.setUsername(username);
            user.setMypassword(mypassword);
            user.setEmail(email);
            user.setGender(gender);
            user.setIntroduce(introduce);
            user.setBirthday(birthday);
            user.setHobby(hobby);
            user.setProAccept(proAccept.equals("true") ? true : false);

            //使用Session保存用户信息
            request.getSession().setAttribute("UserInfo",user);
            /**
             * 跳转到注册成功页面
             */
            request.getRequestDispatcher("../web/userinfo.jsp").forward(request,response);

        }catch (Exception e){
            e.printStackTrace();
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
