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
<style media=print> 
.Noprint{display:none;}<!--�ñ���ʽ�ڴ�ӡʱ���طǴ�ӡ��Ŀ--> 
.PageNext{page-break-after: always;}<!--���Ʒ�ҳ--> 
</style> 
<object id="WebBrowser" width=0 height=0 classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"> 
</object> 
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<form action="<%=basePath %>/admin/tj/fw200.jsp" method="post">
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 style="margin-bottom: 20px">
		<TR>
		    <TD align="center" vAlign=top >
		    ��ʼ���ڣ�<input name='begain' value="<%=request.getParameter("begain")==null?"":request.getParameter("begain") %>" size="12"/>    �������ڣ�<input value="<%=request.getParameter("end")==null?"":request.getParameter("end") %>"  name='end' size="12"/> <button type="submit">��ѯ</button>
		    </TD>
		    </TR>
		</TABLE>
</form>
  <TBODY>
  <TR>
    <TD align="center" vAlign=top >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
<TBODY><!-- ���� ��Ƶ ��� �۸� �绰 ��ϵ��  ��ַ ���� ����ʱ�� -->
     <tr class="head"> 
      <td width="5%" align="center">���</td>
      <td width="5%" align="center">״̬</td>
      <td  align="center">����</td>
      <td  align="center">��ͬ���</td>
    </tr>
    <%	List pagelist3=hsb.getReportOut(request.getParameter("begain"),request.getParameter("end"));
				if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);				
			%> 
	<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;"><%=i+1 %></td>
       <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(0)==null?"":pagelist2.get(0).toString()%></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(1)==null?"":pagelist2.get(1).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(2)==null?"":pagelist2.get(2).toString() %>��</td>
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
<center class="Noprint" > 
<input type=button value=��ӡ onclick=document.all.WebBrowser.ExecWB(6,1)> 
<input type=button value=ֱ�Ӵ�ӡ onclick=document.all.WebBrowser.ExecWB(6,6)> 
<input type=button value=ҳ������ onclick=document.all.WebBrowser.ExecWB(8,1)> 
</p> 
<p> <input type=button value=��ӡԤ�� onclick=document.all.WebBrowser.ExecWB(7,1)> 
</center> 
</BODY>
<%} %>
</HTML>
