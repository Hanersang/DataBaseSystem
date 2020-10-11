
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>

<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工信息</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("请输入编号");document.form1.bianhao.focus();return false;}if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}if(document.form1.shenfenzheng.value==""){alert("请输入身份证");document.form1.shenfenzheng.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}
}
</script>
  <body >
  <table width="100%" height="33" border="0" cellpadding="2" cellspacing="2" bgcolor="#FFCCFF">
    <tr>
      <td>&nbsp;&nbsp;<a href="yuangongxinxi_add.jsp">添加员工信息</a>&nbsp;&nbsp;     &nbsp; <a href="yuangongxinxi_list.jsp">员工信息查询</a></td>
    </tr>
  </table>
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="yuangongxinxi_updt_post.jsp?id=<%=id %>">
  修改员工信息:
  <br>
  <br>
  <%
  String sql="select * from yuangongxinxi where id="+id;
  String bianhao="";String xingming="";String shenfenzheng="";String dianhua="";String QQ="";String xingbie="";String leixing="";String dizhi="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");xingming=RS_result.getString("xingming");shenfenzheng=RS_result.getString("shenfenzheng");dianhua=RS_result.getString("dianhua");QQ=RS_result.getString("QQ");xingbie=RS_result.getString("xingbie");leixing=RS_result.getString("leixing");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' size='50' value='<%=shenfenzheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>QQ：</td><td><input name='QQ' type='text' id='QQ' value='<%= QQ%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script><tr>
       <td>部门：</td>
       <td><select name='leixing' id='leixing'>
     <option value="销售部">销售部</option>
     <option value="售后部">售后部</option>
	 <option value="人事部">人事部</option>
     </select></td></tr><script language="javascript">document.form1.leixing.value='<%=leixing%>';</script><tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


