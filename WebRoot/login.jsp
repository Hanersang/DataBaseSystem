<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
<head>
    <base href="<%=basePath%>">
    
<title>药品管理系统</title>
<link href="images/login.css" rel="stylesheet" type="text/css" />


<style type="text/css">
<!--
.inputtext {border-left:1px solid balck;
border-right:1px solid balck;
border-top:1px solid balck;
border-bottom:1px solid balck;
}
.STYLE3 {color: #333333}
body {
	background-color: #8CB3F8;
}
#Layer1 {
	position:absolute;
	left:468px;
	top:344px;
	width:353px;
	height:21px;
	z-index:1;
}
.STYLE5 {color: #0066FF}
body,td,th {
	font-family: "宋体", tahoma, Srial, helvetica, sans-serif;
}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script language="javascript">
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="")
	{
		alert('请输入完整');
		return false;
	}
}
</script>
<body leftMargin=0 topMargin=0 onload=javascript:close_open();>
<table width="1000" height="585" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="539" background="images/212.jpg"><table width="100%" height="58%" border="0" cellpadding="1" cellspacing="1" bordercolor="#000066">
      <tr>
        <td width="37%" height="79">&nbsp;</td>
        <td width="63%">&nbsp;</td>
      </tr>
      <tr>
        <td height="163">&nbsp;</td>
        <td valign="top"><table width="40%"  align="left" height="100%" border="0" cellpadding="0" cellspacing="0">
          <form action="adminyanzheng.jsp" method="post" name="form1" id="form1">
            <tr>
              <td width="24%" height="25"><span class="STYLE3">用&nbsp;&nbsp;户:</span></td>
              <td width="76%" height="25"><span class="STYLE3" style="HEIGHT: 28px">
                <input name="username" type="text" class="inputtext" id="username" size="15" />
              </span></td>
            </tr>
            <tr>
              <td height="21"><span class="STYLE3">密&nbsp;&nbsp;码:</span></td>
              <td height="21"><span class="STYLE3" style="HEIGHT: 28px">
                <input name="pwd" type="password" class="inputtext" id="pwd" size="15" />
              </span></td>
            </tr>
            <tr style="display:none">
              <td height="18"><span class="STYLE3">角&nbsp;&nbsp;色:</span></td>
              <td height="18"><span class="STYLE3" style="HEIGHT: 28px">
                <select name="cx" id="cx" class="inputtext">
                       <option value="管理员">管理员</option>
                </select>
              </span></td>
            </tr>
            <tr>
              <td height="36" colspan="2"><p align="center">
                  <input type="submit" name="Submit" value="提交" onclick="return check();" />&nbsp;
                   <input type="reset" name="Submit2" value="重置" />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </p></td>
            </tr>
          </form>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>

