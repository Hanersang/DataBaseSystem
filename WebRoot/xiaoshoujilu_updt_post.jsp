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
String bianhao=request.getParameter("bianhao");String mingcheng=request.getParameter("mingcheng");String leibie=request.getParameter("leibie");String jiage=request.getParameter("jiage");String kucun=request.getParameter("kucun");String kehuxingming=request.getParameter("kehuxingming");String xiaoshoushuliang=request.getParameter("xiaoshoushuliang");String beizhu=request.getParameter("beizhu");String jingshouren=request.getParameter("jingshouren");
String id=request.getParameter("id");
String sql="update xiaoshoujilu set bianhao='"+bianhao+"',mingcheng='"+mingcheng+"',leibie='"+leibie+"',jiage='"+jiage+"',kucun='"+kucun+"',kehuxingming='"+kehuxingming+"',xiaoshoushuliang='"+xiaoshoushuliang+"',beizhu='"+beizhu+"',jingshouren='"+jingshouren+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='xiaoshoujilu_list.jsp';</script>");
%>
  </body>
</html>


