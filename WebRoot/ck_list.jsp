
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
    
    <title>�ֿ�</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>�Ѳֿ��б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:���:
    <input name="bianhao" type="text" id="bianhao" />
     �ֿ�����
     <input name="mingcheng" type="text" id="mingcheng" />
     <input type="submit" name="Submit" value="����" />
    &nbsp;&nbsp;&nbsp;&nbsp;[ <a href="ck_add.jsp">��Ӳֿ���Ϣ</a> ]
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>�ֿ�����</td>
    <td bgcolor='#CCFFFF'>������</td><td bgcolor='#CCFFFF'>�绰</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>��ע</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from ck where 1=1";
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
  	sql=sql+" and bumen like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String zuzhimingcheng="";String fuzeren="";String dianhua="";String chuanzhen="";String beizhu="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");zuzhimingcheng=RS_result.getString("zuzhimingcheng");fuzeren=RS_result.getString("fuzeren");dianhua=RS_result.getString("dianhua");chuanzhen=RS_result.getString("chuanzhen");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bianhao %></td><td><%=zuzhimingcheng %></td><td><%=fuzeren %></td><td><%=dianhua %></td><td><%=chuanzhen %></td><td><%=beizhu %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="ck_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=ck" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>

