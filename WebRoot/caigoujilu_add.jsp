
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
    
    <title>进货记录</title><LINK href="CSS.css" type=text/css rel=stylesheet>
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
	if(document.form1.kucun.value==""){alert("请输入库存");document.form1.kucun.focus();return false;}
	if(document.form1.caigoushuliang.value==""){alert("请输入进货数量");document.form1.caigoushuliang.focus();return false;}
	if (/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(document.form1.caigoushuliang.value))
  {
      }
     else 
  {
   alert("进货数量必需是数字");
         return   false ;
   }

	if(document.form1.caigoujia.value==""){alert("请输入进货价");document.form1.caigoujia.focus();return false;}if(document.form1.jingshouren.value==""){alert("请输入经手人");document.form1.jingshouren.focus();return false;}
}
function gow()
{
	document.location.href="caigoujilu_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <%
  String sql;
  ResultSet RS_result;
  String id=request.getParameter("id");
  sql="select * from shangpinxinxi where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String kucun="";
  RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");kucun=RS_result.getString("kucun");
  }
   %>
  <form name="form1" id="form1" method="post" action="caigoujilu_add_post.jsp">
  添加进货记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><script language="javascript">document.form1.bianhao.value='<%=bianhao%>';</script><tr><td>药品名称：</td>
   <td><input name='mingcheng' type='text' id='mingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><script language="javascript">document.form1.mingcheng.value='<%=mingcheng%>';</script><tr><td>药品类别：</td>
   <td><input name='leibie' type='text' id='leibie' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';</script><tr><td>库存：</td><td><input name='kucun' type='text' id='kucun' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><script language="javascript">document.form1.kucun.value='<%=kucun%>';</script><tr><td>进货数量：</td><td><input name='caigoushuliang' type='text' id='caigoushuliang' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>进货价：</td><td><input name='caigoujia' type='text' id='caigoujia' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>供应商：</td><td><select name='gongyingshang' id='gongyingshang'><%sql="select mingcheng from gongyingshangxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("mingcheng")%>" ><%=RS_result.getString("mingcheng")%></option><%}%></select></td></tr><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr><tr><td>经手人：</td><td><input name='jingshouren' type='text' id='jingshouren' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' />&nbsp;*</td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666'/>
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

