
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
    
    <title>供应商信息</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("请输入编号");document.form1.bianhao.focus();return false;}if(document.form1.mingcheng.value==""){alert("请输入名称");document.form1.mingcheng.focus();return false;}if(document.form1.lianxiren.value==""){alert("请输入联系人");document.form1.lianxiren.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}if(document.form1.dizhi.value==""){alert("请输入地址");document.form1.dizhi.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="gongyingshangxinxi_updt_post.jsp?id=<%=id %>">
  修改供应商信息:
  <br><br>
  <%
  String sql="select * from gongyingshangxinxi where id="+id;
  String bianhao="";String mingcheng="";String lianxiren="";String dianhua="";String youxiang="";String chuanzhen="";String zhuyingchanpin="";String dizhi="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");lianxiren=RS_result.getString("lianxiren");dianhua=RS_result.getString("dianhua");youxiang=RS_result.getString("youxiang");chuanzhen=RS_result.getString("chuanzhen");zhuyingchanpin=RS_result.getString("zhuyingchanpin");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>名称：</td><td><input name='mingcheng' type='text' id='mingcheng' size='50' value='<%=mingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>联系人：</td><td><input name='lianxiren' type='text' id='lianxiren' value='<%= lianxiren%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='<%= youxiang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>传真：</td><td><input name='chuanzhen' type='text' id='chuanzhen' value='<%= chuanzhen%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>主营产品：</td><td><input name='zhuyingchanpin' type='text' id='zhuyingchanpin' size='50' value='<%=zhuyingchanpin%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


