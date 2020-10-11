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
String id=request.getParameter("id");
String sql="update gongyingshangxinxi set bianhao='"+bianhao+"',mingcheng='"+mingcheng+"',lianxiren='"+lianxiren+"',dianhua='"+dianhua+"',youxiang='"+youxiang+"',chuanzhen='"+chuanzhen+"',zhuyingchanpin='"+zhuyingchanpin+"',dizhi='"+dizhi+"',beizhu='"+beizhu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='gongyingshangxinxi_list.jsp';</script>");
%>
  </body>
</html>


