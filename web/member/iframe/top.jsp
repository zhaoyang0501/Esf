<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>BODY {
	SCROLLBAR-FACE-COLOR: #73a2d6; SCROLLBAR-HIGHLIGHT-COLOR: #73a2d6; SCROLLBAR-SHADOW-COLOR: #73a2d6; SCROLLBAR-3DLIGHT-COLOR: #73a2d6; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #73a2d6
}
.logo {
	FONT-WEIGHT: bold; FONT-SIZE: 36px; COLOR: #73a2d6; FONT-FAMILY: Georgia, "Times New Roman", Times, serif
}
.font_text {
	FONT-SIZE: 12px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
.font_nav_active {
	FONT-WEIGHT: bold; FONT-SIZE: 14px; BACKGROUND-IMAGE: url(images/topnav_active.jpg); COLOR: #ffffff; LINE-HEIGHT: 20px; HEIGHT: 31px; TEXT-DECORATION: none
}
.font_nav_unactive {
	BORDER-RIGHT: 0px solid; BORDER-TOP: #adbbc7 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 14px; BORDER-LEFT: 0px solid; CURSOR: hand; COLOR: #436e9d; LINE-HEIGHT: 20px; BORDER-BOTTOM: #5085c5 1px solid; HEIGHT: 27px; BACKGROUND-COLOR: #f6f8f9; TEXT-DECORATION: none
}
.br_nav {
	BORDER-RIGHT: 0px solid; BORDER-TOP: #adbbc7 1px solid; FONT-SIZE: 14px; BORDER-LEFT: 0px solid; CURSOR: hand; COLOR: #436e9d; LINE-HEIGHT: 20px; BORDER-BOTTOM: #5085c5 1px solid; HEIGHT: 27px; BACKGROUND-COLOR: #f6f8f9; TEXT-DECORATION: none
}
A.white:link {
	FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.white:active {
	FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.white:visited {
	FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.white:hover {
	FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
.button {
	BORDER-RIGHT: #436e9d 1px double; BORDER-TOP: #436e9d 1px double; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/bg.gif); BORDER-LEFT: #436e9d 1px double; CURSOR: hand; COLOR: #333333; LINE-HEIGHT: 16px; BORDER-BOTTOM: #436e9d 1px double; TEXT-DECORATION: none
}
A:link {
	FONT-SIZE: 12px; COLOR: #666666; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A:active {
	FONT-SIZE: 12px; COLOR: #666666; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A:visited {
	FONT-SIZE: 12px; COLOR: #666666; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A:hover {
	FONT-SIZE: 12px; COLOR: #f29422; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.blue:link {
	FONT-SIZE: 12px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.blue:active {
	FONT-SIZE: 12px; COLOR: #73a2d6; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.blue:visited {
	FONT-SIZE: 12px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.blue:hover {
	FONT-SIZE: 12px; COLOR: #73a2d6; LINE-HEIGHT: 20px; TEXT-DECORATION: underline
}
</STYLE>
<SCRIPT language=javascript>		
function out(src){
	if(confirm("ȷ��Ҫ�˳���"))	{
		return true;	
	}
	return false;
}
</SCRIPT>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR></HEAD>
<!-- �ж�session���û������Ƿ�Ϊ�գ�Ϊ������ת������ҳ�� -->
<%
	String member=(String)session.getAttribute("member");
	String type=(String)session.getAttribute("type");
	if(member==null||type==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
	    List list = sn.getSiteInfo();
	    String str = list.get(0).toString();
%>
<SCRIPT language=javascript><!--
parent.window.defaultStatus="��ǰ�û���<%=member %>  IP��ַ��<%=request.getRemoteAddr() %>";
//-->
</SCRIPT>
<BODY  oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %>member/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#3a6592 border=0>
  <TBODY>
  <TR>
    <TD height=25>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD><IMG src="<%=basePath %>member/images/Title.gif"></TD>
          <TD>
            <TABLE height="100%" width="100%" border=0>
              <TBODY>
              <TR>
                <TD class=font_text width="40%">
                  <SCRIPT language=JavaScript 
                  
                </TD>
                <TD class=font_text style="DISPLAY: none" align=right><FONT 
                  color=#ffffff></FONT></TD>
                <TD style="DISPLAY: none" width="40%"></TD>
                <TD class=font_text align=right>[<A class=blue 
                  href="<%=basePath %>" target=_blank>��վ��ҳ</A>] 
                  [<A class=blue 
                  href="<%=path%>/member/info/editpwd.jsp" target="MainFrame">�޸�����</A>] 
                  [<A class=blue 
                  onclick="return out(this)" 
                  href="<%=path%>/Login.shtml?method=memberexit" 
                  target=_top>��ȫ�˳�</A>] 
    </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE class=HeaderStyle height=30 cellSpacing=0 cellPadding=0 width="100%" 
border=0>
  <TBODY>
  <TR>
    <TD width=14 background=<%=basePath %>member/images/topnav_bg.jpg>&nbsp;</TD>
    <TD vAlign=bottom background=<%=basePath %>member/images/topnav_bg.jpg>
      <TABLE class=font_nav_active id=TDTT0  cellSpacing=0 
      cellPadding=0 width=150 border=0>
        <TBODY>
        <TR>
          <TD >
            <DIV align=center><%=str %></DIV></TD></TR></TBODY></TABLE></TD>    
</TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#73a3d4 height=6></TD></TR></TBODY></TABLE></BODY>
<%		
	}
%>    
</HTML>
