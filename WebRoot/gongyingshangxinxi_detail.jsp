
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
    
    <title>��Ӧ����Ϣ��ϸ</title><script language="javascript" src="js/Calendar.js"></script>
	
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

  ��Ӧ����Ϣ��ϸ:
  <br><br>
   <%
  String sql="select * from gongyingshangxinxi where id="+id;
  String bianhao="";String mingcheng="";String lianxiren="";String dianhua="";String youxiang="";String chuanzhen="";String zhuyingchanpin="";String dizhi="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");lianxiren=RS_result.getString("lianxiren");dianhua=RS_result.getString("dianhua");youxiang=RS_result.getString("youxiang");chuanzhen=RS_result.getString("chuanzhen");zhuyingchanpin=RS_result.getString("zhuyingchanpin");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>��ţ�</td><td width='39%'><%=bianhao%></td><td width='11%'>���ƣ�</td><td width='39%'><%=mingcheng%></td></tr><tr><td width='11%'>��ϵ�ˣ�</td><td width='39%'><%=lianxiren%></td><td width='11%'>�绰��</td><td width='39%'><%=dianhua%></td></tr><tr><td width='11%'>���䣺</td><td width='39%'><%=youxiang%></td><td width='11%'>���棺</td><td width='39%'><%=chuanzhen%></td></tr><tr><td width='11%'>��Ӫ��Ʒ��</td><td width='39%'><%=zhuyingchanpin%></td><td width='11%'>��ַ��</td><td width='39%'><%=dizhi%></td></tr><tr><td width='11%' height="93">��ע��</td><td colspan="3"><%=beizhu%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" /></td></tr>
  </table>

  </body>
</html>


