
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
    
    <title>��������ͳ��</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
  </head>

  <body >
  <p>��������ͳ�ƣ�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:���:
     <input name="bianhao" type="text" id="bianhao" />
     ҩƷ����
 
     <input name="mingcheng" type="text" id="mingcheng" />
     ����
     <input name="riqi1" type="text" id="riqi1" onClick="getDate(form1.riqi1,'2')" need="1">
     -
     <input name="riqi2" type="text" id="riqi2" onClick="getDate(form1.riqi2,'2')" need="1">
    <input type="submit" name="Submit" value="����" />
</form>

  <p>����¼��</p>
  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>ҩƷ����</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>�������</td>
    <td bgcolor='#CCFFFF'>���۸�</td>
    <td bgcolor='#CCFFFF'>��Ӧ��</td><td bgcolor='#CCFFFF'>��ע</td><td bgcolor='#CCFFFF'>����Ա</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    </tr>
  <%
  String sql="";
  sql="select * from caigoujilu where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and mingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("riqi1")=="" ||request.getParameter("riqi1")==null )
  {}
  else
  {
  	sql=sql+" and addtime >= '"+new String(request.getParameter("riqi1").getBytes("8859_1"))+"'";
  }
   if(request.getParameter("riqi2")=="" ||request.getParameter("riqi2")==null )
  {}
  else
  {
  	sql=sql+" and addtime <= '"+new String(request.getParameter("riqi2").getBytes("8859_1"))+"'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String mingcheng="";String kucun="";String caigoushuliang="";String gongyingshang="";String beizhu="";String jingshouren="";
 String addtime="";String caigoujia="";
 int i=0;
 int k=0;
 
 float ze=0;
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");kucun=RS_result.getString("kucun");
caigoushuliang=RS_result.getString("caigoushuliang");
gongyingshang=RS_result.getString("gongyingshang");
beizhu=RS_result.getString("beizhu");
jingshouren=RS_result.getString("jingshouren");
 addtime=RS_result.getString("addtime"); 
 caigoujia=RS_result.getString("caigoujia");
  ze=ze+Float.valueOf(caigoujia).floatValue()*Float.valueOf(caigoushuliang).floatValue();
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bianhao %></td><td><%=mingcheng %></td><td><%=kucun %></td><td><%=caigoushuliang %></td>
    <td><%=caigoujia %></td>
    <td><%=gongyingshang %></td><td><%=beizhu %></td><td><%=jingshouren %></td>
    <td width="138" align="center"><%=addtime %></td>
    </tr>
  	<%
  }
  k=i;
   %>
</table>
<p><br>
  �����¼��</p>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td>
    <td bgcolor='#CCFFFF'>ҩƷ����</td>
    <td bgcolor='#CCFFFF'>���</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>����۸�</td>
    <td bgcolor='#CCFFFF'>�ͻ�</td>
    <td bgcolor='#CCFFFF'>��ע</td>
    <td bgcolor='#CCFFFF'>����Ա</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
  </tr>
  <%
   sql="";
  sql="select * from xiaoshoujilu where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and mingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("riqi1")=="" ||request.getParameter("riqi1")==null )
  {}
  else
  {
  	sql=sql+" and addtime >= '"+new String(request.getParameter("riqi1").getBytes("8859_1"))+"'";
  }
   if(request.getParameter("riqi2")=="" ||request.getParameter("riqi2")==null )
  {}
  else
  {
  	sql=sql+" and addtime <= '"+new String(request.getParameter("riqi2").getBytes("8859_1"))+"'";
  }
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
  id="";
  bianhao=""; mingcheng=""; kucun="";String xiaoshoushuliang="";String kehuxingming=""; beizhu=""; jingshouren="";String jiage="";
  addtime="";
  i=0;
 float ze2=0;
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");
kucun=RS_result.getString("kucun");xiaoshoushuliang=RS_result.getString("xiaoshoushuliang");
kehuxingming=RS_result.getString("kehuxingming");beizhu=RS_result.getString("beizhu");jingshouren=RS_result.getString("jingshouren");
 addtime=RS_result.getString("addtime");jiage=RS_result.getString("jiage");
  ze2=ze2+Float.valueOf(jiage).floatValue()*Float.valueOf(xiaoshoushuliang).floatValue();
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bianhao %></td>
    <td><%=mingcheng %></td>
    <td><%=kucun %></td>
    <td><%=xiaoshoushuliang %></td>
    <td><%=jiage %></td>
    <td><%=kehuxingming %></td>
    <td><%=beizhu %></td>
    <td><%=jingshouren %></td>
    <td width="138" align="center"><%=addtime %></td>
  </tr>
  <%
  }
   %>
</table>
<br>
���Ͻ������ݹ�<%=k %>��,�������ܽ��<%=ze%>Ԫ,�������ݹ�<%=i%>�����������ܶ�<%=ze2%>Ԫ����������<%=ze2-ze%>Ԫ;<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p>&nbsp; </p>
  </body>
</html>

