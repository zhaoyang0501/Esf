<%@ page language="java" import="java.util.*,com.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.bean.*" %>
<jsp:useBean id="hsb" scope="page" class="com.bean.HouseBean"></jsp:useBean>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/calendar.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>/js/popup.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<!--  -->
<script type="text/javascript">
function check()
{
	if(document.form1.type.value==""||document.form1.sum.value==""
	||document.form1.price.value==""||document.form1.tel.value==""||document.form1.linkman.value==""
	||document.form1.address.value==""||document.form1.intro.value=="")
	{
		alert("������Ŀ������д��");
		return false;
	}
	
}

function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=basePath %>/upload/upload.jsp");
	            pop.setContent("title","�ļ��ϴ�");
	            pop.build();
	            pop.show();
		    }

</script>
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
	//String sname,String sex,String bir,String sheng,String city,String tel,String address,String email,String intro
	String method=request.getParameter("method").trim();
	String id=request.getParameter("id");
	String type="";String video="";String sum="";String price="";String tel="";String linkman="";String address="";String intro="";
	if(method.equals("upSale")){
		List list=hsb.getOneSale(Integer.parseInt(id));
		type=list.get(1).toString();video=list.get(2).toString();sum=list.get(3).toString();price=list.get(4).toString();
		tel=list.get(5).toString();linkman=list.get(6).toString();address=list.get(7).toString();intro=list.get(8).toString();
	}
		
%>
<BODY >
 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>������Ϣ���� ������Ŀ������д</TD>
		  </TR>
		  <TR align="center" >
			<TD >
		<form name="form1" action="<%=basePath %>HouseServlet" method="post" onsubmit="return check()">
		  <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 >
		  <TBODY>	  <!-- ���� ��Ƶ ��� �۸� �绰 ��ϵ��  ��ַ ���� ����ʱ�� -->
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>�������ͣ�<input type=hidden name=method value=<%=method %>><input type=hidden name=id value=<%=id %>></TD>
			<TD align=left><input type=text size=30 maxlength=50 name=type value="<%=type %>" ></TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>���������</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=sum value="<%=sum %>" > </TD>
		  </TR>
		 <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>�����۸�</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=price value="<%=price %>" > </TD>
		  </TR>
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>��ϵ�绰��</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=tel value=<%=tel %>> </TD>
		  </TR>
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>�� ϵ �ˣ�</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=linkman value=<%=linkman %>> </TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>��&nbsp;&nbsp;&nbsp;&nbsp;ַ��</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=address value=<%=address %>> </TD>
		  </TR>
		  
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>ͼ&nbsp;&nbsp;&nbsp;&nbsp;Ƭ��</TD>
			<TD align=left>
			<input type=text size=30 maxlength=50 name=video value=<%=video %>> 
			 
			 <input type="button" value="�ϴ�" onclick="up()"/>
			</TD>
		  </TR>
		  
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>��ϸ���ϣ�</TD>
			<TD align=left><textarea name=intro rows=10 cols=50><%=intro %></textarea></TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD colspan=2 align=center><input type=submit value="�ύ"></TD>
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
