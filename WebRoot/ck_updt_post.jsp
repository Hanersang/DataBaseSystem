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
String bianhao=request.getParameter("bianhao");String zuzhimingcheng=request.getParameter("zuzhimingcheng");String fuzeren=request.getParameter("fuzeren");String dianhua=request.getParameter("dianhua");String chuanzhen=request.getParameter("chuanzhen");String beizhu=request.getParameter("beizhu");
String id=request.getParameter("id");
String sql="update ck set bianhao='"+bianhao+"',zuzhimingcheng='"+zuzhimingcheng+"',fuzeren='"+fuzeren+"',dianhua='"+dianhua+"',chuanzhen='"+chuanzhen+"',beizhu='"+beizhu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='ck_list.jsp';</script>");
%>
  </body>
</html>


