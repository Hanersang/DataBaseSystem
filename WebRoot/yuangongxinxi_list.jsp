
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
    
    <title>员工信息</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <table width="100%" height="33" border="0" cellpadding="2" cellspacing="2" bgcolor="#FFCCFF">
    <tr>
      <td>&nbsp;&nbsp;<a href="yuangongxinxi_add.jsp">添加员工信息</a>&nbsp;&nbsp;     &nbsp; <a href="yuangongxinxi_list.jsp">员工信息查询</a></td>
    </tr>
  </table>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;编号：<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' />&nbsp;&nbsp;电话：<input name="dianhua" type="text" id="dianhua" style='border:solid 1px #000000; color:#666666' />  
   部门：
   <select name='leixing' id='leixing'>
     <option value="">所有</option>
     <option value="销售部">销售部</option>
     <option value="售后部">售后部</option>
	 <option value="人事部">人事部</option>
   </select>
    <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td><td bgcolor='#CCFFFF'>员工姓名</td>
    <td bgcolor='#CCFFFF'>身份证</td><td bgcolor='#CCFFFF'>电话</td><td bgcolor='#CCFFFF'>QQ</td><td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td bgcolor='#CCFFFF'>部门</td>
    <td bgcolor='#CCFFFF'>地址</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from yuangongxinxi";
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
				curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
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
  sql="select  * from yuangongxinxi where 1=1 ";
   }
   else
   {
   String tempsql="select  id from yuangongxinxi order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from yuangongxinxi where id not in ("+tempidstring+")  ";
  }
  
  
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("shenfenzheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
if(request.getParameter("leixing")=="所有" ||request.getParameter("leixing")==null ){}else{sql=sql+" and leixing like '%"+new String(request.getParameter("leixing").getBytes("8859_1"))+"%'";}
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
    <td width="60" align="center"><a href="yuangongxinxi_updt.jsp?id=<%=id%>">修改</a> <a href="yuangongxinxi_detail.jsp?id=<%=id%>">详细</a>  <a href="del.jsp?id=<%=id %>&tablename=yuangongxinxi" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="yuangongxinxi_list.jsp?page=1">首页</a>　<a href="yuangongxinxi_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="yuangongxinxi_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="yuangongxinxi_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

