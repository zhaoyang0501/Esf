// Decompiled by DJ v2.9.9.60 Copyright 2000 Atanas Neshkov  Date: 2008-12-29 ÏÂÎç 10:52:28
// Home Page : http://members.fortunecity.com/neshkov/dj.html  - Check often for new version!
// Decompiler options: packimports(3) 
// Source File Name:   LoginServlet.java

package com.action;

import com.bean.MemberBean;
import com.util.Filter;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet
{

    public LoginServlet()
    {
    }

    public void destroy()
    {
        super.destroy();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        response.setContentType("text/html;charset=gb2312");
        request.setCharacterEncoding("gb2312");
        HttpSession session = request.getSession();
       {
            MemberBean memberBean = new MemberBean();
            String method = Filter.escapeHTMLTags(request.getParameter("method").trim());
            if(method.equals("HEADUSERLOGIN"))
            {
                String reg_user = Filter.escapeHTMLTags(request.getParameter("reg_user").trim());
                String reg_pwd = Filter.escapeHTMLTags(request.getParameter("reg_pwd").trim());
                String reg_type = Filter.escapeHTMLTags(request.getParameter("reg_type").trim());
                String lastip = request.getRemoteAddr();
                int flag = memberBean.memberLogin(reg_user, reg_pwd, reg_type);
                if(flag == 1)
                {
                    String info = memberBean.getLastTimeIP(reg_user);
                    int flag2 = memberBean.upmemberLogin(reg_user, lastip);
                    if(flag2 == 1)
                    {
                        session.setAttribute("member", reg_user);
                        session.setAttribute("type", reg_type);
                        session.setAttribute("info", info);
                        request.getRequestDispatcher("login1.jsp").forward(request, response);
                    } else
                    {
                        session.setAttribute("member", reg_user);
                        session.setAttribute("type", reg_type);
                        session.setAttribute("info", info);
                        session.setAttribute("message", "\u767B\u9646\u6210\u529F\uFF0C\u767B\u9646\u4FE1\u606F\u66F4\u65B0\u5931\u8D25\uFF01");
                        request.getRequestDispatcher("login1.jsp").forward(request, response);
                    }
                } else
                if(flag == 2)
                {
                    request.setAttribute("reg_user", reg_user);
                    request.setAttribute("message", "\u8BE5\u7528\u6237\u540D\u4E0D\u5B58\u5728\u6216\u8005\u5DF2\u88AB\u7BA1\u7406\u5458\u51BB\u7ED3\uFF01");
                    request.getRequestDispatcher("login1.jsp").forward(request, response);
                } else
                if(flag == 3)
                {
                    request.setAttribute("reg_user", reg_user);
                    request.setAttribute("message", "\u5BC6\u7801\u9519\u8BEF\uFF01");
                    request.getRequestDispatcher("login1.jsp").forward(request, response);
                }
            } else
            if(method.equals("PAGEUSERLOGIN"))
            {
                String username = Filter.escapeHTMLTags(request.getParameter("username").trim());
                String password = Filter.escapeHTMLTags(request.getParameter("password").trim());
                String reg_type = Filter.escapeHTMLTags(request.getParameter("reg_type").trim());
                String lastip = request.getRemoteAddr();
                int flag = memberBean.memberLogin(username, password, reg_type);
                if(flag == 1)
                {
                    String info = memberBean.getLastTimeIP(username);
                    int flag2 = memberBean.upmemberLogin(username, lastip);
                    if(flag2 == 1)
                    {
                        session.setAttribute("member", username);
                        session.setAttribute("type", reg_type);
                        session.setAttribute("info", info);
                       // request.getRequestDispatcher("member/index.jsp").forward(request, response);
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    } else
                    {
                        session.setAttribute("member", username);
                        session.setAttribute("type", reg_type);
                        session.setAttribute("info", info);
                        session.setAttribute("message", "\u767B\u9646\u6210\u529F\uFF0C\u767B\u9646\u4FE1\u606F\u66F4\u65B0\u5931\u8D25\uFF01");
                        request.getRequestDispatcher("member/index.jsp").forward(request, response);
                    }
                } else
                if(flag == 2)
                {
                    request.setAttribute("reg_user", username);
                    request.setAttribute("message", "\u8BE5\u7528\u6237\u540D\u4E0D\u5B58\u5728\uFF01");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else
                if(flag == 3)
                {
                    request.setAttribute("reg_user", username);
                    request.setAttribute("message", "\u5BC6\u7801\u9519\u8BEF\uFF01");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } else
            if(method.equals("logout"))
            {
                session.removeAttribute("member");
                session.removeAttribute("type");
                request.getRequestDispatcher("login1.jsp").forward(request, response);
            } else
            if(method.equals("pagelogout") || method.equals("memberexit"))
            {
                session.removeAttribute("member");
                session.removeAttribute("type");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else
            {
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        }
    }

    public void init()
        throws ServletException
    {
    }
}