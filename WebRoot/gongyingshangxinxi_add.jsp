
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
    
    <title>��Ӧ����Ϣ</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}
	if(document.form1.mingcheng.value==""){alert("����������");document.form1.mingcheng.focus();return false;}
	if(document.form1.lianxiren.value==""){alert("��������ϵ��");document.form1.lianxiren.focus();return false;}
	if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}
	var strPhone = document.getElementById("dianhua").value; 
  var reg = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
  phone_Flag = reg.test(strPhone);
  if(phone_Flag){
  }else{
  alert("�Բ���������ĵ绰�����ʽ����");
  return false;
  }

var strEmail = document.getElementById("youxiang").value;  
  var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
  var email_Flag = reg.test(strEmail);
  if(email_Flag){
  
  }
  else{
   alert("�Բ���������������ַ��ʽ����");
   return false;
  }

	if(document.form1.dizhi.value==""){alert("�������ַ");document.form1.dizhi.focus();return false;}
}
function gow()
{
	document.location.href="gongyingshangxinxi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="gongyingshangxinxi_add_post.jsp">
  ��ӹ�Ӧ����Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>���ƣ�</td><td><input name='mingcheng' type='text' id='mingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>��ϵ�ˣ�</td><td><input name='lianxiren' type='text' id='lianxiren' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>���䣺</td><td><input name='youxiang' type='text' id='youxiang' value='' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>���棺</td><td><input name='chuanzhen' type='text' id='chuanzhen' value='' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��Ӫ��Ʒ��</td><td><input name='zhuyingchanpin' type='text' id='zhuyingchanpin' value='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666'/>
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

