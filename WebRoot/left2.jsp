
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
   p = new createPanel("f", "个人资料管理");
      p.addButton('images/main/top/menu/logo_01.gif','个人资料管理','javascript:top.main.location="yonghuzhuce_updt2.jsp";setFrame();');
     // p.addButton('images/main/top/menu/logo_14.gif','注册用户管理','javascript:top.main.location="yonghuzhuce_list.jsp";setFrame();');

    o.addPanel(p);


   
  //  p = new createPanel("b", "系统管理");
//      p.addButton('images/main/top/menu/logo_13.gif','数据备份','javascript:top.fs_main.location="databack.jsp";setFrame();');
//      p.addButton('images/main/top/menu/logo_14.gif','留言管理','javascript:top.fs_main.location="liuyanban_list.jsp";setFrame();');
//	  p.addButton('images/main/top/menu/logo_15.gif','友情连接添加','javascript:top.fs_main.location="youqinglianjie_add.jsp";setFrame();');
//	  p.addButton('images/main/top/menu/logo_16.gif','友情连接查询','javascript:top.fs_main.location="youqinglianjie_list.jsp";setFrame();');
//	  p.addButton('images/main/top/menu/logo_17.gif','系统公告设置','javascript:top.fs_main.location="dx.jsp?lb=系统公告";setFrame();');
//	  p.addButton('images/main/top/menu/logo_18.gif','系统简介设置','javascript:top.fs_main.location="dx.jsp?lb=系统简介";setFrame();');
//   o.addPanel(p);

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
