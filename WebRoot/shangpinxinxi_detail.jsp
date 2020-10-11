
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
    
    <title>商品信息详细</title><script language="javascript" src="js/Calendar.js"></script>
	
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

  商品信息详细:
  <br><br>
   <%
  String sql="select * from shangpinxinxi where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String jiage="";String tupian="";String beizhu="";String kucun="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");jiage=RS_result.getString("jiage");tupian=RS_result.getString("tupian");beizhu=RS_result.getString("beizhu");kucun=RS_result.getString("kucun");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>编号：</td><td width='39%'><%=bianhao%></td><td  rowspan=5 align=center><a href=<%=tupian%> target=_blank><img src=<%=tupian%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>名称：</td><td width='39%'><%=mingcheng%></td></tr><tr><td width='11%' height=44>类别：</td><td width='39%'><%=leibie%></td></tr><tr><td width='11%' height=44>价格：</td><td width='39%'><%=jiage%></td></tr><tr><td width='11%' height=44>库存：</td><td width='39%'><%=kucun%></td></tr><tr><td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 ><%=beizhu%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /></td></tr>
    
  </table>

  </body>
</html>


