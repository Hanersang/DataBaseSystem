
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
    
    <title>ҩƷ��Ϣ</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
    <style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
-->
    </style>
</head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>ҩƷ����ѯ��</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;ҩƷ���ƣ�
   <input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' />
    ҩƷ���
     <select name='leibie' id='leibie'><option value="">����</option><% sql="select leibie from shangpinleibie order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("leibie")%>" ><%=RS_result.getString("leibie")%></option><%}%></select>
     ���
     <input name="kucun1" type="text" id="kucun1" style='border:solid 1px #000000; color:#666666' size="8" />
     -
     <input name="kucun2" type="text" id="kucun2" style='border:solid 1px #000000; color:#666666' size="8" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>ҩƷ����</td>
    <td bgcolor='#CCFFFF'>ҩƷ���</td>
    <td bgcolor='#CCFFFF'>�۸�</td><td bgcolor='#CCFFFF'>���</td>
  </tr>
  <%
  int curpage=1;//��ǰҳ
				int page_record=10;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from shangpinxinxi";
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
  sql="select  * from shangpinxinxi where 1=1 ";
   }
   else
   {
   String tempsql="select  id from shangpinxinxi order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from shangpinxinxi where id not in ("+tempidstring+")  ";
  }
  
  
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("leibie")=="����" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
if(request.getParameter("kucun1")=="" ||request.getParameter("kucun1")==null ){}else{sql=sql+" and kucun >= "+new String(request.getParameter("kucun1").getBytes("8859_1"))+"";}
if(request.getParameter("kucun2")=="" ||request.getParameter("kucun2")==null ){}else{sql=sql+" and kucun <= "+new String(request.getParameter("kucun2").getBytes("8859_1"))+"";}
  
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String mingcheng="";String leibie="";String jiage="";String tupian="";String beizhu="";String kucun="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");jiage=RS_result.getString("jiage");tupian=RS_result.getString("tupian");beizhu=RS_result.getString("beizhu");kucun=RS_result.getString("kucun");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bianhao %></td><td><%=mingcheng %></td><td><%=leibie %></td><td><%=jiage %></td><td><%
	if(Float.valueOf(kucun).floatValue()<30)
	{
		out.print("<font color=red><strong>"+kucun+"</strong></font>");
	}
	else
	{
		out.print(kucun);
	}
	 %></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a> <span class="STYLE1">ע:���С��30����Ʒ��ɫ���</span>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="shangpinxinxi_list4.jsp?page=1">��ҳ</a>��<a href="shangpinxinxi_list4.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="shangpinxinxi_list4.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="shangpinxinxi_list4.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>

