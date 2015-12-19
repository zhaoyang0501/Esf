<%@ page language="java" import="java.util.*,com.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.bean.*" %>
<jsp:useBean id="hsb" scope="page" class="com.bean.HouseBean"></jsp:useBean>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
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
		alert("所有项目必须填写！");
		return false;
	}
	
}
function up(id)
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=basePath %>/upload/upload.jsp?id="+id);
	            pop.setContent("title","文件上传");
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
	String zt="";String sn1="";String htbh="";String fkje="";String fkr="";String fksj="";String bz="";String lxfs="";
	 String qy="";String xq="";
	 String img1="";String img2="";
	 String img3="";String img4="";
	if(method.equals("upOut")){
		List list=hsb.getOneOut(Integer.parseInt(id));
		type=list.get(1).toString();video=list.get(2).toString();sum=list.get(3).toString();price=list.get(4).toString();
		tel=list.get(5).toString();linkman=list.get(6).toString();address=list.get(7).toString();intro=list.get(8).toString();
		qy=list.get(10)==null?"":list.get(10).toString();
		xq=list.get(11)==null?"":list.get(11).toString();
		
		sn1=list.get(12)==null?"":list.get(12).toString();
		zt=list.get(13)==null?"":list.get(13).toString();
		htbh=list.get(14)==null?"":list.get(14).toString();
		fkje=list.get(15)==null?"":list.get(15).toString();
		fkr=list.get(16)==null?"":list.get(16).toString();
		lxfs=list.get(17)==null?"":list.get(17).toString();
		fksj=list.get(18)==null?"":list.get(18).toString();
		bz=list.get(19)==null?"":list.get(19).toString();
		
		img1=list.get(20)==null?"":list.get(20).toString();
		img2=list.get(21)==null?"":list.get(21).toString();
		img3=list.get(22)==null?"":list.get(22).toString();
		img4=list.get(23)==null?"":list.get(23).toString();
		
	}
		
%>
<BODY >
 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>出租信息管理 所有项目必须填写</TD>
		  </TR>
		  <TR align="center" >
			<TD >
		<form name="form1" action="<%=basePath %>HouseServlet" method="post" onsubmit="return check()">
		  <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 >
		  <TBODY>	  <!-- 户型 视频 面积 价格 电话 联系人  地址 介绍 发布时间 -->
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>房产户型：<input type=hidden name=method value=<%=method %>><input type=hidden name=id value=<%=id %>></TD>
			<TD align=left><input type=text size=30 maxlength=50 name=type value="<%=type %>" ></TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>房产面积：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=sum value="<%=sum %>" > </TD>
		  </TR>
		 <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>房产价格：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=price value="<%=price %>" > </TD>
		  </TR>
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>联系电话：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=tel value=<%=tel %>> </TD>
		  </TR>
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>联 系 人：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=linkman value=<%=linkman %>> </TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>地&nbsp;&nbsp;&nbsp;&nbsp;址：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=address value=<%=address %>> </TD>
		  </TR>
		  
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>状&nbsp;&nbsp;&nbsp;&nbsp;态：</TD>
			<TD align=left>
			
				<select name="zt" value='<%=zt %>'>
					<option value="可租" <%= "可租".equals(zt)?"selected='selected'":"" %>>可租</option>
					<option value="已付定金"   <%= "已付定金".equals(zt)?"selected='selected'":"" %>>已付定金</option>
					<option value="已租"  <%= "已租".equals(zt)?"selected='selected'":"" %> >已租</option>
				</select>
				
			 </TD>
		  </TR>
		   
		    <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>区域：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=qy value='<%=qy %>'> </TD>
		  </TR>
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>小区：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=xq value='<%=xq %>'> </TD>
		  </TR>
		  
		   
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>信息编号：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=sn value='<%=sn1 %>'> </TD>
		  </TR>
		  
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>合同编号：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=htbh value='<%=htbh %>'> </TD>
		  </TR>
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>付款金额：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=fkje value='<%=fkje %>'> </TD>
		  </TR>
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>付款人：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=fkr value='<%=fkr %>'> </TD>
		  </TR>
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>联系方式：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=lxfs value='<%=lxfs %>'> </TD>
		  </TR>
		   
		    <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>付款时间：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=fksj value='<%=fksj %>'> </TD>
		  </TR>
		  
		   
		    <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>备注：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=bz value='<%=bz %>'> </TD>
		  </TR>
		  
		  
		  
		  
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>图&nbsp;&nbsp;&nbsp;&nbsp;片1：</TD>
			<TD align=left>
			<input type=text size=30 maxlength=50 name=video value=<%=video %>> 
			 
			 <input type="button" value="上传" onclick="up('video')"/>
			</TD>
		  </TR>
		  
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>图&nbsp;&nbsp;&nbsp;&nbsp;片2：</TD>
			<TD align=left>
			<input type=text size=30 maxlength=50 name=img1 value=<%=img1 %>> 
			 
			 <input type="button" value="上传" onclick="up('img1')"/>
			</TD>
		  </TR>
		  
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>图&nbsp;&nbsp;&nbsp;&nbsp;片3：</TD>
			<TD align=left>
			<input type=text size=30 maxlength=50 name=img2 value=<%=img2 %>> 
			 
			 <input type="button" value="上传" onclick="up('img2')"/>
			</TD>
		  </TR>
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>图&nbsp;&nbsp;&nbsp;&nbsp;片4：</TD>
			<TD align=left>
			<input type=text size=30 maxlength=50 name=img3 value=<%=img3 %>> 
			 
			 <input type="button" value="上传" onclick="up('img3')"/>
			</TD>
		  </TR>
		  
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>图&nbsp;&nbsp;&nbsp;&nbsp;片5：</TD>
			<TD align=left>
			<input type=text size=30 maxlength=50 name=img4 value=<%=img4 %>> 
			 
			 <input type="button" value="上传" onclick="up('img4')"/>
			</TD>
		  </TR>
		  
		  
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>详细资料：</TD>
			<TD align=left><textarea name=intro rows=10 cols=50><%=intro %></textarea></TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD colspan=2 align=center><input type=submit value="提交"></TD>
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
