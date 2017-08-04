package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * 测试Servlet用
 *
 */
public class MyServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        System.out.println("正在处理请求...");
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.print("<strong>Hello Servlet!</strong><hr>");
    }

}
