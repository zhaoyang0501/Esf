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
<!--//屏蔽出错代码
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//处理大分类一行两个小分类
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


<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0> 
<SCRIPT language=JavaScript>
<!--//目的是为了做风格方便
document.write('<div class="wrap">');
//-->
</SCRIPT>
     <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD class=head colspan="2">
			<SPAN class=TAG>搜索信息</SPAN> 
			
		  </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
		<form action="<%=basePath %>search.jsp" name=form1 method=post onsubmit="return check()">
      <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                     <TR>
          <TD width=35% align=right>区域：</td>
		  <td><input type=text name=qy size=30 value = <%=com.util.Common.toChineseAndTrim(request.getParameter("qy")).trim() %>   ></TD>
		</TR>
		 <TR>
          <TD width=35% align=right>小区：</td>
		  <td><input type=text name=xq size=30 value = <%=com.util.Common.toChineseAndTrim(request.getParameter("xq")).trim() %>   ></TD>
		</TR>
		
          <TR>
          <TD width=35% align=right>房屋户型：</td>
		  <td><input type=text name=type size=30 value = <%=com.util.Common.toChineseAndTrim(request.getParameter("type")).trim() %>   ></TD>
		</TR>
		
		  <TR>
          <TD width=35% align=right>面积：</td>
		  <td>
		  大于<input type=text name=mianjia size=10 value = <%=com.util.Common.toChineseAndTrim(request.getParameter("mianjia")).trim() %>   >
		  小于<input type=text name=mianjib size=10 value = <%=com.util.Common.toChineseAndTrim(request.getParameter("mianjib")).trim() %>   >
		  </TD>
		</TR>
		
		
		  <TR>
          <TD width=35% align=right>价格：</td>
		  <td>  大于<input type=text name=jiagea size=10 value = <%=com.util.Common.toChineseAndTrim(request.getParameter("jiagea")).trim() %>   >
			小于<input type=text name=jiageb size=10 value = <%=com.util.Common.toChineseAndTrim(request.getParameter("jiageb")).trim() %>   >
		  </TD>
		</TR>
		
		<TR>
          <TD  align=right>搜索类型：</td>
		  <td>
		  
		  <input type=radio name=ss value="出租" <%if (com.util.Common.toChineseAndTrim(request.getParameter("ss")).trim().equals("出租")) {   %>     checked='checked' <%} %>>  > 出租 
		  <input type=radio name=ss value="求租" <%if (com.util.Common.toChineseAndTrim(request.getParameter("ss")).trim().equals("求租")) {   %>     checked='checked' <%} %>>  > 求租
		  <input type=radio name=ss value="出售" <%if (com.util.Common.toChineseAndTrim(request.getParameter("ss")).trim().equals("出售")) {   %>     checked='checked' <%} %>>  > 出售
		  <input type=radio name=ss value="求购" <%if (com.util.Common.toChineseAndTrim(request.getParameter("ss")).trim().equals("求购")) {   %>     checked='checked' <%} %>>  > 求购
		  
		  </TD>
		</TR>
		<TR>
          <TD  align=center colspan=2><input type=submit value="搜索">
		   </TD>
		</TR>

				</TBODY>
			</TABLE>
			
			
			
			 
			
			
			
			
			
			<%

String type=com.util.Common.toChineseAndTrim(request.getParameter("type")).trim(); 
String suma=com.util.Common.toChineseAndTrim(request.getParameter("mianjia")).trim();
String sumb=com.util.Common.toChineseAndTrim(request.getParameter("mianjib")).trim();
String pricea=com.util.Common.toChineseAndTrim(request.getParameter("jiagea")).trim();
String priceb=com.util.Common.toChineseAndTrim(request.getParameter("jiageb")).trim();
String str=com.util.Common.toChineseAndTrim(request.getParameter("ss")).trim();
String xq=com.util.Common.toChineseAndTrim(request.getParameter("xq")).trim();
String qy=com.util.Common.toChineseAndTrim(request.getParameter("qy")).trim();


List list=new ArrayList();
if(str.equals("出售")){
	String sql2="select * from salehouse where  1=1   ";

	if(!com.util.Common.toChineseAndTrim(request.getParameter("xq")).equals(""))
	{
		sql2  += " and xq like '%"+xq+"%'";
	}
	if(!com.util.Common.toChineseAndTrim(request.getParameter("qy")).equals(""))
	{
		sql2  += " and qy like '%"+qy+"%'";
	}
	
	if(!com.util.Common.toChineseAndTrim(request.getParameter("type")).equals(""))
	{
		sql2  += " and type like '%"+type+"%'";
	}

	if(!com.util.Common.toChineseAndTrim(request.getParameter("mianjia")).equals(""))
	{
		sql2  += " and sum >= '"+suma+"'";
	}
	if(!com.util.Common.toChineseAndTrim(request.getParameter("mianjib")).equals(""))
	{
		sql2  += " and sum <= '"+sumb+"'";
	}
	
	if(!com.util.Common.toChineseAndTrim(request.getParameter("jiagea")).equals(""))
	{
		sql2  += " and price >= '"+pricea+"'";
	}
	if(!com.util.Common.toChineseAndTrim(request.getParameter("jiageb")).equals(""))
	{
		sql2  += " and price <= '"+priceb+"'";
	}
	sql2 += " order by id desc ";
	System.out.println(sql2);
	list=hsb.getAllOut(sql2);
%>
<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD class=head colspan="2">
			<SPAN class=TAG>出售信息</SPAN> 
			 </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
               <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
         <TR>
          <TD  align=left>房屋类型</TD>
		   <TD align=center>面积</TD>
		  <TD align=center>价格</TD>
		  <TD align=right>联系电话</TD>
		  <TD align=right>发布时间</TD>
		</TR>
                    <%if(!list.isEmpty()){
					for(int job11=0;job11<list.size();job11++){
						List jobList11=(List)list.get(job11);
			%>
        <TR>
          <TD  align=left>
		  <A href="<%=basePath%>saleinfo.jsp?id=<%=jobList11.get(0).toString()%>" target=_blank><%=jobList11.get(1).toString()%></A>
		   </TD>
		   <TD align=center>
		  <%=jobList11.get(3).toString()%>  
		  </TD>
		  <TD align=center>
		  <%=jobList11.get(4).toString()%>  
		  </TD>
		  <TD align=right>
		  <%=jobList11.get(5).toString()%>  
		  </TD>
		  <TD align=right>
		  <%=jobList11.get(9).toString()%>  
		  </TD>
		</TR>
		<%}} %>
				</TBODY>
			</TABLE>			
			</TD>
		</TR>
        </TBODY>
	  </TABLE>
<%
}
else if(str.equals("求租")){
String sql3="select * from inhouse where 1=1 ";

if(!com.util.Common.toChineseAndTrim(request.getParameter("xq")).equals(""))
{
	sql3  += " and xq like '%"+xq+"%'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("qy")).equals(""))
{
	sql3  += " and qy like '%"+qy+"%'";
}

if(!com.util.Common.toChineseAndTrim(request.getParameter("type")).equals(""))
{
	sql3  += " and type like '%"+type+"%'";
}

if(!com.util.Common.toChineseAndTrim(request.getParameter("mianjia")).equals(""))
{
	sql3  += " and sum >= '"+suma+"'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("mianjib")).equals(""))
{
	sql3  += " and sum <= '"+sumb+"'";
}

if(!com.util.Common.toChineseAndTrim(request.getParameter("jiagea")).equals(""))
{
	sql3  += " and price >= '"+pricea+"'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("jiageb")).equals(""))
{
	sql3  += " and price <= '"+priceb+"'";
}

sql3 += " order by id desc ";

System.out.println(sql3);

list=hsb.getAllIn(sql3);
%>
 <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
	  <TBODY>
        <TR>
          <TD class=head colspan="2">
            <SPAN class=TAG>求租信息</SPAN> 
          </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
               <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
          <TD  align=left>房屋类型</TD>
		   <TD align=center>面积</TD>
		  <TD align=center>价格</TD>
		  <TD align=right>联系电话</TD>
		  <TD align=right>发布时间</TD>
		</TR>
                    <%if(!list.isEmpty()){
					for(int job11=0;job11<list.size();job11++){
						List jobList11=(List)list.get(job11);
			%>
        <TR>
          <TD  align=left>
		  <A href="<%=basePath%>ininfo.jsp?id=<%=jobList11.get(0).toString()%>" target=_blank><%=jobList11.get(1).toString()%></A>
		   </TD>
		   <TD align=center>
		  <%=jobList11.get(2).toString()%>  
		  </TD>
		  <TD align=center>
		  <%=jobList11.get(3).toString()%>  
		  </TD>
		  <TD align=right>
		  <%=jobList11.get(4).toString()%>  
		  </TD>
		  <TD align=right>
		  <%=jobList11.get(8).toString()%>  
		  </TD>
		</TR>
		<%}} %>
				</TBODY>
			</TABLE>			
			</TD>
		</TR>
        </TBODY>
<%
}
else if(str.equals("求购")){
String sql4=" select * from buyhouse  where 1=1    ";

 
if(!com.util.Common.toChineseAndTrim(request.getParameter("xq")).equals(""))
{
	sql4  += " and xq like '%"+xq+"%'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("qy")).equals(""))
{
	sql4  += " and qy like '%"+qy+"%'";
}

if(!com.util.Common.toChineseAndTrim(request.getParameter("type")).equals(""))
{
	sql4  += " and type like '%"+type+"%'";
}

if(!com.util.Common.toChineseAndTrim(request.getParameter("mianjia")).equals(""))
{
	sql4  += " and sum >= '"+suma+"'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("mianjib")).equals(""))
{
	sql4  += " and sum <= '"+sumb+"'";
}

if(!com.util.Common.toChineseAndTrim(request.getParameter("jiagea")).equals(""))
{
	sql4  += " and price >= '"+pricea+"'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("jiageb")).equals(""))
{
	sql4  += " and price <= '"+priceb+"'";
}

sql4 += " order by id desc ";


System.out.println(sql4);
list=hsb.getAllIn(sql4);
%>
<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
	  <TBODY>
        <TR>
          <TD class=head colspan="2">
            <SPAN class=TAG>求购信息</SPAN> 
          </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
               <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                          <TR>
          <TD  align=left>房屋类型</TD>
		   <TD align=center>面积</TD>
		  <TD align=center>价格</TD>
		  <TD align=right>联系电话</TD>
		  <TD align=right>发布时间</TD>
		</TR>
                    <%if(!list.isEmpty()){
					for(int job11=0;job11<list.size();job11++){
						List jobList11=(List)list.get(job11);
			%>
        <TR>
          <TD  align=left>
		  <A href="<%=basePath%>buyinfo.jsp?id=<%=jobList11.get(0).toString()%>" target=_blank><%=jobList11.get(1).toString()%></A>
		   </TD>
		   <TD align=center>
		  <%=jobList11.get(2).toString()%>  
		  </TD>
		  <TD align=center>
		  <%=jobList11.get(3).toString()%>  
		  </TD>
		  <TD align=right>
		  <%=jobList11.get(4).toString()%>  
		  </TD>
		  <TD align=right>
		  <%=jobList11.get(8).toString()%>  
		  </TD>
		</TR>
		<%}} %>
				</TBODY>
			</TABLE>			
			</TD>
		</TR>
        </TBODY>
	  </TABLE>
<%
}
 
	else if(str.equals("出租")){
String sql="select * from outhouse where 1=1 ";
if(!com.util.Common.toChineseAndTrim(request.getParameter("xq")).equals(""))
{
	sql  += " and xq like '%"+xq+"%'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("qy")).equals(""))
{
	sql  += " and qy like '%"+qy+"%'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("type")).equals(""))
{
	sql  += " and type like '%"+type+"%'";
}

if(!com.util.Common.toChineseAndTrim(request.getParameter("mianjia")).equals(""))
{
	sql  += " and sum >= '"+suma+"'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("mianjib")).equals(""))
{
	sql  += " and sum <= '"+sumb+"'";
}

if(!com.util.Common.toChineseAndTrim(request.getParameter("jiagea")).equals(""))
{
	sql  += " and price >= '"+pricea+"'";
}
if(!com.util.Common.toChineseAndTrim(request.getParameter("jiageb")).equals(""))
{
	sql  += " and price <= '"+priceb+"'";
}
String sss = com.util.Common.toChineseAndTrim(request.getParameter("jiage"));


sql += " order by id desc ";

System.out.println(sql);
list=hsb.getAllOut(sql);
%>
<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD class=head colspan="2">
			<SPAN class=TAG>出租信息</SPAN> 
			 </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
               <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
         <TR>
          <TD  align=left>房屋类型</TD>
		   <TD align=center>面积</TD>
		  <TD align=center>价格</TD>
		  <TD align=right>联系电话</TD>
		  <TD align=right>发布时间</TD>
		</TR>
                    <%if(!list.isEmpty()){
					for(int job11=0;job11<list.size();job11++){
						List jobList11=(List)list.get(job11);
			%>
        <TR>
          <TD  align=left>
		  <A href="<%=basePath%>outinfo.jsp?id=<%=jobList11.get(0).toString()%>" target=_blank><%=jobList11.get(1).toString()%></A>
		   </TD>
		   <TD align=center>
		  <%=jobList11.get(3).toString()%>  
		  </TD>
		  <TD align=center>
		  <%=jobList11.get(4).toString()%>  
		  </TD>
		  <TD align=right>
		  <%=jobList11.get(5).toString()%>  
		  </TD>
		  <TD align=right>
		  <%=jobList11.get(9).toString()%>  
		  </TD>
		</TR>
		<%}} %>
				</TBODY>
			</TABLE>			
			</TD>
		</TR>
        </TBODY>
	  </TABLE>
<%
}
%>
			
			
			
			
			
			
			
		 
			
			
			
			
			
			
			
			</form>			
			</TD>
		</TR>
        </TBODY>
	  </TABLE>
<script type="text/javascript">
 
</script>

<SCRIPT language=JavaScript>
<!--//目的是为了做风格方便
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