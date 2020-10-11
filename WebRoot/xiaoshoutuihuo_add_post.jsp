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
 
  String id=request.getParameter("id");
String bianhao=request.getParameter("bianhao");String mingcheng=request.getParameter("mingcheng");
String leibie=request.getParameter("leibie");String jiage=request.getParameter("jiage");
String kehuxingming=request.getParameter("kehuxingming");String xiaoshoushuliang=request.getParameter("xiaoshoushuliang");String tuihuoshuliang=request.getParameter("tuihuoshuliang");String tuihuoshiyou=request.getParameter("tuihuoshiyou");String jingshouren=request.getParameter("jingshouren");
if(Float.valueOf(xiaoshoushuliang).floatValue()<Float.valueOf(tuihuoshuliang).floatValue())
{
  	  	out.print("<script>alert('对不起,出货数量小于退货数量,操作失败!!');location.href='xiaoshoujilu_list3.jsp';</script>");
}
else
{


	
  	  	String sql="insert into xiaoshoutuihuo(bianhao,mingcheng,leibie,jiage,kehuxingming,xiaoshoushuliang,tuihuoshuliang,tuihuoshiyou,jingshouren) values('"+bianhao+"','"+mingcheng+"','"+leibie+"','"+jiage+"','"+kehuxingming+"','"+xiaoshoushuliang+"','"+tuihuoshuliang+"','"+tuihuoshiyou+"','"+jingshouren+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
		sql="update shangpinxinxi set kucun=kucun+"+tuihuoshuliang+" where bianhao='"+bianhao+"'";
		connDbBean.executeUpdate(sql);
		sql="update xiaoshoujilu set xiaoshoushuliang=xiaoshoushuliang-"+tuihuoshuliang+" where id="+id+"";
		connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='xiaoshoujilu_list3.jsp';</script>");
  	  }


 %>
  </body>
</html>

