
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
    
    <title>������¼</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>���н�����¼�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;ҩƷ���ƣ�
   <input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;ҩƷ���
   <input name="leibie" type="text" id="leibie" style='border:solid 1px #000000; color:#666666' />  ��Ӧ�̣�<select name='gongyingshang' id='gongyingshang'><option value="">����</option><% sql="select mingcheng from gongyingshangxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("mingcheng")%>" ><%=RS_result.getString("mingcheng")%></option><%}%></select>
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>ҩƷ����</td><td bgcolor='#CCFFFF'>ҩƷ���</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>��������</td><td bgcolor='#CCFFFF'>������</td><td bgcolor='#CCFFFF'>��Ӧ��</td><td bgcolor='#CCFFFF'>��ע</td><td bgcolor='#CCFFFF'>������</td>
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
				String fysql="select count(id) as ss from caigoujilu where jingshouren='"+request.getSession().getAttribute("username")+"'";
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
  sql="select  * from caigoujilu where jingshouren='"+request.getSession().getAttribute("username")+"' ";
   }
   else
   {
   String tempsql="select  id from caigoujilu where jingshouren='"+request.getSession().getAttribute("username")+"' order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from caigoujilu where id not in ("+tempidstring+") and jingshouren='"+request.getSession().getAttribute("username")+"' ";
  }
  
  
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("leibie")=="" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
if(request.getParameter("gongyingshang")=="����" ||request.getParameter("gongyingshang")==null ){}else{sql=sql+" and gongyingshang like '%"+new String(request.getParameter("gongyingshang").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String mingcheng="";String leibie="";String kucun="";String caigoushuliang="";String caigoujia="";String gongyingshang="";String beizhu="";String jingshouren="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");kucun=RS_result.getString("kucun");caigoushuliang=RS_result.getString("caigoushuliang");caigoujia=RS_result.getString("caigoujia");gongyingshang=RS_result.getString("gongyingshang");beizhu=RS_result.getString("beizhu");jingshouren=RS_result.getString("jingshouren");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bianhao %></td><td><%=mingcheng %></td><td><%=leibie %></td><td><%=kucun %></td><td><%=caigoushuliang %></td><td><%=caigoujia %></td><td><%=gongyingshang %></td><td><%=beizhu %></td><td><%=jingshouren %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="caigoujilu_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=caigoujilu" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="caigoujilu_list2.jsp?page=1">��ҳ</a>��<a href="caigoujilu_list2.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="caigoujilu_list2.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="caigoujilu_list2.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>

