<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ҩƷ����ϵͳ</title>
<base target="_self">
<link rel="stylesheet" type="text/css" href="skin/css/base.css" />
<link rel="stylesheet" type="text/css" href="skin/css/main.css" />
</head>
  <body leftmargin="8" topmargin='8'>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><div style='float:left'> <img height="14" src="skin/images/frame/book1.gif" width="20" />&nbsp;��ӭʹ�� ҩƷ����ϵͳ����վ����ѡ���ߡ� </div>
      <div style='float:right;padding-right:8px;'>
        <!--  //�����ӿ�  -->
      </div></td>
  </tr>
  <tr>
    <td height="1" background="skin/images/frame/sp_bg.gif" style='padding:0px'></td>
  </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="3" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px;margin-top:8px;">
  <tr>
    <td bgcolor="#ABD4E9" class='title'><span>��Ϣ</span></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>ҩ������ϵͳ</td>
  </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#ABD4E9" style="margin-bottom:8px">
  <tr>
    <td colspan="2" background="skin/images/frame/wbg.gif" bgcolor="#EEF4EA" class='title'>
    	<div style='float:left'><span>��ݲ���</span></div>
    	<div style='float:right;padding-right:10px;'></div>
   </td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="30" colspan="2" align="center" valign="bottom"><table width="100%" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td width="15%" height="31" align="center"><img src="skin/images/frame/qc.gif" width="90" height="30" /></td>
          <td width="85%" valign="bottom"><p>���ߣ�xxxxxx</p>
          <p>ָ����ʦ��xxxxxxxxxx</p>
          <p>����ѧԺ��xxxxxxxxxxxxxxxxx</p></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
  <tr bgcolor="#EEF4EA">
    <td colspan="2" bgcolor="#ABD4E9" class='title'><span>ϵͳ������Ϣ</span></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td width="25%" bgcolor="#FFFFFF">���ļ���</td>
    <td width="75%" bgcolor="#FFFFFF"><%=request.getSession().getAttribute("cx")%></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>����ʱ�䣺</td>
    <td><%
	  java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result.substring(0,4));
	  %></td>
  </tr>
</table>
  </body>
</html>

