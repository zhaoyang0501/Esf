<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<%@ include file="../../iframe/head.jsp" %>
<jsp:useBean id="code" scope="page" class="com.util.CheckCode" />
<SCRIPT language=javascript>
//������ĺϷ���
function checklogin() {
	if (document.form1.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�����������û�����");
		document.form1.username.focus();
	}
	else if (document.form1.password.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�������������룡");
		document.form1.password.focus();
	}
	else if(document.form1.checkcode.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\��������֤�룡");
		document.form1.checkcode.focus();
	} 
	else if (document.form1.checkcode.value != document.form1.yzm.value) {
		alert("\��֤�����");
		document.form1.checkcode.focus();
	}
	else{
	     form1.submit();
	}
}
</SCRIPT>
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
	String yzm=code.getCheckCode();
%>
<DIV id=body-width>
  <TABLE height=3 cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR>
        <TD></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR>
        <TD class=index-tableTxt vAlign=center>
          <TABLE cellSpacing=0 cellPadding=2 width="100%" bgColor=#ffffff border=0><TBODY>
            <TR>
              <TD style="LINE-HEIGHT: 200%" vAlign=center>
                <TABLE cellSpacing=1 cellPadding=5 width="100%" border=0>
                  <TBODY>
                    <TR>
                      <TD align=middle bgColor=#ebebeb>
                        <TABLE cellSpacing=0 cellPadding=6 width="90%" border=0>
                          <TBODY>
                            <TR>
                              <TD width="106%" height=10></TD></TR>
                            <TR>
                              <TD style="LINE-HEIGHT: 180%" align=left height=250><BR>
                                <TABLE class=b1 cellSpacing=1 cellPadding=0 width=900 align=center border=0>
                                  <TBODY>
                                    <TR>
                                      <TD align=middle bgColor=#fffff7>
                                        <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
                                          <TBODY>
                                            <TR>
                                              <TD vAlign=center align=middle height=20>&nbsp;</TD></TR>
                                            <TR>
                                              <TD class=menu_txt vAlign=top align=middle width="100%" height=320>
                                                <TABLE cellSpacing=0 cellPadding=0 width="96%" border=0>
                                                  <TBODY>
                                                    <TR>
                                                      <TD vAlign=top align=left width="52%" height=280>
                                                        <TABLE borderColor=#e4e4e4 cellSpacing=5 cellPadding=5 width="96%" bgColor=#f2f2f2 border=1>
                                                          <TBODY>
                                                            <TR>
                                                              <TD vAlign=top align=middle bgColor=#ffffff height=257>
                                                                <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
                                                                  <TBODY>
                                                                    <TR>
                                                                      <TD height=230>
                           <FORM id=form1 name=form1 action=Login.shtml?method=PAGEUSERLOGIN method=post >
                                                                          <TABLE id=Table7 width=400 border=0>
                                                                            <TBODY>
                                                                              <TR height=40>
                                                                                <TD vAlign=center  colSpan=3>
								<FONT face=����></FONT><BR><FONT color=#ff7700><STRONG></STRONG></FONT>
									</TD></TR>
                                                                              <TR>
                                                                                <TD colSpan=3>
                                                                                  <HR class=hui align=center width="98%" SIZE=1>
                                                                                  </TD></TR>
                                                                              <TR height=60>
                                                                                <TD align=right width=84 height=110>
								
									</TD>
                                  <TD noWrap  width=171>
                                    <TABLE width="100%" border=0>
                                      <TBODY>
                                    <TR>
                                  <TD width="35%" height=24>�û�����</TD>
                                  <TD>
								  <INPUT class=input_new id=username style="WIDTH: 110px" size=15 maxLength=10 name=username onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" 
                              onkeyup="value=value.replace(/[\W]/g,'')"  value=<%=request.getAttribute("reg_user")==null?"":request.getAttribute("reg_user") %>>
								  </TD>
								  </TR>
                                  <TR>
                                  <TD height=25>�ܡ��룺<input type=hidden name=reg_type value=person></TD>
                                  <TD height=25>
								  <INPUT class=input_new id=password style="WIDTH: 110px" type=password size=15  maxLength=16 name=password onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" 
                              onkeyup="value=value.replace(/[\W]/g,'')">
								  </TD>
								  </TR>
								  
                                  <TR>
                                  <TD height=25>��֤�룺</TD>
                                  <TD height=25><input type="hidden" name="yzm" value="<%=yzm %>" >
								  <INPUT class=input_new id=checkcode size=5 maxlength="4" name=checkcode onKeyUp="this.value=this.value.replace(/\D/gi,'')"> <%=yzm %>
								  </TD>
								  </TR>
								  </TBODY>
								  </TABLE>
								  </TD>
                                  <TD width=81>
								  <LABEL>
								  <img src="images/button.gif" border="0" onClick="checklogin()"> 
								  </LABEL>
								  </TD>
								  </TR>
								  <TR>
									<TD vAlign=center height=20>
								<DIV id=Login1_ValidationSummary2 style="DISPLAY: none; COLOR: red" showmessagebox="True" showsummary="False"></DIV></TD>
                                  <TD class=red1 vAlign=center>
								  <A class=dhx12 href=""></A>
								  </TD>
                                  <TD vAlign=center>
									<A href="lost.jsp">�һ�����</A>
								</TD>
								</TR>
							  <TR>
								<TD vAlign=center colSpan=3 height=22>
								  <HR class=hui align=center width="98%" SIZE=1>
								  </TD></TR>
							  <TR height=40>
								<TD class=buttomtxt align=middle colSpan=3 height=21>
								
								</TD>
								</TR>
								</TBODY>
								</TABLE>
								</FORM>
								</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                                  <TD vAlign=top align=middle width="48%">
                                    <TABLE borderColor=#e4e4e4 height=290 cellSpacing=5 cellPadding=5 width="98%"  bgColor=#f2f2f2 border=1>
                                      <TBODY>
                                        <TR>
                                          <TD vAlign=top align=middle bgColor=#ffffff height=260>
                                            <TABLE height=19 cellSpacing=0 cellPadding=0 width="98%" border=0>
                                              <TBODY>
                                                <TR>
                                                  <TD class=STYLE16 height=22><br><br><br><br><br>��ע���Ա</TD></TR></TBODY></TABLE>
                                  <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
                                    <TBODY>
                                      <TR>
                                        <TD class=menu_txt style="LINE-HEIGHT: 20px"  colSpan=2 height=27>&nbsp;&nbsp;&nbsp; 
                                          ��Ա���л����ø�����ʽ��ȫ����ѵ��Ƽ����ᣡ����ȫ����ѵĹ�������ᣡ������ʧ��</TD></TR>
                                      <TR>
                                        <TD class=menu_txt width="77%" height=32>&nbsp;</TD>
                                  <TD class=menu_txt width="23%">
								  <A href="reg.jsp">
								  <IMG src="images/zhuce.gif" border=0>
								  </A>
								  </TD>
								  </TR>
								  </TBODY>
								  </TABLE>
                                  <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
                                    <TBODY>
                                      <TR>
                                        <TD background="" height=1></TD></TR></TBODY></TABLE>
                                  <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
                                    <TBODY>
                                      <TR>
                                        <TD class=menu_txt height=20>
										<SPAN class=STYLE16></SPAN>����</TD></TR>
                                      <TR>
                                        <TD class=menu_txt 
                                style="LINE-HEIGHT: 20px">&nbsp;&nbsp;&nbsp; 
                                         </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
</DIV>
<%@ include file="../../iframe/foot.jsp"%>
