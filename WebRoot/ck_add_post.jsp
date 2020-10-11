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
ResultSet RS_result=connDbBean.executeQuery("select * from bumen where bianhao='"+bianhao+"'");

 if(RS_result.next())
{
out.print("<script>alert('该编号已经存在,请换其他编号!');window.history.go(-1);</script>");
	}
else{

	
  	  	String sql="insert into ck(bianhao,zuzhimingcheng,fuzeren,dianhua,chuanzhen,beizhu) values('"+bianhao+"','"+zuzhimingcheng+"','"+fuzeren+"','"+dianhua+"','"+chuanzhen+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='ck_add.jsp';</script>");
  	  
	}
RS_result.close();

 %>
  </body>
</html>

