<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0040)http://2school.wygk.cn/admin/syscome.asp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>��ӭ����ϵͳ��̨</TITLE>
 
<script type="text/javascript" src="/baozhi/js/popup.js"></script>

<%
String filename = request.getParameter("filename");
if(filename!=null)
{
 %>
 <script type="text/javascript">
 var txt = parent.document.getElementById("txt");
 var filename = parent.document.getElementById("filename");
 filename.value="<%=filename%>";
 txt.src="/baozhi/upload/<%=filename%>";
 popclose();
 </script>
 <%} %>

<META content="MSHTML 6.00.2900.5726" name=GENERATOR></HEAD>
<BODY>
 
<form action="/baozhi/upload" enctype="multipart/form-data" name="f1" method="post">
<TABLE cellSpacing=1 cellPadding=3 width="100%" align=center 
border=0>
 
   <TR>
    <TD align="center" class=forumrow><label>
    
    <input name="txt" type="file"  size="27">
      </label></TD>
    </TR>
  
  <TR>
    <TD height=31 align="center" class=forumrow>
      <input type="submit" name="Submit"  value="�ύ��Ϣ">&nbsp;&nbsp;&nbsp;<input type="reset" name="Submit" value="������д">    </TD>
    </TR>
  </TABLE>
</form>
</BODY></HTML>
  
