
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
   p = new createPanel("f", "系统用户管理");
      p.addButton('images/main/top/menu/logo_01.gif','管理员用户管理','javascript:top.main.location="yhzhgl.jsp";setFrame();');
     
      p.addButton('images/main/top/menu/logo_06.gif','个人密码管理','javascript:top.main.location="mod.jsp";setFrame();');
      //p.addButton('images/main/top/menu/logo_18.gif','添加音像','javascript:top.fs_main.location="Vcd_Add.Asp";setFrame();');
     o.addPanel(p);
    p = new createPanel("a", "员工信息管理");
      p.addButton('images/main/top/menu/logo_01.gif','员工信息添加','javascript:top.main.location="yuangongxinxi_add.jsp";setFrame();');
	   p.addButton('images/main/top/menu/logo_02.gif','员工信息管理','javascript:top.main.location="yuangongxinxi_list.jsp";setFrame();')
  o.addPanel(p);
      p = new createPanel("a", "供应商信息管理");
      p.addButton('images/main/top/menu/logo_01.gif','供应商信息添加','javascript:top.main.location="gongyingshangxinxi_add.jsp";setFrame();');
	   p.addButton('images/main/top/menu/logo_02.gif','供应商信息管理','javascript:top.main.location="gongyingshangxinxi_list.jsp";setFrame();')
  o.addPanel(p);
  
       p = new createPanel("a", "仓库信息管理");
      p.addButton('images/main/top/menu/logo_01.gif','仓库信息添加','javascript:top.main.location="ck_add.jsp";setFrame();');
	   p.addButton('images/main/top/menu/logo_02.gif','仓库信息管理','javascript:top.main.location="ck_list.jsp";setFrame();')
  o.addPanel(p);
  
    p = new createPanel("a", "药品信息管理");
     p.addButton('images/main/top/menu/logo_01.gif','药品类别管理','javascript:top.main.location="shangpinleibie_list.jsp";setFrame();');
	  p.addButton('images/main/top/menu/logo_02.gif','药品信息管理','javascript:top.main.location="shangpinxinxi_list.jsp";setFrame();');
	  
   o.addPanel(p);
    p = new createPanel("a", "药品进货入库");
      p.addButton('images/main/top/menu/logo_03.gif','进货入库登记','javascript:top.main.location="shangpinxinxi_list2.jsp";setFrame();');
	    p.addButton('images/main/top/menu/logo_02.gif','进购退货登记','javascript:top.main.location="caigoujilu_list3.jsp";setFrame();');
     // p.addButton('images/main/top/menu/logo_02.gif','站内新闻查询','javascript:top.main.location="xinwentongzhi_list.jsp?lb=站内新闻";setFrame();');
     // p.addButton('images/main/top/menu/logo_03.gif','音像搜索','javascript:top.main.location="Vcd_Search.asp";setFrame();');
     // p.addButton('images/main/top/menu/logo_04.gif','业务浏览','javascript:top.main.location="Vcd_Record.asp";setFrame();');
   o.addPanel(p);
   p = new createPanel("b", "药品销售管理");
      p.addButton('images/main/top/menu/logo_05.gif','销售出货登记','javascript:top.main.location="shangpinxinxi_list3.jsp";setFrame();');
      p.addButton('images/main/top/menu/logo_06.gif','销售退货登记','javascript:top.main.location="xiaoshoujilu_list3.jsp";setFrame();');
   o.addPanel(p);
   
   p = new createPanel("b", "库存盘点管理");
p.addButton('images/main/top/menu/logo_14.gif','库存预警查询','javascript:top.main.location="shangpinxinxi_list4.jsp";setFrame();');

   o.addPanel(p);

   p = new createPanel("b", "利润报表统计");
p.addButton('images/main/top/menu/logo_14.gif','出货利润统计','javascript:top.main.location="lirun_list.jsp";setFrame();');

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
      //ben鰐ige das setTimeout oder das Maximieren funktioniert nicht richtig
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
//显示/隐藏左边帧( 默认情况下为显示左边帧 2003.4 )
var currentChoice = true;
function setFrame(){
//alert (top.fs_main.news.cols);
	if(currentChoice){
		if (parent.setyou.cols=="150,10,*,10,198"){
			parent.setyou.cols="150,10,*,10,0";
			//document.img1.src=arrow2.src;
			//document.img1.alt="显示菜单";
		}
	}
}
setFrame();
</SCRIPT>
<META content="MSHTML 6.00.3790.2541" name=GENERATOR></HEAD>
<BODY onmousewheel=Onwheel() onresize=myOnResize(); onload=resize_op5();></BODY></HTML>
