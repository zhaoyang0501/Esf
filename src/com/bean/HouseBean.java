package com.bean;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.util.Constant;
import com.util.DBO;

public class HouseBean {

	private List list;
	private ResultSet rs;
	private String date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
	
	public int addOut(String type,String video,String sum,String price,String tel,String linkman,String address,String intro,String xq,String qy ){
		String sql="insert into outhouse(type,video,sum,price,tel,linkman,address,intro,addtime,xq,qy)" +
				"values('"+type+"','"+video+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"+address+"','"+intro+"','"+date+"','"+xq+"','"+qy+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	
	/**add 263608237qq
	  String zt = request.getParameter("zt");
      String sn = request.getParameter("sn");
      String htbh = request.getParameter("htbh");
      String fkje = request.getParameter("fkje");
      String fkr = request.getParameter("fkr");
      String fksj = request.getParameter("fksj");
      String bz = request.getParameter("bz");
      String lxfs = request.getParameter("lxfs");
      */
	public int addOut(String type,String video,String sum,String price,String tel,String linkman,String address,String intro,
			String zt,String sn,String htbh,String fkje,String fkr,String fksj,String bz,String lxfs,String qy,String xq,
			String img1,String img2,String img3,String img4){
		String sql="insert into outhouse(type,video,sum,price,tel,linkman,address,intro,addtime,zt,sn,htbh,fkje,fkr,fksj,bz,lxfs,qy,xq,img1,img2,img3,img4)" +
				"values('"+type+"','"+video+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"
				+address+"','"+intro+"','"+date+"','"+zt+"','"+sn+"','"+htbh+"','"+fkje+"','"
				+fkr+"','"+fksj+"','"+bz+"','"+lxfs+"','"+qy+"','"+xq+"','"+img1+"','"+img2+"','"+img3+"','"+img4+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////出租 
	//// 房屋的基本信息，地址，大小，房价，户型，视频   ////////户型 视频 面积 价格 联系人 电话 地址 介绍 发布时间
	public int addOut(String type,String video,String sum,String price,String tel,String linkman,String address,String intro ){
		String sql="insert into outhouse(type,video,sum,price,tel,linkman,address,intro,addtime)" +
				"values('"+type+"','"+video+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"+address+"','"+intro+"','"+date+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	
	/**add 263608237qq
	  String zt = request.getParameter("zt");
    String sn = request.getParameter("sn");
    String htbh = request.getParameter("htbh");
    String fkje = request.getParameter("fkje");
    String fkr = request.getParameter("fkr");
    String fksj = request.getParameter("fksj");
    String bz = request.getParameter("bz");
    String lxfs = request.getParameter("lxfs");
    */
	
	public int upOut(String id,String type,String video,String sum,String price,String tel,String linkman,String address,String intro,
			String zt,String sn,String htbh,String fkje,String fkr,String fksj,String bz,String lxfs,String qy,String xq,
			String img1,String img2,String img3,String img4
			){
		String sql ="update outhouse set  img1='"+img1+"',img2='"+img2+"' , img3='"+img3+"', img4='"+img4+"' , qy='"+qy+"',xq='"+xq+"' , type='"+type+"',video='"+video+"',sum='"+sum+"',price='"+price+"',tel='"+tel+"',linkman='"+linkman+"'," +
				"address='"+address+"',intro='"+intro+"' ,zt='"+zt+"' ,sn='"+sn+"' ,htbh='"+htbh+"',fkje='"+fkje+"' ,fkr='"+fkr+"',fksj='"+fksj+"' ,bz='"+bz+"',lxfs='"+lxfs+"'    where id ='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	
	public int upOut(String id,String type,String video,String sum,String price,String tel,String linkman,String address,String intro ){
		String sql ="update outhouse set type='"+type+"',video='"+video+"',sum='"+sum+"',price='"+price+"',tel='"+tel+"',linkman='"+linkman+"'," +
				"address='"+address+"',intro='"+intro+"'  where id ='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int delOut(String id){
		String  sql="delete from outhouse where id='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	/**根据编号查询*/
	public List getAllOut2(String sn){
		String sql="select * from outhouse where sn like '%"+sn+"%' order by id desc";
		if(sn==null||"null".equals(sn))
		 sql="select * from outhouse where sn like '%%' order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list2.add(rs.getString(10));
				list2.add(rs.getString(11));
				list2.add(rs.getString(12));
				list2.add(rs.getString(13));
				list2.add(rs.getString(14));
				list2.add(rs.getString(15));
				list2.add(rs.getString(16));
				list2.add(rs.getString(17));
				list2.add(rs.getString(18));
				list2.add(rs.getString(19));
				list2.add(rs.getString(20));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	
	
	public List getReportSale(String begain,String end){
		if(begain==null||"null".equals(begain)||"".equals(begain))
			begain="1999-01-01";
		if(end==null||"null".equals(end)||"".equals(end))
			end="2019-01-01";
		String sql="select zt,count(1) ,sum(t1.fkje) from salehouse  t1 "+
			"where  zt is not null and t1.addtime>'"+begain+"' and t1.addtime<'"+end+"'"+
			" group by t1.zt";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List getReportOut(String begain,String end){
		if(begain==null||"null".equals(begain)||"".equals(begain))
			begain="1999-01-01";
		if(end==null||"null".equals(end)||"".equals(end))
			end="2019-01-01";
		String sql="select zt,count(1) ,sum(t1.fkje) from outhouse  t1 "+
			"where  zt is not null and t1.addtime>'"+begain+"' and t1.addtime<'"+end+"'"+
			" group by t1.zt";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	
	public List getAllOut(){
		String sql="select * from outhouse order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list2.add(rs.getString(10));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List get15Out(){
		String sql="select top 15* from outhouse order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list2.add(rs.getString(10));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List getOneOut(int id){
		String sql="select * from outhouse where id='"+id+"'";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
				list.add(rs.getString(4));
				list.add(rs.getString(5));
				list.add(rs.getString(6));
				list.add(rs.getString(7));
				list.add(rs.getString(8));
				list.add(rs.getString(9));
				list.add(rs.getString(10));
				list.add(rs.getString(11));
				list.add(rs.getString(12));
				list.add(rs.getString(13));
				list.add(rs.getString(14));
				list.add(rs.getString(15));
				list.add(rs.getString(16));
				list.add(rs.getString(17));
				list.add(rs.getString(18));
				list.add(rs.getString(19));
				list.add(rs.getString(20));
				list.add(rs.getString(21));
				list.add(rs.getString(22));
				list.add(rs.getString(23));
				list.add(rs.getString(24));
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List getAllOut(String sql){
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();System.out.println(sql);
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list2.add(rs.getString(10));
				list2.add(rs.getString(11));
				list2.add(rs.getString(12));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	
	/**pzy*/
	public int addSale(String type,String video,String sum,String price,String tel,String linkman,String address,String intro,
			String zt,String sn,String htbh,String fkje,String fkr,String fksj,String bz,String lxfs,String qy,String xq,String img1,String img2,String img3,String img4){
		String sql="insert into salehouse(type,video,sum,price,tel,linkman,address,intro,addtime,zt,sn,htbh,fkje,fkr,fksj,bz,lxfs,qy,xq,img1,img2,img3,img4)" +
				"values('"+type+"','"+video+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"+address+"','"+intro+"','"+date+"','"+zt+"','"+sn+"','"+htbh+"','"+fkje+"','"+fkr+"','"+fksj+"','"+bz+"','"+lxfs+"','"+qy+"','"+xq+"','"+img1+"','"+img2+"','"+img3+"','"+img4+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////出售  
	//房屋的基本信息，地址，大小，房价，户型，视频   ////////户型 视频 面积 价格 联系人 电话 地址 介绍 发布时间
	public int addSale(String type,String video,String sum,String price,String tel,String linkman,String address,String intro ){
		String sql="insert into salehouse(type,video,sum,price,tel,linkman,address,intro,addtime)" +
				"values('"+type+"','"+video+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"+address+"','"+intro+"','"+date+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
		
	/**pzy*/
	public int upSale(String id,String type,String video,String sum,String price,String tel,String linkman,String address,String intro ,
			String zt,String sn,String htbh,String fkje,String fkr,String fksj,String bz,String lxfs,String qy,String xq,String img1,String img2,String img3,String img4){
		String sql ="update salehouse set img1='"+img1+"',img2='"+img2+"', img3='"+img3+"',img4='"+img4+"',  qy='"+qy+"',xq='"+xq+"', type='"+type+"',video='"+video+"',sum='"+sum+"',price='"+price+"',tel='"+tel+"',linkman='"+linkman+"'," +
				"address='"+address+"',intro='"+intro+"' ,zt='"+zt+"' ,sn='"+sn+"' ,htbh='"+htbh+"',fkje='"+fkje+"' ,fkr='"+fkr+"',fksj='"+fksj+"' ,bz='"+bz+"',lxfs='"+lxfs+"'   where id ='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	
	public int upSale(String id,String type,String video,String sum,String price,String tel,String linkman,String address,String intro ){
		String sql ="update salehouse set type='"+type+"',video='"+video+"',sum='"+sum+"',price='"+price+"',tel='"+tel+"',linkman='"+linkman+"'," +
				"address='"+address+"',intro='"+intro+"'  where id ='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int delSale(String id){
		String  sql="delete from salehouse where id='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	/**add 263608236qq*/
	public List getAllSale2(String sn){
		String sql="select * from salehouse where sn like '%"+sn+"%' order by id desc";
		if(sn==null||"null".equals(sn))
		 sql="select * from salehouse where sn like '%%' order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list2.add(rs.getString(10));
				
				
				list2.add(rs.getString(11));
				list2.add(rs.getString(12));
				list2.add(rs.getString(13));
				list2.add(rs.getString(14));
				list2.add(rs.getString(15));
				list2.add(rs.getString(16));
				list2.add(rs.getString(17));
				list2.add(rs.getString(18));
				list2.add(rs.getString(19));
				list2.add(rs.getString(20));
				
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List getAllSale(){
		String sql="select * from salehouse order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list2.add(rs.getString(10));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List get15Sale(){
		String sql="select top 15 * from salehouse order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list2.add(rs.getString(10));
				list2.add(rs.getString(11));
				list2.add(rs.getString(12));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List getOneSale(int id){
		String sql="select * from salehouse where id='"+id+"'";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
				list.add(rs.getString(4));
				list.add(rs.getString(5));
				list.add(rs.getString(6));
				list.add(rs.getString(7));
				list.add(rs.getString(8));
				list.add(rs.getString(9));
				list.add(rs.getString(10));
				
				list.add(rs.getString(11));
				list.add(rs.getString(12));
				list.add(rs.getString(13));
				list.add(rs.getString(14));
				list.add(rs.getString(15));
				list.add(rs.getString(16));
				list.add(rs.getString(17));
				list.add(rs.getString(18));
				list.add(rs.getString(19));
				list.add(rs.getString(20));
				
				list.add(rs.getString(21));
				list.add(rs.getString(22));
				list.add(rs.getString(23));
				list.add(rs.getString(24));
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////求租 
	//房屋的基本信息，地址，大小，房价，户型，视频   ////////户型 面积 价格 联系人 电话 地址 介绍 发布时间
	public int addIn(String type,String sum,String price,String tel,String linkman,String address,String intro ){
		String sql="insert into inhouse(type,sum,price,tel,linkman,address,intro,addtime)" +
				"values('"+type+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"+address+"','"+intro+"','"+date+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int addIn(String type,String sum,String price,String tel,String linkman,String address,String intro,String xq,String qy ,String username){
		String sql="insert into inhouse(type,sum,price,tel,linkman,address,intro,addtime,xq,qy,username)" +
				"values('"+type+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"+address+"','"+intro+"','"+date+"','"+xq+"','"+qy+"','"+username+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int upIn(String id,String type,String sum,String price,String tel,String linkman,String address,String intro ){
		String sql ="update inhouse set type='"+type+"',sum='"+sum+"',price='"+price+"',tel='"+tel+"',linkman='"+linkman+"'," +
				"address='"+address+"',intro='"+intro+"'  where id ='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int delIn(String id){
		String  sql="delete from inhouse where id='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	/**pzy*/
	public List getAllInw(String username){
		String sql="select * from inhouse where username='"+username+"' order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	
	public List getAllIn(){
		String sql="select * from inhouse order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List getAllIn(String sql){
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List get15In(){
		String sql="select top 15 * from inhouse order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List getOneIn(int id){
		String sql="select * from inhouse where id='"+id+"'";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
				list.add(rs.getString(4));
				list.add(rs.getString(5));
				list.add(rs.getString(6));
				list.add(rs.getString(7));
				list.add(rs.getString(8));
				list.add(rs.getString(9));
				list.add(rs.getString(10));
				list.add(rs.getString(11));
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////求购 
	//房屋的基本信息，地址，大小，房价，户型，  ////////户型 面积 价格 联系人 电话 地址 介绍 发布时间
	public int addBuy(String type,String sum,String price,String tel,String linkman,String address,String intro ){
		String sql="insert into buyhouse(type,sum,price,tel,linkman,address,intro,addtime)" +
				"values('"+type+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"+address+"','"+intro+"','"+date+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int addBuy(String type,String sum,String price,String tel,String linkman,String address,String intro,String xq,String qy,String username ){
		String sql="insert into buyhouse(type,sum,price,tel,linkman,address,intro,addtime,xq,qy,username)" +
				"values('"+type+"','"+sum+"','"+price+"','"+tel+"','"+linkman+"','"+address+"','"+intro+"','"+date+"','"+xq+"','"+qy+"','"+username+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	
	
	public int upBuy(String id,String type,String sum,String price,String tel,String linkman,String address,String intro ){
		String sql ="update buyhouse set type='"+type+"',sum='"+sum+"',price='"+price+"',tel='"+tel+"',linkman='"+linkman+"'," +
				"address='"+address+"',intro='"+intro+"'  where id ='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int delBuy(String id){
		String  sql="delete from buyhouse where id='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	
	
	
	public List getAllBuy(String username){
		String sql="select * from buyhouse where username='"+username+"' order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	
	public List getAllBuy(){
		String sql="select * from buyhouse order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List get15Buy(){
		String sql="select top 15 * from buyhouse order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list2.add(rs.getString(8));
				list2.add(rs.getString(9));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public List getOneBuy(int id){
		String sql="select * from buyhouse where id='"+id+"'";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
				list.add(rs.getString(4));
				list.add(rs.getString(5));
				list.add(rs.getString(6));
				list.add(rs.getString(7));
				list.add(rs.getString(8));
				list.add(rs.getString(9));
				list.add(rs.getString(10));
				list.add(rs.getString(11));
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	///////////////////////////////////////////////////////////////////////////////////dj
	public int addDj(String title,String content){
		String sql="insert into prep(title,content)" +
				"values('"+title+"','"+content+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int delDj(String id){
		String  sql="delete from prep where id='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public List getAllDj(){
		String sql="select * from prep order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	///////////////////////////////////////////////////////////////////////////////////word
	public int addWord(String title,String content){
		String sql="insert into word(title,content)" +
				"values('"+title+"','"+content+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int delWord(String id){
		String  sql="delete from word where id='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public List getAllWord(){
		String sql="select * from word order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	///////////////////////////////////////////////////////////////////////////////////money  
	public int addMoney(String title,String content){
		String sql="insert into money(title,content)" +
				"values('"+title+"','"+content+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int delMoney(String id){
		String  sql="delete from money where id='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public List getAllMoney(){
		String sql="select * from money order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	///////////////////////////////////////////////////////////////////////////////////yd  
	public int addYd(String title,String content){
		String sql="insert into yuding (title,content)" +
				"values('"+title+"','"+content+"')";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public int delYd(String id){
		String  sql="delete from yuding where id='"+id+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1){
				return Constant.SUCCESS;
			}
			else{
				return Constant.SYSTEM_ERROR;
			}
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	public List getAllYd(){
		String sql="select * from yuding order by id desc";
		DBO dbo = new DBO();
		list=new ArrayList();
		dbo.open();
		try{
			rs=dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
}
