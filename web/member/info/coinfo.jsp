<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<jsp:useBean id="mb" scope="page" class="com.bean.MemberBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<HTML><HEAD>
<LINK href="<%=basePath %>member/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>member/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %>images/Common.js"></SCRIPT>
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
	String member=(String)session.getAttribute("member");
	String type=(String)session.getAttribute("type");
	if(member==null||type==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		List list = mb.getCoRegInfo(member);
%>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %>member/images/MainBg.gif topMargin=0 scroll=yes marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
	<form action="<%=basePath %>Member.shtml?method=UPCOREGINFO" method="post" name="reg" >
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD colspan="2" height=23>�޸Ļ�Ա����  <FONT color="#FF0000">**</FONT>Ϊ����д�ֶ�</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >��˾���ƣ�</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=50 size=30 name=coname  value="<%=list.get(1).toString() %>"> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >��˾��ַ��</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=100 size=30 name=address value="<%=list.get(2).toString() %>"> <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >�������룺</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=6 size=30 name=postnum onKeyUp="this.value=this.value.replace(/\D/gi,'')"  value="<%=list.get(3).toString() %>"> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >��ϵ�绰��</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb name=telphone maxLength=18 size=30  onkeyup="this.value=this.value.replace(/\D/gi,'')"  value="<%=list.get(4).toString() %>"> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >E-mail��</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb  name=email maxLength=50 size=30  value="<%=list.get(5).toString() %>"> <FONT color=#ff0000>**</FONT> <FONT color=#ff6600>(�˵����ʼ��ǳ���Ҫ����������д����</FONT>
			</TD>
		  </TR>
		   <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >������ʾ���⣺</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=28 size=30 name=question  value="<%=list.get(6).toString() %>"> <FONT color=#ff0000>**</FONT> ��Ҫ�һ������ʱ��,��ʾ�����⡰����ʲô���֣���
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >����ش�</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=28 size=30  name=answer value="<%=list.get(7).toString() %>"> <FONT color=#ff0000>**</FONT> ����������Ĵ�,�����Ĵ��ǡ�С�ơ�
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >��˾��飺</TD>
			<TD width="70%" align="left" id=map>
			<TEXTAREA id=intro name=intro rows=6 cols=45><%=list.get(8).toString() %></TEXTAREA> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD colspan="2" align="center" ><input type="button" value="�ύ" onclick="checkcoreg()">&nbsp;&nbsp;<input type="reset" value="����"></TD>
		  </TR>
		</TBODY>
	   </TABLE>
	  </form>
    </TD>
  </TR>
  </TBODY>
</TABLE>
</BODY>
<%} %>
</HTML>
