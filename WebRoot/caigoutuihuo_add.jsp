
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
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}
	if(document.form1.mingcheng.value==""){alert("����������");document.form1.mingcheng.focus();return false;}
	if(document.form1.leibie.value==""){alert("���������");document.form1.leibie.focus();return false;}
	if(document.form1.caigoushuliang.value==""){alert("�������������");document.form1.caigoushuliang.focus();return false;}
	if(document.form1.gongyingshang.value==""){alert("�����빩Ӧ��");document.form1.gongyingshang.focus();return false;}
	if(document.form1.tuihuoshuliang.value==""){alert("�������˻�����");document.form1.tuihuoshuliang.focus();return false;}
	if (/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(document.form1.tuihuoshuliang.value))
  {
      }
     else 
  {
   alert("�˻���������������");
         return   false ;
   }
	if(document.form1.jingshouren.value==""){alert("�����뾭����");document.form1.jingshouren.focus();return false;}
}
function gow()
{
	document.location.href="caigoutuihuo_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <%
  String sql;
  ResultSet RS_result;
  String id=request.getParameter("id");
  sql="select * from caigoujilu where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String caigoushuliang="";String gongyingshang="";
  RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");caigoushuliang=RS_result.getString("caigoushuliang");gongyingshang=RS_result.getString("gongyingshang");
  }
   %>
  <form name="form1" id="form1" method="post" action="caigoutuihuo_add_post.jsp">
  ��ӽ����˻�:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='' style='border:solid 1px #000000; color:#666666'  />&nbsp;*</td></tr><script language="javascript">document.form1.bianhao.value='<%=bianhao%>';</script><tr><td>ҩƷ���ƣ�</td>
   <td><input name='mingcheng' type='text' id='mingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.mingcheng.value='<%=mingcheng%>';</script><tr><td>ҩƷ���</td>
   <td><input name='leibie' type='text' id='leibie' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';</script><tr><td>����������</td><td><input name='caigoushuliang' type='text' id='caigoushuliang' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.caigoushuliang.value='<%=caigoushuliang%>';</script><tr><td>��Ӧ�̣�</td><td><input name='gongyingshang' type='text' id='gongyingshang' value='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.gongyingshang.value='<%=gongyingshang%>';</script><tr><td>�˻�������</td><td><input name='tuihuoshuliang' type='text' id='tuihuoshuliang' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>�˻����ɣ�</td><td><textarea name='tuihuoshiyou' cols='50' rows='5' id='tuihuoshiyou' style='border:solid 1px #000000; color:#666666'></textarea></td></tr><tr><td>�����ˣ�</td><td><input name='jingshouren' type='text' id='jingshouren' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' />&nbsp;*
     <input name="id" type="hidden" id="id" value="<%=id%>"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666'/>
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

