
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
    
    <title>Ա����Ϣ</title><LINK href="CSS.css" type=text/css rel=stylesheet>
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
	if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}
	if(document.form1.shenfenzheng.value==""){alert("���������֤");document.form1.shenfenzheng.focus();return false;}
	var sID = document.form1.shenfenzheng.value 
 if(!(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(sID))){ 
 alert("������15λ��18λ���֤��"); 
 document.form1.shenfenzheng.value=''; 
 document.form1.shenfenzheng.focus(); 
 return false; 
 }

	if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}
	var strPhone = document.getElementById("dianhua").value; 
  var reg = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
  phone_Flag = reg.test(strPhone);
  if(phone_Flag){
  }else{
  alert("�Բ���������ĵ绰�����ʽ����");
  return false;
  }


}
function gow()
{
	document.location.href="yuangongxinxi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <table width="100%" height="33" border="0" cellpadding="2" cellspacing="2" bgcolor="#FFCCFF">
    <tr>
      <td>&nbsp;&nbsp;<a href="yuangongxinxi_add.jsp">���Ա����Ϣ</a>&nbsp;&nbsp;     &nbsp; <a href="yuangongxinxi_list.jsp">Ա����Ϣ��ѯ</a></td>
    </tr>
  </table>
  <form name="form1" id="form1" method="post" action="yuangongxinxi_add_post.jsp">
  ���Ա����Ϣ:
  <br>
  <br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>QQ��</td><td><input name='QQ' type='text' id='QQ' value='' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><tr>
     <td>���ţ�</td>
     <td><select name='leixing' id='leixing'>
     <option value="���۲�">���۲�</option>
     <option value="�ۺ�">�ۺ�</option>
	 <option value="���²�">���²�</option>
   </select></td></tr><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' value='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666'/>
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

