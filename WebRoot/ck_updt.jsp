
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
    
    <title>�ֿ�</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}if(document.form1.zuzhimingcheng.value==""){alert("��������֯����");document.form1.zuzhimingcheng.focus();return false;}if(document.form1.fuzeren.value==""){alert("�����븺����");document.form1.fuzeren.focus();return false;}if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="ck_updt_post.jsp?id=<%=id %>">
  �޸Ĳֿ�:
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
     <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' /></td></tr><tr><td>�ֿ����ƣ�</td>
     <td><input name='zuzhimingcheng' type='text' id='zuzhimingcheng' size='50' value='<%=zuzhimingcheng%>' /></td></tr><tr><td>�����ˣ�</td><td><input name='fuzeren' type='text' id='fuzeren' value='<%= fuzeren%>' /></td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' /></td></tr><tr><td>���棺</td><td><input name='chuanzhen' type='text' id='chuanzhen' value='<%= chuanzhen%>' /></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


