<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>药品管理系统</title>
    
  </head>
  
<FRAMESET border=1 
frameSpacing=0 rows=90,* TOPMARGIN="0" LEFTMARGIN="0" MARGINHEIGHT="0" 
MARGINWIDTH="0"><FRAME 
src="top.jsp" name=top frameBorder=no scrolling=no noResize marginWidth=0 marginHeight=0 id="top" border=0 
TOPMARGIN="0" LEFTMARGIN="0" target="contents">
<FRAMESET border=1 name=fstMain 
frameSpacing=6 frameBorder=1 cols=150,* TOPMARGIN="0" LEFTMARGIN="0" 
MARGINHEIGHT="0" MARGINWIDTH="0"><FRAME border=1 name=left marginWidth=0 
borderColor=#b9d8ec marginHeight=0 src="mygo.jsp" 
frameBorder=0 scrolling=no TOPMARGIN="0" LEFTMARGIN="0" target="fs_main"><FRAME src="sy.jsp" name=main 
frameBorder=no borderColor=#6699cc id="main" 
border=0>
</FRAMESET></FRAMESET><noframes></noframes></HTML>
