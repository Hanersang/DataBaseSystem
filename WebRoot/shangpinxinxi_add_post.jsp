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
 

String bianhao=request.getParameter("bianhao");String mingcheng=request.getParameter("mingcheng");String leibie=request.getParameter("leibie");String jiage=request.getParameter("jiage");String tupian=request.getParameter("tupian");String beizhu=request.getParameter("beizhu");String kucun=request.getParameter("kucun");


	
  	  	String sql="insert into shangpinxinxi(bianhao,mingcheng,leibie,jiage,tupian,beizhu,kucun) values('"+bianhao+"','"+mingcheng+"','"+leibie+"','"+jiage+"','"+tupian+"','"+beizhu+"','"+kucun+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('Ìí¼Ó³É¹¦!!');location.href='shangpinxinxi_add.jsp';</script>");

 %>
  </body>
</html>

