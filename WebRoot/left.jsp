
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
    
    <title></title>
<SCRIPT language=JavaScript src="js/crossbrowser.js" type=text/javascript></SCRIPT>

<SCRIPT language=JavaScript src="js/outlook.js" type=text/javascript>
</SCRIPT>

<SCRIPT>
  //create OutlookBar
  var o = new createOutlookBar('Bar',0,0,screenSize.width,screenSize.height,'#f7f7f7','blue');
  var p;
  <%%>
   p = new createPanel("f", "ϵͳ�û�����");
      p.addButton('images/main/top/menu/logo_01.gif','����Ա�û�����','javascript:top.main.location="yhzhgl.jsp";setFrame();');
     
      p.addButton('images/main/top/menu/logo_06.gif','�����������','javascript:top.main.location="mod.jsp";setFrame();');
      //p.addButton('images/main/top/menu/logo_18.gif','�������','javascript:top.fs_main.location="Vcd_Add.Asp";setFrame();');
     o.addPanel(p);
    p = new createPanel("a", "Ա����Ϣ����");
      p.addButton('images/main/top/menu/logo_01.gif','Ա����Ϣ���','javascript:top.main.location="yuangongxinxi_add.jsp";setFrame();');
	   p.addButton('images/main/top/menu/logo_02.gif','Ա����Ϣ����','javascript:top.main.location="yuangongxinxi_list.jsp";setFrame();')
  o.addPanel(p);
      p = new createPanel("a", "��Ӧ����Ϣ����");
      p.addButton('images/main/top/menu/logo_01.gif','��Ӧ����Ϣ���','javascript:top.main.location="gongyingshangxinxi_add.jsp";setFrame();');
	   p.addButton('images/main/top/menu/logo_02.gif','��Ӧ����Ϣ����','javascript:top.main.location="gongyingshangxinxi_list.jsp";setFrame();')
  o.addPanel(p);
  
       p = new createPanel("a", "�ֿ���Ϣ����");
      p.addButton('images/main/top/menu/logo_01.gif','�ֿ���Ϣ���','javascript:top.main.location="ck_add.jsp";setFrame();');
	   p.addButton('images/main/top/menu/logo_02.gif','�ֿ���Ϣ����','javascript:top.main.location="ck_list.jsp";setFrame();')
  o.addPanel(p);
  
    p = new createPanel("a", "ҩƷ��Ϣ����");
     p.addButton('images/main/top/menu/logo_01.gif','ҩƷ������','javascript:top.main.location="shangpinleibie_list.jsp";setFrame();');
	  p.addButton('images/main/top/menu/logo_02.gif','ҩƷ��Ϣ����','javascript:top.main.location="shangpinxinxi_list.jsp";setFrame();');
	  
   o.addPanel(p);
    p = new createPanel("a", "ҩƷ�������");
      p.addButton('images/main/top/menu/logo_03.gif','�������Ǽ�','javascript:top.main.location="shangpinxinxi_list2.jsp";setFrame();');
	    p.addButton('images/main/top/menu/logo_02.gif','�����˻��Ǽ�','javascript:top.main.location="caigoujilu_list3.jsp";setFrame();');
     // p.addButton('images/main/top/menu/logo_02.gif','վ�����Ų�ѯ','javascript:top.main.location="xinwentongzhi_list.jsp?lb=վ������";setFrame();');
     // p.addButton('images/main/top/menu/logo_03.gif','��������','javascript:top.main.location="Vcd_Search.asp";setFrame();');
     // p.addButton('images/main/top/menu/logo_04.gif','ҵ�����','javascript:top.main.location="Vcd_Record.asp";setFrame();');
   o.addPanel(p);
   p = new createPanel("b", "ҩƷ���۹���");
      p.addButton('images/main/top/menu/logo_05.gif','���۳����Ǽ�','javascript:top.main.location="shangpinxinxi_list3.jsp";setFrame();');
      p.addButton('images/main/top/menu/logo_06.gif','�����˻��Ǽ�','javascript:top.main.location="xiaoshoujilu_list3.jsp";setFrame();');
   o.addPanel(p);
   
   p = new createPanel("b", "����̵����");
p.addButton('images/main/top/menu/logo_14.gif','���Ԥ����ѯ','javascript:top.main.location="shangpinxinxi_list4.jsp";setFrame();');

   o.addPanel(p);

   p = new createPanel("b", "���󱨱�ͳ��");
p.addButton('images/main/top/menu/logo_14.gif','��������ͳ��','javascript:top.main.location="lirun_list.jsp";setFrame();');

   o.addPanel(p);


 o.draw();         //draw the OutlookBar

 // top.fs_main.setyou.cols="150,10,*,10,0";

//-----------------------------------------------------------------------------
//functions to manage window resize
//-----------------------------------------------------------------------------
//resize OP5 (test screenSize every 100ms)
function resize_op5() {
  o.showPanel(0);
  if (bt.op5) {
    o.showPanel(o.aktPanel);
    var s = new createPageSize();
     if (s.height>200){
       o.resize(0,0,s.width,s.height);
     }

    if ((screenSize.width!=s.width) || (screenSize.height!=s.height)) {
      screenSize=new createPageSize();
      //need setTimeout or resize on window-maximize will not work correct!
      //ben�tige das setTimeout oder das Maximieren funktioniert nicht richtig
      setTimeout("o.resize(0,0,screenSize.width,screenSize.height)",100);
    }
    setTimeout("resize_op5()",100);
  }
}

//resize IE & NS (onResize event!)
function myOnResize() {
  if (bt.ie4 || bt.ie5 || bt.ns5) {
    var s=new createPageSize();
     if (s.height>200){
	    o.resize(0,0,s.width,s.height);
	}
  }
  else
    if (bt.ns4) location.reload();
}
function Test()
{
   alert(top.bottomFrame.cols);
  if(top.bottomFrame.cols="150,10,*"){
     top.bottomFrame.cols="0,10,*";
  }
}
</SCRIPT>
<SCRIPT language=javascript>
//��ʾ/�������֡( Ĭ�������Ϊ��ʾ���֡ 2003.4 )
var currentChoice = true;
function setFrame(){
//alert (top.fs_main.news.cols);
	if(currentChoice){
		if (parent.setyou.cols=="150,10,*,10,198"){
			parent.setyou.cols="150,10,*,10,0";
			//document.img1.src=arrow2.src;
			//document.img1.alt="��ʾ�˵�";
		}
	}
}
setFrame();
</SCRIPT>
<META content="MSHTML 6.00.3790.2541" name=GENERATOR></HEAD>
<BODY onmousewheel=Onwheel() onresize=myOnResize(); onload=resize_op5();></BODY></HTML>
