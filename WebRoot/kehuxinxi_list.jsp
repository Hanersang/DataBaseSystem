
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
    
    <title>�ͻ���Ϣ</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>���пͻ���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="15" />
   ������
   <input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="10" />
   ���֤��
   <input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' /> 
   �绰��
   <input name="dianhua" type="text" id="dianhua" style='border:solid 1px #000000; color:#666666' size="15" />  
   ���ͣ�
   <select name='leixing' id='leixing'>
     <option value="">����</option>
     <option value="��ͨ">��ͨ</option>
     <option value="VIP">VIP</option>
   </select>
    <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
<input type="button" name="Submit3" value="����¿ͻ�" style='border:solid 1px #000000; color:#666666' onclick="location.href='kehuxinxi_add.jsp';" /></form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>���֤</td><td bgcolor='#CCFFFF'>�绰</td><td bgcolor='#CCFFFF'>QQ</td><td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>��ַ</td>
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
				String fysql="select count(id) as ss from kehuxinxi";
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
  sql="select  * from kehuxinxi where 1=1 ";
   }
   else
   {
   String tempsql="select  id from kehuxinxi order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from kehuxinxi where id not in ("+tempidstring+")  ";
  }
  
  
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("shenfenzheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
if(request.getParameter("leixing")=="����" ||request.getParameter("leixing")==null ){}else{sql=sql+" and leixing like '%"+new String(request.getParameter("leixing").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String xingming="";String shenfenzheng="";String dianhua="";String QQ="";String xingbie="";String leixing="";String dizhi="";String beizhu="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");xingming=RS_result.getString("xingming");shenfenzheng=RS_result.getString("shenfenzheng");dianhua=RS_result.getString("dianhua");QQ=RS_result.getString("QQ");xingbie=RS_result.getString("xingbie");leixing=RS_result.getString("leixing");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bianhao %></td><td><%=xingming %></td><td><%=shenfenzheng %></td><td><%=dianhua %></td><td><%=QQ %></td><td align='center'><%=xingbie %></td><td><%=leixing %></td><td><%=dizhi %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="kehuxinxi_updt.jsp?id=<%=id%>">�޸�</a> <a href="kehuxinxi_detail.jsp?id=<%=id%>">��ϸ</a>  <a href="del.jsp?id=<%=id %>&tablename=kehuxinxi" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="kehuxinxi_list.jsp?page=1">��ҳ</a>��<a href="kehuxinxi_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="kehuxinxi_list.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="kehuxinxi_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>

