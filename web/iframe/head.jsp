<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<jsp:useBean id="sys" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="abc" scope="page" class="com.bean.AfficheBean"/>
<jsp:useBean id="news" scope="page" class="com.bean.NewsBean"/>
<jsp:useBean id="hsb" scope="page" class="com.bean.HouseBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List sysList=sys.getSiteInfo();
List affList=abc.getAllAffiche();
List newsList=news.getIndexNews();
List AllnewsList=news.getAllNews();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE><%=sysList.get(0).toString() %></TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META name="keywords" content="<%=sysList.get(2).toString() %>" />
<META name="description" content="<%=sysList.get(3).toString() %>" />

<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
<LINK href="<%=basePath %>images/css.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>images/default.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %>images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/index.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/calendar.js"></SCRIPT>
<%if(sysList.get(5).toString().trim().equals("open")){ %>
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
</HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('<div class="wrap">');
//-->
</SCRIPT>
<TABLE id=toplogin cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TBODY>
  <TR>
    <TD vAlign=center align=left>
      <DIV class=jstime style="FLOAT: left; WIDTH: 35%">
      
      <% Object username= session.getAttribute("member");  
      if(username==null)
    	  {
    	   %>
  
    	  ��<a href="login.jsp">��Ա��¼</a>����<a href="reg.jsp">���ע��</a>����<a href="lost.jsp">��������</a>��
    	  
    	  <%
    	  }
      else
    	  {
    	     %>
    	 &nbsp;&nbsp;��ӭ <%=username %> 
    	 
    	 &nbsp;&nbsp;
    	  <a href="addqg.jsp">������</a>
    	  
    	  &nbsp;&nbsp;
    	  <a href="addqz.jsp">��������</a>
    	 
    	  &nbsp;&nbsp;
    	  <a href="member/index.jsp">�����̨</a>
    	   &nbsp;&nbsp;
    	  <a href="loginout.jsp">��ȫ�˳�</a>
    	 <%  
    	  }
      %>
      
      
      </DIV>
      <DIV class=jstime style="FLOAT: right; WIDTH: 45%; TEXT-ALIGN: right">
	  <!--****************ʱ��������ʼ****************-->
      <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;����'+'��һ����������'.charAt(new Date().getDay());",1000)</SCRIPT>
      <SPAN id=clock></SPAN>
	  <!--****************ʱ����������****************-->&nbsp;&nbsp; 
     
     
	  <A href="<%=basePath %>admin/login.jsp">�����¼</A> 
	  </DIV>
	</TD>
   </TR>
   </TBODY>
</TABLE>
<TABLE id=header cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD>
      <DIV class=logo>
	 <img src=<%=basePath %>images/ad.jpg width=950 height=90>
	  </DIV>
	</TD>
  </TR>
 </TBODY>
</TABLE>
<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD align=middle>
	<A href="index.jsp" target="">��    ҳ</A> |
	
	<A href="news.jsp" target="">��������</A> |
	
	<A href="out.jsp" target="">������Ϣ</A> |
	<!-- 
	<A href="in.jsp" target="">������Ϣ</A> |
	 -->
	<A href="sale.jsp" target="">������Ϣ</A> |
		 <!-- 
	<A href="buy.jsp" target="">����Ϣ</A> |
	 -->
	<A href="search.jsp" target="">��Ϣ����</A> |
	
	<A href="login.jsp" target="">��Ա����</A> 
	
	
	</TD>
  </TR>
</TBODY>
</TABLE>
