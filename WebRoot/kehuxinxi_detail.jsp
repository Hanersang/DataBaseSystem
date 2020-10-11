
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
    
    <title>客户信息详细</title><script language="javascript" src="js/Calendar.js"></script>
	
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	fewgidsoidfjdkgds
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>

  客户信息详细:
  <br><br>
   <%
  String sql="select * from kehuxinxi where id="+id;
  String bianhao="";String xingming="";String shenfenzheng="";String dianhua="";String QQ="";String xingbie="";String leixing="";String dizhi="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");xingming=RS_result.getString("xingming");shenfenzheng=RS_result.getString("shenfenzheng");dianhua=RS_result.getString("dianhua");QQ=RS_result.getString("QQ");xingbie=RS_result.getString("xingbie");leixing=RS_result.getString("leixing");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'><%=bianhao%></td><td width='11%'>姓名：</td><td width='39%'><%=xingming%></td></tr><tr><td width='11%'>身份证：</td><td width='39%'><%=shenfenzheng%></td><td width='11%'>电话：</td><td width='39%'><%=dianhua%></td></tr><tr><td width='11%'>QQ：</td><td width='39%'><%=QQ%></td><td width='11%'>性别：</td><td width='39%'><%=xingbie%></td></tr><tr><td width='11%'>类型：</td><td width='39%'><%=leixing%></td><td width='11%'>地址：</td><td width='39%'><%=dizhi%></td></tr><tr><td width='11%'>备注：</td><td width='39%'><%=beizhu%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /></td></tr>
    
  </table>

  </body>
</html>


