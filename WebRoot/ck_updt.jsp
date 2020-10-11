
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
    
    <title>仓库</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("请输入编号");document.form1.bianhao.focus();return false;}if(document.form1.zuzhimingcheng.value==""){alert("请输入组织名称");document.form1.zuzhimingcheng.focus();return false;}if(document.form1.fuzeren.value==""){alert("请输入负责人");document.form1.fuzeren.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="ck_updt_post.jsp?id=<%=id %>">
  修改仓库:
  <br>
  <br>
  <%
  String sql="select * from ck where id="+id;
  String bianhao="";String zuzhimingcheng="";String fuzeren="";String dianhua="";String chuanzhen="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");zuzhimingcheng=RS_result.getString("zuzhimingcheng");fuzeren=RS_result.getString("fuzeren");dianhua=RS_result.getString("dianhua");chuanzhen=RS_result.getString("chuanzhen");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' /></td></tr><tr><td>仓库名称：</td>
     <td><input name='zuzhimingcheng' type='text' id='zuzhimingcheng' size='50' value='<%=zuzhimingcheng%>' /></td></tr><tr><td>负责人：</td><td><input name='fuzeren' type='text' id='fuzeren' value='<%= fuzeren%>' /></td></tr><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' /></td></tr><tr><td>传真：</td><td><input name='chuanzhen' type='text' id='chuanzhen' value='<%= chuanzhen%>' /></td></tr><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


