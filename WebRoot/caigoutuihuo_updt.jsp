
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
    
    <title>进货退货</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("请输入编号");document.form1.bianhao.focus();return false;}if(document.form1.mingcheng.value==""){alert("请输入名称");document.form1.mingcheng.focus();return false;}if(document.form1.leibie.value==""){alert("请输入类别");document.form1.leibie.focus();return false;}if(document.form1.caigoushuliang.value==""){alert("请输入进货数量");document.form1.caigoushuliang.focus();return false;}if(document.form1.gongyingshang.value==""){alert("请输入供应商");document.form1.gongyingshang.focus();return false;}if(document.form1.tuihuoshuliang.value==""){alert("请输入退货数量");document.form1.tuihuoshuliang.focus();return false;}if(document.form1.jingshouren.value==""){alert("请输入经手人");document.form1.jingshouren.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="caigoutuihuo_updt_post.jsp?id=<%=id %>">
  修改进货退货:
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
     <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>药品名称：</td>
     <td><input name='mingcheng' type='text' id='mingcheng' size='50' value='<%=mingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>药品类别：</td>
     <td><input name='leibie' type='text' id='leibie' value='<%= leibie%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>进货数量：</td><td><input name='caigoushuliang' type='text' id='caigoushuliang' value='<%= caigoushuliang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>供应商：</td><td><input name='gongyingshang' type='text' id='gongyingshang' size='50' value='<%=gongyingshang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>退货数量：</td><td><input name='tuihuoshuliang' type='text' id='tuihuoshuliang' value='<%= tuihuoshuliang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>退货事由：</td><td><textarea name='tuihuoshiyou' cols='50' rows='5' id='tuihuoshiyou' style='border:solid 1px #000000; color:#666666'><%=tuihuoshiyou%></textarea></td></tr><tr><td>经手人：</td><td><input name='jingshouren' type='text' id='jingshouren' value='<%= jingshouren%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


