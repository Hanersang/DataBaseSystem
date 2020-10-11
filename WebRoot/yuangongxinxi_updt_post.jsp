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
String bianhao=request.getParameter("bianhao");String xingming=request.getParameter("xingming");String shenfenzheng=request.getParameter("shenfenzheng");String dianhua=request.getParameter("dianhua");String QQ=request.getParameter("QQ");String xingbie=request.getParameter("xingbie");String leixing=request.getParameter("leixing");String dizhi=request.getParameter("dizhi");String beizhu=request.getParameter("beizhu");
String id=request.getParameter("id");
String sql="update yuangongxinxi set bianhao='"+bianhao+"',xingming='"+xingming+"',shenfenzheng='"+shenfenzheng+"',dianhua='"+dianhua+"',QQ='"+QQ+"',xingbie='"+xingbie+"',leixing='"+leixing+"',dizhi='"+dizhi+"',beizhu='"+beizhu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='yuangongxinxi_list.jsp';</script>");
%>
  </body>
</html>


