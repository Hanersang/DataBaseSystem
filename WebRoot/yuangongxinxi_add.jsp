
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
    
    <title>员工信息</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("请输入编号");document.form1.bianhao.focus();return false;}
	if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}
	if(document.form1.shenfenzheng.value==""){alert("请输入身份证");document.form1.shenfenzheng.focus();return false;}
	var sID = document.form1.shenfenzheng.value 
 if(!(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(sID))){ 
 alert("请输入15位或18位身份证号"); 
 document.form1.shenfenzheng.value=''; 
 document.form1.shenfenzheng.focus(); 
 return false; 
 }

	if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}
	var strPhone = document.getElementById("dianhua").value; 
  var reg = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
  phone_Flag = reg.test(strPhone);
  if(phone_Flag){
  }else{
  alert("对不起，您输入的电话号码格式错误。");
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
      <td>&nbsp;&nbsp;<a href="yuangongxinxi_add.jsp">添加员工信息</a>&nbsp;&nbsp;     &nbsp; <a href="yuangongxinxi_list.jsp">员工信息查询</a></td>
    </tr>
  </table>
  <form name="form1" id="form1" method="post" action="yuangongxinxi_add_post.jsp">
  添加员工信息:
  <br>
  <br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>QQ：</td><td><input name='QQ' type='text' id='QQ' value='' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><tr>
     <td>部门：</td>
     <td><select name='leixing' id='leixing'>
     <option value="销售部">销售部</option>
     <option value="售后部">售后部</option>
	 <option value="人事部">人事部</option>
   </select></td></tr><tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' value='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666'/>
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

