
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
    
    <title>�����˻�</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>���н����˻��б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;���ƣ�<input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;ҩƷ���
   <input name="leibie" type="text" id="leibie" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;�����ˣ�<input name="jingshouren" type="text" id="jingshouren" style='border:solid 1px #000000; color:#666666' />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>��������</td><td bgcolor='#CCFFFF'>��Ӧ��</td><td bgcolor='#CCFFFF'>�˻�����</td>
    <td bgcolor='#CCFFFF'>�˻�����</td>
    <td bgcolor='#CCFFFF'>������</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  int curpage=1;//��ǰҳ
				int page_record=10;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from caigoutuihuo";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  if((zgs % page_record)==0)
  {
  zys=zgs/page_record;
  }
  else
  {
  	zys=zgs/page_record+1;
  }
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
if(((curpage-1)*page_record)==0 || curpage==0)
   {
  sql="select  * from caigoutuihuo where 1=1 ";
   }
   else
   {
   String tempsql="select  id from caigoutuihuo order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from caigoutuihuo where id not in ("+tempidstring+")  ";
  }
  
  
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("leibie")=="" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
if(request.getParameter("jingshouren")=="" ||request.getParameter("jingshouren")==null ){}else{sql=sql+" and jingshouren like '%"+new String(request.getParameter("jingshouren").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String mingcheng="";String leibie="";String caigoushuliang="";String gongyingshang="";String tuihuoshuliang="";String tuihuoshiyou="";String jingshouren="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");caigoushuliang=RS_result.getString("caigoushuliang");gongyingshang=RS_result.getString("gongyingshang");tuihuoshuliang=RS_result.getString("tuihuoshuliang");tuihuoshiyou=RS_result.getString("tuihuoshiyou");jingshouren=RS_result.getString("jingshouren");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bianhao %></td><td><%=mingcheng %></td><td><%=leibie %></td><td><%=caigoushuliang %></td><td><%=gongyingshang %></td><td><%=tuihuoshuliang %></td>
    <td><%=tuihuoshiyou %></td>
    <td><%=jingshouren %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="caigoutuihuo_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=caigoutuihuo" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="caigoutuihuo_list.jsp?page=1">��ҳ</a>��<a href="caigoutuihuo_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="caigoutuihuo_list.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="caigoutuihuo_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>

