<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<jsp:useBean id="mb" scope="page" class="com.bean.MemberBean" />
<jsp:useBean id="sysb" scope="page" class="com.bean.SystemBean" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>��Ա��������</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %>member/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>member/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %>member/images/Common.js"></SCRIPT>
<STYLE type=text/css>BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
</STYLE>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR></HEAD>
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
	List list=sysb.getSiteInfo();
	String sitename=list.get(0).toString();
	String info=(String)session.getAttribute("info");
	String str[]=info.split("/");
	String times=mb.getLogintimes(member);
	String str2[]=times.split("/");
%>

<BODY  oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %>member/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top height="50%">
      
            <TABLE class=topdashed cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD height="30">&nbsp;&nbsp;<FONT color=red><%=member %></FONT> 
                  ���ã���ӭ����[<%=sitename %>]��վ��Ա�������ģ�������ݣ�<FONT color=red><%=type.equals("person")?"���˻�Ա":"��ҵ��Ա"%></FONT>  ��¼������<%=str2[1] %>�� ���ε�¼ʱ�䣺<%=str2[0] %> 
                   </TD></TR></TBODY></TABLE><br>
      <TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
        <TBODY>
        <TR>
          <TD height=10>
            <DIV align=center>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        
			<tr><td colspan="2" width=100%></td></tr>
			<tr><td colspan="3">
 </td></tr>

        </TBODY></TABLE>
			</DIV></TD></TR>
        </TBODY></TABLE></TD></TR>
  </TBODY></TABLE>
	</BODY>
<%} %>
</HTML>
