
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
    
    <title>Ա����Ϣ</title><script language="javascript" src="js/Calendar.js"></script>
<link href="css.css" rel="stylesheet" type="text/css">

  </head>
<script language="javascript">
function check()
{
	if(document.form1.gonghao.value==""){alert("�����빤��");document.form1.gonghao.focus();return false;}if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="yuangongxinxi_updt_post2.jsp?id=<%=id %>">
  �޸�Ա����Ϣ:
  <br><br>
  <%
  String sql="select * from yuangongxinxi where ygh='"+request.getSession().getAttribute("username")+"'";
  String gonghao="";String xingming="";String xingbie="";String chushengnianyue="";String dianhua="";String youxiang="";String jiguan="";String zuzhijigou="";String mima="";String zhicheng="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gonghao=RS_result.getString("gonghao");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");chushengnianyue=RS_result.getString("chushengnianyue");dianhua=RS_result.getString("dianhua");youxiang=RS_result.getString("youxiang");jiguan=RS_result.getString("jiguan");zuzhijigou=RS_result.getString("zuzhijigou");mima=RS_result.getString("mima");zhicheng=RS_result.getString("zhicheng");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>���ţ�</td><td><input name='gonghao' type='text' id='gonghao' value='<%= gonghao%>' /></td></tr><tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' /></td></tr><tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script><tr><td>�������£�</td><td><input name='chushengnianyue' type='text' id='chushengnianyue' value='<%= chushengnianyue%>' onClick="getDate(form1.chushengnianyue,'2')" need="1" readonly='readonly' /></td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' /></td></tr><tr><td>���䣺</td><td><input name='youxiang' type='text' id='youxiang' value='<%= youxiang%>' /></td></tr><tr><td>���᣺</td><td><input name='jiguan' type='text' id='jiguan' value='<%= jiguan%>' /></td></tr><tr><td>��֯������</td><td><select name='zuzhijigou' id='zuzhijigou'><%sql="select zuzhimingcheng from zuzhijigou order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("zuzhimingcheng")%>" ><%=RS_result.getString("zuzhimingcheng")%></option><%}%></select></td></tr><script language="javascript">document.form1.zuzhijigou.value='<%=zuzhijigou%>';</script><tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mima%>' /></td></tr><tr><td>ְ�ƣ�</td><td><input name='zhicheng' type='text' id='zhicheng' value='<%= zhicheng%>' /></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


