<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<HTML><HEAD>
<LINK href="<%=basePath %>member/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>member/images/style.css" type=text/css rel=stylesheet>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
<script  language="javascript" >
function del()
{
	pageform.submit();
}
</script>
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
	String member=(String)session.getAttribute("member");
	String type=(String)session.getAttribute("type");
	if(member==null||type==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
%>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %>member/images/MainBg.gif topMargin=0 scroll=yes marginheight="0" marginwidth="0">
<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD align=center class=head colspan="2">
			<SPAN class=TAG>搜索信息</SPAN> 
			
		  </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
		<form action="<%=basePath %>member/job/sinfo.jsp" name=form1 method=post onsubmit="return check()">
      <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
          <TR>
          <TD width=35% align=right>房屋户型：</td>
		  <td><input type=text name=type size=30></TD>
		</TR>
		
		<TR>
          <TD  align=right>搜索类型：</td>
		  <td><input type=radio name=ss value="出租" checked> 出租 <input type=radio name=ss value="求租"> 求租
		   <input type=radio name=ss value="出售"> 出售 <input type=radio name=ss value="求购"> 求购</TD>
		</TR>
		<TR>
          <TD  align=center colspan=2><input type=submit value="搜索">
		   </TD>
		</TR>

				</TBODY>
			</TABLE>
			</form>			
			</TD>
		</TR>
        </TBODY>
	  </TABLE>
<script type="text/javascript">
function check()
{
	if(document.form1.type.value=="")
	{
		alert("请输入房屋类型！");
		document.form1.type.focus();
		return false;
	}
}
</script>
</BODY>
<%} %>
</HTML>
