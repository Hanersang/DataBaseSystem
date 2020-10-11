
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
    
    <title>出货记录</title><LINK href="CSS.css" type=text/css rel=stylesheet>
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
	if(document.form1.mingcheng.value==""){alert("请输入名称");document.form1.mingcheng.focus();return false;}
	if(document.form1.leibie.value==""){alert("请输入类别");document.form1.leibie.focus();return false;}
	if(document.form1.jiage.value==""){alert("请输入价格");document.form1.jiage.focus();return false;}
	if(document.form1.kucun.value==""){alert("请输入库存");document.form1.kucun.focus();return false;}
	if(document.form1.xiaoshoushuliang.value==""){alert("请输入出货数量");document.form1.xiaoshoushuliang.focus();return false;}
	if (/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(document.form1.xiaoshoushuliang.value))
  {
      }
     else 
  {
   alert("出货数量必需是数字");
         return   false ;
   }
}
function gow()
{
	document.location.href="xiaoshoujilu_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <%
  String sql;
  ResultSet RS_result;
  String id=request.getParameter("id");
  sql="select * from shangpinxinxi where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String jiage="";String kucun="";
  RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");jiage=RS_result.getString("jiage");kucun=RS_result.getString("kucun");
  }
   %>
  <form name="form1" id="form1" method="post" action="xiaoshoujilu_add_post.jsp">
  添加出货记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' style='border:solid 1px #000000; color:#666666'  />&nbsp;*</td></tr><script language="javascript">document.form1.bianhao.value='<%=bianhao%>';</script><tr><td>药品名称：</td>
   <td><input name='mingcheng' type='text' id='mingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.mingcheng.value='<%=mingcheng%>';</script><tr><td>药品类别：</td>
   <td><input name='leibie' type='text' id='leibie' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';</script><tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='' style='border:solid 1px #000000; color:#666666'  />&nbsp;*</td></tr><script language="javascript">document.form1.jiage.value='<%=jiage%>';</script><tr><td>库存：</td><td><input name='kucun' type='text' id='kucun' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.kucun.value='<%=kucun%>';</script><tr><td>客户姓名：</td><td><select name='kehuxingming' id='kehuxingming'><%sql="select xingming from kehuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("xingming")%>" ><%=RS_result.getString("xingming")%></option><%}%></select></td></tr><tr><td>出货数量：</td><td><input name='xiaoshoushuliang' type='text' id='xiaoshoushuliang' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr><tr><td>经手人：</td><td><input name='jingshouren' type='text' id='jingshouren' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666'/>
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

