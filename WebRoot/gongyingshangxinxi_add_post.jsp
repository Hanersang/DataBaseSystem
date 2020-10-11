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
 

String bianhao=request.getParameter("bianhao");String mingcheng=request.getParameter("mingcheng");String lianxiren=request.getParameter("lianxiren");String dianhua=request.getParameter("dianhua");String youxiang=request.getParameter("youxiang");String chuanzhen=request.getParameter("chuanzhen");String zhuyingchanpin=request.getParameter("zhuyingchanpin");String dizhi=request.getParameter("dizhi");String beizhu=request.getParameter("beizhu");


	
  	  	String sql="insert into gongyingshangxinxi(bianhao,mingcheng,lianxiren,dianhua,youxiang,chuanzhen,zhuyingchanpin,dizhi,beizhu) values('"+bianhao+"','"+mingcheng+"','"+lianxiren+"','"+dianhua+"','"+youxiang+"','"+chuanzhen+"','"+zhuyingchanpin+"','"+dizhi+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('Ìí¼Ó³É¹¦!!');location.href='gongyingshangxinxi_add.jsp';</script>");
  	  


 %>
  </body>
</html>

