
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
    
    <title>������¼</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}if(document.form1.mingcheng.value==""){alert("����������");document.form1.mingcheng.focus();return false;}if(document.form1.leibie.value==""){alert("���������");document.form1.leibie.focus();return false;}if(document.form1.jiage.value==""){alert("������۸�");document.form1.jiage.focus();return false;}if(document.form1.kucun.value==""){alert("��������");document.form1.kucun.focus();return false;}if(document.form1.xiaoshoushuliang.value==""){alert("�������������");document.form1.xiaoshoushuliang.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="xiaoshoujilu_updt_post.jsp?id=<%=id %>">
  �޸ĳ�����¼:
  <br><br>
  <%
  String sql="select * from xiaoshoujilu where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String jiage="";String kucun="";String kehuxingming="";String xiaoshoushuliang="";String beizhu="";String jingshouren="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");jiage=RS_result.getString("jiage");kucun=RS_result.getString("kucun");kehuxingming=RS_result.getString("kehuxingming");xiaoshoushuliang=RS_result.getString("xiaoshoushuliang");beizhu=RS_result.getString("beizhu");jingshouren=RS_result.getString("jingshouren");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>ҩƷ���ƣ�</td>
     <td><input name='mingcheng' type='text' id='mingcheng' size='50' value='<%=mingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>ҩƷ���</td>
     <td><input name='leibie' type='text' id='leibie' value='<%= leibie%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='<%= jiage%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��棺</td><td><input name='kucun' type='text' id='kucun' value='<%= kucun%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�ͻ�������</td><td><select name='kehuxingming' id='kehuxingming'><%sql="select xingming from kehuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("xingming")%>" ><%=RS_result.getString("xingming")%></option><%}%></select></td></tr><script language="javascript">document.form1.kehuxingming.value='<%=kehuxingming%>';</script><tr><td>����������</td><td><input name='xiaoshoushuliang' type='text' id='xiaoshoushuliang' value='<%= xiaoshoushuliang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=beizhu%></textarea></td></tr><tr><td>�����ˣ�</td><td><input name='jingshouren' type='text' id='jingshouren' value='<%= jingshouren%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


