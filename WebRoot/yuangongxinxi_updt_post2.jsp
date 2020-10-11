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
String gonghao=request.getParameter("gonghao");String xingming=request.getParameter("xingming");String xingbie=request.getParameter("xingbie");String chushengnianyue=request.getParameter("chushengnianyue");String dianhua=request.getParameter("dianhua");String youxiang=request.getParameter("youxiang");String jiguan=request.getParameter("jiguan");String zuzhijigou=request.getParameter("zuzhijigou");String mima=request.getParameter("mima");String zhicheng=request.getParameter("zhicheng");String beizhu=request.getParameter("beizhu");
String id=request.getParameter("id");
String sql="update yuangongxinxi set gonghao='"+gonghao+"',xingming='"+xingming+"',xingbie='"+xingbie+"',chushengnianyue='"+chushengnianyue+"',dianhua='"+dianhua+"',youxiang='"+youxiang+"',jiguan='"+jiguan+"',zuzhijigou='"+zuzhijigou+"',mima='"+mima+"',zhicheng='"+zhicheng+"',beizhu='"+beizhu+"' where ygh='"+request.getSession().getAttribute("username")+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='yuangongxinxi_updt2.jsp';</script>");
%>
  </body>
</html>


