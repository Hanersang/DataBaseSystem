
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
    
    <title>�����˻�</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}if(document.form1.mingcheng.value==""){alert("����������");document.form1.mingcheng.focus();return false;}if(document.form1.leibie.value==""){alert("���������");document.form1.leibie.focus();return false;}if(document.form1.caigoushuliang.value==""){alert("�������������");document.form1.caigoushuliang.focus();return false;}if(document.form1.gongyingshang.value==""){alert("�����빩Ӧ��");document.form1.gongyingshang.focus();return false;}if(document.form1.tuihuoshuliang.value==""){alert("�������˻�����");document.form1.tuihuoshuliang.focus();return false;}if(document.form1.jingshouren.value==""){alert("�����뾭����");document.form1.jingshouren.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="caigoutuihuo_updt_post.jsp?id=<%=id %>">
  �޸Ľ����˻�:
  <br><br>
  <%
  String sql="select * from caigoutuihuo where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String caigoushuliang="";String gongyingshang="";String tuihuoshuliang="";String tuihuoshiyou="";String jingshouren="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");caigoushuliang=RS_result.getString("caigoushuliang");gongyingshang=RS_result.getString("gongyingshang");tuihuoshuliang=RS_result.getString("tuihuoshuliang");tuihuoshiyou=RS_result.getString("tuihuoshiyou");jingshouren=RS_result.getString("jingshouren");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>ҩƷ���ƣ�</td>
     <td><input name='mingcheng' type='text' id='mingcheng' size='50' value='<%=mingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>ҩƷ���</td>
     <td><input name='leibie' type='text' id='leibie' value='<%= leibie%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>����������</td><td><input name='caigoushuliang' type='text' id='caigoushuliang' value='<%= caigoushuliang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��Ӧ�̣�</td><td><input name='gongyingshang' type='text' id='gongyingshang' size='50' value='<%=gongyingshang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�˻�������</td><td><input name='tuihuoshuliang' type='text' id='tuihuoshuliang' value='<%= tuihuoshuliang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�˻����ɣ�</td><td><textarea name='tuihuoshiyou' cols='50' rows='5' id='tuihuoshiyou' style='border:solid 1px #000000; color:#666666'><%=tuihuoshiyou%></textarea></td></tr><tr><td>�����ˣ�</td><td><input name='jingshouren' type='text' id='jingshouren' value='<%= jingshouren%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


