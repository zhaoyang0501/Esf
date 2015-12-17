<%@ page language="java" import="java.util.*,com.util.*" contentType="text/html;charset=gb2312" %>
<%
session.invalidate();
request.getRequestDispatcher("login.jsp").forward(request, response);
%>