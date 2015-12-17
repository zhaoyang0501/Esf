<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"  %>
<jsp:useBean id="mmb" scope="page" class="com.bean.MemberManageBean" ></jsp:useBean>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
String id=request.getParameter("id");
List list=new ArrayList();
if(id!=null){
	list=mmb.getCoMember(Integer.parseInt(id));
}
else{
	String name=request.getParameter("name").trim();
	int memberid=mmb.getID(name);
	list=mmb.getCoMember(memberid);
} 
%>
<HTML>
<HEAD>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<title>企业会员信息</title>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</head> 
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath+dir %>/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE width="100%" border=1 align="center" cellPadding=3 cellSpacing=1  class="tablewidth">
   <tr>
   <td align=right bgColor=#ffffff id=map>公司名称：</td><td align=left bgColor=#ffffff id=map><%=list.get(0).toString() %></td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>地址：</td><td align=left bgColor=#ffffff id=map><%=list.get(1).toString() %></td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>邮政编码：</td><td align=left bgColor=#ffffff id=map><%=list.get(2).toString() %></td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>联系电话：</td><td align=left bgColor=#ffffff id=map><%=list.get(3).toString() %></td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>邮箱：</td><td align=left bgColor=#ffffff id=map><%=list.get(4).toString() %></td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>密码保护提示问题：</td><td align=left bgColor=#ffffff id=map><%=list.get(5).toString() %></td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>密码保护答案：</td><td align=left bgColor=#ffffff id=map><%=list.get(6).toString() %></td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>公司介绍：</td><td align=left bgColor=#ffffff id=map><textarea rows="6" cols="40" readonly><%=list.get(7).toString() %></textarea></td>
   </tr>
   <tr>
   <td align=center colspan=2 bgColor=#ffffff id=map><input type=button value="关闭窗口" onclick="window.close()"></td>
   </tr>
   </table>
  </body>
</html>
