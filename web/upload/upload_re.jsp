<%@ page contentType="text/html;charset=gbk" language="java" import="com.jspsmart.upload.*"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
%>
<%
    
    String newFile1Name=null;
    String file_name=null;
    String id="";
	SmartUpload mySmartUpload = new SmartUpload();
	/*  com.jspsmart.upload.Reuqest req=new com.jspsmart.upload.Request();
	String id=req.getParameter("id"); */
	
	//��ʼ���ϴ�
	mySmartUpload.initialize(pageContext);

	//ֻ�������ش����ļ�
	try 
	{
		//mySmartUpload.setAllowedFilesList("jpg,Jpg,JPG,GIF,gif,Gif,png");
		mySmartUpload.upload();
	} 
	catch (Exception e)
    {
		//out.println("<script language=javascript>alert('�ϴ���ʽ����');   history.back(-1);</script>");
		//return;
	}
	
	try 
	{
		   com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
		   if (myFile.isMissing())
		   {
			  out.println("<script language=javascript>alert('����ѡ��ͼƬ��');   history.back(-1);</script>");
			  return;

		   } 
		   else 
		   {
			   int file_size = myFile.getSize(); //ȡ���ļ��Ĵ�С (��λ��b) 
			   file_name=myFile.getFileName();
			   System.out.println("�ļ���С��"+file_size+"�ļ����ƣ�"+file_name);
			   //if (file_size > 10*1024*1024)
			   //{
				  //out.println("<script language=javascript>alert('�ϴ�ͼƬ��СӦ������10K~1M֮�䣡');   history.back(-1);</script>");
				  //return;
			   //}
               //else
               //{
                   newFile1Name=new Date().getTime()+file_name.substring(file_name.indexOf("."));
	               System.out.println("���ļ����ƣ�"+newFile1Name);
	               id=mySmartUpload.getRequest().getParameter("id");
	               System.out.println("���ļ�����---22--------mySmartUpload.-----��"+id);
				   String saveurl = request.getSession().getServletContext().getRealPath("upload");
				
				   saveurl = saveurl+"/"+newFile1Name;
				   myFile.saveAs(saveurl, mySmartUpload.SAVE_PHYSICAL);
	
              // }
			} 
	  } 
	  catch (Exception e)
	  {
	    e.toString();
	  }
%>

<script language="javascript"> 
    document.write("�ϴ��ɹ�");
	window.parent.document.getElementById("<%=id%>").value="/upload/<%= newFile1Name%>";
	//window.parent.document.getElementById("fujianYuanshiming").value="<%= file_name%>";
</script>
