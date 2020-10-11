
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
    
    <title>药品类别</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有药品类别列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;类别：<input name="leibie" type="text" id="leibie" style='border:solid 1px #000000; color:#666666' />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
     <input type="button" name="Submit3" value="添加新类别" style='border:solid 1px #000000; color:#666666' onClick="location.href='shangpinleibie_add.jsp';" />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>药品类别</td>
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
				String fysql="select count(id) as ss from shangpinleibie";
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
  sql="select  * from shangpinleibie where 1=1 ";
   }
   else
   {
   String tempsql="select  id from shangpinleibie order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from shangpinleibie where id not in ("+tempidstring+")  ";
  }
  
  
if(request.getParameter("leibie")=="" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String leibie="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
leibie=RS_result.getString("leibie");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=leibie %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="shangpinleibie_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=shangpinleibie" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="shangpinleibie_list.jsp?page=1">首页</a>　<a href="shangpinleibie_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="shangpinleibie_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="shangpinleibie_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

