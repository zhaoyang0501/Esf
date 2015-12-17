// Decompiled by DJ v2.9.9.60 Copyright 2000 Atanas Neshkov  Date: 2008-12-29 ÏÂÎç 10:50:13
// Home Page : http://members.fortunecity.com/neshkov/dj.html  - Check often for new version!
// Decompiler options: packimports(3) 
// Source File Name:   AdminServlet.java

package com.action;

import com.bean.AdminBean;
import com.bean.SystemBean;
import com.util.MD5;
import java.io.IOException;
import java.util.StringTokenizer;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class AdminServlet extends HttpServlet
{

    public AdminServlet()
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
           try
            {
                String method = request.getParameter("method").trim();
                AdminBean loginbean = new AdminBean();
                HttpSession session = request.getSession();
                session.setMaxInactiveInterval(1200);
                SystemBean systembean = new SystemBean();
                String sysdir = systembean.getDir();
                if(method.equals("one"))
                {
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    if(username == null || username.trim().equals(""))
                    {
                        request.setAttribute("message", "\u8BF7\u6B63\u786E\u8F93\u5165\u7528\u6237\u540D\uFF01");
                        request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/login.jsp").toString()).forward(request, response);
                    } else
                    if(password == null || password.trim().equals(""))
                    {
                        request.setAttribute("message", "\u8BF7\u8F93\u5165\u5BC6\u7801\uFF01");
                        request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/login.jsp").toString()).forward(request, response);
                    } else
                    {
                        String md5password = MD5.MD5(password);
                        String agent = request.getHeader("user-agent");
                        StringTokenizer st = new StringTokenizer(agent, ";");
                        String useros = st.nextToken();
                        String loginip = request.getRemoteAddr();
                        int flag = loginbean.adminLogin(username, md5password, password, useros, loginip);
                        switch(flag)
                        {
                        case 1: // '\001'
                            java.util.List list = loginbean.getAdminInfo(username);
                            session.setAttribute("user", username);
                            session.setAttribute("list", list);
                            request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/").toString()).forward(request, response);
                            break;
                        case 2: // '\002'
                            request.setAttribute("message", "\u7528\u6237\u540D\u9519\u8BEF\uFF01\u8BF7\u786E\u8BA4\u7BA1\u7406\u6743\u9650\uFF01");
                            request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/login.jsp").toString()).forward(request, response);
                            break;
                        case 3: // '\003'
                            request.setAttribute("message", "\u5BC6\u7801\u9519\u8BEF\uFF0C\u8BF7\u786E\u8BA4\u7BA1\u7406\u6743\u9650\uFF01");
                            request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/login.jsp").toString()).forward(request, response);
                            break;
                        }
                    }
                } else
                if(method.equals("editpwd"))
                {
                    String username2 = (String)session.getAttribute("user");
                    if(username2 == null)
                    {
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    } else
                    {
                        String oldpwd = MD5.MD5(request.getParameter("oldpwd").trim());
                        String newpwd = MD5.MD5(request.getParameter("newpwd").trim());
                        String username = (String)session.getAttribute("user");
                        int flag = loginbean.editPassword(username, oldpwd, newpwd);
                        switch(flag)
                        {
                        case 1: // '\001'
                            request.setAttribute("message", "\u5BC6\u7801\u4FEE\u6539\u6210\u529F\uFF01");
                            request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/editpwd.jsp").toString()).forward(request, response);
                            break;

                        case 3: // '\003'
                            request.setAttribute("message", "\u539F\u59CB\u5BC6\u7801\u9519\u8BEF\uFF0C\u8BF7\u786E\u8BA4\u6743\u9650\uFF01");
                            request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/editpwd.jsp").toString()).forward(request, response);
                            break;

                        case 4: // '\004'
                            request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                            request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/editpwd.jsp").toString()).forward(request, response);
                            break;
                        }
                    }
                } else
                if(method.equals("exit"))
                {
                    String username2 = (String)session.getAttribute("user");
                    if(username2 == null)
                    {
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    } else
                    {
                        session.removeAttribute("user");
                        session.removeAttribute("list");
                        System.gc();
                        request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/login.jsp").toString()).forward(request, response);
                    }
                } else
                if(method.equals("manager"))
                {
                    String username2 = (String)session.getAttribute("user");
                    if(username2 == null)
                    {
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    } else
                    {
                        String ra = request.getParameter("ra").trim();
                        if(ra.equals("add"))
                        {
                            String username = request.getParameter("username").trim();
                            String password = MD5.MD5(request.getParameter("password").trim());
                            String isuse = request.getParameter("isuse").trim();
                            if(isuse.equals("\u5728\u7528"))
                                isuse = "1";
                            else
                                isuse = "2";
                            int flag = loginbean.addManager(username, password, "2", isuse);
                            if(flag == 1)
                            {
                                request.setAttribute("message", "\u589E\u52A0\u7BA1\u7406\u5458\u6210\u529F\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/user.jsp").toString()).forward(request, response);
                            } else
                            if(flag == 5)
                            {
                                request.setAttribute("username", username);
                                request.setAttribute("message", "\u8BE5\u7528\u6237\u540D\u5DF2\u7ECF\u5B58\u5728\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/user.jsp").toString()).forward(request, response);
                            } else
                            {
                                request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/user.jsp").toString()).forward(request, response);
                            }
                        } else
                        if(ra.equals("update"))
                        {
                            String username = request.getParameter("username").trim();
                            String password = request.getParameter("password").trim();
                            String isuse = request.getParameter("isuse").trim();
                            if(!password.equals(""))
                                password = MD5.MD5(password);
                            if(isuse.equals("\u5728\u7528"))
                                isuse = "1";
                            else
                                isuse = "2";
                            int flag = loginbean.updateManager(username, password, "2", isuse);
                            if(flag == 1)
                            {
                                request.setAttribute("message", "\u4FEE\u6539\u7BA1\u7406\u5458\u4FE1\u606F\u6210\u529F\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/user.jsp").toString()).forward(request, response);
                            } else
                            {
                                request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/user.jsp").toString()).forward(request, response);
                            }
                        }
                    }
                } else
                if(method.equals("delm"))
                {
                    String username2 = (String)session.getAttribute("user");
                    if(username2 == null)
                    {
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    } else
                    {
                        int id = Integer.parseInt(request.getParameter("id").trim());
                        if(id == 1)
                        {
                            request.setAttribute("message", "\u4E0D\u80FD\u5220\u9664\u539F\u59CB\u5E10\u53F7\uFF01");
                            request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/user.jsp").toString()).forward(request, response);
                        } else
                        {
                            int flag = loginbean.delManager(id);
                            if(flag == 1)
                            {
                                request.setAttribute("message", "\u5220\u9664\u6210\u529F\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/user.jsp").toString()).forward(request, response);
                            } else
                            {
                                request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/user.jsp").toString()).forward(request, response);
                            }
                        }
                    }
                } else
                if(method.equals("dellog"))
                {
                    String username2 = (String)session.getAttribute("user");
                    if(username2 == null)
                    {
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    } else
                    {
                        String check[] = request.getParameterValues("checkit");
                        if(check == null)
                        {
                            request.setAttribute("message", "\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u8BB0\u5F55\uFF01");
                            request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/log.jsp").toString()).forward(request, response);
                        } else
                        {
                            int id[] = new int[check.length];
                            for(int i = 0; i < check.length; i++)
                            {
                                int s = Integer.parseInt(check[i]);
                                id[i] = s;
                            }

                            int flag = loginbean.delLog(id);
                            if(flag == 1)
                            {
                                request.setAttribute("message", "\u5220\u9664\u8BB0\u5F55\u6210\u529F\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/log.jsp").toString()).forward(request, response);
                            } else
                            {
                                request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                                request.getRequestDispatcher((new StringBuilder(String.valueOf(sysdir))).append("/system/log.jsp").toString()).forward(request, response);
                            }
                        }
                    }
                } else
                {
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
    }

    public void init()
        throws ServletException
    {
    }
}