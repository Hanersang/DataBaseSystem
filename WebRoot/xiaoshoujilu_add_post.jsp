<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%
 

String bianhao=request.getParameter("bianhao");String mingcheng=request.getParameter("mingcheng");
String leibie=request.getParameter("leibie");String jiage=request.getParameter("jiage");
String kucun=request.getParameter("kucun");String kehuxingming=request.getParameter("kehuxingming");String xiaoshoushuliang=request.getParameter("xiaoshoushuliang");String beizhu=request.getParameter("beizhu");String jingshouren=request.getParameter("jingshouren");
if(Float.valueOf(kucun).floatValue()<Float.valueOf(xiaoshoushuliang).floatValue())
{
  	  	out.print("<script>alert('对不起,库存数量小于出货数量,操作失败!!');location.href='shangpinxinxi_list3.jsp';</script>");
}
else
{



	
  	  	String sql="insert into xiaoshoujilu(bianhao,mingcheng,leibie,jiage,kucun,kehuxingming,xiaoshoushuliang,beizhu,jingshouren) values('"+bianhao+"','"+mingcheng+"','"+leibie+"','"+jiage+"','"+kucun+"','"+kehuxingming+"','"+xiaoshoushuliang+"','"+beizhu+"','"+jingshouren+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
		
		sql="update shangpinxinxi set kucun=kucun-"+xiaoshoushuliang+" where bianhao='"+bianhao+"'";
		connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('操作成功!!');location.href='shangpinxinxi_list3.jsp';</script>");
  	  }


 %>
  </body>
</html>

