// Decompiled by DJ v2.9.9.60 Copyright 2000 Atanas Neshkov  Date: 2008-12-29 ÏÂÎç 10:53:27
// Home Page : http://members.fortunecity.com/neshkov/dj.html  - Check often for new version!
// Decompiler options: packimports(3) 
// Source File Name:   MemberServlet.java

package com.action;

import com.bean.MemberBean;
import com.bean.SystemBean;
import com.util.Filter;
import com.util.MD5;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class MemberServlet extends HttpServlet
{

    public MemberServlet()
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
        MemberBean memberBean = new MemberBean();
        String method = Filter.escapeHTMLTags(request.getParameter("method").trim());
         if(method.equals("reg2"))
            {
                String username = Filter.escapeHTMLTags(request.getParameter("username").trim());
                String password = Filter.escapeHTMLTags(request.getParameter("password").trim());
                String reg_type = Filter.escapeHTMLTags(request.getParameter("reg_type").trim());
                request.setAttribute("username", username);
                request.setAttribute("password", password);
                request.setAttribute("reg_type", reg_type);
                if(username.trim().equals("admin"))
                {
                    request.setAttribute("username", username);
                    request.setAttribute("message", "\u975E\u6CD5\u7684\u7528\u6237\u540D\uFF0C\u8BF7\u91CD\u65B0\u9009\u62E9\uFF01");
                    request.getRequestDispatcher("reg2.jsp").forward(request, response);
                } else
                {
                    int flag = memberBean.checkRegName(username);
                    if(flag == 1)
                    {
                        if(reg_type.equals("person"))
                            request.getRequestDispatcher("personreg.jsp").forward(request, response);
                        else
                        if(reg_type.equals("co"))
                            request.getRequestDispatcher("coreg.jsp").forward(request, response);
                        else
                            request.getRequestDispatcher("index.jsp").forward(request, response);
                    } else
                    if(flag == 5)
                    {
                        request.setAttribute("username", username);
                        request.setAttribute("message", "\u5BF9\u4E0D\u8D77\uFF0C\u8BE5\u7528\u6237\u540D\u5DF2\u5B58\u5728\uFF0C\u8BF7\u91CD\u65B0\u9009\u62E9\uFF01");
                        request.getRequestDispatcher("reg2.jsp").forward(request, response);
                    } else
                    {
                        request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                        request.getRequestDispatcher("reg2.jsp").forward(request, response);
                    }
                }
            } else
            if(method.equals("checksame"))
            {
                String username = Filter.escapeHTMLTags(request.getParameter("username").trim());
                if(username.trim().equals("admin"))
                {
                    request.setAttribute("username", username);
                    request.setAttribute("message", "\u975E\u6CD5\u7684\u7528\u6237\u540D\uFF0C\u8BF7\u91CD\u65B0\u9009\u62E9\uFF01");
                    request.getRequestDispatcher("reg2.jsp").forward(request, response);
                } else
                {
                    int flag = memberBean.checkRegName(username);
                    if(flag == 1)
                    {
                        request.setAttribute("username", username);
                        request.setAttribute("message", "\u606D\u559C\u60A8\uFF0C\u8FD9\u4E2A\u540D\u5B57\u53EF\u4EE5\u4F7F\u7528\uFF01");
                        request.getRequestDispatcher("reg2.jsp").forward(request, response);
                    } else
                    if(flag == 5)
                    {
                        request.setAttribute("username", username);
                        request.setAttribute("message", "\u5BF9\u4E0D\u8D77\uFF0C\u8BE5\u7528\u6237\u540D\u5DF2\u5B58\u5728\uFF0C\u8BF7\u91CD\u65B0\u9009\u62E9\uFF01");
                        request.getRequestDispatcher("reg2.jsp").forward(request, response);
                    } else
                    {
                        request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                        request.getRequestDispatcher("reg2.jsp").forward(request, response);
                    }
                }
            } else
            if(method.equals("Editpwd"))
            {
                String member = (String)session.getAttribute("member");
                String type = (String)session.getAttribute("type");
                if(member == null || type == null)
                {
                    response.sendRedirect("error.jsp");
                } else
                {
                    String oldpwd = MD5.MD5(request.getParameter("oldpwd").trim());
                    String newpwd = MD5.MD5(request.getParameter("newpwd").trim());
                    int flag = memberBean.editPassword(member, oldpwd, newpwd);
                    switch(flag)
                    {
                    case 1: // '\001'
                        request.setAttribute("message", "\u5BC6\u7801\u4FEE\u6539\u6210\u529F\uFF01");
                        request.getRequestDispatcher("member/info/editpwd.jsp").forward(request, response);
                        break;

                    case 3: // '\003'
                        request.setAttribute("message", "\u539F\u59CB\u5BC6\u7801\u9519\u8BEF\uFF0C\u8BF7\u786E\u8BA4\u6743\u9650\uFF01");
                        request.getRequestDispatcher("member/info/editpwd.jsp").forward(request, response);
                        break;

                    case 4: // '\004'
                        request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                        request.getRequestDispatcher("member/info/editpwd.jsp").forward(request, response);
                        break;
                    }
                }
            } else
            if(method.equals("PREG"))
            {
                String username = Filter.escapeHTMLTags(request.getParameter("username").trim());
                String password = Filter.escapeHTMLTags(request.getParameter("password").trim());
                String type = "person";
                String realname = Filter.escapeHTMLTags(request.getParameter("realname").trim());
                String sex = Filter.escapeHTMLTags(request.getParameter("sex").trim());
                String sheng = Filter.escapeHTMLTags(request.getParameter("sheng").trim());
                String city = Filter.escapeHTMLTags(request.getParameter("city").trim());
                String bir = Filter.escapeHTMLTags(request.getParameter("bir").trim());
                String telphone = Filter.escapeHTMLTags(request.getParameter("telphone").trim());
                String email = Filter.escapeHTMLTags(request.getParameter("email").trim());
                String question = Filter.escapeHTMLTags(request.getParameter("question").trim());
                String answer = Filter.escapeHTMLTags(request.getParameter("answer").trim());
                String lastip = request.getRemoteAddr();
                int off = 1;
                int flag = memberBean.personReg(username, password, type, realname, sex, bir, sheng, city, telphone, email, question, answer, lastip, off);
                if(flag == 1)
                {
                    List siteList = (new SystemBean()).getSiteInfo();
                    String sitename = siteList.get(0).toString();
                    request.setAttribute("message", (new StringBuilder("\u6CE8\u518C\u6210\u529F\uFF01\u606D\u559C\u60A8\u6210\u4E3A")).append(sitename).append("\u7684\u6CE8\u518C\u4F1A\u5458\uFF0C\u767B\u9646\u540E\u60A8\u53EF\u4EE5\u53D1\u5E03\u4E1A\u52A1\u4FE1\u606F\uFF01").toString());
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("personreg.jsp").forward(request, response);
                }
            } else
            if(method.equals("UPREGINFO"))
            {
                String member = (String)session.getAttribute("member");
                String type = (String)session.getAttribute("type");
                if(member == null || type == null)
                {
                    response.sendRedirect("error.jsp");
                } else
                {
                    String realname = Filter.escapeHTMLTags(request.getParameter("realname").trim());
                    String sex = Filter.escapeHTMLTags(request.getParameter("sex").trim());
                    String sheng = Filter.escapeHTMLTags(request.getParameter("sheng").trim());
                    String city = Filter.escapeHTMLTags(request.getParameter("city").trim());
                    String bir = Filter.escapeHTMLTags(request.getParameter("bir").trim());
                    String telphone = Filter.escapeHTMLTags(request.getParameter("telphone").trim());
                    String email = Filter.escapeHTMLTags(request.getParameter("email").trim());
                    String question = Filter.escapeHTMLTags(request.getParameter("question").trim());
                    String answer = Filter.escapeHTMLTags(request.getParameter("answer").trim());
                    int flag = memberBean.uppersonReg(member, realname, sex, bir, sheng, city, telphone, email, question, answer);
                    if(flag == 1)
                    {
                        request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                        request.getRequestDispatcher("member/info/info.jsp").forward(request, response);
                    } else
                    {
                        request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                        request.getRequestDispatcher("member/info/info.jsp").forward(request, response);
                    }
                }
            } else
            if(method.equals("COREG"))
            {
                String username = Filter.escapeHTMLTags(request.getParameter("username").trim());
                String password = Filter.escapeHTMLTags(request.getParameter("password").trim());
                String type = "co";
                String coname = Filter.escapeHTMLTags(request.getParameter("coname").trim());
                String address = Filter.escapeHTMLTags(request.getParameter("address").trim());
                String postnum = Filter.escapeHTMLTags(request.getParameter("postnum").trim());
                String tel = Filter.escapeHTMLTags(request.getParameter("telphone").trim());
                String email = Filter.escapeHTMLTags(request.getParameter("email").trim());
                String question = Filter.escapeHTMLTags(request.getParameter("question").trim());
                String answer = Filter.escapeHTMLTags(request.getParameter("answer").trim());
                String intro = Filter.escapeHTMLTags(request.getParameter("intro").trim());
                if(intro.equals(""))
                    intro = "\u65E0";
                String lastip = request.getRemoteAddr();
                int flag = memberBean.coReg(username, password, type, coname, address, postnum, tel, email, question, answer, intro, lastip, 1);
                if(flag == 1)
                {
                    List siteList = (new SystemBean()).getSiteInfo();
                    String sitename = siteList.get(0).toString();
                    request.setAttribute("message", (new StringBuilder("\u6CE8\u518C\u6210\u529F\uFF01\u606D\u559C\u60A8\u6210\u4E3A")).append(sitename).append("\u7684\u4F01\u4E1A\u4F1A\u5458\uFF0C\u767B\u9646\u540E\u60A8\u53EF\u4EE5\u53D1\u5E03\u4E1A\u52A1\u4FE1\u606F\uFF01").toString());
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("coreg.jsp").forward(request, response);
                }
            } else
            if(method.equals("UPCOREGINFO"))
            {
                String member = (String)session.getAttribute("member");
                String type = (String)session.getAttribute("type");
                if(member == null || type == null)
                {
                    response.sendRedirect("error.jsp");
                } else
                {
                    String coname = Filter.escapeHTMLTags(request.getParameter("coname").trim());
                    String address = Filter.escapeHTMLTags(request.getParameter("address").trim());
                    String postnum = Filter.escapeHTMLTags(request.getParameter("postnum").trim());
                    String tel = Filter.escapeHTMLTags(request.getParameter("telphone").trim());
                    String email = Filter.escapeHTMLTags(request.getParameter("email").trim());
                    String question = Filter.escapeHTMLTags(request.getParameter("question").trim());
                    String answer = Filter.escapeHTMLTags(request.getParameter("answer").trim());
                    String intro = Filter.escapeHTMLTags(request.getParameter("intro").trim());
                    int flag = memberBean.upCoReg(member, coname, address, postnum, tel, email, question, answer, intro);
                    if(flag == 1)
                    {
                        request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                        request.getRequestDispatcher("member/info/coinfo.jsp").forward(request, response);
                    } else
                    {
                        request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                        request.getRequestDispatcher("member/info/coinfo.jsp").forward(request, response);
                    }
                }
            } else
            if(method.equals("lostpwd"))
            {
                String username = request.getParameter("username");
                String question = request.getParameter("question");
                String answer = request.getParameter("answer");
                String reg_type = request.getParameter("reg_type");
                String info = memberBean.returnPwd(username, question, answer, reg_type);
                if(info.trim().equals("error"))
                {
                    request.setAttribute("message", "\u4FE1\u606F\u9519\u8BEF\uFF01");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", (new StringBuilder("\u60A8\u7684\u65B0\u5BC6\u7801\u4E3A")).append(info).append("\uFF0C\u8BF7\u767B\u5F55\u540E\u4FEE\u6539\uFF01").toString());
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } else
            {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
    }

    public void init()
        throws ServletException
    {
    }
}