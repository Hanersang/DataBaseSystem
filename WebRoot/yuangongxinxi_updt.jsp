
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
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}if(document.form1.shenfenzheng.value==""){alert("���������֤");document.form1.shenfenzheng.focus();return false;}if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}
}
</script>
  <body >
  <table width="100%" height="33" border="0" cellpadding="2" cellspacing="2" bgcolor="#FFCCFF">
    <tr>
      <td>&nbsp;&nbsp;<a href="yuangongxinxi_add.jsp">���Ա����Ϣ</a>&nbsp;&nbsp;     &nbsp; <a href="yuangongxinxi_list.jsp">Ա����Ϣ��ѯ</a></td>
    </tr>
  </table>
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="yuangongxinxi_updt_post.jsp?id=<%=id %>">
  �޸�Ա����Ϣ:
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
     <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' size='50' value='<%=shenfenzheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>QQ��</td><td><input name='QQ' type='text' id='QQ' value='<%= QQ%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script><tr>
       <td>���ţ�</td>
       <td><select name='leixing' id='leixing'>
     <option value="���۲�">���۲�</option>
     <option value="�ۺ�">�ۺ�</option>
	 <option value="���²�">���²�</option>
     </select></td></tr><script language="javascript">document.form1.leixing.value='<%=leixing%>';</script><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


