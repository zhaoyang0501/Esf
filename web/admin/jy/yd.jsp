<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<jsp:useBean id="hsb" scope="page" class="com.bean.HouseBean"></jsp:useBean>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD>
<LINK href="<%=basePath %><%=dir%>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir%>/images/style.css" type=text/css rel=stylesheet>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
%>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %><%=dir%>/images/MainBg.gif topMargin=0 scroll=yes marginheight="0" marginwidth="0">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="center" vAlign=top >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
<TBODY><!-- 户型 视频 面积 价格 电话 联系人  地址 介绍 发布时间 -->
     <tr class="head"> 
      <td width="5%" align="center">序号</td>
      <td  align="center">预定项目</td>
      <td  align="center">详细</td>
      <td  align="center">删除</td>
    </tr>
    <%	List pagelist3=hsb.getAllYd();  
				if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);				
			%> 
	<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;"><%=i+1 %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(1).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(2).toString()%></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath %>HouseServlet?method=delYd&id=<%=pagelist2.get(0).toString()%>">删除</a></td>
    </tr>
	
<%
	}}
%>  
	 </TBODY>
	 </TABLE>
	</td>
	</tr>
  </TBODY>
</TABLE>
<form action="<%=basePath %>HouseServlet?method=addYd" method=post name=form1 onsubmit="return check()">
<TABLE align=center cellSpacing=0 cellPadding=0 width="950" border=0>
  <TBODY>
  <TR>
    <TD widht=50% align="right" vAlign=top >
    预定项目：
    </TD>
    <TD align="left" vAlign=top >
    <input type=text name=title size=40 maxlength=50>
    </TD>
    </TR>
    <TR>
    <TD align="right" vAlign=top >
    项目简介：
    </TD>
    <TD align="left" vAlign=top >
    <textarea name=content cols=40 rows=6></textarea>
    </TD>
    </TR>
    <TR>
    <TD align="center" vAlign=top colspan=2>
    <input type=submit value="提交">
    </TD>
    </TR>
    </TBODY>
    </TABLE>
    </form>
</BODY>
<script type="text/javascript">
function check()
{
	if(document.form1.title.value==""||document.form1.content.value=="")
	{
		alert("所有项目必须填写！");
		return false;
	}
}
</script>
<%} %>
</HTML>
