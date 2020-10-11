/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_ydgl
Target Host: localhost
Target Database: db_ydgl
Date: 2018/3/29 10:17:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for allusers
-- ----------------------------
CREATE TABLE `allusers` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `cx` varchar(50) default '普通管理员',
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for caigoujilu
-- ----------------------------
CREATE TABLE `caigoujilu` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `mingcheng` varchar(50) default NULL,
  `leibie` varchar(50) default NULL,
  `kucun` varchar(50) default NULL,
  `caigoushuliang` varchar(50) default NULL,
  `caigoujia` varchar(50) default NULL,
  `gongyingshang` varchar(50) default NULL,
  `beizhu` varchar(50) default NULL,
  `jingshouren` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for caigoutuihuo
-- ----------------------------
CREATE TABLE `caigoutuihuo` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `mingcheng` varchar(50) default NULL,
  `leibie` varchar(50) default NULL,
  `caigoushuliang` varchar(50) default NULL,
  `gongyingshang` varchar(50) default NULL,
  `tuihuoshuliang` varchar(50) default NULL,
  `tuihuoshiyou` varchar(50) default NULL,
  `jingshouren` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for ck
-- ----------------------------
CREATE TABLE `ck` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `zuzhimingcheng` varchar(50) default NULL,
  `fuzeren` varchar(50) default NULL,
  `dianhua` varchar(50) default NULL,
  `chuanzhen` varchar(50) default NULL,
  `beizhu` varchar(255) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `issh` varchar(50) default '否',
  `issh1` varchar(50) default '否',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for gongyingshangxinxi
-- ----------------------------
CREATE TABLE `gongyingshangxinxi` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `mingcheng` varchar(50) default NULL,
  `lianxiren` varchar(50) default NULL,
  `dianhua` varchar(50) default NULL,
  `youxiang` varchar(50) default NULL,
  `chuanzhen` varchar(50) default NULL,
  `zhuyingchanpin` varchar(50) default NULL,
  `dizhi` varchar(50) default NULL,
  `beizhu` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for kehuxinxi
-- ----------------------------
CREATE TABLE `kehuxinxi` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `xingming` varchar(50) default NULL,
  `shenfenzheng` varchar(50) default NULL,
  `dianhua` varchar(50) default NULL,
  `QQ` varchar(50) default NULL,
  `xingbie` varchar(50) default NULL,
  `leixing` varchar(50) default NULL,
  `dizhi` varchar(50) default NULL,
  `beizhu` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for shangpinleibie
-- ----------------------------
CREATE TABLE `shangpinleibie` (
  `id` int(11) NOT NULL auto_increment,
  `leibie` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
CREATE TABLE `shangpinxinxi` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `mingcheng` varchar(50) default NULL,
  `leibie` varchar(50) default NULL,
  `jiage` varchar(50) default NULL,
  `tupian` varchar(50) default NULL,
  `beizhu` varchar(50) default NULL,
  `kucun` int(50) default '0',
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for xiaoshoujilu
-- ----------------------------
CREATE TABLE `xiaoshoujilu` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `mingcheng` varchar(50) default NULL,
  `leibie` varchar(50) default NULL,
  `jiage` varchar(50) default NULL,
  `kucun` varchar(50) default NULL,
  `kehuxingming` varchar(50) default NULL,
  `xiaoshoushuliang` varchar(50) default NULL,
  `beizhu` varchar(50) default NULL,
  `jingshouren` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for xiaoshoutuihuo
-- ----------------------------
CREATE TABLE `xiaoshoutuihuo` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `mingcheng` varchar(50) default NULL,
  `leibie` varchar(50) default NULL,
  `jiage` varchar(50) default NULL,
  `kehuxingming` varchar(50) default NULL,
  `xiaoshoushuliang` varchar(50) default NULL,
  `tuihuoshuliang` varchar(50) default NULL,
  `tuihuoshiyou` varchar(50) default NULL,
  `jingshouren` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for yuangongxinxi
-- ----------------------------
CREATE TABLE `yuangongxinxi` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `xingming` varchar(50) default NULL,
  `shenfenzheng` varchar(50) default NULL,
  `dianhua` varchar(50) default NULL,
  `QQ` varchar(50) default NULL,
  `xingbie` varchar(50) default NULL,
  `leixing` varchar(50) default NULL,
  `dizhi` varchar(50) default NULL,
  `beizhu` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `allusers` VALUES ('2', 'cd', 'cd', '超级管理员', '2018-03-27 03:02:12');
INSERT INTO `allusers` VALUES ('30', 'cc', 'cc', '普通管理员', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('2', '002', 'ebwebwew', '西药类', '7', '2', '33', '北京家佳家纺公司', 'efgwegw', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('3', '003', 'erherhre', '西药类', '255', '2', '254', '北京家佳家纺公司', 'gwewe', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('4', '003', 'erherhre', '西药类', '258', '1', '1', '北京家佳家纺公司', '1', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('5', '003', 'erherhre', '西药类', '261', '1', '1', '北京家佳家纺公司', '1', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('7', '003', 'erherhre', '西药类', '267', '2', '52', '北京家佳家纺公司', '523', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('8', '002', 'ebwebwew', '西药类', '9', '53', '23523', '北京家佳家纺公司', 'gewgew', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('9', 'ewg', 'gwegwegew', '西药类', '2', '21', '35', '温州新达布料厂', 'wgwegw', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('10', '005', 'gewgwe', '西药类', '22', '36', '23', '温州新达布料厂', 'erhrhre', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoujilu` VALUES ('11', '005', 'gewgwe', '西药类', '56', '4444', '444', 'whwehwe', '4444', 'cd', '2018-03-27 03:02:12');
INSERT INTO `caigoutuihuo` VALUES ('2', '003', 'erherhre', '西药类', '2', '9999药业公司', '2', 'werwe', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoutuihuo` VALUES ('3', '003', 'erherhre', '西药类', '2', '9999药业公司', '1', '11', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoutuihuo` VALUES ('4', '003', 'erherhre', '西药类', '2', '9999药业公司', '1', 'gw', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoutuihuo` VALUES ('5', '002', 'ebwebwew', '西药类', '55', '9999药业公司', '2', 'ffwe', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoutuihuo` VALUES ('6', 'ewg', 'gwegwegew', '西药类', '22', '9999药业公司', '1', 'fewgwe', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoutuihuo` VALUES ('7', '005', 'gewgwe', '西药类', '60', '9999药业公司', '2', 'erhreher', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `caigoutuihuo` VALUES ('8', '005', 'gewgwe', '西药类', '58', '9999药业公司', '22', '222', 'cd', '2018-03-27 03:02:12');
INSERT INTO `ck` VALUES ('11', '333', '333', '2222', '22222', '33333333', '555', '2018-03-27 03:02:12', '是', '否');
INSERT INTO `ck` VALUES ('12', '2222', '销售部', '小燕子', '0000000', '222-222222', '销售部销售部', '2018-03-27 03:02:12', '否', '否');
INSERT INTO `gongyingshangxinxi` VALUES ('2', '001', 'wegegwe', '何升高', '52352522', 'gwgr@163.com', '53262362', '布料', 'gregre', 'hrehr', '2018-03-27 03:02:12');
INSERT INTO `gongyingshangxinxi` VALUES ('3', '002', '感冒999公司', '吴邦国', '23523262', 'fgwegw@163.com', '32623627', '无纺布', '温州永新路xx号', 'twgwgw', '2018-03-27 03:02:12');
INSERT INTO `gongyingshangxinxi` VALUES ('4', '003', '9999药业公司', '李鹏', '23532522', 'gfewgw@163.com', '53252362', '被子,服装等', 'fweoigwgw', 'fewgwe', '2018-03-27 03:02:12');
INSERT INTO `gongyingshangxinxi` VALUES ('5', '004', 'rhher', 'grege', '325325252', 'gewgw@163.com', '2323623623', 'gwgheh', 'whew', 'hwehww', '2018-03-27 03:02:12');
INSERT INTO `gongyingshangxinxi` VALUES ('6', '005', 'whwehwe', 'gwegwe', '25252325', 'wgw@163.com', '532623632', 'ghwhwe', 'weh', 'wehewhwe', '2018-03-27 03:02:12');
INSERT INTO `kehuxinxi` VALUES ('2', '001', '陈晓得', '643636334', '5325252', '25235322', '女', '普通', 'shreh', 'herhrehreh', '2018-03-27 03:02:12');
INSERT INTO `kehuxinxi` VALUES ('3', '002', '王熙凤', '354353633', '345334', '523523523', '男', 'VIP', '2352greg', 'regerhrehe', '2018-03-27 03:02:12');
INSERT INTO `kehuxinxi` VALUES ('4', '003', 'eherh', '643634633', '232623632', '236262', '男', 'VIP', 'ewgwe', 'gwehh', '2018-03-27 03:02:12');
INSERT INTO `kehuxinxi` VALUES ('5', '003', 'eherh', '643634633', '232623632', '236262', '男', 'VIP', 'ewgwe', 'gwehh', '2018-03-27 03:02:12');
INSERT INTO `kehuxinxi` VALUES ('6', '005', 'greher', '123456789123456789', '2353252', '2232', '男', 'VIP', 'rgreg', 'regreher', '2018-03-27 03:02:12');
INSERT INTO `shangpinleibie` VALUES ('2', '中药类', '2018-03-27 03:02:12');
INSERT INTO `shangpinleibie` VALUES ('4', '西药类', '2018-03-27 03:02:12');
INSERT INTO `shangpinxinxi` VALUES ('2', '001', '感冒药777', '西药类', '25', 'upload/1461429886113.jpg', 'wegwegw', '1', '2018-03-27 03:02:12');
INSERT INTO `shangpinxinxi` VALUES ('3', '002', '感冒药55', '西药类', '56', 'upload/1461429876821.jpg', 'wegwe', '62', '2018-03-27 03:02:12');
INSERT INTO `shangpinxinxi` VALUES ('4', '003', '感冒药11', '西药类', '78', 'upload/1461429868030.jpg', 'gwegewgw', '236', '2018-03-27 03:02:12');
INSERT INTO `shangpinxinxi` VALUES ('5', '004', '感冒药22', '西药类', '22', 'upload/1461429860469.jpg', 'fefwe', '3', '2018-03-27 03:02:12');
INSERT INTO `shangpinxinxi` VALUES ('6', 'ewg', '感冒药44', '西药类', '22', 'upload/1461429853477.jpg', 'wegweg', '21', '2018-03-27 03:02:12');
INSERT INTO `shangpinxinxi` VALUES ('7', '005', '感冒药33', '西药类', '252', 'upload/1461429846597.jpg', 'fwegwe', '4500', '2018-03-27 03:02:12');
INSERT INTO `xiaoshoujilu` VALUES ('2', '003', 'erherhre', '西药类', '78', '265', '王熙凤', '0', 'ewgwgw', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `xiaoshoujilu` VALUES ('3', '003', 'erherhre', '西药类', '78', '265', '王熙凤', '29', 'rfgvb', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `xiaoshoujilu` VALUES ('4', 'ewg', 'gwegwegew', '西药类', '22', '23', '王熙凤', '2', 'wggw', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `xiaoshoujilu` VALUES ('5', '005', 'gewgwe', '西药类', '252', '80', '王熙凤', '2', 'grehrhre', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `xiaoshoutuihuo` VALUES ('2', '003', 'erherhre', '西药类', '78', '王熙凤', '1', '1', '', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `xiaoshoutuihuo` VALUES ('3', '003', 'erherhre', '西药类', '78', '王熙凤', '33', '4', 'vgg', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `xiaoshoutuihuo` VALUES ('4', '005', 'gewgwe', '西药类', '252', '王熙凤', '4', '2', 'gfwegwe', 'hsg', '2018-03-27 03:02:12');
INSERT INTO `yuangongxinxi` VALUES ('2', '001', '陈晓得', '643636334', '5325252', '25235322', '女', '普通', 'shreh', 'herhrehreh', '2018-03-27 03:02:12');
INSERT INTO `yuangongxinxi` VALUES ('3', '002', '王熙凤', '354353633', '345334', '523523523', '男', 'VIP', '2352greg', 'regerhrehe', '2018-03-27 03:02:12');
INSERT INTO `yuangongxinxi` VALUES ('4', '003', 'eherh', '643634633', '232623632', '236262', '男', 'VIP', 'ewgwe', 'gwehh', '2018-03-27 03:02:12');
INSERT INTO `yuangongxinxi` VALUES ('5', '003', 'eherh', '643634633', '232623632', '236262', '男', 'VIP', 'ewgwe', 'gwehh', '2018-03-27 03:02:12');
INSERT INTO `yuangongxinxi` VALUES ('9', '00011', '小燕子', '333333333333333333', '33333333', '333', '女', '销售部', '333333333', '333333', '2018-03-27 03:02:12');
