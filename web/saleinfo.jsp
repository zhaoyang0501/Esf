<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>

 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<LINK href="images/default.css" type=text/css rel=stylesheet>
<LINK href="images/css.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
.ycbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(images/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsnr {
	DISPLAY: block
}
.ycnr {
	DISPLAY: none
}
</STYLE>
<SCRIPT type=text/javascript>
function tb_xs(t,m,n){
for(var i=1;i<=m;i++){
if (i != n){
document.getElementById("tb"+t+ "_bt" + i).className= "ycbt";
document.getElementById("tb"+t+ "_nr" + i).className= "ycnr";}
else{
document.getElementById("tb"+t+ "_bt" + i).className= "xsbt";
document.getElementById("tb"+t+ "_nr" + i).className= "xsnr";}}}
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//���γ������
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//��������һ������С����
function autoTable(div){
	fs=document.getElementById(div).getElementsByTagName("TABLE");
	for(var i=0;i<fs.length;i++){
		fs[i].style.width='49.5%';
		if(i%2==1){
			if (document.all) {
				fs[i].style.styleFloat="right";
			}else{
				fs[i].style.cssFloat="right;";
			}
		}else{
			if (document.all) {
				fs[i].style.styleFloat="left";
			}else{
				fs[i].style.cssFloat="left;";
			}
		}
	}
}
//-->
</SCRIPT>
<SCRIPT language=JavaScript src="images/inc.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/default.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/swfobject.js"></SCRIPT>
<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
</HEAD>
<script type="text/javascript">
function send()
{
	if(document.form1.ee.value=="")
	{
		alert("ֻ��ע���Ա�����ڵ�¼��ſ��Ը���ְ��Ա���ʼ���");
		return false;
	}
	document.write('<a href=mailto:'+document.form1.mail.value+'>��˸��Է����ʼ�</a>');
}
</script>
<%
	String id=request.getParameter("id");
	List list=hsb.getOneSale(Integer.parseInt(id));
 %>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0> 
<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('<div class="wrap">');
//-->
</SCRIPT>
     <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD class=head colspan="2">
			<SPAN class=TAG>������Ϣ</SPAN> 
			
		  </TD>
		</TR>
		
		<TR>
            <td colspan="2" width=35% align=left > 
            
            
             <%
            if(list.get(2)!=null&&!"".equals(list.get(2)))
            	{%>
            	<img alt="����" src="<%=basePath %>/<%=list.get(2).toString()%>" height="200" weight ="200" >
             <%} %>
            
            
            <%
            if(list.get(20)!=null&&!"".equals(list.get(20)))
            	{%>
            	<img alt="����" src= "<%=basePath %>/<%=list.get(20).toString()%>" height ="200" weight="200" >
             <%} %>
             
              <%
            if(list.get(21)!=null&&!"".equals(list.get(21)))
            	{%>
            	<img alt="����" src= "<%=basePath %>/<%=list.get(21).toString()%>" height ="200" weight ="200" >
             <%} %>
             
              <%
            if(list.get(22)!=null&&!"".equals(list.get(22)))
            	{%>
            	<img alt="����" src= "<%=basePath %>/<%=list.get(22).toString()%>" height = "200" weight ="200" >
             <%} %>
             
             
              <%
            if(list.get(23)!=null&&!"".equals(list.get(23)))
            	{%>
            	<img alt="����" src="<%=basePath %>/<%=list.get(23).toString()%>" height = 200 weight =200 >
             <%} %>
             
		  
		 
		  </TD>
		</TR>
		
	
        <TR>
          <TD width=35% align=right>�������ͣ�</td>
		  <td><%=list.get(1).toString() %></TD>
		</TR>
			<br/><br/>
		<TR>
          <TD  align=right>���������</td>
		  <td><%=list.get(3).toString() %></TD>
		</TR>
		<TR>
          <TD  align=right>���ݼ۸�</td>
		  <td><%=list.get(4).toString() %></TD>
		</TR>
		<TR>
          <TD  align=right>��ϵ�绰��</TD>
          <TD><%=list.get(5).toString() %></TD>
		</TR>
		<TR>
          <TD  align=right>
		 �� ϵ �ˣ�</td>
		  <td><%=list.get(6).toString() %>
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  ��ϵ��ַ��</td>
		  <td><%=list.get(7).toString() %>
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  �������ܣ�</td>
		  <td><%=list.get(8).toString() %>
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  ����ʱ�䣺</td>
		  <td><%=list.get(9).toString() %>
		   </TD>
		</TR>

				</TBODY>
			</TABLE>			
			</TD>
		</TR>
        </TBODY>
	  </TABLE>


<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('</div>');
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--
clickEdit.init();
//-->
</SCRIPT>
</BODY>
</HTML>

<%@ include file="iframe/foot.jsp"%>