// Decompiled by DJ v2.9.9.60 Copyright 2000 Atanas Neshkov  Date: 2008-12-29 ÏÂÎç 10:51:57
// Home Page : http://members.fortunecity.com/neshkov/dj.html  - Check often for new version!
// Decompiler options: packimports(3) 
// Source File Name:   HouseServlet.java

package com.action;

import com.bean.HouseBean;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class HouseServlet extends HttpServlet
{

    public HouseServlet()
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
        HouseBean houseBean = new HouseBean();
        String method = request.getParameter("method").trim();
          if(method.equals("addOut"))
            {
                String type = request.getParameter("type");
                String video = request.getParameter("video");
                String sum = request.getParameter("sum");
                String price = request.getParameter("price");
                String tel = request.getParameter("tel");
                String linkman = request.getParameter("linkman");
                String address = request.getParameter("address");
                String intro = request.getParameter("intro");
                
                String zt = request.getParameter("zt");
                String sn = request.getParameter("sn");
                String htbh = request.getParameter("htbh");
                String fkje = request.getParameter("fkje");
                String fkr = request.getParameter("fkr");
                String fksj = request.getParameter("fksj");
                String bz = request.getParameter("bz");
                String lxfs = request.getParameter("lxfs");
                
                String qy = request.getParameter("qy");
                String xq = request.getParameter("xq");
                
                
                String img1 = request.getParameter("img1");
                String img2 = request.getParameter("img2");
                String img3 = request.getParameter("img3");
                String img4 = request.getParameter("img4");
                
                int flag = houseBean.addOut(type, video, sum, price, tel, linkman, address, intro,zt,sn,htbh,fkje,fkr,fksj,bz,lxfs,qy,xq,img1,img2,img3,img4);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/out/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/out/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("upOut"))
            {
            	 String qy = request.getParameter("qy");
                 String xq = request.getParameter("xq");
                String id = request.getParameter("id");
                String type = request.getParameter("type");
                String video = request.getParameter("video");
                String sum = request.getParameter("sum");
                String price = request.getParameter("price");
                String tel = request.getParameter("tel");
                String linkman = request.getParameter("linkman");
                String address = request.getParameter("address");
                String intro = request.getParameter("intro");
                
                
                String zt = request.getParameter("zt");
                String sn = request.getParameter("sn");
                String htbh = request.getParameter("htbh");
                String fkje = request.getParameter("fkje");
                String fkr = request.getParameter("fkr");
                String fksj = request.getParameter("fksj");
                String bz = request.getParameter("bz");
                String lxfs = request.getParameter("lxfs");
                
                String img1 = request.getParameter("img1");
                String img2 = request.getParameter("img2");
                String img3 = request.getParameter("img3");
                String img4 = request.getParameter("img4");
                
                int flag = houseBean.upOut(id, type, video, sum, price, tel, linkman, address, intro,zt,sn,htbh,fkje,fkr,fksj,bz,lxfs,qy,xq,img1,img2,img3,img4);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/out/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/out/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("delOut"))
            {
                String id = request.getParameter("id");
                int flag = houseBean.delOut(id);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/out/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/out/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("addSale"))
            {
                String type = request.getParameter("type");
                String video = request.getParameter("video");
                String sum = request.getParameter("sum");
                String price = request.getParameter("price");
                String tel = request.getParameter("tel");
                String linkman = request.getParameter("linkman");
                String address = request.getParameter("address");
                String intro = request.getParameter("intro");
                
                String zt = request.getParameter("zt");
                String sn = request.getParameter("sn");
                String htbh = request.getParameter("htbh");
                String fkje = request.getParameter("fkje");
                String fkr = request.getParameter("fkr");
                String fksj = request.getParameter("fksj");
                String bz = request.getParameter("bz");
                String lxfs = request.getParameter("lxfs");
                
                String qy = request.getParameter("qy");
                String xq = request.getParameter("xq");
                
                
                
                String img1 = request.getParameter("img1");
                String img2 = request.getParameter("img2");
                String img3 = request.getParameter("img3");
                String img4 = request.getParameter("img4");
                
                
                
                int flag = houseBean.addSale(type, video, sum, price, tel, linkman, address, intro,zt,sn,htbh,fkje,fkr,fksj,bz,lxfs,qy,xq,img1,img2,img3,img4);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/sale/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/sale/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("upSale"))
            {
                String id = request.getParameter("id");
                String type = request.getParameter("type");
                String video = request.getParameter("video");
                String sum = request.getParameter("sum");
                String price = request.getParameter("price");
                String tel = request.getParameter("tel");
                String linkman = request.getParameter("linkman");
                String address = request.getParameter("address");
                String intro = request.getParameter("intro");
                
                
                String zt = request.getParameter("zt");
                String sn = request.getParameter("sn");
                String htbh = request.getParameter("htbh");
                String fkje = request.getParameter("fkje");
                String fkr = request.getParameter("fkr");
                String fksj = request.getParameter("fksj");
                String bz = request.getParameter("bz");
                String lxfs = request.getParameter("lxfs");
                
                String qy = request.getParameter("qy");
                String xq = request.getParameter("xq");
                
                
                String img1 = request.getParameter("img1");
                String img2 = request.getParameter("img2");
                String img3 = request.getParameter("img3");
                String img4 = request.getParameter("img4");
                
                
                int flag = houseBean.upSale(id, type, video, sum, price, tel, linkman, address, intro,zt,sn,htbh,fkje,fkr,fksj,bz,lxfs,qy,xq,img1,img2,img3,img4);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/sale/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/sale/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("delSale"))
            {
                String id = request.getParameter("id");
                int flag = houseBean.delSale(id);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/sale/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/sale/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("addIn"))
            {
            	 String qy = request.getParameter("qy");
                 String xq = request.getParameter("xq");
                String type = request.getParameter("type");
                String sum = request.getParameter("sum");
                String price = request.getParameter("price");
                String tel = request.getParameter("tel");
                String linkman = request.getParameter("linkman");
                String address = request.getParameter("address");
                String intro = request.getParameter("intro");
                String username=(String)request.getSession().getAttribute("member");
                int flag = houseBean.addIn(type, sum, price, tel, linkman, address, intro,xq,qy,username);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else
            if(method.equals("upIn"))
            {
                String id = request.getParameter("id");
                String type = request.getParameter("type");
                String sum = request.getParameter("sum");
                String price = request.getParameter("price");
                String tel = request.getParameter("tel");
                String linkman = request.getParameter("linkman");
                String address = request.getParameter("address");
                String intro = request.getParameter("intro");
                int flag = houseBean.upIn(id, type, sum, price, tel, linkman, address, intro);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/in/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/in/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("delIn"))
            {
                String id = request.getParameter("id");
                int flag = houseBean.delIn(id);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/in/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/in/index.jsp").forward(request, response);
                }
            } else
                if(method.equals("delInowner"))
                {
                    String id = request.getParameter("id");
                    int flag = houseBean.delIn(id);
                    if(flag == 1)
                    {
                        request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                        request.getRequestDispatcher("member/qz.jsp").forward(request, response);
                    } else
                    {
                        request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                        request.getRequestDispatcher("member/qz.jsp").forward(request, response);
                    }
                }
                
                
                else
            if(method.equals("addBuy"))
            {
            	 String qy = request.getParameter("qy");
                 String xq = request.getParameter("xq");
                String type = request.getParameter("type");
                String sum = request.getParameter("sum");
                String price = request.getParameter("price");
                String tel = request.getParameter("tel");
                String linkman = request.getParameter("linkman");
                String address = request.getParameter("address");
                String intro = request.getParameter("intro");
                String username=(String)request.getSession().getAttribute("member");
                int flag = houseBean.addBuy(type, sum, price, tel, linkman, address, intro,xq,qy,username);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else
                if(method.equals("delBuyowner"))
                {
                	 String id = request.getParameter("id");
                     int flag = houseBean.delBuy(id);
                     if(flag == 1)
                     {
                         request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                         request.getRequestDispatcher("member/qg.jsp").forward(request, response);
                     } else
                     {
                         request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                         request.getRequestDispatcher("member/qg.jsp").forward(request, response);
                     }
                }
                
                else
            if(method.equals("upBuy"))
            {
                String id = request.getParameter("id");
                String type = request.getParameter("type");
                String sum = request.getParameter("sum");
                String price = request.getParameter("price");
                String tel = request.getParameter("tel");
                String linkman = request.getParameter("linkman");
                String address = request.getParameter("address");
                String intro = request.getParameter("intro");
                int flag = houseBean.upBuy(id, type, sum, price, tel, linkman, address, intro);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/buy/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/buy/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("delBuy"))
            {
                String id = request.getParameter("id");
                int flag = houseBean.delBuy(id);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/buy/index.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/buy/index.jsp").forward(request, response);
                }
            } else
            if(method.equals("addDJ"))
            {
                String title = request.getParameter("title");
                String content = request.getParameter("content");
                int flag = houseBean.addDj(title, content);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/jy/dj.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/jy/dj.jsp").forward(request, response);
                }
            } else
            if(method.equals("delDJ"))
            {
                String id = request.getParameter("id");
                int flag = houseBean.delDj(id);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/jy/dj.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/jy/dj.jsp").forward(request, response);
                }
            } else
            if(method.equals("addWord"))
            {
                String title = request.getParameter("title");
                String content = request.getParameter("content");
                int flag = houseBean.addWord(title, content);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/jy/ht.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/jy/ht.jsp").forward(request, response);
                }
            } else
            if(method.equals("delWord"))
            {
                String id = request.getParameter("id");
                int flag = houseBean.delWord(id);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/jy/ht.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/jy/ht.jsp").forward(request, response);
                }
            } else
            if(method.equals("addMoney"))
            {
                String title = request.getParameter("title");
                String content = request.getParameter("content");
                int flag = houseBean.addMoney(title, content);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/jy/sfk.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/jy/sfk.jsp").forward(request, response);
                }
            } else
            if(method.equals("delMoney"))
            {
                String id = request.getParameter("id");
                int flag = houseBean.delMoney(id);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/jy/sfk.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/jy/sfk.jsp").forward(request, response);
                }
            } else
            if(method.equals("addYd"))
            {
                String title = request.getParameter("title");
                String content = request.getParameter("content");
                int flag = houseBean.addYd(title, content);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/jy/yd.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/jy/yd.jsp").forward(request, response);
                }
            } else
            if(method.equals("delYd"))
            {
                String id = request.getParameter("id");
                int flag = houseBean.delYd(id);
                if(flag == 1)
                {
                    request.setAttribute("message", "\u64CD\u4F5C\u6210\u529F\uFF01");
                    request.getRequestDispatcher("admin/jy/yd.jsp").forward(request, response);
                } else
                {
                    request.setAttribute("message", "\u7CFB\u7EDF\u7EF4\u62A4\u4E2D\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01");
                    request.getRequestDispatcher("admin/jy/yd.jsp").forward(request, response);
                }
            }
    }

    public void init()
        throws ServletException
    {
    }
}