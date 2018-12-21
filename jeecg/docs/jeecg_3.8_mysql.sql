/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.199（内网）
Source Server Version : 50710
Source Host           : 192.168.1.199:3306
Source Database       : jeecg_3.7.9

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2018-10-24 15:56:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_s_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_s_attachment`;
CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `attachmentcontent` longblob COMMENT '附件内容',
  `attachmenttitle` varchar(100) DEFAULT NULL COMMENT '附件名称',
  `businesskey` varchar(32) DEFAULT NULL COMMENT '业务类主键',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `extend` varchar(32) DEFAULT NULL COMMENT '扩展名',
  `note` longtext COMMENT 'note',
  `realpath` varchar(100) DEFAULT NULL COMMENT '附件路径',
  `subclassname` longtext COMMENT '子类名称全路径',
  `swfpath` longtext COMMENT 'swf格式路径',
  `BUSENTITYNAME` varchar(100) DEFAULT NULL COMMENT 'BUSENTITYNAME',
  `INFOTYPEID` varchar(32) DEFAULT NULL COMMENT 'INFOTYPEID',
  `USERID` varchar(32) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_attachment
-- ----------------------------
INSERT INTO `t_s_attachment` VALUES ('4028318162538a600162538f38d10004', null, 'profile_small', null, null, 'jpg', null, 'upload/files/20180323235157T929vi0J.jpg', null, 'upload/files/20180323235157T929vi0J.swf', null, null, null);

-- ----------------------------
-- Table structure for t_s_base_user
-- ----------------------------
DROP TABLE IF EXISTS `t_s_base_user`;
CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `activitiSync` smallint(6) DEFAULT NULL COMMENT '同步流程',
  `browser` varchar(20) DEFAULT NULL COMMENT '浏览器',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `realname` varchar(50) DEFAULT NULL COMMENT '真实名字',
  `signature` blob COMMENT '签名',
  `status` smallint(6) DEFAULT NULL COMMENT '有效状态',
  `userkey` varchar(200) DEFAULT NULL COMMENT '用户KEY',
  `username` varchar(50) NOT NULL COMMENT '用户账号',
  `departid` varchar(32) DEFAULT NULL COMMENT '部门ID',
  `user_name_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `delete_flag` smallint(6) DEFAULT NULL COMMENT '删除状态',
  PRIMARY KEY (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  KEY `index_login` (`password`,`username`),
  KEY `idx_deleteflg` (`delete_flag`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_base_user
-- ----------------------------
INSERT INTO `t_s_base_user` VALUES ('4028318163a6865d0163a68bef49000a', '0', null, 'f8660132d963d2f1', 'ggg7', null, '1', null, 'gggg', null, null, '0');
INSERT INTO `t_s_base_user` VALUES ('402880e74d75c4dd014d75d44af30005', null, null, 'deec3ebf23191eee', 'real demo', null, '1', 'demo', 'demo', '402880f15986303c0159864816180002', null, '0');
INSERT INTO `t_s_base_user` VALUES ('402881875988e889015988ec36770001', null, null, 'f68bb6f881b0ebe0', '7777', null, '1', 'demo', '777', null, null, '1');
INSERT INTO `t_s_base_user` VALUES ('402881e75f159dc3015f15a76fa80004', null, null, '7e0d5072ccc45286820b07d055078382', 'junit demo', null, '1', null, 'zhangsan', null, null, '1');
INSERT INTO `t_s_base_user` VALUES ('402881e75f15a91c015f15a9bd550000', null, null, '7e0d5072ccc45286820b07d055078382', 'junit demo', null, '1', null, 'zhangsan', null, null, '1');
INSERT INTO `t_s_base_user` VALUES ('402881e75f15a91c015f15aa5bb50001', null, null, '7e0d5072ccc45286820b07d055078382', 'junit demo', null, '1', null, 'zhangsan', null, null, '1');
INSERT INTO `t_s_base_user` VALUES ('402881f3639157630163915af2100006', '0', null, '555dd29cd2a418ef2fce1b1c2047cdcd', '测试接口用户6', null, '1', null, 'interfaceuser', null, null, '0');
INSERT INTO `t_s_base_user` VALUES ('402881f36468e19e016468e950350012', null, null, 'a9db4d085a7f247fb2e864d1619c14c3', '测试用户1', null, '1', null, 'ceshi_001', null, null, '0');
INSERT INTO `t_s_base_user` VALUES ('402881fc60a1cbe40160a1f080620011', '0', null, 'ac4a5a2da439ab01', '接口权限测试用户', null, '1', null, 'test', null, '', '0');
INSERT INTO `t_s_base_user` VALUES ('4028ef81538330cd01538333b7bc0001', null, null, 'fa83c6e9a2006c62', '李四', null, '1', '经理角色', 'lisi', '402880e447e9a9570147e9b762e30009', null, '0');
INSERT INTO `t_s_base_user` VALUES ('4028ef81563ae5be01563ae92d7f0002', null, null, 'bff95c03433b66af', '999', null, '1', 'demo', '999', null, null, '1');
INSERT INTO `t_s_base_user` VALUES ('8a8ab0b246dc81120146dc8181950052', null, null, 'c44b01947c9e6e3f', '管理员', null, '1', '管理员', 'admin', '8a8ab0b246dc81120146dc8180ba0017', null, '0');
INSERT INTO `t_s_base_user` VALUES ('8a8ab0b246dc81120146dc81819d0053', null, null, 'd47ca58189979651', '张代浩', null, '1', '普通用户', 'scott', '402880e6487e661a01487e6b504e0001', null, '0');
INSERT INTO `t_s_base_user` VALUES ('8a8ab0b246dc81120146dc8181a10054', null, null, 'f2322ec2fb9f40d1', '采购员', null, '1', '管理员', 'cgy', '8a8ab0b246dc81120146dc8180a20016', null, '1');
INSERT INTO `t_s_base_user` VALUES ('8a8ab0b246dc81120146dc8181a60055', null, null, 'a324509dc1a3089a', '采购审批员', null, '1', '管理员,888', 'cgspy', '8a8ab0b246dc81120146dc8180a20016', null, '0');
INSERT INTO `t_s_base_user` VALUES ('8a8c82a35de421ab015de4228d400003', null, null, 'a1e81ebd9408df3b', 'qinfeng', null, '1', '经理角色', 'qinfeng', '8a8ab0b246dc81120146dc8180ba0017', null, '1');


-- ----------------------------
-- Table structure for t_s_category
-- ----------------------------
DROP TABLE IF EXISTS `t_s_category`;
CREATE TABLE `t_s_category` (
  `id` varchar(36) NOT NULL COMMENT 'ID',
  `icon_id` varchar(32) DEFAULT NULL COMMENT '图标ID',
  `code` varchar(32) NOT NULL COMMENT '类型编码',
  `name` varchar(32) NOT NULL COMMENT '类型名称',
  `create_name` varchar(50) NOT NULL COMMENT '创建人名称',
  `create_by` varchar(50) NOT NULL COMMENT '创建人登录名称',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `sys_org_code` varchar(10) NOT NULL COMMENT '机构',
  `sys_company_code` varchar(10) NOT NULL COMMENT '公司',
  `PARENT_CODE` varchar(32) DEFAULT NULL COMMENT '父邮编',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_code` (`code`),
  KEY `index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类管理';

-- ----------------------------
-- Records of t_s_category
-- ----------------------------
INSERT INTO `t_s_category` VALUES ('4028ef81526266d401526271b82b001f', '8a8ab0b246dc81120146dc8180460000', 'A01', '水果分类', '管理员', 'admin', '2016-01-21 12:29:25', null, null, null, null, 'A03', 'A0', null);
INSERT INTO `t_s_category` VALUES ('4028ef81526266d401526271d2800021', '8a8ab0b246dc81120146dc8180460000', 'A02', '书籍分类', '管理员', 'admin', '2016-01-21 12:29:32', null, null, null, null, 'A03', 'A0', null);
INSERT INTO `t_s_category` VALUES ('4028ef81526266d401526271e7cf0023', '8a8ab0b246dc81120146dc8180460000', 'A03', '汽车分类', '管理员', 'admin', '2016-01-21 12:29:38', '管理员', 'admin', '2017-08-21 11:24:55', null, 'A03', 'A0', null);
INSERT INTO `t_s_category` VALUES ('4028ef81526266d4015262720ac00025', '8a8ab0b246dc81120146dc8180460000', 'A03A01', '国产汽车', '管理员', 'admin', '2016-01-21 12:29:47', null, null, null, null, 'A03', 'A0', 'A03');
INSERT INTO `t_s_category` VALUES ('4028ef81526266d401526272344f0027', '8a8ab0b246dc81120146dc8180460000', 'A03A02', '进口汽车', '管理员', 'admin', '2016-01-21 12:29:57', null, null, null, null, 'A03', 'A0', 'A03');
INSERT INTO `t_s_category` VALUES ('4028ef81526266d40152627286a10029', '8a8ab0b246dc81120146dc8180460000', 'A02A01', '外语', '管理员', 'admin', '2016-01-21 12:30:18', null, null, null, null, 'A03', 'A0', 'A02');
INSERT INTO `t_s_category` VALUES ('4028ef81526266d401526272bebe002b', '8a8ab0b246dc81120146dc8180460000', 'A02A02', '翻译', '管理员', 'admin', '2016-01-21 12:30:33', null, null, null, null, 'A03', 'A0', 'A02');
INSERT INTO `t_s_category` VALUES ('4028ef81526266d401526273140d002d', '8a8ab0b246dc81120146dc8180460000', 'A01A01', '热带水果', '管理员', 'admin', '2016-01-21 12:30:54', null, null, null, null, 'A03', 'A0', 'A01');
INSERT INTO `t_s_category` VALUES ('4028ef81526266d4015262735b9e002f', '8a8ab0b246dc81120146dc8180460000', 'A01A02', '冬天水果', '管理员', 'admin', '2016-01-21 12:31:13', null, null, null, null, 'A03', 'A0', 'A01');
INSERT INTO `t_s_category` VALUES ('4028ef81526266d401526273c01f0031', '8a8ab0b246dc81120146dc8180460000', 'A03A02A01', '凯迪拉克', '管理员', 'admin', '2016-01-21 12:31:39', null, null, null, null, 'A03', 'A0', 'A03A02');
INSERT INTO `t_s_category` VALUES ('4028ef81526266d401526273ee390033', '8a8ab0b246dc81120146dc8180460000', 'A03A02A02', '大众', '管理员', 'admin', '2016-01-21 12:31:50', null, null, null, null, 'A03', 'A0', 'A03A02');
INSERT INTO `t_s_category` VALUES ('4028ef81526266d40152627417350035', '8a8ab0b246dc81120146dc8180460000', 'A03A01A01', '红旗汽车', '管理员', 'admin', '2016-01-21 12:32:01', null, null, null, null, 'A03', 'A0', 'A03A01');

-- ----------------------------
-- Table structure for t_s_data_log
-- ----------------------------
DROP TABLE IF EXISTS `t_s_data_log`;
CREATE TABLE `t_s_data_log` (
  `id` varchar(36) NOT NULL COMMENT 'id',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '所属公司',
  `table_name` varchar(32) DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) DEFAULT NULL COMMENT '数据ID',
  `data_content` text COMMENT '数据内容',
  `version_number` int(11) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`),
  KEY `sindex` (`table_name`,`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_data_log
-- ----------------------------
INSERT INTO `t_s_data_log` VALUES ('402880f05ab0d198015ab12274bf0006', '管理员', 'admin', '2017-03-09 11:35:09', null, null, null, 'A03', 'A03', 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Jun 23, 2016 12:00:00 PM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"9001\",\"status\":\"1\",\"content\":\"111\",\"id\":\"4028ef81550c1a7901550c1cd6e70001\"}', '3');
INSERT INTO `t_s_data_log` VALUES ('402880f05ab6d12b015ab700bead0009', '管理员', 'admin', '2017-03-10 14:56:03', null, null, null, 'A03', 'A03', 'jeecg_demo', '402880f05ab6d12b015ab700be8d0008', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 10, 2017 2:56:03 PM\",\"sex\":\"0\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"111\",\"status\":\"0\",\"id\":\"402880f05ab6d12b015ab700be8d0008\"}', '1');
INSERT INTO `t_s_data_log` VALUES ('402880f05ab6d12b015ab705a23f000d', '管理员', 'admin', '2017-03-10 15:01:24', null, null, null, 'A03', 'A03', 'jeecg_demo', '402880f05ab6d12b015ab705a233000c', '{\"mobilePhone\":\"\",\"officePhone\":\"11\",\"email\":\"\",\"createDate\":\"Mar 10, 2017 3:01:24 PM\",\"sex\":\"0\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"11\",\"status\":\"0\",\"id\":\"402880f05ab6d12b015ab705a233000c\"}', '1');
INSERT INTO `t_s_data_log` VALUES ('402880f05ab6d12b015ab712a6420013', '管理员', 'admin', '2017-03-10 15:15:37', null, null, null, 'A03', 'A03', 'jeecg_demo', '402880f05ab6d12b015ab712a6360012', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 10, 2017 3:15:37 PM\",\"sex\":\"0\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"小王\",\"status\":\"0\",\"id\":\"402880f05ab6d12b015ab712a6360012\"}', '1');
INSERT INTO `t_s_data_log` VALUES ('402880f05ab6d12b015ab712d0510015', '管理员', 'admin', '2017-03-10 15:15:47', null, null, null, 'A03', 'A03', 'jeecg_demo', '402880f05ab6d12b015ab712a6360012', '{\"mobilePhone\":\"18611788525\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 10, 2017 3:15:37 AM\",\"sex\":\"0\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"小王\",\"status\":\"0\",\"id\":\"402880f05ab6d12b015ab712a6360012\"}', '2');
INSERT INTO `t_s_data_log` VALUES ('402880f05ab6d12b015ab71308240018', '管理员', 'admin', '2017-03-10 15:16:02', null, null, null, 'A03', 'A03', 'jeecg_demo', '8a8ab0b246dc81120146dc81860f016f', '{\"mobilePhone\":\"13111111111\",\"officePhone\":\"66666666\",\"email\":\"demo@jeecg.com\",\"age\":12,\"salary\":10.00,\"birthday\":\"Feb 14, 2014 12:00:00 AM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"小明\",\"status\":\"\",\"content\":\"\",\"id\":\"8a8ab0b246dc81120146dc81860f016f\"}', '1');
INSERT INTO `t_s_data_log` VALUES ('402880f05ab6d12b015ab72806c3001b', '管理员', 'admin', '2017-03-10 15:38:58', null, null, null, 'A03', 'A03', 'jeecg_demo', '8a8ab0b246dc81120146dc81860f016f', '{\"mobilePhone\":\"18611788888\",\"officePhone\":\"66666666\",\"email\":\"demo@jeecg.com\",\"age\":12,\"salary\":10.00,\"birthday\":\"Feb 14, 2014 12:00:00 AM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"小明\",\"status\":\"\",\"content\":\"\",\"id\":\"8a8ab0b246dc81120146dc81860f016f\"}', '2');
INSERT INTO `t_s_data_log` VALUES ('4028ef815318148a0153181567690001', '管理员', 'admin', '2016-02-25 18:59:29', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef815318148a0153181566270000', '{\"mobilePhone\":\"13423423423\",\"officePhone\":\"1\",\"email\":\"\",\"age\":1,\"salary\":1,\"birthday\":\"Feb 25, 2016 12:00:00 AM\",\"createDate\":\"Feb 25, 2016 6:59:24 PM\",\"depId\":\"402880e447e9a9570147e9b6a3be0005\",\"userName\":\"1\",\"status\":\"0\",\"id\":\"4028ef815318148a0153181566270000\"}', '1');
INSERT INTO `t_s_data_log` VALUES ('4028ef815318148a01531815ec5c0003', '管理员', 'admin', '2016-02-25 19:00:03', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef815318148a0153181566270000', '{\"mobilePhone\":\"13426498659\",\"officePhone\":\"1\",\"email\":\"\",\"age\":1,\"salary\":1.00,\"birthday\":\"Feb 25, 2016 12:00:00 AM\",\"createDate\":\"Feb 25, 2016 6:59:24 AM\",\"depId\":\"402880e447e9a9570147e9b6a3be0005\",\"userName\":\"1\",\"status\":\"0\",\"id\":\"4028ef815318148a0153181566270000\"}', '2');
INSERT INTO `t_s_data_log` VALUES ('4028ef8153c028db0153c0502e6b0003', '管理员', 'admin', '2016-03-29 10:59:53', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{\"mobilePhone\":\"18455477548\",\"officePhone\":\"123\",\"email\":\"\",\"createDate\":\"Mar 29, 2016 10:59:53 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"123\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0502d420002\"}', '1');
INSERT INTO `t_s_data_log` VALUES ('4028ef8153c028db0153c0509aa40006', '管理员', 'admin', '2016-03-29 11:00:21', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 29, 2016 11:00:21 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"22\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0509a3e0005\"}', '1');
INSERT INTO `t_s_data_log` VALUES ('4028ef8153c028db0153c051c4a70008', '管理员', 'admin', '2016-03-29 11:01:37', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 29, 2016 11:00:21 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"22\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0509a3e0005\"}', '2');
INSERT INTO `t_s_data_log` VALUES ('4028ef8153c028db0153c051d4b5000a', '管理员', 'admin', '2016-03-29 11:01:41', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"123\",\"email\":\"\",\"createDate\":\"Mar 29, 2016 10:59:53 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"123\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0502d420002\"}', '2');
INSERT INTO `t_s_data_log` VALUES ('4028ef8153c028db0153c07033d8000d', '管理员', 'admin', '2016-03-29 11:34:52', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"123\",\"email\":\"\",\"age\":23,\"createDate\":\"Mar 29, 2016 10:59:53 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"123\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0502d420002\"}', '3');
INSERT INTO `t_s_data_log` VALUES ('4028ef8153c028db0153c070492e000f', '管理员', 'admin', '2016-03-29 11:34:57', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"\",\"email\":\"\",\"age\":22,\"createDate\":\"Mar 29, 2016 11:00:21 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"22\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0509a3e0005\"}', '3');
INSERT INTO `t_s_data_log` VALUES ('4028ef81550c1a7901550c1cd7850002', '管理员', 'admin', '2016-06-01 21:17:44', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Jun 1, 2016 9:17:44 PM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"121221\",\"status\":\"0\",\"id\":\"4028ef81550c1a7901550c1cd6e70001\"}', '1');
INSERT INTO `t_s_data_log` VALUES ('4028ef81568c31ec01568c3307080004', '管理员', 'admin', '2016-08-15 11:16:09', null, null, null, 'A03', 'A01', 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Jun 23, 2016 12:00:00 PM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"9001\",\"status\":\"1\",\"content\":\"111\",\"id\":\"4028ef81550c1a7901550c1cd6e70001\"}', '2');

-- ----------------------------
-- Table structure for t_s_data_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_s_data_rule`;
CREATE TABLE `t_s_data_rule` (
  `id` varchar(96) DEFAULT NULL COMMENT 'ID',
  `rule_name` varchar(96) DEFAULT NULL COMMENT '数据权限规则名称',
  `rule_column` varchar(300) DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(300) DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) DEFAULT NULL COMMENT '规则值',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(96) DEFAULT NULL,
  `create_name` varchar(96) DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(96) DEFAULT NULL COMMENT '修改人',
  `update_name` varchar(96) DEFAULT NULL COMMENT '修改人名字',
  `functionId` varchar(96) DEFAULT NULL COMMENT '菜单ID',
  KEY `index_fucntionid` (`functionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_data_rule
-- ----------------------------
INSERT INTO `t_s_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', '小于', 'test', '<=', '11', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null, null);
INSERT INTO `t_s_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', '小于', 'test', '<=', '11', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null, null);
INSERT INTO `t_s_data_rule` VALUES ('402889fe47fcb29c0147fcb6b6220001', '12', '12', '>', '12', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null, '8a8ab0b246dc81120146dc8180fe002b');
INSERT INTO `t_s_data_rule` VALUES ('402889fb486e848101486e913cd6000b', 'userName', 'userName', '=', 'admin', '2014-09-13 18:31:25', 'admin', '管理员', null, null, null, '402889fb486e848101486e8e2e8b0007');
INSERT INTO `t_s_data_rule` VALUES ('402889fb486e848101486e98d20d0016', 'title', 'title', '=', '12', null, null, null, '2014-09-13 22:18:22', 'scott', '张代浩', '402889fb486e848101486e93a7c80014');
INSERT INTO `t_s_data_rule` VALUES ('402880e6487e661a01487e732c020005', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '2014-09-16 20:32:30', 'admin', '管理员', null, null, null, '402889fb486e848101486e93a7c80014');
INSERT INTO `t_s_data_rule` VALUES ('402880e6487e661a01487e8153ee0007', 'create_by', 'create_by', '', '#{SYS_USER_CODE}', '2014-09-16 20:47:57', 'admin', '管理员', null, null, null, '402889fb486e848101486e93a7c80014');
INSERT INTO `t_s_data_rule` VALUES ('4028ef815595a881015595b0ccb60001', '限只能看自己', 'create_by', '=', '#{sys_user_code}', null, null, null, '2017-08-14 15:03:56', 'demo', 'demo', '40288088481d019401481d2fcebf000d');
INSERT INTO `t_s_data_rule` VALUES ('4028ef81574ae99701574aed26530005', '用户名', 'userName', '!=', 'admin', '2016-09-21 12:07:18', 'admin', '管理员', null, null, null, '4028ef81574ae99701574aeb97bd0003');
INSERT INTO `t_s_data_rule` VALUES ('402881875b19f141015b19f8125e0014', '可看下属业务数据', 'sys_org_code', 'LIKE', '#{sys_org_code}', null, null, null, '2017-08-14 15:04:32', 'demo', 'demo', '40288088481d019401481d2fcebf000d');
INSERT INTO `t_s_data_rule` VALUES ('402880f25b1e2ac7015b1e5fdebc0012', '只能看自己数据', 'create_by', '=', '#{sys_user_code}', '2017-03-30 16:40:51', 'admin', '管理员', null, null, null, '402880f25b1e2ac7015b1e5cdc340010');
INSERT INTO `t_s_data_rule` VALUES ('4028ab775dca0d1b015dca4183530018', '表名限制', 'isDbSynch', '=', 'Y', null, null, null, '2017-08-14 16:43:45', 'demo', 'demo', '4028ab775dca0d1b015dca3fccb60016');
INSERT INTO `t_s_data_rule` VALUES ('402880ec5ddec439015ddf9225060038', '复杂关系', '', 'USE_SQL_RULES', 'name like \'%张%\' or age > 10', null, null, null, '2017-08-14 15:10:25', 'demo', 'demo', '40288088481d019401481d2fcebf000d');
INSERT INTO `t_s_data_rule` VALUES ('402880ec5ddfdd26015ddfe3e0570011', '复杂sql配置', '', 'USE_SQL_RULES', 'table_name like \'%test%\' or is_tree = \'Y\'', null, null, null, '2017-08-14 16:38:55', 'demo', 'demo', '4028ab775dca0d1b015dca3fccb60016');
INSERT INTO `t_s_data_rule` VALUES ('40283181614231d401614234fe670003', 'createBy', 'createBy', '=', '#{sys_user_code}', '2018-01-29 21:57:04', 'admin', '管理员', null, null, null, '40283181614231d401614232cd1c0001');
INSERT INTO `t_s_data_rule` VALUES ('4028318161424e730161424fca6f0004', 'createBy', 'createBy', '=', '#{sys_user_code}', '2018-01-29 22:26:20', 'admin', '管理员', null, null, null, '4028318161424e730161424f61510002');

-- ----------------------------
-- Table structure for t_s_data_source
-- ----------------------------
DROP TABLE IF EXISTS `t_s_data_source`;
CREATE TABLE `t_s_data_source` (
  `id` varchar(36) NOT NULL COMMENT 'ID',
  `db_key` varchar(50) NOT NULL COMMENT '多数据源KEY',
  `description` varchar(50) NOT NULL COMMENT '描述',
  `driver_class` varchar(50) NOT NULL COMMENT '驱动class',
  `url` varchar(200) NOT NULL COMMENT 'db链接',
  `db_user` varchar(50) NOT NULL COMMENT '用户名',
  `db_password` varchar(50) DEFAULT NULL COMMENT '密码',
  `db_type` varchar(50) DEFAULT NULL COMMENT '数据库类型',
  `db_name` varchar(50) DEFAULT NULL COMMENT '数据源名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_data_source
-- ----------------------------
INSERT INTO `t_s_data_source` VALUES ('402880e74e064fc5014e0652f72b0001', 'jeewx-yunying', '微信运营数据库', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost:3306/jeewx-yunying?useUnicode=true&characterEncoding=UTF-8', 'root', 'ea3d519525358e00', 'mysql', 'jeewx-yunying');
INSERT INTO `t_s_data_source` VALUES ('8a8aada9486347c001486401180a0003', 'SAP_DB', 'sap db', 'oracle.jdbc.driver.OracleDriver', 'jdbc:oracle:thin:@127.0.0.1:1521:oral', 'db_user', '87428f0d9ae4c511', 'oracle', 'orcl');

-- ----------------------------
-- Table structure for t_s_depart
-- ----------------------------
DROP TABLE IF EXISTS `t_s_depart`;
CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `departname` varchar(100) NOT NULL COMMENT '部门名称',
  `description` longtext COMMENT '描述',
  `parentdepartid` varchar(32) DEFAULT NULL COMMENT '父部门ID',
  `org_code` varchar(64) DEFAULT NULL COMMENT '机构编码',
  `org_type` varchar(1) DEFAULT NULL COMMENT '机构类型',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `depart_order` varchar(5) DEFAULT '0' COMMENT '排序',
  `departname_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `departname_abbr` varchar(500) DEFAULT NULL COMMENT '缩写',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人账号',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人账号',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '数据所属公司',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '数据所属部门',
  PRIMARY KEY (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`),
  KEY `index_org_code` (`org_code`),
  KEY `index_org_type` (`org_type`),
  KEY `index_depart_order` (`depart_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_depart
-- ----------------------------
INSERT INTO `t_s_depart` VALUES ('402880e447e99cf10147e9a03b320003', '北京国炬软件', '', null, 'A01', '1', '', '', '', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_s_depart` VALUES ('402880e447e9a9570147e9b677320003', '软件信息部', '', '402880e447e99cf10147e9a03b320003', 'A01A01', '2', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_s_depart` VALUES ('402880e447e9a9570147e9b6a3be0005', '销售部门', '', '402880e447e99cf10147e9a03b320003', 'A01A02', '2', null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_s_depart` VALUES ('402880e447e9a9570147e9b710d20007', '人力资源部', '', '402880e447e99cf10147e9a03b320003', 'A01A03', '2', '', '', '', null, null, null, null, null, null, null, '管理员', 'admin', '2018-02-22 17:17:30', null, null);
INSERT INTO `t_s_depart` VALUES ('402880e447e9a9570147e9b762e30009', '销售经理', '', '402880e447e9a9570147e9b6a3be0005', 'A01A02A01', '2', '', '', '', null, null, null, null, null, null, null, '管理员', 'admin', '2018-06-11 17:17:28', null, null);
INSERT INTO `t_s_depart` VALUES ('402880e447e9ba550147e9c53b2e0013', '财务', '', '8a8ab0b246dc81120146dc8180ba0017', 'A03A02', '2', null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_s_depart` VALUES ('402880e6487e661a01487e6b504e0001', '销售人员', '销售人员', '402880e447e9a9570147e9b762e30009', 'A01A02A01A01', '2', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_s_depart` VALUES ('402880f15986303c0159864816180002', '部门经理', '', '8a8ab0b246dc81120146dc8180a20016', 'A02A01', '2', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_s_depart` VALUES ('8a8ab0b246dc81120146dc8180a20016', '中国人寿总公司', '1111', null, 'A02', '1', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_s_depart` VALUES ('8a8ab0b246dc81120146dc8180ba0017', 'JEECG开源社区', '', null, 'A03', '1', '', '', '', '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_s_depart` VALUES ('8a8ab0b246dc81120146dc8180bd0018', '软件开发部', '研发技术难题', '8a8ab0b246dc81120146dc8180ba0017', 'A03A01', '2', null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_s_dict_table_config
-- ----------------------------
DROP TABLE IF EXISTS `t_s_dict_table_config`;
CREATE TABLE `t_s_dict_table_config` (
  `id` varchar(36) NOT NULL,
  `table_name` varchar(100) DEFAULT NULL COMMENT '表名',
  `value_col` varchar(50) DEFAULT NULL COMMENT '值字段名',
  `text_col` varchar(50) DEFAULT NULL COMMENT '文本字段名',
  `dict_condition` varchar(255) DEFAULT NULL COMMENT '字典表查询条件',
  `isvalid` varchar(32) DEFAULT NULL COMMENT '是否启用',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_tablename_valuecol_textcol` (`table_name`,`value_col`,`text_col`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表授权配置';

-- ----------------------------
-- Records of t_s_dict_table_config
-- ----------------------------

-- ----------------------------
-- Table structure for t_s_document
-- ----------------------------
DROP TABLE IF EXISTS `t_s_document`;
CREATE TABLE `t_s_document` (
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) DEFAULT NULL,
  `documentstate` smallint(6) DEFAULT NULL,
  `documenttitle` varchar(100) DEFAULT NULL,
  `pictureindex` blob,
  `showhome` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_document
-- ----------------------------
INSERT INTO `t_s_document` VALUES ('402881f364161a320164161b6d970001', '8a8ab0b246dc81120146dc8181fa0062', null, '3333', null, null);
INSERT INTO `t_s_document` VALUES ('402881f364161a320164161c8dc50007', '8a8ab0b246dc81120146dc8181fa0062', null, '2222', null, null);
INSERT INTO `t_s_document` VALUES ('402881f3641622190164162519950008', '8a8ab0b246dc81120146dc8181fa0062', null, '4443', null, null);


-- ----------------------------
-- Table structure for t_s_function
-- ----------------------------
DROP TABLE IF EXISTS `t_s_function`;
CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `functioniframe` smallint(6) DEFAULT NULL COMMENT '菜单地址打开方式',
  `functionlevel` smallint(6) DEFAULT NULL COMMENT '菜单等级',
  `functionname` varchar(50) NOT NULL COMMENT '菜单名字',
  `functionorder` varchar(255) DEFAULT NULL COMMENT '排序',
  `functionurl` varchar(500) DEFAULT NULL COMMENT 'URL',
  `parentfunctionid` varchar(32) DEFAULT NULL COMMENT '父菜单ID',
  `iconid` varchar(32) DEFAULT NULL COMMENT '图标ID',
  `desk_iconid` varchar(32) DEFAULT NULL COMMENT '桌面图标ID',
  `functiontype` smallint(6) DEFAULT NULL COMMENT '菜单类型',
  `function_icon_style` varchar(255) DEFAULT NULL COMMENT 'ace图标样式',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_name` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  KEY `FK_gbdacaoju6d5u53rp4jo4rbs9` (`desk_iconid`),
  KEY `index_url` (`functionurl`(255)),
  KEY `index_functiontype` (`functiontype`),
  KEY `index_functionorder` (`functionorder`),
  KEY `index_group_url_type` (`functionurl`(255),`functiontype`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_gbdacaoju6d5u53rp4jo4rbs9` FOREIGN KEY (`desk_iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_function
-- ----------------------------
INSERT INTO `t_s_function` VALUES ('297e7ae15de05304015de07b35de0001', null, '1', '可排序多选', '16', 'jeecgFormDemoController.do?selectSort', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-upload', 'admin', '管理员', null, null, '2017-08-14 19:22:37', null);
INSERT INTO `t_s_function` VALUES ('297e7ae15e7e8929015e7e9bb4910002', null, '1', '高级查询一', '18', 'jeecgListDemoController.do?querysBuilder', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-filter', 'admin', '管理员', 'admin', '2018-05-06 15:35:30', '2017-09-14 12:18:07', '管理员');
INSERT INTO `t_s_function` VALUES ('297e7ae15e84b2cd015e84b4a1a00001', null, '1', '高级查询二', '18', 'jeecgListDemoController.do?goFormQuerysBuilder', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-filter', 'admin', '管理员', 'admin', '2018-05-06 15:35:39', '2017-09-15 16:43:04', '管理员');
INSERT INTO `t_s_function` VALUES ('297e7ae15e84b2cd015e84b4a1a00451', null, '1', '上下布局表单一', '19', 'jformOrderMainController.do?list', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-facebook-official', 'admin', '管理员', 'admin', '2018-05-06 15:39:14', '2017-09-15 16:43:04', '管理员');
INSERT INTO `t_s_function` VALUES ('297e7ae160909a6f016090a05e590003', null, '2', '部门管理员设置', '11', 'departAuthGroupController.do?list', '402881f4609299ad0160929ab2e00001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2017-12-26 19:35:19', '2017-12-26 10:21:57', '管理员');
INSERT INTO `t_s_function` VALUES ('297e7ae160909a6f016090a0d3c80005', null, '2', '部门角色管理', '12', 'departAuthGroupController.do?departRoleAuth', '402881f4609299ad0160929ab2e00001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2017-12-26 19:35:31', '2017-12-26 10:22:27', '管理员');
INSERT INTO `t_s_function` VALUES ('297e7ae160909a6f016090a112a50007', null, '2', '部门用户角色授权', '13', 'departAuthGroupController.do?departAuthGroupAuthorizeSet', '402881f4609299ad0160929ab2e00001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2017-12-26 19:35:42', '2017-12-26 10:22:43', '管理员');
INSERT INTO `t_s_function` VALUES ('297e7ae160baa7ec0160baa977980001', null, '1', '我的组织机构', '3', 'organzationController.do?myDepart', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-01-16 17:19:27', '2018-01-03 14:15:57', '管理员');
INSERT INTO `t_s_function` VALUES ('297e7ae1612b322b01612b56abc00002', null, '2', 'Echarts报表', '1', 'jeecgListDemoController.do?echartDemo', '4028810061f41d790161f4e293140015', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-pencil-square', 'admin', '管理员', 'admin', '2018-05-06 16:55:59', '2018-01-25 11:22:36', '管理员');
INSERT INTO `t_s_function` VALUES ('297e7ae162b925a20162b9271b300001', null, '1', 'BootstrapTable', '30', 'jeecgListDemoController.do?bootTableDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-code', 'admin', '管理员', 'admin', '2018-05-06 15:30:55', '2018-04-12 17:19:31', '管理员');
INSERT INTO `t_s_function` VALUES ('297edb626033bbcb016033fd0a190001', null, '1', '高级组合查询', '6', 'superQueryMainController.do?list', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-05-18 18:37:29', '2017-12-08 10:38:29', '管理员');
INSERT INTO `t_s_function` VALUES ('2c90ac564c9d1734014c9d6f4e370024', null, '1', 'menu.graph.configuration', '4', 'jformGraphreportHeadController.do?jformGraphreportHead', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('40283181614231d401614232cd1c0001', null, '1', '移动报表数据权限', '9', 'cgDynamGraphConfigHeadController.do?datagrid', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', 'admin', '2018-05-23 23:31:28', '2018-01-29 21:54:41', '管理员');
INSERT INTO `t_s_function` VALUES ('4028318161424e730161424f61510002', null, '1', '在线报表权限', '10', 'jformGraphreportHeadController.do?datagrid', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', 'admin', '2018-05-23 23:31:41', '2018-01-29 22:25:54', '管理员');
INSERT INTO `t_s_function` VALUES ('40284a815b48b411015b48b56fd80001', null, '1', '动态tab设计', '24', 'jeecgFormDemoController.do?ueditor', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-code', null, null, 'admin', '2018-06-01 12:12:13', null, '管理员');
INSERT INTO `t_s_function` VALUES ('40284a815bb75d7b015bb7607ba00001', null, '1', '电子签章', '25', 'jeecgFormDemoController.do?eSign', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-empire', 'admin', '管理员', 'admin', '2017-11-14 11:32:52', '2017-04-29 09:43:25', '管理员');
INSERT INTO `t_s_function` VALUES ('40284a815c1bac76015c1bc02abe0003', null, '1', '黑名单管理', '9', 'tsBlackListController.do?list', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2018-05-06 17:02:49', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402860816329336901632a527c4d0028', null, '1', 'Bootstrap标签列表', '31', 'jeecgListDemoController.do?bootstrapTableTagDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tags', 'admin', '管理员', 'admin', '2018-06-01 12:18:48', '2018-05-04 16:43:58', '管理员');
INSERT INTO `t_s_function` VALUES ('402860816361f06a016361f1be0d0001', null, '1', 'Bootstrap标签列表2', '32', 'jeecgListDemoController.do?bootstrapTableTagDemo2', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-life-ring', 'admin', '管理员', 'admin', '2018-06-01 12:19:03', '2018-05-15 11:57:02', '管理员');
INSERT INTO `t_s_function` VALUES ('40286081648332f8016483352acf0001', null, '1', '字典表授权配置', '7', 'tSDictTableConfigController.do?list', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-07-10 16:01:17', '2018-07-10 16:00:57', '管理员');
INSERT INTO `t_s_function` VALUES ('40287d81522a428401522a44aafb0002', null, '1', 'Online移动图表', '5', 'cgDynamGraphConfigHeadController.do?cgDynamGraphConfigHead', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, 'admin', '2016-03-15 12:34:36', null, '管理员');
INSERT INTO `t_s_function` VALUES ('40288018605416db0160542132600001', null, '1', '高级查询三', '18', 'jfromOrderController.do?list', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-filter', 'admin', '管理员', 'admin', '2018-05-06 15:35:49', '2017-12-14 16:25:50', '管理员');
INSERT INTO `t_s_function` VALUES ('40288088481d019401481d2fcebf000d', null, '1', 'minidao数据权限列表', '1', 'jeecgListDemoController.do?minidaoDatagrid', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '1', '', null, null, 'admin', '2017-08-14 15:03:03', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028808848845c0f01488461226e0001', null, '0', '消息中间件', '8', '', null, '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-commenting', null, null, 'admin', '2016-01-14 11:20:51', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028808848845c0f01488461b3ac0004', null, '1', 'menu.business.management', '1', 'tSSmsSqlController.do?tSSmsSql', '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2017-03-14 16:47:13', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028808848845c0f01488462658f0006', null, '1', 'menu.message.template', '2', 'tSSmsTemplateController.do?tSSmsTemplate', '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('4028808848845c0f01488463aa210009', null, '1', 'menu.Business.configuration', '3', 'tSSmsTemplateSqlController.do?tSSmsTemplateSql', '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('4028808848845c0f014884649488000c', null, '1', 'menu.send.message', '0', 'tSSmsController.do?tSSms', '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('402880e448a28b750148a290c0e50001', null, '1', '分类字典', '6', 'categoryController.do?category', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2018-06-01 17:05:15', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402880e74d76e784014d76f5505a0012', null, '0', '在线演示', '11', '', null, '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-cloud', null, null, 'admin', '2018-06-01 12:21:52', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402880e74d76e784014d76f5cc2e0014', null, '1', '请假列表', '1', 'cgAutoListController.do?list&id=jform_leave', '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, 'admin', '2016-03-15 12:30:36', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402880e74d76e784014d76fa7e970024', null, '2', '数据报表', '22', 'cgReportController.do?list&id=user_msg', '4028810061f41d790161f4e293140015', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-pencil-square', null, null, 'admin', '2018-05-06 16:56:33', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402880e74d76e784014d76fd1bd60030', null, '2', '图形报表', '23', 'graphReportController.do?list&isIframe&id=yhcztj', '4028810061f41d790161f4e293140015', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-pencil-square', null, null, 'admin', '2018-05-06 16:56:50', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402880e95e07dd00015e07e93bb60001', null, '1', '左右树布局', '10', 'jeecgFormDemoController.do?ztreeDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tree', 'admin', '管理员', 'admin', '2018-05-06 15:12:01', '2017-08-22 11:07:59', '管理员');
INSERT INTO `t_s_function` VALUES ('402880ea53303a060153304a9ad50001', null, '1', '系统公告', '7', 'noticeController.do?tSNotice', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2018-05-06 17:03:05', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402880ec5cc40078015cc43430e80061', null, '0', 'Online开发权限', '101', '', null, '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', 'admin', '2017-06-20 14:32:59', '2017-06-20 14:32:53', '管理员');
INSERT INTO `t_s_function` VALUES ('402880ec5cc40078015cc4348d1d0064', null, '1', 'online导入表单权限', '1', 'cgformTransController.do?trans', '402880ec5cc40078015cc43430e80061', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', null, null, '2017-06-20 14:33:17', null);
INSERT INTO `t_s_function` VALUES ('402880ec5cc40078015cc435a0a40077', null, '1', 'online表单删除权限', '2', 'cgFormHeadController.do?del', '402880ec5cc40078015cc43430e80061', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', null, null, '2017-06-20 14:34:27', null);
INSERT INTO `t_s_function` VALUES ('402880ec5cc40078015cc43685d60079', null, '1', 'online导入表单权限', '3', 'cgformSqlController.do?toCgformMigrate', '402880ec5cc40078015cc43430e80061', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', null, null, '2017-06-20 14:35:26', null);
INSERT INTO `t_s_function` VALUES ('402880ec5cc40078015cc437afc3007b', null, '1', 'online sql增强权限', '4', 'cgformButtonSqlController.do?addorupdate', '402880ec5cc40078015cc43430e80061', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', null, null, '2017-06-20 14:36:42', null);
INSERT INTO `t_s_function` VALUES ('402880ec5cc40078015cc453ef9600a7', null, '1', 'online代码生成', '5', 'generateController.do?gogenerate', '402880ec5cc40078015cc43430e80061', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', null, null, '2017-06-20 15:07:34', null);
INSERT INTO `t_s_function` VALUES ('402880f25a980e2a015a981dc8de0005', null, '1', '请假自定义表单', '3', 'autoFormController/af/employee_leave_form/goViewPage.do', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', null, null, 'admin', '2017-03-29 16:18:26', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402880f25a9833f5015a9843218f000c', null, '1', '自定义表单查看', '4', 'autoFormController/af/order_form/goUpdatePage.do', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', null, null, 'admin', '2017-03-29 16:18:48', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402880f25b1d5a3a015b1d772c2b0013', null, '1', '请假单编辑页面', '2', 'cgFormBuildController/ftlForm/jform_leave/goUpdate.do', '402881855ab8c48a015ab8d133050018', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', 'admin', '2017-03-30 12:45:23', '2017-03-30 12:26:41', '管理员');
INSERT INTO `t_s_function` VALUES ('402880f25b1e2ac7015b1e5cdc340010', null, '2', 'online请假加载数据请求', '3', 'cgAutoListController.do?datagrid&configId=jform_leave', '402881855ab8c48a015ab8d133050018', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', null, null, '2017-03-30 16:37:33', null);
INSERT INTO `t_s_function` VALUES ('402880f25b23a635015b23a992f10003', null, '1', 'ol订单编辑页面', '4', 'cgFormBuildController/ftlForm/jform_order_main/goUpdate.do', '402881855ab8c48a015ab8d133050018', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', null, null, 'admin', '2017-03-31 17:27:46', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061e5f4680161e5f60ac70001', null, '1', '仪表图', '5', 'jeecgListDemoController.do?InstrumentDiagram', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-03-02 17:07:57', '2018-03-02 17:06:02', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061e634380161e635df420001', null, '1', '日程图', '4', 'jeecgListDemoController.do?Schedule', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-06-01 12:26:43', '2018-03-02 18:15:45', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061e642f90161e64423280001', null, '1', '柱状图', '7', '', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-bar-chart-o', 'admin', '管理员', 'admin', '2018-03-05 10:59:09', '2018-03-02 18:31:20', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061e642f90161e646299b0007', null, '2', '示例一', '1', 'jeecgListDemoController.do?BarGraph1', '4028810061e642f90161e64423280001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-02 18:33:33', null);
INSERT INTO `t_s_function` VALUES ('4028810061e642f90161e646cf6d0009', null, '2', '示例二', '2', 'jeecgListDemoController.do?BarGraph2', '4028810061e642f90161e64423280001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-02 18:34:15', null);
INSERT INTO `t_s_function` VALUES ('4028810061e642f90161e6472d80000b', null, '2', '示例三', '3', 'jeecgListDemoController.do?BarGraph3', '4028810061e642f90161e64423280001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-05-06 16:54:27', '2018-03-02 18:34:39', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061e642f90161e647ac07000d', null, '2', '示例四', '4', 'jeecgListDemoController.do?BarGraph4', '4028810061e642f90161e64423280001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-02 18:35:12', null);
INSERT INTO `t_s_function` VALUES ('4028810061e642f90161e64823e9000f', null, '1', '漏斗图', '8', '', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-hourglass-start', 'admin', '管理员', 'admin', '2018-03-05 10:59:26', '2018-03-02 18:35:42', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061e642f90161e648ba7f0011', null, '2', '示例一', '1', 'jeecgListDemoController.do?funnelPlot1', '4028810061e642f90161e64823e9000f', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-02 18:36:21', null);
INSERT INTO `t_s_function` VALUES ('4028810061e642f90161e6496fc50013', null, '2', '示例二', '2', 'jeecgListDemoController.do?funnelPlot2', '4028810061e642f90161e64823e9000f', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-02 18:37:07', null);
INSERT INTO `t_s_function` VALUES ('4028810061e65b1c0161e65c0aa30001', null, '1', '饼图', '10', '', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-pie-chart', 'admin', '管理员', 'admin', '2018-03-05 11:00:11', '2018-03-02 18:57:27', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061e65b1c0161e65d04920003', null, '2', '示例一', '1', 'jeecgListDemoController.do?PieChart1', '4028810061e65b1c0161e65c0aa30001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-02 18:58:31', null);
INSERT INTO `t_s_function` VALUES ('4028810061e65b1c0161e65d64db0005', null, '2', '示例二', '2', 'jeecgListDemoController.do?PieChart2', '4028810061e65b1c0161e65c0aa30001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-02 18:58:55', null);
INSERT INTO `t_s_function` VALUES ('4028810061f3d1b70161f41676110001', null, '1', '折线图', '9', '', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-line-chart', 'admin', '管理员', null, null, '2018-03-05 10:56:08', null);
INSERT INTO `t_s_function` VALUES ('4028810061f3d1b70161f417147a0003', null, '2', '示例一', '1', 'jeecgListDemoController.do?lineChart1', '4028810061f3d1b70161f41676110001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-05 10:56:48', null);
INSERT INTO `t_s_function` VALUES ('4028810061f3d1b70161f4176b780005', null, '2', '示例二', '2', 'jeecgListDemoController.do?lineChart2', '4028810061f3d1b70161f41676110001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-05 10:57:11', null);
INSERT INTO `t_s_function` VALUES ('4028810061f3d1b70161f417b8d60007', null, '2', '示例三', '3', 'jeecgListDemoController.do?lineChart3', '4028810061f3d1b70161f41676110001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-05 10:57:30', null);
INSERT INTO `t_s_function` VALUES ('4028810061f3d1b70161f417de080009', null, '2', '示例四', '4', 'jeecgListDemoController.do?lineChart4', '4028810061f3d1b70161f41676110001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-03-05 10:57:58', '2018-03-05 10:57:40', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061f3d1b70161f4186787000c', null, '2', '示例五', '5', 'jeecgListDemoController.do?lineChart5', '4028810061f3d1b70161f41676110001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-05 10:58:15', null);
INSERT INTO `t_s_function` VALUES ('4028810061f41d790161f41ed05f0001', null, '1', '点状图', '11', '', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-area-chart', 'admin', '管理员', 'admin', '2018-03-05 11:05:26', '2018-03-05 11:05:15', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061f41d790161f42018990004', null, '2', '示例一', '1', 'jeecgListDemoController.do?PointChart1', '4028810061f41d790161f41ed05f0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-03-05 11:07:00', '2018-03-05 11:06:39', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061f41d790161f420c3340007', null, '2', '示例二', '2', 'jeecgListDemoController.do?PointChart2', '4028810061f41d790161f41ed05f0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-05 11:07:23', null);
INSERT INTO `t_s_function` VALUES ('4028810061f41d790161f42104c90009', null, '2', '示例三', '3', 'jeecgListDemoController.do?PointChart3', '4028810061f41d790161f41ed05f0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-03-05 11:07:40', null);
INSERT INTO `t_s_function` VALUES ('4028810061f41d790161f4221297000b', null, '1', '矩形图', '1', 'jeecgListDemoController.do?RectangularGraph', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-05-06 16:52:29', '2018-03-05 11:08:49', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061f41d790161f4e293140015', null, '1', '其他', '13', '', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-align-justify', 'admin', '管理员', 'admin', '2018-03-05 15:15:03', '2018-03-05 14:39:04', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061f41d790161f4e374890018', null, '2', '示例六', '6', 'jeecgListDemoController.do?other1', '4028810061f3d1b70161f41676110001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-05-06 16:52:10', '2018-03-05 14:40:02', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810061f41d790161f4e3e901001a', null, '2', '综合报表', '2', 'jeecgListDemoController.do?TotalReport', '4028810061f41d790161f4e293140015', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-pencil-square', 'admin', '管理员', 'admin', '2018-05-06 16:57:36', '2018-03-05 14:40:32', '管理员');
INSERT INTO `t_s_function` VALUES ('40288102653ced6601653cee431c0001', null, '1', '面板拖拽', '37', 'jeecgListDemoController.do?goDraggablePanels', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-clone', 'admin', '管理员', 'admin', '2018-08-15 18:17:15', '2018-08-15 17:32:52', '管理员');
INSERT INTO `t_s_function` VALUES ('4028810a64e8d94d0164e9033a580005', null, '1', '单据打印', '10', 'jeecgFormDemoController.do?printingDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-print', 'admin', '管理员', 'admin', '2018-07-30 14:30:52', '2018-07-30 10:27:40', '管理员');
INSERT INTO `t_s_function` VALUES ('402881855ab8c48a015ab8d133050018', null, '1', '测试online表单权限', '4', '', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', null, null, 'admin', '2017-03-10 23:23:32', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402881855ab8c48a015ab8d1f96f001b', null, '1', 'ol请假单查看页面', '1', 'cgFormBuildController/ftlForm/jform_leave/goDetail.do', '402881855ab8c48a015ab8d133050018', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', null, null, 'admin', '2017-03-30 12:42:51', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402881855c0190fa015c019342b20003', null, '2', '综合报表2', '24', 'jeecgListDemoController.do?broswerStatisticTabs', '4028810061f41d790161f4e293140015', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-pencil-square', 'admin', '管理员', 'admin', '2018-05-06 16:57:01', '2017-05-13 19:30:47', '管理员');
INSERT INTO `t_s_function` VALUES ('402881875992e76c015992eb2a3b0009', null, '1', '百度', '2', 'https://www.baidu.com', '4028ef8155fd32e40155fd33c6670001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2017-01-12 21:43:22', null);
INSERT INTO `t_s_function` VALUES ('402881c746de1ea60146de207d770001', null, '1', 'language.manage', '7', 'mutiLangController.do?mutiLang', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2018-06-01 17:06:04', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402881e45e6b867a015e6c539b8a000d', null, '1', '多tab选项卡', '13', 'jeecgFormDemoController.do?tabsDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tags', 'admin', '管理员', 'admin', '2018-06-01 12:10:32', '2017-09-10 23:06:12', '管理员');
INSERT INTO `t_s_function` VALUES ('402881e55de5aead015de643eaed0004', null, '1', '多表头列表', '2', 'jeecgListDemoController.do?multiHeaList', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tags', 'admin', '管理员', 'admin', '2018-06-01 12:06:26', '2017-08-15 22:19:57', '管理员');
INSERT INTO `t_s_function` VALUES ('402881ea5bc9abd3015bc9b2ebe10001', null, '1', '左右布局', '10', 'jeecgFormDemoController.do?siteSelect', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8181560043', '0', 'fa-code', null, null, 'admin', '2018-06-01 12:16:37', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402881ea5bcd7fd0015bcd8b5eae0001', null, '1', '上下布局表单三', '22', 'jeecgFormDemoController.do?specialLayout', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8181560043', '0', 'fa-facebook-official', null, null, 'admin', '2018-05-06 15:39:35', null, '管理员');
INSERT INTO `t_s_function` VALUES ('402881ef5e087320015e087a17570001', null, '1', 'popup控件', '23', 'jeecgFormDemoController.do?popupMultiValue', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-external-link', 'admin', '管理员', 'admin', '2017-11-14 11:30:45', '2017-08-22 13:46:13', '管理员');
INSERT INTO `t_s_function` VALUES ('402881f263dd1d8f0163de06421c0067', null, '1', '下拉列表控件', '36', 'jeecgFormDemoController.do?dropDownDatagrid', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-angle-down', 'admin', '管理员', 'admin', '2018-06-28 11:05:22', '2018-06-08 14:12:22', '管理员');
INSERT INTO `t_s_function` VALUES ('402881f4606cc3d501606cd07a520005', null, '1', '添加页面', '0', 'jeecgListDemoController.do?goAdd', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', 'admin', '2017-12-19 11:29:35', '2017-12-19 11:28:10', '管理员');
INSERT INTO `t_s_function` VALUES ('402881f4609299ad0160929ab2e00001', null, '1', '二级管理员', '4', '', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-group', 'admin', '管理员', 'admin', '2018-06-01 17:04:51', '2017-12-26 19:35:00', '管理员');
INSERT INTO `t_s_function` VALUES ('402881f462bcd9fe0162bcdd0e4c0001', null, '1', 'vue列表', '32', 'jeecgListDemoController.do?vueList', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-vimeo-square', 'admin', '管理员', 'admin', '2018-05-06 14:56:17', '2018-04-13 10:37:07', '管理员');
INSERT INTO `t_s_function` VALUES ('402881f462fa6ee90162fa78deba0001', null, '1', 'vueBootstrap', '33', 'jeecgListDemoController.do?vueBootstrapTableList', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-vimeo-square', 'admin', '管理员', 'admin', '2018-05-06 14:56:04', '2018-04-25 09:44:08', '管理员');
INSERT INTO `t_s_function` VALUES ('402881f463a591710163a5e59a830010', null, '2', '接口用户管理', '3', 'userController.do?interfaceUser', '402881fc60a07a350160a07cf68e0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2018-05-28 16:37:58', null);
INSERT INTO `t_s_function` VALUES ('402881f463b4e5d20163b4f9a81b0001', null, '1', 'BT布局报表', '6', 'jeecgListDemoController.do?bootStrapEchartsDemo', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-06-01 12:27:19', '2018-05-31 14:54:10', '管理员');
INSERT INTO `t_s_function` VALUES ('402881f463b56b950163b5aefcdb0002', null, '1', '嵌套子表列表', '4', 'jfromOrderController.do?gridViewlist', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-code', 'admin', '管理员', 'admin', '2018-06-01 17:02:40', '2018-05-31 18:12:14', '管理员');
INSERT INTO `t_s_function` VALUES ('402881f66260fc8e016260ffdde70001', null, '1', '上下布局表单二', '21', 'jformOrderMain2Controller.do?index', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-facebook-official', 'admin', '管理员', 'admin', '2018-05-06 15:39:26', '2018-03-26 14:30:04', '管理员');
INSERT INTO `t_s_function` VALUES ('402881fa64a1ca500164a1d549e40001', null, '1', 'Bootstrap树形列表', '5', 'jeecgFormDemoController.do?bootstrapTreeListDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tree', 'admin', '管理员', 'admin', '2018-07-16 16:17:45', '2018-07-16 14:44:27', '管理员');
INSERT INTO `t_s_function` VALUES ('402881fc60a07a350160a07cf68e0001', null, '1', '接口权限', '5', '', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-share-alt', 'admin', '管理员', 'admin', '2018-06-01 17:05:00', '2017-12-29 12:17:12', '管理员');
INSERT INTO `t_s_function` VALUES ('402881fc60a07a350160a07d4f860003', null, '2', '接口权限管理', '1', 'interfaceController.do?interface', '402881fc60a07a350160a07cf68e0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2017-12-29 12:17:35', null);
INSERT INTO `t_s_function` VALUES ('402881fc60a07a350160a07da5720005', null, '2', '接口角色管理', '2', 'interroleController.do?list', '402881fc60a07a350160a07cf68e0001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', null, null, '2017-12-29 12:17:57', null);
INSERT INTO `t_s_function` VALUES ('402881fc60c0d2d50160c0d860b00001', null, '1', 'Online填值规则', '4', 'tSFillRuleController.do?list', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', 'admin', '管理员', 'admin', '2018-01-16 17:24:35', '2018-01-04 19:04:54', '管理员');
INSERT INTO `t_s_function` VALUES ('402881ff6265de9b016266eb26380035', null, '1', '接口测试', '28', 'jeecgFormDemoController.do?interfaceTestDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180f00026', '0', 'fa-check-circle-o', 'admin', '管理员', null, null, '2018-03-27 18:05:09', null);
INSERT INTO `t_s_function` VALUES ('402882b54df53718014df538fc100001', null, '1', 'menu.online.template', '2', 'cgformTemplateController.do?cgformTemplate', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('402885814e3d2d09014e3d2e77800001', null, '1', '数据日志', '4', 'systemController.do?dataLogList', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc81810d002f', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('402889fb486e848101486e8de3d60005', null, '0', '数据权限', '100', '', null, '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '1', 'fa-gears', null, null, 'admin', '2017-03-04 13:37:59', null, '管理员');
INSERT INTO `t_s_function` VALUES ('40289181647d9d4a01647daaa4ce0001', null, '1', '表单原生组件二', '4', 'jeecgFormDemoController.do?natures', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-code', 'admin', '管理员', 'admin', '2018-07-09 18:29:31', '2018-07-09 14:11:33', '管理员');
INSERT INTO `t_s_function` VALUES ('4028948150f5ba6a0150f5d0b0200004', null, '1', '客户跟踪记录', '4', 'cgAutoListController.do?list&id=jeecg_custom_record', '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('4028948150f5ba6a0150f5d34aca000a', null, '1', '客户资料管理', '5', 'cgAutoListController.do?list&id=jeecg_custom_info', '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('4028ab775dca0d1b015dca3fccb60016', null, '1', 'Online加载数据权限', '3', 'cgFormHeadController.do?datagrid', '402880ec5cc40078015cc43430e80061', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '1', '', 'admin', '管理员', 'demo', '2017-08-14 16:35:40', '2017-08-10 11:46:05', 'demo');
INSERT INTO `t_s_function` VALUES ('4028b29a5d86c6e5015d8711a0000007', null, '1', '文件上传二', '15', 'multiUploadController.do?list', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-upload', 'admin', '管理员', 'admin', '2018-05-06 15:07:11', '2017-07-28 10:41:06', '管理员');
INSERT INTO `t_s_function` VALUES ('4028b88161cdb43d0161cdb5ebc90001', null, '1', '二维码测试', '27', 'jeecgFormDemoController.do?qrcode', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-anchor', 'admin', '管理员', 'admin', '2018-05-06 15:19:00', '2017-09-14 12:18:07', '管理员');
INSERT INTO `t_s_function` VALUES ('4028bc934869765001486977f0980001', null, '1', 'common.datasource.manage', '6', 'dynamicDataSourceController.do?dbSource', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2017-03-10 12:15:41', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef81535fff5101536001bb8d0005', null, '1', '招聘管理', '2', 'cgAutoListController.do?list&id=jform_resume_info', '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2017-03-01 11:51:06', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815373fb53015373fef1c50003', null, '1', '通讯录分组', '9', 'cgAutoListController.do?list&id=jform_contact_group', '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, 'admin', '2016-06-27 18:16:01', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815373fb53015373ff521d0005', null, '1', '通讯录', '10', 'cgAutoListController.do?list&id=jform_contact', '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, 'admin', '2016-06-27 18:16:09', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815378741f0153787764cc0004', null, '1', '移动请假单', '2', 'cgFormBuildController/ftlForm/jform_leave/goAdd.do?olstylecode=moblieCommon001', '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2017-03-10 18:09:11', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815378741f01537879315e0009', null, '1', 'PC请假单', '2', 'cgFormBuildController/ftlForm/jform_leave/goAddButton.do', '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2017-03-10 18:10:26', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378ddc2380001', null, '1', '3D饼图', '7', 'cgDynamGraphController.do?design&id=t_s_log&gtype=Pie3D', '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, 'admin', '2016-03-15 14:04:46', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378e019750003', null, '0', '移动报表', '2', '', null, '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-pie-chart', null, null, 'admin', '2017-03-03 17:34:37', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378e0d39d0006', null, '1', '折线图', '1', 'cgDynamGraphController.do?design&id=t_s_log&gtype=LineBasic2D', '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2018-05-06 17:00:26', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378e1395d0008', null, '1', '面积图 ', '2', 'cgDynamGraphController.do?design&id=t_s_log&gtype=Area2D', '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, 'admin', '管理员', null, null, '2016-03-15 14:05:39', null);
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378e19969000a', null, '1', '条状图', '3', 'cgDynamGraphController.do?design&id=t_s_log&gtype=Bar2D', '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, 'admin', '管理员', null, null, '2016-03-15 14:06:04', null);
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378e207cf000c', null, '1', '3D柱状图', '4', 'cgDynamGraphController.do?design&id=t_s_log&gtype=Column3D', '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, 'admin', '管理员', null, null, '2016-03-15 14:06:32', null);
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378e27ae5000e', null, '1', '2D柱状图', '5', 'cgDynamGraphController.do?design&id=t_s_log&gtype=Column2D', '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, 'admin', '管理员', null, null, '2016-03-15 14:07:01', null);
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378e30f760010', null, '1', '2D饼图', '6', 'cgDynamGraphController.do?design&id=t_s_log&gtype=Pie2D', '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2017-09-08 16:58:19', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef815378be7c015378e3e6530013', null, '1', '综合报表', '8', 'cgDynamGraphController.do?design&id=t_s_log', '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, 'admin', '管理员', null, null, '2016-03-15 14:08:34', null);
INSERT INTO `t_s_function` VALUES ('4028ef8155fd32e40155fd33c6670001', null, '0', '插件模块', '7', '', null, '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-download', null, null, 'admin', '2018-05-06 14:50:21', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef8155fd32e40155fd344cdd0003', null, '1', '普通列表', '1', 'p3/wxActInvite.do?list', '4028ef8155fd32e40155fd33c6670001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, 'admin', '2016-07-22 13:45:46', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef8155fd32e40155fd344cddd3', null, '1', '订单管理', '1', 'demo/jpDemoOrderMain.do?list', '4028ef8155fd32e40155fd33c6670001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', '', null, null, 'admin', '2017-06-20 22:35:05', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef8155fd32e40155fd348df80005', null, '1', '树形列表', '2', 'p3/auth.do?list', '4028ef8155fd32e40155fd33c6670001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, 'admin', '2016-07-18 16:52:19', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028ef8155fd32e40155fd3564520008', null, '1', '我的邮箱', '3', 'mail/p3MailJformInnerMail.do?toSendMail', '4028ef8155fd32e40155fd33c6670001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, 'admin', '管理员', null, null, '2016-07-18 16:53:02', null);
INSERT INTO `t_s_function` VALUES ('4028f6815af3ce54015af3d1ad610001', null, '0', 'general.demo', '6', '', null, '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-twitch', null, null, 'admin', '2017-10-31 20:03:41', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6815af3ce54015af3d1f52c0003', null, '1', '表单标签组件', '3', 'jeecgFormDemoController.do?uitag', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tags', null, null, 'admin', '2018-06-01 12:00:52', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6815af5ca04015af5cbf9300001', null, '1', '表单校验', '3', 'jeecgFormDemoController.do?formValidDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-code', 'admin', '管理员', 'admin', '2018-06-01 12:09:47', '2017-03-22 19:34:29', '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6815af5e479015af5f08dc4001a', null, '1', '标签数据列表', '1', 'jeecgListDemoController.do?list', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tags', 'admin', '管理员', 'admin', '2018-06-01 12:00:11', '2017-03-22 20:14:27', '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6815af6de95015af6e078420001', null, '1', 'Minidao列表', '4', 'jeecgListDemoController.do?minidaoListDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-code', null, null, 'admin', '2018-06-01 12:09:56', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6815af750eb015af755e1ca0001', null, '1', '表单原生组件', '3', 'jeecgFormDemoController.do?nature', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-code', null, null, 'admin', '2018-06-01 12:01:07', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6815af9fb56015af9fc51d30001', null, '1', '自定义查询一', '17', 'jeecgListDemoController.do?mysearchListDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-filter', 'admin', '管理员', 'admin', '2018-06-01 12:08:54', '2017-03-23 15:05:47', '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6815afa8964015afa8a63e20001', null, '1', '行编辑列表', '4', 'jeecgListDemoController.do?rowListDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tags', 'admin', '管理员', 'admin', '2018-06-01 12:08:11', '2017-03-23 17:40:57', '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6815b0b1017015b0b1265cf0002', null, '2', '日志报表', '25', 'jeecgListDemoController.do?log', '4028810061f41d790161f4e293140015', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-pencil-square', null, null, 'admin', '2018-05-06 16:57:13', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028f681630b600701630bc1eee30030', null, '1', 'Easyui原生列表', '5', 'jeecgListDemoController.do?natureAceTableDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-code', 'admin', '管理员', 'admin', '2018-05-06 15:29:42', '2018-04-28 18:17:29', '管理员');
INSERT INTO `t_s_function` VALUES ('4028f6816402785c0164027969d20001', null, '1', 'excel导入导出示例', '99', 'jeecgDemoExcelController.do?list', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-arrows-v', 'admin', '管理员', 'admin', '2018-06-28 10:57:42', '2018-06-15 16:04:28', '管理员');
INSERT INTO `t_s_function` VALUES ('4028f681643b2e6401643b3aeba50001', null, '1', '按钮折叠demo', '99', 'jeecgListDemoController.do?collapseDemo', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-arrow-circle-down', 'admin', '管理员', 'admin', '2018-06-28 11:05:51', '2018-06-26 16:34:34', '管理员');
INSERT INTO `t_s_function` VALUES ('4028f68164caf6520164cb5d79670004', null, '1', 'plupload上传1', '100', 'jeecgFormDemoController.do?plupload1', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-upload', 'admin', '管理员', null, null, '2018-07-24 16:17:38', null);
INSERT INTO `t_s_function` VALUES ('4028f68164caf6520164cb5ecade0006', null, '1', '检索下拉框', '100', 'jeecgListDemoController.do?suggest', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-list-ol', 'admin', '管理员', null, null, '2018-07-24 16:19:04', null);
INSERT INTO `t_s_function` VALUES ('4028f68164cfec7b0164d07373540002', null, '1', 'plupload上传2', '100', 'jeecgFormDemoController.do?plupload2', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-upload', 'admin', '管理员', null, null, '2018-07-25 15:59:44', null);
INSERT INTO `t_s_function` VALUES ('4028f681658063000165806aa21c0001', null, '1', 'jxls导出excel', '99', 'jeecgDemoExcelController.do?jxls', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-file-excel-o', 'admin', '管理员', 'admin', '2018-08-28 20:07:29', '2018-08-28 20:03:16', '管理员');
INSERT INTO `t_s_function` VALUES ('4028f68165a8fe350165a90f06d50001', null, '1', '下拉多选demo', '100', 'jeecgFormDemoController.do?multiSelect', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-list-ol', 'admin', '管理员', 'admin', '2018-09-05 17:28:15', '2018-09-05 17:27:38', '管理员');
INSERT INTO `t_s_function` VALUES ('4028fbc65c3ab6e3015c3ab7ba690003', null, '1', '文件上传一', '14', 'commonController.do?listTurn&turn=system/document/filesList', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-files-o', null, null, 'admin', '2018-05-06 15:07:01', null, '管理员');
INSERT INTO `t_s_function` VALUES ('4028fbc65c56ece6015c56f508300002', null, '1', '树形列表', '4', 'jeecgFormDemoController.do?function', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-tree', null, null, 'admin', '2017-11-14 11:35:33', null, '管理员');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180ce0019', null, '0', 'online.develop', '5', '', null, '8a8ab0b246dc81120146dc8180890008', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-cloud', null, null, 'admin', '2016-04-08 22:28:17', null, '管理员');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180d2001a', null, '0', 'system.manage', '9', '', null, '8a8ab0b246dc81120146dc8180860006', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-home', null, null, 'admin', '2016-01-14 11:30:31', null, '管理员');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180d4001b', null, '0', 'common.query.statistics', '1', '', null, '8a8ab0b246dc81120146dc8180890008', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-bar-chart-o', null, null, 'admin', '2018-05-06 17:00:31', null, '管理员');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180d9001d', null, '0', 'system.monitor', '6', '', null, '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-headphones', null, null, 'admin', '2016-01-14 11:21:59', null, '管理员');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180df001f', null, '1', 'user.manage', '1', 'userController.do?user', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180e30021', null, '1', 'role.manage', '2', 'roleController.do?role', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180e10020', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180e70023', null, '1', 'menu.manage', '0', 'functionController.do?function', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180e50022', '0', '', null, null, 'admin', '2017-03-10 11:54:35', null, '管理员');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180ee0025', null, '1', 'common.data.dictionary', '6', 'systemController.do?typeGroupList', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180eb0024', '0', '', null, null, 'admin', '2018-06-01 17:05:26', null, '管理员');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180f30027', null, '1', 'icon.manage', '8', 'iconController.do?icon', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180f00026', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180f60028', null, '1', 'department.manage', '3', 'departController.do?depart', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180fe002b', null, '2', 'user.analysis', '3', 'logController.do?statisticTabs&isIframe', '4028810061f41d790161f4e293140015', '8a8ab0b246dc81120146dc8180810002', '8a8ab0b246dc81120146dc8180fb002a', '0', 'fa-pencil-square', null, null, 'admin', '2018-05-06 16:56:18', null, '管理员');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818106002d', null, '1', 'form.config', '1', 'cgFormHeadController.do?cgFormHeadList', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc818102002c', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818109002e', null, '1', 'dynamic.form.config', '3', 'cgreportConfigHeadController.do?cgreportConfigHead', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', null, '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181100030', null, '1', 'data.monitor', '1', 'dataSourceController.do?goDruid&isIframe', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc81810d002f', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81811d0032', null, '1', 'system.log', '2', 'logController.do?log', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8181150031', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181250034', null, '1', 'common.schedule.task', '3', 'timeTaskController.do?timeTask', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8181210033', '0', null, null, null, null, null, null, null);
INSERT INTO `t_s_function` VALUES ('ff8080815ffd3b5d015ffd3e74b40001', null, '1', '自定义查询二', '17', 'jeecgListDemoController.do?mysearchListDemo2', '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0', 'fa-filter', 'admin', '管理员', 'admin', '2018-06-01 12:08:39', '2017-11-27 19:30:50', '管理员');

-- ----------------------------
-- Table structure for t_s_icon
-- ----------------------------
DROP TABLE IF EXISTS `t_s_icon`;
CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `extend` varchar(255) DEFAULT NULL COMMENT '图片后缀',
  `iconclas` varchar(200) DEFAULT NULL COMMENT '类型',
  `content` blob COMMENT '图片流内容',
  `name` varchar(100) NOT NULL COMMENT '名字',
  `path` longtext COMMENT '路径',
  `type` smallint(6) DEFAULT NULL COMMENT '类型 1系统图标/2菜单图标/3桌面图标',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_icon
-- ----------------------------
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180460000', 'png', 'default', null, '默认', 'plug-in/accordion/images/default.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180800001', 'png', 'back', null, '返回', 'plug-in/accordion/images/back.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180810002', 'png', 'pie', null, '小饼状图', 'plug-in/accordion/images/pie.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180820003', 'png', 'pictures', null, '图片', 'plug-in/accordion/images/pictures.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180830004', 'png', 'pencil', null, '笔', 'plug-in/accordion/images/pencil.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180850005', 'png', 'map', null, '小地图', 'plug-in/accordion/images/map.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180860006', 'png', 'group_add', null, '组', 'plug-in/accordion/images/group_add.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180880007', 'png', 'calculator', null, '计算器', 'plug-in/accordion/images/calculator.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180890008', 'png', 'folder', null, '文件夹', 'plug-in/accordion/images/folder.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180dd001e', 'png', 'deskIcon', null, '用户管理', 'plug-in/sliding/icon/Finder.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180e10020', 'png', 'deskIcon', null, '角色管理', 'plug-in/sliding/icon/friendgroup.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180e50022', 'png', 'deskIcon', null, '菜单管理', 'plug-in/sliding/icon/kaikai.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180eb0024', 'png', 'deskIcon', null, '数据字典管理', 'plug-in/sliding/icon/friendnear.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180f00026', 'png', 'deskIcon', null, '系统图标', 'plug-in/sliding/icon/kxjy.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180fb002a', 'png', 'deskIcon', null, '用户分析', 'plug-in/sliding/icon/User.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc818102002c', 'png', 'deskIcon', null, 'Online表单开发', 'plug-in/sliding/icon/Finder.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc81810d002f', 'png', 'deskIcon', null, '数据监控', 'plug-in/sliding/icon/Super Disk.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8181150031', 'png', 'deskIcon', null, '系统日志', 'plug-in/sliding/icon/fastsearch.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8181210033', 'png', 'deskIcon', null, '定时任务', 'plug-in/sliding/icon/Utilities.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8181290035', 'png', 'deskIcon', null, '表单验证', 'plug-in/sliding/icon/qidianzhongwen.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8181560043', 'png', 'deskIcon', null, '特殊布局', 'plug-in/sliding/icon/xiami.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc81816e004a', 'png', 'deskIcon', null, '多附件管理', 'plug-in/sliding/icon/vadio.png', '3');


-- ----------------------------
-- Table structure for t_s_log
-- ----------------------------
DROP TABLE IF EXISTS `t_s_log`;
CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `broswer` varchar(100) DEFAULT NULL COMMENT '浏览器',
  `logcontent` longtext NOT NULL COMMENT '日志内容',
  `loglevel` smallint(6) DEFAULT NULL COMMENT '日志级别',
  `note` longtext COMMENT 'IP',
  `operatetime` datetime NOT NULL COMMENT '操作时间',
  `operatetype` smallint(6) DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `username` varchar(50) DEFAULT NULL COMMENT '用户账号',
  `realname` varchar(50) DEFAULT NULL COMMENT '真实名字',
  PRIMARY KEY (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_s_muti_lang
-- ----------------------------
DROP TABLE IF EXISTS `t_s_muti_lang`;
CREATE TABLE `t_s_muti_lang` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `lang_key` varchar(50) DEFAULT NULL COMMENT '语言主键',
  `lang_context` varchar(500) DEFAULT NULL COMMENT '内容',
  `lang_code` varchar(50) DEFAULT NULL COMMENT '语言',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人编号',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人姓名',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人编号',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_langkey_langcode` (`lang_key`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_muti_lang
-- ----------------------------
INSERT INTO `t_s_muti_lang` VALUES ('000000005ffb6cd7015ffb729aeb0004', 'common.refreshType', '刷新字典缓存', 'zh-cn', '2017-11-27 11:08:33', 'admin', '管理员', '2017-11-28 21:06:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('01ca201223b14e3e86c13904a9ae5ca2', 'common.password', '密码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('02916620f68b4845ba09773de6799706', 'please.select.department', 'Please select a department', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('0ab1a1fddf14420fa0dbcbfb5d2e9e85', 'common.strong', 'Strong', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('0bacd0fab1c84f03854435c1adab88c2', 'common.lock.user', '锁定用户', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('11d18a9927e34873a813eade025b5c18', 'fill.realname', 'Fill in the real name', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('121a68d32c6a419b800eb92431b20dd4', 'common.department', 'Org', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('1e5963a78dcd4b1fa5f9d6d845f151be', 'common.department', '组织机构', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('2075b6c641bc44b392638fed9a62cce9', 'password.rang6to18', '密码至少6个字符,最多18个字符', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('27a06a8ed99f45438be00b7f1ca097f7', 'common.username', '用户账号', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ff41480146ffbb62a30012', 'menu.manage', 'Menu Manage', 'en', '2014-07-04 12:56:50', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:06:15', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ff41480146ffbc59ac0014', 'menu.manage', '菜单管理', 'zh-cn', '2014-07-04 12:57:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:06:26', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffc8cd320001', 'common.id', 'ID', 'en', '2014-07-04 13:11:28', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-21 14:04:37', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffc933dc0003', 'common.id', '编号', 'zh-cn', '2014-07-04 13:11:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:11:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffc9b4bb0005', 'menu.name', 'Menu Name', 'en', '2014-07-04 13:12:27', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:14:52', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcd8f60000b', 'menu.name', '菜单名称', 'zh-cn', '2014-07-04 13:16:40', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:16:40', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcdc44b000d', 'common.icon', 'Icon', 'en', '2014-07-04 13:16:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:16:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcdf4a6000f', 'common.icon', '图标', 'zh-cn', '2014-07-04 13:17:06', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:06', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffce76c70011', 'menu.url', 'Menu Url', 'en', '2014-07-04 13:17:39', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:39', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcea7d80013', 'menu.url', '菜单地址', 'zh-cn', '2014-07-04 13:17:51', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:51', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcf13090015', 'menu.order', 'Menu Order', 'en', '2014-07-04 13:18:19', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:18:19', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcf4b0a0017', 'menu.order', '菜单顺序', 'zh-cn', '2014-07-04 13:18:33', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:18:33', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffd059670019', 'menu.add', 'Function Add', 'en', '2014-07-04 13:19:42', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:22:11', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffd1cfeb001d', 'menu.edit', 'Menu Edit', 'en', '2014-07-04 13:21:18', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:21:18', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffd20205001f', 'menu.edit', '菜单编辑', 'zh-cn', '2014-07-04 13:21:31', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:21:31', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe1a54f0023', 'menu.level', 'Menu Level', 'en', '2014-07-04 13:38:36', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:38:36', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe1e8530025', 'menu.level', '菜单等级', 'zh-cn', '2014-07-04 13:38:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:38:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe5e2860027', 'parent.function', 'Parent Function', 'en', '2014-07-04 13:43:14', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:25', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe6108b0029', 'parent.function', '父菜单', 'zh-cn', '2014-07-04 13:43:26', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:37', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe9ec39002b', 'main.function', 'Main Function', 'en', '2014-07-04 13:47:38', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:52', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffea3970002d', 'main.function', '一级菜单', 'zh-cn', '2014-07-04 13:47:58', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:06', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffea9f27002f', 'sub.function', 'Sub Function', 'en', '2014-07-04 13:48:24', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:23', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffead7b80031', 'sub.function', '下级菜单', 'zh-cn', '2014-07-04 13:48:39', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:34', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffebb2660033', 'desktop.icon', 'Desk Icon', 'en', '2014-07-04 13:49:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:49:35', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffebdf940035', 'desktop.icon', '桌面图标', 'zh-cn', '2014-07-04 13:49:46', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:49:46', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380146fffca39a0003', 'icon.list', 'Icon List', 'en', '2014-07-04 14:08:05', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:20:31', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380146fffd42c40005', 'icon.list', '图标列表', 'zh-cn', '2014-07-04 14:08:46', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:20:45', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470001e905000b', 'common.icon.name', 'Icon Name', 'en', '2014-07-04 14:13:50', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:13:50', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470002280b000d', 'common.icon.name', '图标名称', 'zh-cn', '2014-07-04 14:14:07', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:14:07', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700030848000f', 'common.icon.style', 'Icon Style', 'en', '2014-07-04 14:15:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:21:40', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147000332810011', 'common.icon.style', '图标样式', 'zh-cn', '2014-07-04 14:15:15', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:15', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147000387440013', 'common.icon.type', 'Icon Type', 'en', '2014-07-04 14:15:37', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:37', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470003af940015', 'common.icon.type', '图标类型', 'zh-cn', '2014-07-04 14:15:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:47', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700054be10020', 'icon.add', 'Icon Add', 'en', '2014-07-04 14:17:32', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:32', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470005af9a0024', 'icon.edit', 'Icon Edit', 'en', '2014-07-04 14:17:58', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:58', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470005d3550026', 'icon.edit', '图标修改', 'zh-cn', '2014-07-04 14:18:07', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:18:07', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700063c220028', 'batch.generate.style', 'Batch Generate Style', 'en', '2014-07-04 14:18:34', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-21 11:32:32', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700068560002a', 'batch.generate.style', '批量生成样式', 'zh-cn', '2014-07-04 14:18:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:18:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470015a389002e', 'common.department.list', 'Org List', 'en', '2014-07-04 14:35:23', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:17:33', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470015ff8f0030', 'common.department.list', '组织机构列表', 'zh-cn', '2014-07-04 14:35:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:17:09', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470016d58e0036', 'common.department.name', 'Org Name', 'en', '2014-07-04 14:36:42', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:36:42', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700172e590038', 'common.department.name', '组织机构名称', 'zh-cn', '2014-07-04 14:37:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:37:04', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470017a515003a', 'position.desc', 'Org Desc', 'en', '2014-07-04 14:37:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-08-18 23:41:49', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470017d2fb003c', 'position.desc', '组织机构描述', 'zh-cn', '2014-07-04 14:37:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-08-18 23:41:59', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700193e67003e', 'view.member', 'View Member', 'en', '2014-07-04 14:39:20', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:39:20', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147001963ef0040', 'view.member', '查看成员', 'zh-cn', '2014-07-04 14:39:29', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:39:29', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147001ab010004a', 'parent.depart', 'Parent Org', 'en', '2014-07-04 14:40:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:40:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147001ad6a7004c', 'parent.depart', '上级组织机构', 'zh-cn', '2014-07-04 14:41:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:41:04', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700256132004e', 'area.manage', 'Area Manage', 'en', '2014-07-04 14:52:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:52:35', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470025a7e70050', 'area.manage', '地域管理', 'zh-cn', '2014-07-04 14:52:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:52:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002800990056', 'area.name', 'Area Name', 'en', '2014-07-04 14:55:27', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:55:27', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470028c0330058', 'area.name', '地域名称', 'zh-cn', '2014-07-04 14:56:16', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:56:16', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700295bd8005a', 'area.code', 'Area Code', 'en', '2014-07-04 14:56:56', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:56:56', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002981ee005c', 'area.code', '地域编码', 'zh-cn', '2014-07-04 14:57:06', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:57:06', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470029c84d005e', 'display.order', 'Area Sort', 'en', '2014-07-04 14:57:24', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:57:37', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002a3fa50061', 'display.order', '显示顺序', 'zh-cn', '2014-07-04 14:57:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:58:02', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002a93ba0064', 'area.add.param', 'Area Add', 'en', '2014-07-04 14:58:16', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:12:56', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002c144c006c', 'area.level', 'Area Level', 'en', '2014-07-04 14:59:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:59:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002c3711006e', 'area.level', '地域等级', 'zh-cn', '2014-07-04 15:00:03', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:00:03', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002ce8a70070', 'parent.area', 'Parent Area', 'en', '2014-07-04 15:00:48', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:00:48', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002d42990072', 'parent.area', '父地域', 'zh-cn', '2014-07-04 15:01:11', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:01:11', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701d4ac920001', 'system.icon', 'System Icon', 'en', '2014-07-04 22:43:40', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:43:40', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701d4e2990003', 'system.icon', '系统图标', 'zh-cn', '2014-07-04 22:43:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:43:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701d53b200005', 'menu.icon', 'Menu Icon', 'en', '2014-07-04 22:44:17', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:44:17', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701d5c6cc0007', 'menu.icon', '菜单图标', 'zh-cn', '2014-07-04 22:44:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:44:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701dda832000d', 'main.area', 'Main Level', 'en', '2014-07-04 22:53:29', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:53:29', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701ddf718000f', 'main.area', '一级地域', 'zh-cn', '2014-07-04 22:53:49', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:58:41', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701de50dd0011', 'sub.area', 'Sub Level', 'en', '2014-07-04 22:54:12', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:55:00', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701dece660013', 'sub.area', '下级地域', 'zh-cn', '2014-07-04 22:54:44', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:54:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701ecd4014701f3a69c0001', 'member.list', 'Member List', 'en', '2014-07-04 23:17:30', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 23:17:30', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701ecd4014701f3dcfb0003', 'member.list', '成员列表', 'zh-cn', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e2010477674e7014776e5ffae0005', 'iconname.rang2to10', '名称范围2~10位字符,且不为空', 'zh-cn', '2014-07-27 16:18:12', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e2010477674e7014776e6eecd0007', 'iconname.rang2to10', 'Icon name should be 2-10 characters and should not empty', 'en', '2014-07-27 16:19:11', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a01477784810a000f', 'operate.name', '页面控件名称', 'zh-cn', '2014-07-27 19:11:18', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-04-02 22:28:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a0147778a170d0011', 'operate.name', 'Page Element Name', 'en', '2014-07-27 19:17:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-04-02 22:30:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a01477791affe0014', 'operate.manage', 'Page access rule', 'en', '2014-07-27 19:25:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2017-10-26 17:09:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a01477791eea00016', 'operate.manage', '页面控件权限规则', 'zh-cn', '2014-07-27 19:25:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2017-10-26 17:09:36', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a01477796ccde0018', 'operatename.rang2to20', '操作名称范围2~20位字符', 'zh-cn', '2014-07-27 19:31:17', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a014777979ab6001a', 'operatename.rang2to20', 'Operate name should be 2-20 characters', 'en', '2014-07-27 19:32:10', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a014777991ef9001c', 'operatestatus.number', '必须为数字', 'zh-cn', '2014-07-27 19:33:49', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a0147779a0f71001e', 'operatestatus.number', 'Must be numeric', 'en', '2014-07-27 19:34:50', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777a9190b0007', 'common.default.icon', 'default', 'en', '2014-07-27 19:51:16', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777a974ca0009', 'common.default.icon', '默认', 'zh-cn', '2014-07-27 19:51:39', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777a9cbc3000b', 'common.back', 'back', 'en', '2014-07-27 19:52:02', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777a9f433000d', 'common.back', '返回', 'zh-cn', '2014-07-27 19:52:12', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777ae465e000f', 'common.smallpie.icon', 'smallpie', 'en', '2014-07-27 19:56:55', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777aeb70c0011', 'common.smallpie.icon', '小饼状图', 'zh-cn', '2014-07-27 19:57:24', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777af2a970013', 'common.picture', '图片', 'zh-cn', '2014-07-27 19:57:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-27 19:58:19', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777af611a0015', 'common.picture', 'pictures', 'en', '2014-07-27 19:58:08', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777afea2c0018', 'common.pencil.icon', '笔', 'zh-cn', '2014-07-27 19:58:43', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b01f4a001a', 'common.pencil.icon', 'pencil', 'en', '2014-07-27 19:58:56', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b210ae001c', 'common.smallmap', '小地图', 'zh-cn', '2014-07-27 20:01:04', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b2638d001e', 'common.smallmap', 'smallmap', 'en', '2014-07-27 20:01:25', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b2d38b0020', 'common.group', '组', 'zh-cn', '2014-07-27 20:01:54', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b3010a0022', 'common.group', 'group', 'en', '2014-07-27 20:02:05', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b361fa0024', 'common.calculator', '计算器', 'zh-cn', '2014-07-27 20:02:30', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b39c390026', 'common.calculator', 'calculator', 'en', '2014-07-27 20:02:45', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b3ed9e0028', 'common.folder', '文件夹', 'zh-cn', '2014-07-27 20:03:06', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b440fd002a', 'common.folder', 'folder', 'en', '2014-07-27 20:03:27', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777c827014777f13d7f0002', 'common.delete.fail.param', '{0}删除失败{1}', 'zh-cn', '2014-07-27 21:10:04', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777c827014777f282f60004', 'common.delete.fail.param', '{0} delete fail{1}', 'en', '2014-07-27 21:11:27', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777c827014777f52cd10006', 'common.icon.isusing', '！图标正在使用，不允许删除。', 'zh-cn', '2014-07-27 21:14:22', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777c827014777f8c27e0008', 'common.icon.isusing', ', Icon is using, can not be deleted.', 'en', '2014-07-27 21:18:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-27 21:27:54', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201047781c8e014778273b160007', 'departmentname.rang3to10', '机构名称在3~10位字符', 'zh-cn', '2014-07-27 22:09:02', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047781c8e0147782885e90009', 'departmentname.rang3to10', 'Department name should be 3-10 characters', 'en', '2014-07-27 22:10:27', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047781c8e0147782a1443000b', 'areaname.rang2to15', '地域名称范围2~15位字符,且不为空', 'zh-cn', '2014-07-27 22:12:09', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047781c8e0147782a6615000d', 'areaname.rang2to15', 'Area name should be 2-15 characters and should not empty', 'en', '2014-07-27 22:12:30', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e7ffd4540028', 'common.org.code', '机构编码', 'zh-cn', '2014-08-18 15:23:28', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e8004113002a', 'common.org.code', 'Org Code', 'en', '2014-08-18 15:23:56', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e800add5002c', 'common.org.type', '机构类型', 'zh-cn', '2014-08-18 15:24:24', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e800edf8002e', 'common.org.type', 'Org Type', 'en', '2014-08-18 15:24:40', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e80a71980030', 'common.company', '公司', 'zh-cn', '2014-08-18 15:35:04', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e80abac10032', 'common.company', 'Company', 'en', '2014-08-18 15:35:23', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e815144e0034', 'common.position', '岗位', 'zh-cn', '2014-08-18 15:46:41', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e81561a80036', 'common.position', 'Position', 'en', '2014-08-18 15:47:01', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047f766400147f7b9d4d20009', 'role.set', '角色设置', 'zh-cn', '2014-08-21 16:40:56', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047f766400147f7be2c6a000c', 'current.org', '机构', 'zh-cn', '2014-08-21 16:45:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-12-23 19:05:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201047f766400147f7be6144000e', 'current.org', 'Org', 'en', '2014-08-21 16:45:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-12-23 19:05:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201047f8c5050147f923e5e8000c', 'role.set', 'Role Set', 'en', '2014-08-21 23:16:25', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048154920014815c3e9a7000c', 'common.add.exist.user', '添加已有客户', 'zh-cn', '2014-08-27 12:40:33', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048154920014815c47ac1000e', 'common.add.exist.user', 'Add Exist User', 'en', '2014-08-27 12:41:11', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b7ffe64e0001', 'common.type.list', '类型列表', 'zh-cn', '2014-09-28 00:44:34', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b8002b620003', 'common.type.list', 'Type List', 'en', '2014-09-28 00:44:51', 'admin', '管理员', '2014-09-28 00:46:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b801c7520006', 'common.type.code', '类型编码', 'zh-cn', '2014-09-28 00:46:37', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b801f8dc0008', 'common.type.code', 'Type Code', 'en', '2014-09-28 00:46:50', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b8024884000a', 'common.type.name', '类型名称', 'zh-cn', '2014-09-28 00:47:10', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b802773e000c', 'common.type.name', 'Type Name', 'en', '2014-09-28 00:47:22', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b803ec0148b80d34360001', 'common.type.view', '查看类型', 'zh-cn', '2014-09-28 00:59:06', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b803ec0148b80d6da10003', 'common.type.view', 'Type View', 'en', '2014-09-28 00:59:20', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e7ae15f324756015f3277e5ed0002', 'common.superquery', '高级查询', 'zh-cn', '2017-10-19 10:30:39', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e7ae160974c6f0160974db0e50001', 'common.advancedQuery', '高级查询构造器', 'zh-cn', '2017-12-27 17:28:59', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e7ae160c514780160c529accc0003', 'common.user.type', '用户类型', 'zh-cn', '2018-01-05 15:12:11', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('2a609258aef344bbbcf0c766d922e449', 'common.phone', 'Phone', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('2bad4a20100e456aac2f6be3d1cc85ac', 'common.real.name', 'Real Name', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('2c948a855611e7c8015611ea72800001', 'menu.funiconstyle', '菜单图标样式', 'zh-cn', '2016-07-22 17:23:13', 'admin', '管理员', '2016-07-22 17:24:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('2c948a855611e7c8015611eb204f0003', 'menu.funiconstyle', 'Menu Icon Style', 'en', '2016-07-22 17:23:57', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('2c948a85567d940f01567db64d4e0005', 'confirm.copy.form', '确认复制表单', 'zh-cn', '2016-08-12 15:45:15', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('2c948a85567d940f01567db6bcc00007', 'confirm.copy.form', 'Confirm copy form', 'en', '2016-08-12 15:45:43', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('2d70c1a8158b415b9aff12e1957c1819', 'common.repeat.password', 'Repeat Password', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('2fe5274af5d94fb49240d82b7b8d2a95', 'common.tel', 'Telephone', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('3db54b3731434dc38bc5ea3b20de7db8', 'common.middle', 'Middle', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402831814d8a1ae0014d8a239f520001', 'common.unlock.user', '激活用户', 'zh-cn', '2015-05-25 16:14:59', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402831814d8a1ae0014d8a2402d40003', 'common.unlock.user', 'unlock user', 'en', '2015-05-25 16:15:25', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40284a815bb4d01f015bb4e5f33e0001', 'common.change.portrait', '修改头像', 'zh-cn', '2017-04-28 22:10:21', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40284a815bbefecd015bbf9952400002', 'common.change.portrait', 'changepranit', 'en', '2017-05-01 00:02:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40284a815c1b720b015c1ba37a870010', 'common.blacklist.error', '该IP已经被列为黑名单', 'zh-cn', '2017-05-18 20:58:38', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40284a815c1b720b015c1ba3c5a60012', 'common.blacklist.error', 'The IP has been blacklisted', 'en', '2017-05-18 20:58:57', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40284a815c1c18f7015c1c234a420006', 'common.common.dev', 'Dev Author', 'en', '2017-05-18 23:18:14', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40284a815c1c18f7015c1c23969d0008', 'common.common.dev', '开发权限', 'zh-cn', '2017-05-18 23:18:33', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40286081637677e601637724773f0037', 'common.please.select.two.item', '请选择两条数据', 'zh-cn', '2018-05-19 14:44:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40286081637677e601637725f4a50039', 'common.please.select.two.item', 'Please select two data', 'en', '2018-05-19 14:46:06', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40286081646932eb01646935152c0005', 'common.templateCode', '模板CODE', 'zh-cn', '2018-07-05 14:50:43', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40286081646932eb01646935698d0007', 'common.templateCode', 'Template Code', 'en', '2018-07-05 14:51:05', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402860816469f4aa01646a2da0cc0026', 'common.isRead', '状态', 'zh-cn', '2018-07-05 19:22:12', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402860816469f4aa01646a2dcf1c0028', 'common.isRead', 'Status', 'en', '2018-07-05 19:22:24', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3eb326b0005', 'funcType', '菜单类型', 'zh-cn', '2014-08-20 22:56:23', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3eb9f400007', 'funcType', 'funcType', 'en', '2014-08-20 22:56:51', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3ef30570009', 'funcType.page', '菜单类型', 'zh-cn', '2014-08-20 23:00:44', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-23 01:48:20', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3ef5482000b', 'funcType.page', 'menu type', 'en', '2014-08-20 23:00:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-23 01:48:29', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3ef8590000d', 'funcType.from', 'author type', 'en', '2014-08-20 23:01:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-23 01:49:57', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3efcd02000f', 'funcType.from', '权限类型', 'zh-cn', '2014-08-20 23:01:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-23 01:50:07', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f9749a7b0003', 'operationType.disabled', 'disabled', 'en', '2014-08-22 00:44:34', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f974dc860005', 'operationType.disabled', '禁用', 'zh-cn', '2014-08-22 00:44:51', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f9754c030007', 'common.enable', '有效', 'zh-cn', '2014-08-22 00:45:19', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f97581920009', 'common.enable', 'enable', 'en', '2014-08-22 00:45:33', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f975c3c8000b', 'common.disable', '无效', 'zh-cn', '2014-08-22 00:45:50', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f97612a1000d', 'common.disable', 'disable', 'en', '2014-08-22 00:46:10', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e447e9ba550147e9be3a3a0003', 'common.rang', '{0}Operate name  should be {1}-{2} characters', 'en', '2014-08-18 23:31:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-18 23:32:00', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e447e9ba550147e9bf9eaa0006', 'common.rang', '{0}范围{1}~{2}位字符', 'zh-cn', '2014-08-18 23:32:35', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e447e9ba550147e9c1ab590008', 'departmentname.rang1to20', 'Depart name should be 1-20 characters', 'en', '2014-08-18 23:34:49', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e447e9ba550147e9c25bbe000a', 'departmentname.rang1to20', '组织机构范围1~20位字符', 'zh-cn', '2014-08-18 23:35:34', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e4489db6e601489dbc2cdc0001', 'common.add.to', 'AddTo', 'en', '2014-09-22 22:20:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e4489db6e601489dbc61380003', 'common.add.to', '添加', 'zh-cn', '2014-09-22 22:20:41', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705eee9120001', 'user.analysis.line', 'User analysis Line', 'en', '2014-07-05 17:50:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705f1741c0003', 'user.analysis.line', '用户分析 Line', 'zh-cn', '2014-07-05 17:53:35', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705f535a50005', 'user.analysis.pie', 'User analysis Pie', 'en', '2014-07-05 17:57:41', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705f597d10007', 'user.analysis.pie', '用户分析 Pie', 'zh-cn', '2014-07-05 17:58:07', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705f82a580009', 'user.analysis.histogram', 'User Analysis Histogram', 'en', '2014-07-05 18:00:55', '402880e64705a8ce014705af94280052', 'admin', '2014-07-21 10:08:08', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705fc8656000b', 'user.browser.analysis', ' Analysis of the user\'s browser proportion', 'en', '2014-07-05 18:05:41', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705fce72d000d', 'user.browser.analysis', '用户浏览器比例分析', 'zh-cn', '2014-07-05 18:06:06', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca901470608088c000f', 'class.student.count.analysis', 'Class student ratio analysis', 'en', '2014-07-05 18:18:15', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014706088d7c0011', 'class.student.count.analysis', '班级学生人数比例分析', 'zh-cn', '2014-07-05 18:18:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060a873a0013', 'common.line.chart', 'Line chart', 'en', '2014-07-05 18:20:59', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060aef730015', 'common.line.chart', '折线图', 'zh-cn', '2014-07-05 18:21:25', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060bfcae0017', 'common.pie.chart', 'pie', 'en', '2014-07-05 18:22:34', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060c5e310019', 'common.pie.chart', '饼状图', 'zh-cn', '2014-07-05 18:22:59', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060dc6b6001b', 'common.histogram', 'Histogram', 'en', '2014-07-05 18:24:31', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060e11f3001d', 'common.histogram', '柱状图', 'zh-cn', '2014-07-05 18:24:51', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060fa1ba001f', 'class.count.statistics', 'Class size statistics', 'en', '2014-07-05 18:26:33', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060fdf3a0021', 'class.count.statistics', '班级人数统计', 'zh-cn', '2014-07-05 18:26:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451230', 'common.query.statistics', '统计报表', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2015-10-15 10:28:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451231', 'common.query.statistics', 'Statistics Report', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2015-10-15 10:28:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451232', 'common.schedule.task', '定时任务', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451233', 'common.schedule.task', 'Timed Task', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451234', 'system.log', '系统日志', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451235', 'system.log', 'Sys Log', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451236', 'data.monitor', '数据监控', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451237', 'data.monitor', 'Data Monitor', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451238', 'form.config', 'Online表单开发', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451239', 'form.config', 'Form Config', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451240', 'dynamic.form.config', 'Online报表配置', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451241', 'dynamic.form.config', 'Dynamic Report Config', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451242', 'user.analysis', '用户分析', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451243', 'user.analysis', 'User Analysis', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061365350027', 'lang.class', 'Class', 'en', '2014-07-05 18:30:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-20 11:56:18', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca901470614932d0029', 'lang.class', '班级', 'zh-cn', '2014-07-05 18:31:57', '402880e64705a8ce014705af94280052', 'admin', '2014-07-20 11:56:24', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014706152c0a002b', 'number.ofpeople', ' Number of people', 'en', '2014-07-05 18:32:36', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca901470615588b002d', 'number.ofpeople', '人数', 'zh-cn', '2014-07-05 18:32:48', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca901470615f986002f', 'common.proportion', 'Proportion', 'en', '2014-07-05 18:33:29', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061627450031', 'common.proportion', '比例', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e74c5e73f5014c5e80548f0001', 'user.report', '综合报表', 'zh-cn', '2015-03-28 11:50:10', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e74c5e73f5014c5e809f9d0003', 'user.report', 'newReport', 'en', '2015-03-28 11:50:30', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e74c6084c9014c609276500002', 'common.start', '启动', 'zh-cn', '2015-03-28 21:29:13', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e74c6084c9014c60929d5b0004', 'start', 'common.start', 'en', '2015-03-28 21:29:23', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e74c7a776c014c7a8121980004', 'operate.manage.data', '数据权限规则', 'zh-cn', '2015-04-02 22:20:25', 'admin', '管理员', '2017-10-26 17:10:42', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e74c7a776c014c7a817cd30006', 'operate.manage.data', 'Data access rule', 'en', '2015-04-02 22:20:48', 'admin', '管理员', '2017-10-26 17:10:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e74c7a776c014c7a8c8c860010', 'operation.type', 'rule type', 'en', '2015-04-02 22:32:53', 'admin', '管理员', '2015-04-02 22:34:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e74c7a776c014c7a8cb6290012', 'operation.type', '规则类型', 'zh-cn', '2015-04-02 22:33:04', 'admin', '管理员', '2015-04-02 22:34:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e74d762a40014d76332b370003', 'rolescope.rang2to8.notnull', 'Role need 2~8 bits', 'en', '2015-05-21 19:19:34', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e74d762a40014d7633a30c0005', 'rolescope.rang2to8.notnull', '角色范围在2~8位字符', 'zh-cn', '2015-05-21 19:20:05', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e74d762a40014d76342eb00007', 'rolecode.rang2to15.notnull', '角色编码范围在2~15位字符', 'zh-cn', '2015-05-21 19:20:40', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e74d762a40014d76348d970009', 'rolecode.rang2to15.notnull', 'Rolecode need 2~15 bits', 'en', '2015-05-21 19:21:05', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e750693d44015069621039002e', 'menu.online.template', 'Online Form Style', 'en', '2015-10-15 10:44:05', 'admin', '管理员', '2015-10-15 10:44:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e750a90ffc0150a9d47e580027', 'auto.form.formTempldateName', 'formTemplateName', 'en', '2015-10-27 23:04:46', 'admin', '管理员', '2015-10-27 23:05:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e750a90ffc0150a9d586f8002c', 'auto.form.formTempldateName', '自定义表单模板名', 'zh-cn', '2015-10-27 23:05:54', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e750b134780150b16db5ce0003', 'auto.form.formCode', '表单编码', 'zh-cn', '2015-10-29 10:29:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e750b134780150b16de6ed0005', 'auto.form.formCode', 'formCode', 'en', '2015-10-29 10:29:41', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880ea53365da801533671c4860001', 'notice.tip', '公告', 'zh-cn', '2016-03-02 16:28:58', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880ea53365da80153367223df0003', 'notice.tip', 'Notifications', 'en', '2016-03-02 16:29:23', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880ea53365da80153367419dd0005', 'notice.seeAll', '查看全部', 'zh-cn', '2016-03-02 16:31:31', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880ea53365da801533674bd1e0007', 'notice.seeAll', 'See all notifications', 'en', '2016-03-02 16:32:13', 'admin', '管理员', '2016-03-02 16:32:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880ea53365da801533675e268000a', 'message.tip', '消息', 'zh-cn', '2016-03-02 16:33:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880ea53365da80153367664c5000c', 'message.tip', 'Messages', 'en', '2016-03-02 16:34:02', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880ea53365da801533676f54f000e', 'message.seeAll', '查看全部', 'zh-cn', '2016-03-02 16:34:39', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880ea53365da80153367768ea0010', 'message.seeAll', 'See all messages', 'en', '2016-03-02 16:35:08', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fb6bcc50002', 'please.select.role', 'Please select a role', 'en', '2016-03-04 11:40:53', 'admin', '管理员', '2016-03-04 11:41:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fb776cb0005', 'please.select.role', '请选择角色', 'zh-cn', '2016-03-04 11:41:41', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fb7ef010007', 'please.select.user', 'please select a user', 'en', '2016-03-04 11:42:12', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fb841280009', 'please.select.user', '请选择用户', 'zh-cn', '2016-03-04 11:42:33', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fbe3093000b', 'common.user.select', '用户选择', 'zh-cn', '2016-03-04 11:49:02', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fbe79ad000d', 'common.user.select', 'User Select', 'en', '2016-03-04 11:49:20', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fc29581000f', 'common.notice', '公告', 'zh-cn', '2016-03-04 11:53:50', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fc3ead70011', 'common.notice', 'Notifications', 'en', '2016-03-04 11:55:17', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fc84f540013', 'notice.manage', '公告管理', 'zh-cn', '2016-03-04 12:00:05', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fc9a6e60015', 'notice.manage', 'Notifications Management', 'en', '2016-03-04 12:01:33', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fce327a0018', 'common.authority', '授权', 'zh-cn', '2016-03-04 12:06:31', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fcfbe4a001a', 'common.authority', 'Authorization', 'en', '2016-03-04 12:08:12', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fd57083001c', 'common.authority.role', '角色授权', 'zh-cn', '2016-03-04 12:14:25', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fd61fc6001e', 'common.authority.role', 'Role Authorization', 'en', '2016-03-04 12:15:10', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fd6baf40020', 'common.authority.user', 'User Authorization', 'en', '2016-03-04 12:15:50', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fd6e88d0022', 'common.authority.user', '用户授权', 'zh-cn', '2016-03-04 12:16:02', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fd8cfe10024', 'common.read', '阅读', 'zh-cn', '2016-03-04 12:18:06', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880eb533fb18001533fd921060026', 'common.read', 'Read', 'en', '2016-03-04 12:18:27', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880f35c446158015c44627fcd0002', 'lang.broswer', '浏览器', 'zh-cn', '2017-05-26 18:52:04', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881026416bfa8016416c774de0001', 'common.range1to50', '类型范围在1~50位字符', 'zh-cn', '2018-06-19 14:42:08', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881026416bfa8016416c82a160003', 'common.range1to50', 'The type in the range of 1~50 characters', 'en', '2018-06-19 14:42:54', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881026416bfa8016416cb5fc20005', 'common.range1to10', '类型编码在1~10位字符', 'zh-cn', '2018-06-19 14:46:24', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881026416bfa8016416cb9ed60007', 'common.range1to10', 'The type in the range of 1~10 characters', 'en', '2018-06-19 14:46:41', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028810264f4f97d0164f527c5dd000e', 'please.input.table.content', '请填写表描述！', 'zh-cn', '2018-08-01 19:03:02', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028810264f4f97d0164f528560a0010', 'please.input.table.content', 'Please Input Table Content', 'en', '2018-08-01 19:03:39', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881026560c0a0016560e237d50005', 'common.position.name', '职务', 'zh-cn', '2018-08-22 17:06:03', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881026560c0a0016560e2bd800007', 'common.position.name', 'Position Name', 'en', '2018-08-22 17:06:37', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40288102657927c401657947644c0001', 'common.event', '事件状态', 'zh-cn', '2018-08-27 10:47:27', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40288102657927c401657947f3f90003', 'common.event', 'Event State', 'en', '2018-08-27 10:48:03', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40288102657951ed016579537e400001', 'common.begin', '开始', 'zh-cn', '2018-08-27 11:00:40', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40288102657951ed0165795414370003', 'common.begin', 'Begin', 'en', '2018-08-27 11:01:18', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40288102657951ed0165795465070005', 'common.end', '结束', 'zh-cn', '2018-08-27 11:01:39', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('40288102657951ed01657954835f0007', 'common.end', 'End', 'en', '2018-08-27 11:01:46', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dc0fdf0005', 'has.sync', '已同步', 'zh-cn', '2014-07-12 12:36:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:36:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dcc32c0007', 'has.sync', 'Synchronized', 'en', '2014-07-12 12:37:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:10:45', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dd29140009', 'have.nosync', '未同步', 'zh-cn', '2014-07-12 12:38:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:38:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dd8161000b', 'have.nosync', 'No Synchronize', 'en', '2014-07-12 12:38:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:38:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dfe5610013', 'single.table', '单表', 'zh-cn', '2014-07-12 12:41:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:41:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728e0077e0015', 'single.table', 'Single Table', 'en', '2014-07-12 12:41:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:41:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728e0f6500017', 'slave.table', '附表', 'zh-cn', '2014-07-12 12:42:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:42:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728e1183d0019', 'slave.table', 'Slave Table', 'en', '2014-07-12 12:42:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:42:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728fd5f160003', 'smart.form.setting', '智能表单配置', 'zh-cn', '2014-07-12 13:13:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:13:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728fd89ff0005', 'smart.form.setting', 'Smart Form Setting', 'en', '2014-07-12 13:13:30', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:13:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728feca7b0007', 'generate.form', '生成表单', 'zh-cn', '2014-07-12 13:14:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:14:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728feedfa0009', 'generate.form', 'Generate Form', 'en', '2014-07-12 13:15:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728ff5a4e000b', 'generate.success', '生成成功', 'zh-cn', '2014-07-12 13:15:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728ff7e81000d', 'generate.success', 'Generate Success', 'en', '2014-07-12 13:15:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472900fe10000f', 'please.select.generate.item', '请选择要生成表单的项!', 'zh-cn', '2014-07-12 13:17:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:17:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472901dab10011', 'please.select.generate.item', 'Please select should be generated item.', 'en', '2014-07-12 13:18:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:18:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa280147290fad990013', 'button.code', '按钮编码', 'zh-cn', '2014-07-12 13:33:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa280147290fcac30015', 'button.code', 'Button Code', 'en', '2014-07-12 13:33:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472910045f0017', 'button.name', '按钮名称', 'zh-cn', '2014-07-12 13:33:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014729101a4a0019', 'button.name', 'Button Name', 'en', '2014-07-12 13:33:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa280147291059ca001b', 'button.style', '按钮样式', 'zh-cn', '2014-07-12 13:34:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472910776c001d', 'button.style', 'Button Style', 'en', '2014-07-12 13:34:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472910a634001f', 'action.type', '动作类型', 'zh-cn', '2014-07-12 13:34:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472910bdd70021', 'action.type', 'Action Type', 'en', '2014-07-12 13:34:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293008280009', 'super.admin', '超级管理员', 'zh-cn', '2014-07-12 14:08:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:08:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293021c7000b', 'super.admin', 'Super Admin', 'en', '2014-07-12 14:08:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:08:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c73014729308a0e000d', 'please.select.lock.item', '请选择锁定项目', 'zh-cn', '2014-07-12 14:09:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:09:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472930ae9e000f', 'please.select.lock.item', 'Please select locked item', 'en', '2014-07-12 14:09:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:09:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472931c5900011', 'is.confirm', '确定吗', 'zh-cn', '2014-07-12 14:10:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:10:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c73014729320e310013', 'is.confirm', 'Confirm?', 'en', '2014-07-12 14:10:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:10:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c73014729369dde0015', 'current.permission', '当前权限', 'zh-cn', '2014-07-12 14:15:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:15:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472936c80f0017', 'current.permission', 'Current Permission', 'en', '2014-07-12 14:16:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:16:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c73014729386dce0019', 'confirm.delete.this.record', '确定删除该记录吗', 'zh-cn', '2014-07-12 14:17:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:17:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472938c6f9001b', 'confirm.delete.this.record', 'Delete this record, Confirm?', 'en', '2014-07-12 14:18:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:18:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472939f98b001d', 'menu.list', '菜单列表', 'zh-cn', '2014-07-12 14:19:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:19:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293a157d001f', 'menu.list', 'Menu List', 'en', '2014-07-12 14:19:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:19:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293ab7a10021', 'operate.button.list', '系统权限中心', 'zh-cn', '2014-07-12 14:20:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2017-10-26 17:08:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293aefc40023', 'operate.button.list', 'Authority center', 'en', '2014-07-12 14:20:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2017-10-26 17:07:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293b76f80025', 'select.all', '全 选', 'zh-cn', '2014-07-12 14:21:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2018-01-05 10:44:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293b8dc60027', 'select.all', 'Select All', 'en', '2014-07-12 14:21:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:21:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('40288103472948880147294b26420002', 'button.setting', '页面控件权限', 'zh-cn', '2014-07-12 14:38:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-04-02 22:12:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('40288103472948880147294b432a0004', 'button.setting', 'Page control config', 'en', '2014-07-12 14:38:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-04-02 20:06:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf3de950001', 'common.button.code', '按钮编码', 'zh-cn', '2014-07-19 12:49:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:49:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf407a90003', 'common.button.code', 'Button Code', 'en', '2014-07-19 12:49:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:49:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf46f7f0005', 'common.button.name', '按钮名称', 'zh-cn', '2014-07-19 12:49:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:49:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf4994d0007', 'common.button.name', 'Button Name', 'en', '2014-07-19 12:50:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:50:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf4f6430009', 'common.button.style', '按钮样式', 'zh-cn', '2014-07-19 12:50:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:50:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf517aa000b', 'common.button.style', 'Button Style', 'en', '2014-07-19 12:50:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:50:36', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf5930c000d', 'common.action.type', '动作类型', 'zh-cn', '2014-07-19 12:51:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:51:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf5af11000f', 'common.action.type', 'Action Type', 'en', '2014-07-19 12:51:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:51:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf652c20011', 'common.show.sequence', 'Show Sequence', 'en', '2014-07-19 12:51:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:04:07', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf694a20013', 'common.show.sequence', '显示顺序', 'zh-cn', '2014-07-19 12:52:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:52:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf6fa160015', 'common.show.icon.style', '显示图标样式', 'zh-cn', '2014-07-19 12:52:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:52:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf71da40017', 'common.show.icon.style', 'Show Icon Style', 'en', '2014-07-19 12:52:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:52:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf776390019', 'common.show.expression', '显示表达式', 'zh-cn', '2014-07-19 12:53:11', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:53:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf7972c001b', 'common.show.expression', 'Show Expression', 'en', '2014-07-19 12:53:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:53:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474d025ae20024', 'lang.code.cannot.add.update.delete', '编码不能是add/update/delete', 'zh-cn', '2014-07-19 13:05:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:05:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474d0294e30026', 'lang.code.cannot.add.update.delete', 'Code cannot be add/update/delete', 'en', '2014-07-19 13:05:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:05:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d28a1fe0002', 'lang.user.online', '人在线', 'zh-cn', '2014-07-19 13:46:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:46:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d28cef50004', 'lang.user.online', 'user online', 'en', '2014-07-19 13:47:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:47:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2cc7d80006', 'common.login.name', '登录名', 'zh-cn', '2014-07-19 13:51:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:51:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2cf5650008', 'common.login.name', 'Login Name', 'en', '2014-07-19 13:51:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:51:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2ed970000a', 'common.login.time', '登录时间', 'zh-cn', '2014-07-19 13:53:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2f0340000c', 'common.login.time', 'Login Time', 'en', '2014-07-19 13:53:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2f0340001c', 'common.enter.verifycode', '请输入验证码', 'zh-cn', '2014-07-19 13:53:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2f0340002c', 'common.verifycode.error', '验证码错误', 'zh-cn', '2014-07-19 13:53:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2f0340003c', 'common.username.or.password.error', '用户名或密码错误', 'zh-cn', '2014-07-19 13:53:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2f0340004c', 'common.enter.verifycode', 'Please enter the verification code', 'en', '2014-07-19 13:53:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2f0340005c', 'common.verifycode.error', 'Verification code error', 'en', '2014-07-19 13:53:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2f0340006c', 'common.username.or.password.error', 'User name or password error', 'en', '2014-07-19 13:53:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d3ad8c9000f', 'common.select', '选择', 'zh-cn', '2014-07-19 14:06:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 14:06:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d3b14bb0011', 'common.select', 'Select', 'en', '2014-07-19 14:07:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 14:07:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d3b61020013', 'common.clear', '清空', 'zh-cn', '2014-07-19 14:07:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 14:07:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d3b78f30015', 'common.clear', 'Clear', 'en', '2014-07-19 14:07:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 14:07:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752b0d7014752b35e4f0001', 'username.rang2to10', 'User account need 2~10 bits', 'en', '2014-07-20 15:36:32', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 15:36:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752c793014752cd3369000a', 'common.delete.success.param', '{0}删除成功', 'zh-cn', '2014-07-20 16:04:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:04:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752dc11014752e731930003', 'lang.dictionary.type', '字典分类', 'zh-cn', '2014-07-20 16:33:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:33:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752dc11014752e765dd0005', 'lang.dictionary.type', 'Dictionary Type', 'en', '2014-07-20 16:33:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:33:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752dc11014752e98bf90007', 'lang.dictionary.value', '字典值', 'zh-cn', '2014-07-20 16:35:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:35:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752dc11014752e9eba60009', 'lang.dictionary.value', 'Dictionary Value', 'en', '2014-07-20 16:36:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:06:50', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f793fd690016', 'common.taskid', 'Task Id', 'en', '2014-07-02 22:56:50', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:28', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f794259e0018', 'common.taskid', '任务ID', 'zh-cn', '2014-07-02 22:57:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:19:13', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7949e2d001a', 'common.task.desc', '任务描述', 'zh-cn', '2014-07-02 22:57:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-03 12:37:08', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f794d224001c', 'common.task.desc', 'Task Describe', 'en', '2014-07-02 22:57:44', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:38', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79550c4001e', 'cron.expression', 'cron表达式', 'zh-cn', '2014-07-02 22:58:16', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:22:37', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7956b7b0020', 'cron.expression', 'Cron Expression', 'en', '2014-07-02 22:58:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f795c74b0022', 'common.iseffect', '是否生效', 'zh-cn', '2014-07-02 22:58:47', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:22:58', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79643cc0024', 'common.iseffect', 'isEffect', 'en', '2014-07-02 22:59:19', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:03', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f796fbd60026', 'running.state', '运行状态', 'zh-cn', '2014-07-02 23:00:06', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:19', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79729ce0028', 'running.state', 'Running State', 'en', '2014-07-02 23:00:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:52', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f798b8850034', 'common.createby', 'Create By', 'en', '2014-07-02 23:02:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:58', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f798f9cf0036', 'common.createby', '创建人', 'zh-cn', '2014-07-02 23:02:16', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7999ffd003c', 'common.updateby', 'Update By', 'en', '2014-07-02 23:02:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:12', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f799e7e9003e', 'common.updateby', '修改人', 'zh-cn', '2014-07-02 23:03:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:24:30', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79a3aed0040', 'common.updatetime', '修改时间', 'zh-cn', '2014-07-02 23:03:38', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:24:47', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79a6c310042', 'common.updatetime', 'Update Time', 'en', '2014-07-02 23:03:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:21', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79b70e90044', 'common.operation', 'Operation', 'en', '2014-07-02 23:04:58', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:27', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79b9eef0046', 'common.operation', '操作', 'zh-cn', '2014-07-02 23:05:10', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:25:17', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79d8ea10048', 'common.start', 'Start', 'en', '2014-07-02 23:07:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:32', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79e5f54004c', 'common.stop', 'Stop', 'en', '2014-07-02 23:08:10', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:38', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79e7be9004e', 'common.stop', '停止', 'zh-cn', '2014-07-02 23:08:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:27', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79faa1d0050', 'effective.immediately', 'Effective Immediately', 'en', '2014-07-02 23:09:35', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:35', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79fcc7f0052', 'effective.immediately', '立即生效', 'zh-cn', '2014-07-02 23:09:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:39', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a011b60054', 'common.delete', 'Delete', 'en', '2014-07-02 23:10:01', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a02ccc0056', 'common.delete', '删除', 'zh-cn', '2014-07-02 23:10:08', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:55', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a0da820059', 'common.add', 'Add', 'en', '2014-07-02 23:10:53', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:57', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a106cf005b', 'common.add', '录入', 'zh-cn', '2014-07-02 23:11:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:13', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a1500f005d', 'common.edit', 'Edit', 'en', '2014-07-02 23:11:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:04', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a16f90005f', 'common.edit', '编辑', 'zh-cn', '2014-07-02 23:11:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:24', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a186c20061', 'common.view', 'View', 'en', '2014-07-02 23:11:37', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:09', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a1aa900063', 'common.view', '查看', 'zh-cn', '2014-07-02 23:11:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:36', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a44eb60065', 'schedule.task.manage', 'Timed Task Manage', 'en', '2014-07-02 23:14:39', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:28:08', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a471110067', 'schedule.task.manage', '定时任务管理', 'zh-cn', '2014-07-02 23:14:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b7f88700a0', 'log.content', 'Log Content', 'en', '2014-07-02 23:36:08', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:04', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b828ee00a2', 'log.content', '日志内容', 'zh-cn', '2014-07-02 23:36:20', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b932f600a4', 'operate.ip', 'Operate IP', 'en', '2014-07-02 23:37:28', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:30', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b9677100a6', 'operate.ip', '操作IP', 'zh-cn', '2014-07-02 23:37:41', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b9bd7d00a8', 'common.browser', 'Broswer', 'en', '2014-07-02 23:38:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:36', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b9f40a00aa', 'common.browser', '浏览器', 'zh-cn', '2014-07-02 23:38:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7ba2e7e00ac', 'operate.time', 'Operate Time', 'en', '2014-07-02 23:38:32', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7ba610e00ae', 'operate.time', '操作时间', 'zh-cn', '2014-07-02 23:38:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7bb601a00b0', 'log.manage', 'Log Manage', 'en', '2014-07-02 23:39:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7bb7ef200b2', 'log.manage', '日志管理', 'zh-cn', '2014-07-02 23:39:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7bbef3600b4', 'log.level', 'Log Level', 'en', '2014-07-02 23:40:27', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c012cd00cc', 'select.loglevel', 'Please select log level', 'en', '2014-07-02 23:44:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c086ff00ce', 'select.loglevel', '选择日志类型', 'zh-cn', '2014-07-02 23:45:28', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c0c98a00d0', 'common.login', 'Login', 'en', '2014-07-02 23:45:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c0ecb900d2', 'common.login', '登录', 'zh-cn', '2014-07-02 23:45:54', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c287de00d9', 'common.insert', 'Insert', 'en', '2014-07-02 23:47:40', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c2a1f200db', 'common.insert', '插入', 'zh-cn', '2014-07-02 23:47:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c4ad4600e1', 'common.update', 'Update', 'en', '2014-07-02 23:50:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c4dc8700e3', 'common.update', '更新', 'zh-cn', '2014-07-02 23:50:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c5815c00e5', 'common.upload', 'Upload', 'en', '2014-07-02 23:50:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c5a60600e7', 'common.upload', '上传', 'zh-cn', '2014-07-02 23:51:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c5fd5700e9', 'common.other', 'Other', 'en', '2014-07-02 23:51:26', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c62c2400eb', 'common.other', '其他', 'zh-cn', '2014-07-02 23:51:38', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46fa75be0146fa855c60000e', 'log.level', '日志类型', 'zh-cn', '2014-07-03 12:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e234fb0014e239611a10034', 'auto.form.formName', '表单名称', 'zh-cn', '2015-06-24 11:21:54', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e234fb0014e239641ff0036', 'auto.form.formName', 'formName', 'en', '2015-06-24 11:22:06', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e234fb0014e23968fe00038', 'auto.form.formDesc', '表单描述', 'zh-cn', '2015-06-24 11:22:26', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e234fb0014e2396b425003a', 'auto.form.formDesc', 'formDesc', 'en', '2015-06-24 11:22:35', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e234fb0014e23980122003c', 'auto.form.formContent', 'formContent', 'en', '2015-06-24 11:24:01', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e234fb0014e23984307003e', 'auto.form.formContent', '表单内容', 'zh-cn', '2015-06-24 11:24:18', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e4833b6014e48397c250003', 'auto.form.addorupdate', '表单设计器', 'zh-cn', '2015-07-01 14:06:43', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e4833b6014e483b9ed60008', 'auto.form.addorupdate', 'formdesign', 'en', '2015-07-01 14:09:03', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e4833b6014e483fbd30000a', 'formstyle.title', '自定义表单模板', 'zh-cn', '2015-07-01 14:13:33', 'admin', '管理员', '2015-10-27 22:41:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881b74e4833b6014e48409456000c', 'formstyle.title', 'formTemplate', 'en', '2015-07-01 14:14:28', 'admin', '管理员', '2015-10-27 22:41:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146effd3b0a0001', 'common.language', '语言', 'zh-cn', '2014-07-01 11:34:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:41:20', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146effd5d980003', 'language', 'Languge', 'en', '2014-07-01 11:34:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:01:46', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f001f7cd0007', 'common.delete.success.param', '{0} delete success', 'en', '2014-07-01 11:39:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:40:26', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f00e2152000b', 'common.edit.success.param', '{0} 更新成功', 'zh-cn', '2014-07-01 11:53:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:17:01', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f00f05aa000d', 'common.edit.success.param', '{0} update success', 'en', '2014-07-01 11:54:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:03:05', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f01110bc000f', 'common.add.success.param', '{0} 录入成功', 'zh-cn', '2014-07-01 11:56:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:56:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f01153070011', 'common.add.success.param', '{0} add success', 'en', '2014-07-01 11:56:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:56:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f02d9e910002', 'common.refresh.success', '刷新成功', 'zh-cn', '2014-07-01 12:27:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:27:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f02df49c0004', 'common.refresh.success', 'Refresh success', 'en', '2014-07-01 12:28:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:28:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f0301b150006', 'common.edit.fail.param', '{0} 更新失败', 'zh-cn', '2014-07-01 12:30:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:30:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f030cde00008', 'common.edit.fail.param', '{0} update fail', 'en', '2014-07-01 12:31:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:31:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f0346009000a', 'common.refresh.fail', '刷新失败', 'zh-cn', '2014-07-01 12:35:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:35:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f0348bc9000c', 'common.refresh.fail', 'Refresh Fail', 'en', '2014-07-01 12:35:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:35:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063dc2080001', 'database.property', '数据库属性', 'zh-cn', '2014-07-05 19:16:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:16:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063e03aa0003', 'database.property', 'Database Property', 'en', '2014-07-05 19:17:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063e73640005', 'page.property', '页面属性', 'zh-cn', '2014-07-05 19:17:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063e910c0007', 'page.property', 'Page Property', 'en', '2014-07-05 19:17:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063f9a4a0009', 'validate.dict', 'Validate Dictionary', 'en', '2014-07-05 19:18:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:18:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063fe101000b', 'validate.dict', '校验字典', 'zh-cn', '2014-07-05 19:19:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:19:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe014706408c51000d', 'common.fk', '外键', 'zh-cn', '2014-07-05 19:19:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:19:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147064102b0000f', 'common.fk', 'Foreign Key', 'en', '2014-07-05 19:20:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:20:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065887a70011', 'smark.form.form.maintain', '智能表单-表单维护', 'zh-cn', '2014-07-05 19:46:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:46:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470658c29d0013', 'smark.form.form.maintain', 'Smart Form', 'en', '2014-07-05 19:46:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:46:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065a870d0015', 'common.one.to.many', '一对多', 'zh-cn', '2014-07-05 19:48:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:48:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065acd6d0017', 'common.one.to.many', 'One To Many', 'en', '2014-07-05 19:48:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:48:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065c1d980019', 'comon.one.to.one', '一对一', 'zh-cn', '2014-07-05 19:50:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:50:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065c3551001b', 'comon.one.to.one', 'One To One', 'en', '2014-07-05 19:50:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:50:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147066041eb001d', 'common.uuid36bit', 'UUID(36位唯一编码)', 'zh-cn', '2014-07-05 19:54:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:54:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470660a327001f', 'common.uuid36bit', 'UUID(36 Bit Unique Code)', 'en', '2014-07-05 19:55:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:55:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147066267e70021', 'common.native.auto.increment', 'NATIVE(自增长方式)', 'zh-cn', '2014-07-05 19:56:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:56:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470662f1dd0023', 'common.native.auto.increment', 'NATIVE(Auto Increment)', 'en', '2014-07-05 19:57:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:57:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470663fbd00025', 'common.sequence', 'SEQUENCE(序列方式)', 'zh-cn', '2014-07-05 19:58:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:58:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe014706646c6b0027', 'common.sequence', 'SEQUENCE(Sequence)', 'en', '2014-07-05 19:59:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:59:19', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe014706669f32002a', 'please.input.table.name', '请输入表名！', 'zh-cn', '2014-07-05 20:01:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 20:01:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470666c8e8002c', 'please.input.table.name', 'Please Input Table Name', 'en', '2014-07-05 20:01:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 20:01:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347203fcc0147204d69020009', 'input.error', '输入错误', 'zh-cn', '2014-07-10 20:44:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:44:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347203fcc0147204d9ef9000b', 'input.error', 'Input error', 'en', '2014-07-10 20:44:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:44:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fc0014720704aa50001', 'menuname.rang4to15', '菜单名称范围4~15位字符,且不为空', 'zh-cn', '2014-07-10 21:22:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:22:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fc0014720718d360003', 'menuname.rang4to15', 'Menu name should be 4-15 characters and should not empty', 'en', '2014-07-10 21:23:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:23:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fc001472082f5130005', 'jeect.platform', 'Jeecg 快速开发平台', 'zh-cn', '2014-07-10 21:42:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:42:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fc00147208321e10007', 'jeect.platform', 'Jeecg Quckly Platform', 'en', '2014-07-10 21:42:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:42:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fcc0014720704aa5000', 'menuname.rang2to15', '菜单名称范围2~15位字符,且不为空', 'zh-cn', '2014-07-10 21:22:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:22:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fcd0014720718d36000', 'menuname.rang2to15', 'Menu name should be 2-15 characters and should not empty', 'en', '2014-07-10 21:23:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:23:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f486df0146f49af73f0001', 'pk.strategies', 'Primary key strategies', 'en', '2014-07-02 09:05:35', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 09:05:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f486df0146f49c57320003', 'pk.strategies', '主键策略', 'zh-cn', '2014-07-02 09:07:05', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 09:07:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f492d60001', 'table.name', '表名', 'zh-cn', '2014-07-02 15:23:04', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:23:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f4b8fe0003', 'table.name', 'Table Name', 'en', '2014-07-02 15:23:14', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:23:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f536b50005', 'table.description', 'Table Desc', 'en', '2014-07-02 15:23:46', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-21 10:16:11', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f56e0d0007', 'table.description', '表描述', 'zh-cn', '2014-07-02 15:24:00', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-21 10:16:15', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f648c00009', 'table.type', 'Table Type', 'en', '2014-07-02 15:24:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:24:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f672b6000b', 'table.type', '表类型', 'zh-cn', '2014-07-02 15:25:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:25:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f61534a0000d', 'sequence.name', 'Sequence', 'en', '2014-07-02 15:58:43', '402881e946e70d550146e70fa0680086', 'admin', '2016-03-01 21:26:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f621503b0019', 'master.table', '主表', 'zh-cn', '2014-07-02 16:11:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:11:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f621dddd001b', 'master.table', 'Master Table', 'en', '2014-07-02 16:12:33', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:12:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6279e0f001d', 'common.yes', 'Yes', 'en', '2014-07-02 16:18:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:18:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f627cd1f001f', 'common.yes', '是', 'zh-cn', '2014-07-02 16:19:02', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f627f2040021', 'common.no', 'No', 'en', '2014-07-02 16:19:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6281f900023', 'common.no', '否', 'zh-cn', '2014-07-02 16:19:23', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f62fe8800025', 'single.query', 'Single Choice Query', 'en', '2014-07-02 16:27:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:27:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6302a9f0027', 'single.query', '单表查询', 'zh-cn', '2014-07-02 16:28:10', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:28:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f630e67d0029', 'combine.query', '组合查询', 'zh-cn', '2014-07-02 16:28:58', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:28:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6312721002b', 'combine.query', 'Combined Query', 'en', '2014-07-02 16:29:14', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:29:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6422c510036', 'common.isnull', 'Is Null', 'en', '2014-07-02 16:47:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:47:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6428fd00038', 'common.isnull', '是否为空', 'zh-cn', '2014-07-02 16:48:15', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f642e30f003a', 'common.pk', 'Primary Key', 'en', '2014-07-02 16:48:37', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f64311fb003c', 'common.pk', '主键', 'zh-cn', '2014-07-02 16:48:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6457894003e', 'field.type', 'Filed Type', 'en', '2014-07-02 16:51:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:51:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6459cd30040', 'field.type', '字段类型', 'zh-cn', '2014-07-02 16:51:35', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:51:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e44df713f5014df72de2170028', 'form.db.type', '数据源类型', 'zh-cn', '2015-06-15 20:24:48', 'admin', '管理员', '2015-06-15 20:34:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e44df713f5014df72f5a47002b', 'form.db.type', 'formDbType', 'en', '2015-06-15 20:26:25', 'admin', '管理员', '2015-06-16 16:23:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e44df713f5014df73a703d0031', 'form.db.type.table', '数据库表', 'zh-cn', '2015-06-15 20:38:31', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44df713f5014df73ac0d20033', 'form.db.type.table', 'TABLE', 'en', '2015-06-15 20:38:52', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44df713f5014df73b30750035', 'form.db.type.sql', '动态SQL', 'zh-cn', '2015-06-15 20:39:20', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44df713f5014df73bdc330037', 'form.db.type.sql', 'DYN_SQL', 'en', '2015-06-15 20:40:04', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44df713f5014df73c6e6f0039', 'form.db.type.clazz', 'java类', 'zh-cn', '2015-06-15 20:40:42', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44df713f5014df73c91d0003b', 'form.db.type.clazz', 'CLAZZ', 'en', '2015-06-15 20:40:51', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44dfc7bea014dfc7e0a170005', 'common.company.code', 'sysCompanyCode', 'en', '2015-06-16 21:10:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44dfc7bea014dfc7e3b740007', 'common.company.code', '所属公司', 'zh-cn', '2015-06-16 21:10:40', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e06f820014e06fa58e90001', 'form.param.name', '参数', 'zh-cn', '2015-06-18 22:02:26', 'admin', '管理员', '2015-10-27 19:49:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e06f820014e06fa81ab0003', 'form.param.name', 'param', 'en', '2015-06-18 22:02:37', 'admin', '管理员', '2015-10-27 19:49:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e06f820014e06fab7c70005', 'form.param.desc', '参数文本', 'zh-cn', '2015-06-18 22:02:51', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e06f820014e06fad8e80007', 'form.param.desc', 'paramTxt', 'en', '2015-06-18 22:02:59', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e06f820014e06fb161f0009', 'form.param.value', '默认值', 'zh-cn', '2015-06-18 22:03:15', 'admin', '管理员', '2015-10-27 19:44:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e06f820014e06fb489c000b', 'form.param.value', 'defaultValue', 'en', '2015-06-18 22:03:28', 'admin', '管理员', '2015-10-27 19:45:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e06f820014e06fc10b0000d', 'form.field.name', '字段', 'zh-cn', '2015-06-18 22:04:19', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e06f820014e06fc6141000f', 'form.field.name', 'field', 'en', '2015-06-18 22:04:40', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e5d67e1014e5d7245f20002', 'autoform.preview', '预览', 'zh-cn', '2015-07-05 17:00:47', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e44e5d67e1014e5d726b1d0004', 'autoform.preview', 'preview', 'en', '2015-07-05 17:00:56', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e453a3a2550153a3b80b0f0001', 'please.muti.department', 'please.muti.department', 'en', '2016-03-23 21:44:21', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e453a3a2550153a3b868250003', 'please.muti.department', '部门可多选', 'zh-cn', '2016-03-23 21:44:45', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e54dcddf80014dcde2db0a000b', 'form.category', '表单分类', 'zh-cn', '2015-06-07 19:58:26', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e54dce2349014dce3e00e80005', 'form.category', 'formCategory', 'en', '2015-06-07 21:37:59', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e54dce2349014dce3e43b50007', 'bdfl', 'bdfl', 'zh-cn', '2015-06-07 21:38:16', 'admin', '管理员', '2015-06-07 21:44:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e54de251ee014de2713e550001', 'common.ssms.getSysInfos', '系统消息', 'zh-cn', '2015-06-11 19:46:22', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e54de251ee014de27235560003', 'common.ssms.getSysInfos', 'System message', 'en', '2015-06-11 19:47:25', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e55a6b49b0015a6b5456f40002', 'common.department.hasuser', '组织机构下有用户,不可直接删除', 'zh-cn', '2017-02-23 22:16:14', 'admin', '管理员', '2017-02-23 22:19:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e55a6b49b0015a6b55b7510004', 'common.department.hasuser', 'the department has related users', 'en', '2017-02-23 22:17:44', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e55dfd74a8015dfd83c4090001', 'common.task.className', 'Class Name', 'en', '2017-08-20 10:40:57', 'admin', '管理员', '2017-08-20 10:52:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e55dfd74a8015dfd8560130003', 'common.task.className', '任务类名', 'zh-cn', '2017-08-20 10:42:43', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e55dfd74a8015dfd86d7a80005', 'common.task.runServerIp', 'Run Server IP', 'en', '2017-08-20 10:44:19', 'admin', '管理员', '2017-08-20 10:52:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e55dfd74a8015dfd877fec0007', 'common.task.runServerIp', '执行服务器IP', 'zh-cn', '2017-08-20 10:45:02', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e55dfd74a8015dfd88f9b80009', 'common.task.runServer', 'Run Server(Project Domain)', 'en', '2017-08-20 10:46:39', 'admin', '管理员', '2018-02-28 18:56:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e55dfd74a8015dfd8cefe0000b', 'common.task.runServer', '远程主机(项目访问地址)', 'zh-cn', '2017-08-20 10:50:58', 'admin', '管理员', '2018-02-28 18:55:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e74e44c238014e44c40deb0001', 'form.db.query.param', '查询参数', 'zh-cn', '2015-06-30 21:59:36', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e74e44c238014e44c44e7d0003', 'form.db.query.param', 'queryParam', 'en', '2015-06-30 21:59:52', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e74e44c238014e44d0a7400005', 'form.db.query.data.column', '查询数据列', 'zh-cn', '2015-06-30 22:13:21', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e74e44c238014e44d0e08a0007', 'form.db.query.data.column', 'queryDataColumn', 'en', '2015-06-30 22:13:36', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca464640011', 'common.version', 'Version', 'en', '2014-06-30 19:58:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:58:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca47e280013', 'common.version', '版本', 'zh-cn', '2014-06-30 19:59:01', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca4b6bf0015', 'is.tree', 'Is Tree', 'en', '2014-06-30 19:59:16', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca4d8ba0017', 'is.tree', '是否树', 'zh-cn', '2014-06-30 19:59:24', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca510d60019', 'is.page', 'Is Page', 'en', '2014-06-30 19:59:39', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca537b7001b', 'is.page', '是否分页', 'zh-cn', '2014-06-30 19:59:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca6c3b8001d', 'sync.db', 'Sync DB', 'en', '2014-06-30 20:01:30', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:01:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca7193f001f', 'sync.db', '同步数据库', 'zh-cn', '2014-06-30 20:01:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:01:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca922890025', 'common.createtime', 'Create Time', 'en', '2014-06-30 20:04:05', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:04:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecab61a50033', 'common.createtime', '创建时间', 'zh-cn', '2014-06-30 20:06:33', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:53:48', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecac51520039', 'show.checkbox', 'Show Checkbox', 'en', '2014-06-30 20:07:34', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:07:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecac8bed003b', 'show.checkbox', '显示复选框', 'zh-cn', '2014-06-30 20:07:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:07:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecaea5630041', 'edit.form', 'Edit Table', 'en', '2014-06-30 20:10:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecaed7730043', 'edit.form', '编辑表单', 'zh-cn', '2014-06-30 20:10:19', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecaf39000045', 'create.form', 'Create From', 'en', '2014-06-30 20:10:44', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecaf63e00047', 'create.form', '创建表单', 'zh-cn', '2014-06-30 20:10:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb108de0049', 'custom.button', 'Custom Button', 'en', '2014-06-30 20:12:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:12:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb18fa6004b', 'custom.button', '自定义按钮', 'zh-cn', '2014-06-30 20:13:18', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:13:31', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb3bd13004e', 'form.generate', 'Generated From From DB', 'en', '2014-06-30 20:15:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-09-15 11:28:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb3f9df0050', 'form.generate', '数据库导入表单', 'zh-cn', '2014-06-30 20:15:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-09-15 11:28:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb58ed40052', 'form.import', '表单导入', 'zh-cn', '2014-06-30 20:17:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-09-15 11:28:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb5a76b0054', 'form.import', 'From Import', 'en', '2014-06-30 20:17:46', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:17:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb72e600056', 'form.export', 'From Export', 'en', '2014-06-30 20:19:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:19:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb762b50058', 'form.export', '表单导出', 'zh-cn', '2014-06-30 20:19:39', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:55', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecc71340005a', 'js.enhance', 'JsEnhance', 'en', '2014-06-30 20:36:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:36:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecc74476005c', 'js.enhance', 'js增强', 'zh-cn', '2014-06-30 20:37:00', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:37:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecca27d20062', 'sql.enhance', 'SqlEnhance', 'en', '2014-06-30 20:40:09', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecca51c60064', 'sql.enhance', 'sql增强', 'zh-cn', '2014-06-30 20:40:20', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecd312230068', 'smart.form.config', 'Smart Form Config', 'en', '2014-06-30 20:49:54', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:49:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecd3732a006a', 'smart.form.config', '智能表单配置', 'zh-cn', '2014-06-30 20:50:19', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:50:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f728bca20001', 'common.code', 'Code', 'en', '2014-07-02 20:59:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 20:59:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f728e6220003', 'common.code', '编码', 'zh-cn', '2014-07-02 20:59:51', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 20:59:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72b42b40015', 'common.batch.delete', 'Batch Delete', 'en', '2014-07-02 21:02:25', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:02:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72b9a000017', 'common.batch.delete', '批量删除', 'zh-cn', '2014-07-02 21:02:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:02:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72ce5260021', 'query.sql', 'Query Sql', 'en', '2014-07-02 21:04:13', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72d1b480023', 'query.sql', '查询sql', 'zh-cn', '2014-07-02 21:04:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72d54c60025', 'common.name', 'Name', 'en', '2014-07-02 21:04:41', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72d72840027', 'common.name', '名称', 'zh-cn', '2014-07-02 21:04:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72e486c0029', 'dynamic.table.head', 'Dynamic Table', 'en', '2014-07-02 21:05:44', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:05:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72e7bda002b', 'dynamic.table.head', '动态表头', 'zh-cn', '2014-07-02 21:05:57', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:05:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706da32a10009', 'common.order', 'Order', 'en', '2014-07-05 22:07:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:07:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706da55fa000b', 'common.order', '排序', 'zh-cn', '2014-07-05 22:07:57', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:07:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706daa606000d', 'common.text', 'Field Text', 'en', '2014-07-05 22:08:18', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dadb74000f', 'common.text', '字段文本', 'zh-cn', '2014-07-05 22:08:32', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706db1a6f0011', 'common.type', 'Type', 'en', '2014-07-05 22:08:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706db389d0013', 'common.type', '类型', 'zh-cn', '2014-07-05 22:08:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706db76390015', 'common.isshow', 'Is Show', 'en', '2014-07-05 22:09:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706db99420017', 'common.isshow', '是否显示', 'zh-cn', '2014-07-05 22:09:20', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dbdb330019', 'common.href', 'Href', 'en', '2014-07-05 22:09:37', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dc0bfe001b', 'common.href', '字段href', 'zh-cn', '2014-07-05 22:09:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dc5fc0001d', 'common.query.module', 'Query Module', 'en', '2014-07-05 22:10:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:10:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dc87df001f', 'common.query.module', '查询模式', 'zh-cn', '2014-07-05 22:10:21', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:10:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dd524d0021', 'dict.code', '字典Code', 'zh-cn', '2014-07-05 22:11:13', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dd8a300023', 'dict.code', 'Dict Code', 'en', '2014-07-05 22:11:27', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706ddc7570025', 'common.isquery', 'Is Query', 'en', '2014-07-05 22:11:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706ddec9e0027', 'common.isquery', '是否查询', 'zh-cn', '2014-07-05 22:11:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e230b80029', 'common.text.type', 'Column Type', 'en', '2014-07-05 22:16:32', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:16:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e25a9f002b', 'common.text.type', '文本类型', 'zh-cn', '2014-07-05 22:16:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:16:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e368c9002d', 'common.hide', 'Hideen', 'en', '2014-07-05 22:17:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:17:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e3b1e2002f', 'common.hide', '隐藏', 'zh-cn', '2014-07-05 22:18:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e3fe800031', 'common.show', 'Show', 'en', '2014-07-05 22:18:30', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e423e40033', 'common.show', '显示', 'zh-cn', '2014-07-05 22:18:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706eba47c003e', 'dynamic.report.config.detail', 'Dyna Report Detail', 'en', '2014-07-05 22:26:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:29:53', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706ebe1cd0040', 'dynamic.report.config.detail', '动态报表配置明细', 'zh-cn', '2014-07-05 22:27:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:30:02', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea5b2472b6015b2479b9ba0001', 'common.typemode', 'Cascade switch', 'en', '2017-03-31 21:06:48', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881ea5b2472b6015b247aa19a0003', 'common.typemode', '切换模式', 'zh-cn', '2017-03-31 21:07:48', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881f2635d5b6e01635d773ab20001', 'username.rang2to50', '用户账号范围在2~50位字符', 'zh-cn', '2018-05-14 15:04:44', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881f2635d5b6e01635d77bb650003', 'username.rang2to50', 'User account need 2~50 bits', 'en', '2018-05-14 15:05:17', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470fefea200003', 'dict.manage', '数据字典管理', 'zh-cn', '2014-07-07 16:28:07', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff21ddd0009', 'dict.name', 'Dict Name', 'en', '2014-07-07 16:30:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff24cb8000b', 'dict.name', '字典名称', 'zh-cn', '2014-07-07 16:30:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff4e2830019', 'common.add.param', '{0} Add', 'en', '2014-07-07 16:33:33', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-20 16:02:09', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff51cc9001b', 'common.add.param', '{0}录入', 'zh-cn', '2014-07-07 16:33:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-20 16:02:23', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff925da0025', 'dict.information.type', 'Data Dictionary Group Info', 'en', '2014-07-07 16:38:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff950100027', 'dict.information.type', '字典类型信息', 'zh-cn', '2014-07-07 16:38:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:43:03', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471005919a0037', 'common.role.list', 'Role List', 'en', '2014-07-07 16:51:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471005f5ac0039', 'common.role.list', '角色列表', 'zh-cn', '2014-07-07 16:52:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471006c0bf003f', 'common.role.code', 'Role Code', 'en', '2014-07-07 16:53:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471006e44a0041', 'common.role.code', '角色编码', 'zh-cn', '2014-07-07 16:53:13', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100713840043', 'common.role.name', 'Role Name', 'en', '2014-07-07 16:53:25', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe926014710073e820045', 'common.role.name', '角色名称', 'zh-cn', '2014-07-07 16:53:36', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe926014710095eb50053', 'common.edit.param', '{0} Edit', 'en', '2014-07-07 16:55:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-20 15:07:04', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100980ee0055', 'common.edit.param', '{0}编辑', 'zh-cn', '2014-07-07 16:56:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-20 15:07:13', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100affff0057', 'common.role.info', 'Role Info', 'en', '2014-07-07 16:57:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100b20eb0059', 'common.role.info', '角色信息', 'zh-cn', '2014-07-07 16:57:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100bf680005b', 'permission.set', 'Permission', 'en', '2014-07-07 16:58:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100c2c96005d', 'permission.set', '权限设置', 'zh-cn', '2014-07-07 16:58:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100e5051005f', 'permission.manage', 'Permission Manage', 'en', '2014-07-07 17:01:19', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100e8a360061', 'permission.manage', '权限管理', 'zh-cn', '2014-07-07 17:01:34', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100f73140067', 'permission.name', 'Permission Name', 'en', '2014-07-07 17:02:34', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100fa9270069', 'permission.name', '权限名称', 'zh-cn', '2014-07-07 17:02:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147101199f1006f', 'permission.collection', 'Permission Collection', 'en', '2014-07-07 17:04:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471011bb380071', 'permission.collection', '权限集合', 'zh-cn', '2014-07-07 17:05:03', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fc60b9b9f60160ba2fbf890002', 'excelDepartImport', '组织机构导入', 'zh-cn', '2018-01-03 12:03:00', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881fc60b9b9f60160ba3006ae0004', 'excelDepartImport', 'excelDepartImport', 'en', '2018-01-03 12:03:18', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881fc6305bc640163061f9a79000f', 'confirm.online.delete.record', '确认删除该记录吗？(同时删除表)', 'zh-cn', '2018-04-27 16:02:04', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402881fc6305bc640163061fd1dc0011', 'confirm.online.delete.record', 'Confirm delete record?(Drop table)', 'en', '2018-04-27 16:02:18', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402882b54e3eaa5b014e3ebde5d1000b', 'menu.online.template', 'Online表单样式', 'zh-cn', '2015-06-29 17:55:09', 'admin', '管理员', '2015-10-15 10:43:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402882b54e943804014e944151e30001', 'form.template.style', '自定义表单风格', 'zh-cn', '2015-07-16 08:26:26', 'admin', '管理员', '2015-07-16 15:06:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402882b54e943804014e944196d10003', 'form.template.style', 'Custom Template Style', 'en', '2015-07-16 08:26:43', 'admin', '管理员', '2015-07-16 15:05:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402882e54ebb5629014ebb5c56540003', 'form.tb.db.key', '填报数据源', 'zh-cn', '2015-07-23 22:41:08', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402882e54ebb5629014ebb5ca0650005', 'form.tb.db.table.name', '填报数据库表', 'zh-cn', '2015-07-23 22:41:27', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402883884dc3b87d014dc3ba4cbd0001', 'common.menu.del.fail', '删除失败，有关联数据不能删除!', 'zh-cn', '2015-06-05 20:37:56', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402883884dd31b11014dd31cedf20001', 'common.dynamic.dbsource', '数据源', 'zh-cn', '2015-06-08 20:19:58', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028838850ac5c1d0150ac6389e80001', 'form.db.chname', '数据源名称', 'zh-cn', '2015-10-28 11:00:16', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028838850ac5c1d0150ac63cd910003', 'form.db.chname', 'dbName', 'en', '2015-10-28 11:00:33', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028838850ae6f7b0150ae720a9c0003', 'form.field.content', '字段文本', 'zh-cn', '2015-10-28 20:35:21', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028838850ae6f7b0150ae72f8960005', 'form.field.content', 'fieldContent', 'en', '2015-10-28 20:36:22', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc3fc7350002', 'common.change.refresh', '样式修改成功，请刷新页面', 'zh-cn', '2014-06-24 13:01:10', 'admin', '管理员', '2014-06-24 13:01:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc4029a60004', 'common.change.refresh', 'Style change success, please refresh', 'en', '2014-06-24 13:01:35', 'admin', '管理员', '2014-06-24 13:01:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc4541cb0006', 'common.login.again', '请登录后再操作', 'zh-cn', '2014-06-24 13:07:09', 'admin', '管理员', '2014-06-24 13:07:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc45c1270008', 'common.login.again', 'Please login again', 'en', '2014-06-24 13:07:41', 'admin', '管理员', '2014-06-24 13:07:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc4de4da000a', 'common.userinfo', '用户信息', 'zh-cn', '2014-06-24 13:16:35', 'admin', '管理员', '2014-06-24 13:16:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc4e7b25000c', 'common.userinfo', 'My Profile', 'en', '2014-06-24 13:17:13', 'admin', '管理员', '2014-06-24 13:17:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc55cac30012', 'common.surname', '姓名', 'zh-cn', '2014-06-24 13:25:13', 'admin', '管理员', '2014-06-24 13:25:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc55f21b0014', 'common.surname', 'Name', 'en', '2014-06-24 13:25:23', 'admin', '管理员', '2014-06-24 13:25:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402885814e2ef20c014e2ef347d50003', 'common.dbname', '数据库名称', 'zh-cn', '2015-06-26 16:19:32', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402885814e2ef20c014e2ef3767e0005', 'common.dbname', 'Database Name', 'en', '2015-06-26 16:19:44', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028911b5bffc927015bffcfa3570003', 'number.broswer', '数量', 'zh-cn', '2017-05-13 11:17:29', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028911b5bffd240015bfff5ad0e0003', 'broswer.count.analysis', '浏览器登录次数比例分析', 'zh-cn', '2017-05-13 11:59:02', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028911b5bffd240015bfff894b30005', 'broswer.count.statistics', '浏览器登录次数统计', 'zh-cn', '2017-05-13 12:02:12', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028911b5c00ae85015c00c0a1400007', 'lang.broswer', 'broswer', 'en', '2017-05-13 15:40:43', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028911b5c00ae85015c00c0dd3d0009', 'number.broswer', 'number', 'en', '2017-05-13 15:40:58', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028911b5c00ae85015c00c1a628000b', 'broswer.count.analysis', 'broswer count analysis', 'en', '2017-05-13 15:41:49', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028911b5c00ae85015c00c1fd95000d', 'broswer.count.statistics', 'broswer count statistics', 'en', '2017-05-13 15:42:12', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028918164456ce001644580c16e0007', 'common.user.interfaceUser', '接口用户不允许登录', 'zh-cn', '2018-06-28 16:27:03', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028918164456ce00164458189cf0009', 'common.user.interfaceUser', 'Interface user does not allow login', 'en', '2018-06-28 16:27:55', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028948151536dc10151536f1a4e0001', 'common.returnvalfield', '返回值字段', 'zh-cn', '2015-11-29 21:29:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028948151536dc10151536f4a190003', 'common.returnvalfield', 'returnvalfield', 'en', '2015-11-29 21:29:41', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028948151536dc10151536f87c10005', 'common.returntxtfield', '返回文本字段', 'zh-cn', '2015-11-29 21:29:56', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028948151536dc10151536fa6ca0007', 'common.returntxtfield', 'returntxtfield', 'en', '2015-11-29 21:30:04', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815325c044015325c515890001', 'common.mobile', '电话', 'zh-cn', '2016-02-28 10:46:26', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815325c044015325c545850003', 'common.mobile', 'mobile', 'en', '2016-02-28 10:46:39', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815325c044015325c93bb10005', 'common.fax', '传真', 'zh-cn', '2016-02-28 10:50:58', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815325c044015325c960bb0007', 'common.fax', 'fax', 'en', '2016-02-28 10:51:08', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815325c044015325c9ab690009', 'common.address', '地址', 'zh-cn', '2016-02-28 10:51:27', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815325c044015325c9cf32000b', 'common.address', 'address', 'en', '2016-02-28 10:51:36', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815325ce7a015325d636ec0002', 'departmentaddress.rang1to50', '组织机构地址范围1~50位字符', 'zh-cn', '2016-02-28 11:05:09', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815325ce7a015325d6ed890004', 'departmentaddress.rang1to50', 'Depart address should be 1-50 characters', 'en', '2016-02-28 11:05:56', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815364df430153651ae7dd0002', 'excelImport', '导入', 'zh-cn', '2016-03-11 17:56:15', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815364df430153651b22b60004', 'excelImport', 'excelImport', 'en', '2016-03-11 17:56:31', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815364df430153651b5a730006', 'excelOutput', '导出', 'zh-cn', '2016-03-11 17:56:45', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815364df430153651b89410008', 'excelOutput', 'excelOutput', 'en', '2016-03-11 17:56:57', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815364df430153651c4d28000a', 'templateDownload', '模板下载', 'zh-cn', '2016-03-11 17:57:47', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8815364df430153651c5c5b000c', 'templateDownload', 'templateDownload', 'en', '2016-03-11 17:57:51', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b881552e643e01552e6bd9300001', 'common.index', '索引', 'zh-cn', '2016-06-08 13:11:08', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b881552e643e01552e6c03b50003', 'common.index', 'index', 'en', '2016-06-08 13:11:19', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b88161523b8e0161524751560002', 'common.please.select.user.status.inactive', '当前用户已激活，不能重复激活', 'zh-cn', '2018-02-02 00:51:01', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b88161523b8e016152483bee0004', 'common.please.select.user.status.inactive', 'The current user has been activated and can not be reactivated', 'en', '2018-02-02 00:52:01', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8816161331301616139858b0001', 'common.please.online.fieldname.duplicate', '字段重复，请使用其他字段名', 'zh-cn', '2018-02-04 22:30:15', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028b8816161331301616139df4e0003', 'common.please.online.fieldname.duplicate', 'field duplication, please use other field names', 'en', '2018-02-04 22:30:38', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81532b894f01532b93ced70003', 'common.office.tel', '手机号', 'zh-cn', '2016-02-29 13:50:20', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81532b894f01532b93f9e00005', 'common.office.tel', 'telphone', 'en', '2016-02-29 13:50:31', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81532b894f01532b943c070007', 'common.mail', '邮箱', 'zh-cn', '2016-02-29 13:50:48', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81533051360153305bbcf60002', 'form.template.style_pc', 'PC表单风格', 'zh-cn', '2016-03-01 12:07:11', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81533051360153305bfda90004', 'form.template.style_pc', 'pc form style', 'en', '2016-03-01 12:07:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81533051360153305c33ff0006', 'form.template.style_mobile', '移动表单风格', 'zh-cn', '2016-03-01 12:07:42', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81533051360153305c60c90008', 'form.template.style_mobile', 'mobile form style', 'en', '2016-03-01 12:07:53', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef815335c1da015335c8647d0003', 'self.defined.form', 'use defined form', 'en', '2016-03-02 13:23:58', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81533a788e01533a7a53180005', 'form.tb.db.table.name', 'table', 'en', '2016-03-03 11:16:48', 'admin', '管理员', '2016-03-03 11:17:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81533a788e01533a7ba98c0008', 'form.tb.db.key', 'db source', 'en', '2016-03-03 11:18:16', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81533c078201533c08b1ca0001', 'system.version.number', '3.8', 'zh-cn', '2016-03-03 18:31:56', 'admin', '管理员', '2016-06-29 11:50:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028ef81533c078201533c08e2370003', 'system.version.number', '3.8', 'en', '2016-03-03 18:32:08', 'admin', '管理员', '2016-06-29 11:50:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028ef8154753f26015475436db30001', 'common.returntxttype', 'return type', 'en', '2016-05-03 14:17:13', 'admin', '管理员', '2016-05-03 14:41:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028ef8154753f26015475438dd00003', 'common.returntxttype', '返回类型', 'zh-cn', '2016-05-03 14:17:22', 'admin', '管理员', '2016-05-03 14:42:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028efa2523a030601523a55381d0004', 'self.defined.form', '自定义表单', 'zh-cn', '2016-01-13 17:33:29', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028efa2523dfc4c01523e2adb110009', 'business.application', '业务申请', 'zh-cn', '2016-01-14 11:25:42', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028efa2523dfc4c01523e2c5f9b000c', 'individual.office', '个人办公', 'zh-cn', '2016-01-14 11:27:21', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028efa2523dfc4c01523e2d7ba5000e', 'process.design', '流程管理', 'zh-cn', '2016-01-14 11:28:34', 'admin', '管理员', '2016-01-14 18:58:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028f681641bf52b01641c2802030009', 'dict.order', '序号', 'zh-cn', '2018-06-20 15:45:41', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028f681641bf52b01641c28c724000b', 'dict.order', 'Serial number', 'en', '2018-06-20 15:46:31', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4a15aa60003', 'common.calendar', '日历', 'zh-cn', '2014-06-23 01:30:47', 'admin', '管理员', '2014-06-23 01:30:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4a190580005', 'common.calendar', 'Calendar', 'en', '2014-06-23 01:31:01', 'admin', '管理员', '2014-06-23 01:31:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4a2dc220007', 'common.map', '地图', 'zh-cn', '2014-06-23 01:32:26', 'admin', '管理员', '2014-06-23 01:32:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4a2f24e0009', 'common.map', 'Map', 'en', '2014-06-23 01:32:31', 'admin', '管理员', '2014-06-23 01:32:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4aff7ea000b', 'common.please.select', '  ', 'zh-cn', '2014-06-23 01:46:45', 'admin', '管理员', '2017-11-06 10:37:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4b03310000d', 'common.please.select', '  ', 'en', '2014-06-23 01:47:00', 'admin', '管理员', '2014-06-23 02:01:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4b8af79000f', 'common.please.input.keyword', '请输入关键字', 'zh-cn', '2014-06-23 01:56:16', 'admin', '管理员', '2014-06-23 01:56:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4b8f7aa0011', 'common.please.input.keyword', 'Keyword', 'en', '2014-06-23 01:56:34', 'admin', '管理员', '2014-06-23 01:56:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4ba979a0013', 'common.please.input.query.keyword', '请输入查询关键字', 'zh-cn', '2014-06-23 01:58:21', 'admin', '管理员', '2014-06-23 01:58:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bade820015', 'common.please.input.query.keyword', 'Query keyword', 'en', '2014-06-23 01:58:39', 'admin', '管理员', '2014-06-23 01:58:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bee05c0018', 'common.query', '查询', 'zh-cn', '2014-06-23 02:03:02', 'admin', '管理员', '2015-11-30 12:37:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bf0575001a', 'common.query', 'See', 'en', '2014-06-23 02:03:11', 'admin', '管理员', '2015-10-27 22:47:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bf4239001c', 'common.reset', '重 置', 'zh-cn', '2014-06-23 02:03:27', 'admin', '管理员', '2018-01-05 10:45:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bf638a001e', 'common.reset', 'Reset', 'en', '2014-06-23 02:03:35', 'admin', '管理员', '2014-06-23 02:03:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c19fa9370004', 'common.navegation', '导航菜单', 'zh-cn', '2014-06-22 11:30:04', 'admin', '管理员', '2014-06-22 11:30:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a0a4d50006', 'common.navegation', 'Navegation', 'en', '2014-06-22 11:31:09', 'admin', '管理员', '2014-06-22 11:31:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a1b46e0008', 'common.control.panel', 'Control Panel', 'en', '2014-06-22 11:32:18', 'admin', '管理员', '2014-06-22 11:32:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a1e59b000a', 'common.control.panel', '控制面板', 'zh-cn', '2014-06-22 11:32:31', 'admin', '管理员', '2014-06-22 11:32:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a2d668000c', 'common.profile', '个人信息', 'zh-cn', '2014-06-22 11:33:32', 'admin', '管理员', '2014-06-22 11:33:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a31e02000e', 'common.profile', 'Profile', 'en', '2014-06-22 11:33:51', 'admin', '管理员', '2014-06-22 11:33:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a386000010', 'common.my.style', '首页风格', 'zh-cn', '2014-06-22 11:34:17', 'admin', '管理员', '2014-06-22 11:34:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a3bccd0012', 'common.my.style', 'Style', 'en', '2014-06-22 11:34:31', 'admin', '管理员', '2014-06-22 11:34:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a412670014', 'common.logout', '注销', 'zh-cn', '2014-06-22 11:34:53', 'admin', '管理员', '2014-06-22 11:36:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a4f99a0016', 'common.logout', 'Logout', 'en', '2014-06-22 11:35:52', 'admin', '管理员', '2014-06-22 11:35:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a5edff0019', 'common.exit', '退出', 'zh-cn', '2014-06-22 11:36:55', 'admin', '管理员', '2014-06-22 11:36:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a60dff001b', 'common.exit', 'Exit', 'en', '2014-06-22 11:37:03', 'admin', '管理员', '2014-06-22 11:37:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a85f8e001d', 'common.user', 'User', 'en', '2014-06-22 11:39:35', 'admin', '管理员', '2014-06-22 11:39:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a88d9b001f', 'common.user', '用户', 'zh-cn', '2014-06-22 11:39:47', 'admin', '管理员', '2014-06-22 11:39:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1aae98c0025', 'common.platform', 'JEECG 演示系统', 'zh-cn', '2014-06-22 11:42:22', 'admin', '管理员', '2014-06-22 11:42:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1ab90ac0027', 'common.platform', 'JEECG Platform', 'en', '2014-06-22 11:43:04', 'admin', '管理员', '2014-06-22 11:43:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1e09ce00017', 'lang.maintain', '语言信息维护', 'zh-cn', '2014-06-22 12:41:01', 'admin', '管理员', '2014-06-22 12:41:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1e0f0780019', 'lang.maintain', 'Language Maintain', 'en', '2014-06-22 12:41:22', 'admin', '管理员', '2014-06-23 13:37:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ea9872002b', 'online.develop', 'Online Develop', 'en', '2014-06-22 12:51:55', 'admin', '管理员', '2014-06-22 12:51:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1eaf4d6002d', 'online.develop', '在线开发', 'zh-cn', '2014-06-22 12:52:19', 'admin', '管理员', '2016-04-14 12:36:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1eb749c002f', 'system.manage', '系统管理', 'zh-cn', '2014-06-22 12:52:51', 'admin', '管理员', '2014-06-22 12:52:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ebac710031', 'system.manage', 'System Manage', 'en', '2014-06-22 12:53:06', 'admin', '管理员', '2014-06-22 12:53:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ec37a10033', 'project.manage', '项目管理', 'zh-cn', '2014-06-22 12:53:41', 'admin', '管理员', '2014-06-22 12:53:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ec67a40035', 'project.manage', 'Project Manage', 'en', '2014-06-22 12:53:54', 'admin', '管理员', '2014-06-22 12:53:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ed9e6e0037', 'general.demo', '常用示例', 'zh-cn', '2014-06-22 12:55:13', 'admin', '管理员', '2014-06-22 12:55:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1edcc6d0039', 'general.demo', 'Demo', 'en', '2014-06-22 12:55:25', 'admin', '管理员', '2014-06-22 12:55:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ee629d003b', 'system.monitor', '系统监控', 'zh-cn', '2014-06-22 12:56:03', 'admin', '管理员', '2014-06-22 12:56:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1eebe6c003d', 'system.monitor', 'System Monitor', 'en', '2014-06-22 12:56:27', 'admin', '管理员', '2014-06-22 12:56:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ef4206003f', 'workflow.manage', '工作流管理', 'zh-cn', '2014-06-22 12:57:01', 'admin', '管理员', '2014-06-22 12:57:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ef78d20041', 'workflow.manage', 'Workflow Manage', 'en', '2014-06-22 12:57:15', 'admin', '管理员', '2014-06-22 12:57:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1fe512f0045', 'common.change.password', '修改密码', 'zh-cn', '2014-06-22 13:13:28', 'admin', '管理员', '2014-06-22 13:13:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1fe90260047', 'common.change.password', 'Change Password', 'en', '2014-06-22 13:13:44', 'admin', '管理员', '2014-06-22 13:13:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c202c92c0049', 'common.copyright', 'JEECG 版权所有', 'zh-cn', '2014-06-22 13:18:20', 'admin', '管理员', '2014-06-23 11:01:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c203cd8d004b', 'common.copyright', 'JEEECT Copyright Reserved', 'en', '2014-06-22 13:19:27', 'admin', '管理员', '2014-06-22 13:19:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c20508bf004d', 'common.refresh', '刷新系统缓存', 'zh-cn', '2014-06-22 13:20:48', 'admin', '管理员', '2017-09-13 18:48:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2053659004f', 'common.refresh', 'Refresh Cache', 'en', '2014-06-22 13:20:59', 'admin', '管理员', '2017-09-13 18:48:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2057c580051', 'common.close', 'Close', 'en', '2014-06-22 13:21:17', 'admin', '管理员', '2014-06-22 13:21:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c205aff20053', 'common.close', '关闭', 'zh-cn', '2014-06-22 13:21:31', 'admin', '管理员', '2014-06-22 13:21:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c205f4be0055', 'common.close.all', '全部关闭', 'zh-cn', '2014-06-22 13:21:48', 'admin', '管理员', '2014-06-22 13:21:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c20631f70057', 'common.close.all', 'Close All', 'en', '2014-06-22 13:22:04', 'admin', '管理员', '2014-06-22 13:22:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2070b8a0059', 'common.close.all.but.this', 'Close all but this', 'en', '2014-06-22 13:23:00', 'admin', '管理员', '2014-06-22 13:23:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2074657005b', 'common.close.all.but.this', '除此之外全部关闭', 'zh-cn', '2014-06-22 13:23:15', 'admin', '管理员', '2014-06-22 13:23:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c207f0bc005d', 'common.close.all.right', '当前页右侧全部关闭', 'zh-cn', '2014-06-22 13:23:58', 'admin', '管理员', '2014-06-22 13:23:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2085b89005f', 'common.close.all.right', 'Close all on right', 'en', '2014-06-22 13:24:26', 'admin', '管理员', '2014-06-22 13:24:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c208cabc0061', 'common.close.all.left', '当前页左侧全部关闭', 'zh-cn', '2014-06-22 13:24:54', 'admin', '管理员', '2014-06-22 13:24:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2094dee0063', 'common.close.all.left', 'Close all on left', 'en', '2014-06-22 13:25:28', 'admin', '管理员', '2014-06-22 13:25:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2325e890069', 'common.assist.tools', '辅助工具', 'zh-cn', '2014-06-22 14:10:19', 'admin', '管理员', '2014-06-22 14:10:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2330cf3006b', 'common.assist.tools', 'Tool', 'en', '2014-06-22 14:11:04', 'admin', '管理员', '2014-06-22 14:11:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c238a6eb006d', 'common.online.user', '用户在线列表', 'zh-cn', '2014-06-22 14:17:11', 'admin', '管理员', '2014-06-22 14:17:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c238d41e006f', 'common.online.user', 'Online User', 'en', '2014-06-22 14:17:22', 'admin', '管理员', '2014-06-22 14:17:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471f9575f10001', 'language.manage', '国际化语言', 'zh-cn', '2014-07-10 17:23:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-10-15 11:31:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471f95fdd20003', 'language.manage', 'Lang Manage', 'en', '2014-07-10 17:23:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 17:23:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc8bd5d0010', 'form.template', '模板配置', 'zh-cn', '2014-07-10 18:19:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc8dc9b0012', 'form.template', 'Form Template', 'en', '2014-07-10 18:19:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc961b70014', 'function.test', '功能测试', 'zh-cn', '2014-07-10 18:19:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc97f300016', 'function.test', 'Function Test', 'en', '2014-07-10 18:20:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc9e6310018', 'config.place', '配置地址', 'zh-cn', '2014-07-10 18:20:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fca0508001a', 'config.place', 'Setting Address', 'en', '2014-07-10 18:20:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcd6c920020', 'table.exit.in.db.confirm', '表在数据库中已存在\\n确认删除', 'zh-cn', '2014-07-10 18:24:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:24:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcdd7140022', 'table.exit.in.db.confirm', 'Table exit already\\n Confirm Delete', 'en', '2014-07-10 18:24:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:24:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fce9e7a0024', 'confirm.delete.record', '确认移除该记录', 'zh-cn', '2014-07-10 18:25:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:25:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcec9d60026', 'confirm.delete.record', 'Confirm delete record', 'en', '2014-07-10 18:25:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:25:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcf68be0028', 'form.datalist', '表单数据列表', 'zh-cn', '2014-07-10 18:26:32', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:26:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcf948f002a', 'form.datalist', 'Form data list', 'en', '2014-07-10 18:26:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:26:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd33eb1002e', 'common.please.select.edit.item', '请选择编辑项目', 'zh-cn', '2014-07-10 18:30:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:30:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd36c4d0030', 'common.please.select.edit.item', 'Please select edit item', 'en', '2014-07-10 18:30:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:30:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd429130032', 'common.please.select.one.record.to.edit', '请选择一条记录再编辑', 'zh-cn', '2014-07-10 18:31:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:31:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd487c40034', 'common.please.select.one.record.to.edit', 'Please select one record to edit', 'en', '2014-07-10 18:32:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:32:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd8bd8f003c', 'common.menu.link', '菜单链接', 'zh-cn', '2014-07-10 18:36:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:36:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd8d355003e', 'common.menu.link', 'Menu Link', 'en', '2014-07-10 18:36:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:36:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdae99f0040', 'form.sqlimport', '表单SQL导入', 'zh-cn', '2014-07-10 18:39:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:39:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdb06f60042', 'form.sqlimport', 'Form SQL Import', 'en', '2014-07-10 18:39:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:39:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdbd2b60044', 'slave.table.can.not.generate.code', '附表不能代码生成', 'zh-cn', '2014-07-10 18:40:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:40:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdc1ba70046', 'slave.table.can.not.generate.code', 'Slave table can not generate code', 'en', '2014-07-10 18:40:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:47:00', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdd7b230048', 'please.syncdb', '请先同步数据库', 'zh-cn', '2014-07-10 18:41:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:41:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fde0d02004a', 'please.syncdb', 'Please synchronize database first', 'en', '2014-07-10 18:42:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:42:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fde8727004c', 'code.generate', '代码生成', 'zh-cn', '2014-07-10 18:43:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:43:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdebba6004e', 'code.generate', 'Code Generate', 'en', '2014-07-10 18:43:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:43:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdfb0040050', 'please.select.sync.method', '请选择同步方式', 'zh-cn', '2014-07-10 18:44:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:44:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdff96f0052', 'please.select.sync.method', 'Please select synchronize method', 'en', '2014-07-10 18:44:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:44:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fe393f60059', 'normal.sync', '普通同步(保留表数据)', 'zh-cn', '2014-07-10 18:48:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:48:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fe4c6cb005b', 'normal.sync', 'Normal Sync(Retain Data)', 'en', '2014-07-10 18:49:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:49:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fe58641005d', 'force.sync', '强制同步(删除表,重新生成)', 'zh-cn', '2014-07-10 18:50:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:50:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fe611cd005f', 'force.sync', 'Force Sync(Delete Table, ReGenerate)', 'en', '2014-07-10 18:51:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:51:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ff8d3000061', 'enhance.type', '增强类型', 'zh-cn', '2014-07-10 19:11:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:11:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ff8fcca0063', 'enhance.type', 'Enhance Type', 'en', '2014-07-10 19:11:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:11:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ff9ec220065', 'enhance.js', '增强js', 'zh-cn', '2014-07-10 19:12:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:12:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffa2ef10067', 'enhance.js', 'Enhance JS', 'en', '2014-07-10 19:13:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:13:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffb99300069', 'get.error', '出错了', 'zh-cn', '2014-07-10 19:14:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:14:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffbb3d7006b', 'get.error', 'Get Error', 'en', '2014-07-10 19:14:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:14:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffcc59f006d', 'operate.code', '页面控件编码', 'zh-cn', '2014-07-10 19:16:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-04-02 22:30:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffce066006f', 'operate.code', 'Page Element Code', 'en', '2014-07-10 19:16:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-04-02 22:30:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffed3280075', 'enhance.sql', '增强sql', 'zh-cn', '2014-07-10 19:18:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:18:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffeef0d0077', 'enhance.sql', 'Enhance SQL', 'en', '2014-07-10 19:18:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:18:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('41e9ba5d4f2546fd871d0a4a401732a8', 'common.phone', '手机号码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('42a24520ac85497d9da92af210113da2', 'common.status', '状态', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('52ce422654ab40329fe3a0518b5c8f67', 'password.rang6to18', 'The password is at least 6 characters long, up to 18 characters', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('5910b83799b242318f456a4f42303cb0', 'select.byrole', '按角色选择', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('5e5106b716d6476cae700ab27f2da555', 'common.middle', '中', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('767053e885704be2b203fbe5c0389b73', 'common.password.reset', '密码重置', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('7aae85094220429a84158e4db5c05d45', 'common.status', 'Status', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('7f980a800b114020b085530096b95d86', 'role.muti.select', '角色可多选', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54dfb73d7014dfb7688c40001', 'form.db.name', 'dbCode', 'en', '2015-06-16 16:22:39', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54dfb73d7014dfb76ed1b0003', 'form.db.name', '数据源编码', 'zh-cn', '2015-06-16 16:23:04', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54dfb73d7014dfb7a1f830007', 'form.db.tablename', 'dbTableName', 'en', '2015-06-16 16:26:34', 'admin', '管理员', '2015-06-16 16:27:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54dfb73d7014dfb7a56130009', 'form.db.tablename', '数据库表名', 'zh-cn', '2015-06-16 16:26:48', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54dfb73d7014dfb7ae850000c', 'form.db.synsql', 'dbSynSql', 'en', '2015-06-16 16:27:25', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54dfb73d7014dfb7b1b28000e', 'form.db.synsql', '动态查询SQ', 'zh-cn', '2015-06-16 16:27:38', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54dfb73d7014dfb7b84800010', 'form.auto.formid', 'autoFormId', 'en', '2015-06-16 16:28:05', 'admin', '管理员', '2015-06-16 16:55:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54dfb73d7014dfb7bb98a0012', 'form.auto.formid', '主键字段', 'zh-cn', '2015-06-16 16:28:19', 'admin', '管理员', '2015-06-16 16:55:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e2e5e3b014e2e68f43d001a', 'form.db.preview', '预览', 'zh-cn', '2015-06-26 13:48:27', 'admin', '管理员', '2015-06-26 13:49:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e2e5e3b014e2e6a52a2001d', 'form.db.preview', 'preview', 'en', '2015-06-26 13:49:56', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e2e8df2014e2e91fed00001', 'form.db.param.input', '参数录入区', 'zh-cn', '2015-06-26 14:33:16', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e2e8df2014e2e92522f0003', 'form.db.param.input', 'paramInput', 'en', '2015-06-26 14:33:38', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e2e8df2014e2e93f8f70005', 'form.db.data.view', '结果展示区', 'zh-cn', '2015-06-26 14:35:26', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e2e8df2014e2e9433120007', 'form.db.data.view', 'dataView', 'en', '2015-06-26 14:35:41', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e2e8df2014e2e9696630009', 'form.db.data.query', 'dataQuery', 'en', '2015-06-26 14:38:17', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e2e8df2014e2e96c7f2000b', 'form.db.data.query', '数据查询', 'zh-cn', '2015-06-26 14:38:30', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e3ce62e014e3d07eb820001', 'java.enhance', 'java增强', 'zh-cn', '2015-06-29 09:56:46', 'admin', '管理员', '2015-06-29 10:00:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e3ce62e014e3d0835860003', 'java.enhance', 'javaEnhance', 'en', '2015-06-29 09:57:05', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e3e2ca9014e3e46f3c40001', 'common.value', '数值', 'zh-cn', '2015-06-29 15:45:14', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e3e2ca9014e3e472c390003', 'common.value', 'value', 'en', '2015-06-29 15:45:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e3e2ca9014e3e491d0a0005', 'java.enhance.type', '扩展类型', 'zh-cn', '2015-06-29 15:47:35', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e3e2ca9014e3e49822c0007', 'java.enhance.type', 'enhanceType', 'en', '2015-06-29 15:48:01', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e3e2ca9014e3e50bc7b000b', 'java.enhance.type.class', 'java-class', 'zh-cn', '2015-06-29 15:55:55', 'admin', '管理员', '2015-06-29 15:56:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a1c7ee54e3e2ca9014e3e519584000e', 'java.enhance.type.spring', 'spring-key', 'zh-cn', '2015-06-29 15:56:50', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c741b9ed0045', 'lang.langkey', '语言主键', 'zh-cn', '2014-06-23 13:45:11', 'admin', '管理员', '2014-06-23 13:45:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c74226100047', 'lang.langkey', 'Lang Key', 'en', '2014-06-23 13:45:39', 'admin', '管理员', '2014-06-23 13:45:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c743a8a40049', 'common.content', '内容', 'zh-cn', '2014-06-23 13:47:18', 'admin', '管理员', '2014-06-23 13:47:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c74416f5004b', 'common.content', 'Content', 'en', '2014-06-23 13:47:46', 'admin', '管理员', '2014-06-23 13:47:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c74526330050', 'common.language', 'Language', 'en', '2014-06-23 13:48:56', 'admin', '管理员', '2014-06-23 13:48:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c77efdb60076', 'common.import', '数据导入', 'zh-cn', '2014-06-23 14:52:06', 'admin', '管理员', '2014-06-23 14:52:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c77f95070078', 'common.import', 'Data Import', 'en', '2014-06-23 14:52:45', 'admin', '管理员', '2014-06-23 14:52:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c7802f4f007a', 'common.export', '数据导出', 'zh-cn', '2014-06-23 14:53:25', 'admin', '管理员', '2014-06-23 14:58:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c7809eb6007c', 'common.export', 'Data Export', 'en', '2014-06-23 14:53:53', 'admin', '管理员', '2014-06-23 14:59:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1ef63000003', 'user.manage', '用户管理', 'zh-cn', '2014-06-25 15:31:05', 'admin', '管理员', '2014-06-25 15:31:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1eff19e0005', 'user.manage', 'User Manage', 'en', '2014-06-25 15:31:41', 'admin', '管理员', '2014-06-25 15:31:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f12ae00007', 'common.data.dictionary', 'Data Dictionary ', 'en', '2014-06-25 15:33:01', 'admin', '管理员', '2014-06-25 16:10:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f1635a0009', 'common.data.dictionary', '数据字典', 'zh-cn', '2014-06-25 15:33:16', 'admin', '管理员', '2014-06-25 15:33:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f24c0b000b', 'role.manage', '角色管理', 'zh-cn', '2014-06-25 15:34:15', 'admin', '管理员', '2014-06-25 15:34:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f35861000f', 'role.manage', 'Role Manage', 'en', '2014-06-25 15:35:24', 'admin', '管理员', '2014-06-25 15:35:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f8e1610015', 'icon.manage', '系统图标', 'zh-cn', '2014-06-25 15:41:27', 'admin', '管理员', '2015-10-15 11:37:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1fbc5bf0017', 'icon.manage', 'System Icon', 'en', '2014-06-25 15:44:36', 'admin', '管理员', '2015-10-15 11:37:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1fffdb40019', 'department.manage', '组织机构管理', 'zh-cn', '2014-06-25 15:49:13', 'admin', '管理员', '2018-01-16 17:18:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d20cbafe001b', 'department.manage', 'Org Manage', 'en', '2014-06-25 16:03:08', 'admin', '管理员', '2014-06-25 16:03:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b7bff40146b7c2eb6f0001', 'common.dash_board', '首页', 'zh-cn', '2014-06-20 13:32:23', 'admin', '管理员', '2014-06-20 14:58:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b7bff40146b7c38f560003', 'common.dash_board', 'Dashboard', 'en', '2014-06-20 13:33:05', 'admin', '管理员', '2014-06-20 14:58:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b802300146b8038a070001', 'common.add.success', '添加成功', 'zh-cn', '2014-06-20 14:42:58', 'admin', '管理员', '2014-06-20 14:42:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b802300146b8048a5e0004', 'common.add.success', 'Add success', 'en', '2014-06-20 14:44:03', 'admin', '管理员', '2014-06-20 14:44:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b802300146b806d7bd0006', 'common.edit.success', '更新成功', 'zh-cn', '2014-06-20 14:46:34', 'admin', '管理员', '2014-06-20 14:46:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b802300146b807c4e60008', 'common.edit.success', 'Update success', 'en', '2014-06-20 14:47:35', 'admin', '管理员', '2014-06-20 14:47:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b80a850146b80cf84d0002', 'common.delete.success', '删除成功', 'zh-cn', '2014-06-20 14:53:16', 'admin', '管理员', '2014-06-20 14:53:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b80a850146b80d35b70004', 'common.delete.success', 'Delete success', 'en', '2014-06-20 14:53:31', 'admin', '管理员', '2014-06-20 14:53:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b80a850146b80e7d420006', 'common.edit.fail', '更新失败', 'zh-cn', '2014-06-20 14:54:55', 'admin', '管理员', '2014-06-20 14:54:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b80a850146b80eddca0008', 'common.edit.fail', 'Update Fail', 'en', '2014-06-20 14:55:20', 'admin', '管理员', '2014-06-20 14:55:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b83b0b0146b83ec7070008', 'common.notfind.langkey', '', 'zh-cn', '2014-06-20 15:55:50', 'admin', '管理员', '2014-06-21 01:18:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b83b0b0146b83ec7070009', 'common.notfind.langkey', '', 'en', '2014-06-20 15:57:14', 'admin', '管理员', '2014-06-21 01:18:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474264c8980002', 'common.confirm', '确定', 'zh-cn', '2014-07-17 11:36:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:36:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474264e0510004', 'common.confirm', 'Confirm', 'en', '2014-07-17 11:36:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:36:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742654bd20006', 'common.remove', 'Remove', 'en', '2014-07-17 11:37:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:37:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c510147426569f90008', 'common.remove', '移除', 'zh-cn', '2014-07-17 11:37:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:37:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474265ac98000a', 'common.item', '条', 'zh-cn', '2014-07-17 11:37:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:37:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474265cdc1000c', 'common.item', 'Item', 'en', '2014-07-17 11:37:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:37:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742662411000e', 'common.total', '共', 'zh-cn', '2014-07-17 11:38:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:38:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742664c5c0010', 'common.total', 'Total', 'en', '2014-07-17 11:38:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:38:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742669c660012', 'common.inactive', '未激活', 'zh-cn', '2014-07-17 11:38:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:38:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474266cf100014', 'common.inactive', 'Inactive', 'en', '2014-07-17 11:38:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:38:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474267077d0016', 'common.active', '激活', 'zh-cn', '2014-07-17 11:39:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:39:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c510147426722730018', 'common.active', 'Active', 'en', '2014-07-17 11:39:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:39:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474267fdef001e', 'common.languagekey', 'Lang Key', 'en', '2014-07-17 11:40:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:40:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742687da20020', 'common.languagekey', '语言Key', 'zh-cn', '2014-07-17 11:40:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:40:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b05f8860005', 'common.remember.user', '是否记住用户名', 'zh-cn', '2014-07-25 08:57:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 08:57:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0642280007', 'common.remember.user', 'Remember User', 'en', '2014-07-25 08:57:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 08:57:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0b61120009', 'common.login.success.wait', '登陆成功!请稍后....', 'zh-cn', '2014-07-25 09:03:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:03:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0bc257000b', 'common.login.success.wait', 'Login success, waiting....', 'en', '2014-07-25 09:03:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:03:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0d4233000d', 'common.init.data', '是否初始化数据', 'zh-cn', '2014-07-25 09:05:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:05:36', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0db938000f', 'common.init.data', 'Initialize data?', 'en', '2014-07-25 09:06:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:06:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b162e630012', 'lang.order.type', '订单类型', 'zh-cn', '2014-07-25 09:15:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:15:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b164ceb0014', 'lang.order.type', 'Order Type', 'en', '2014-07-25 09:15:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:15:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b16a56e0016', 'lang.customer.type', '客户类型', 'zh-cn', '2014-07-25 09:15:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:15:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b16c0d50018', 'lang.customer.type', 'Customer Type', 'en', '2014-07-25 09:15:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:15:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b170b9a001a', 'lang.service.item.type', '服务项目类型', 'zh-cn', '2014-07-25 09:16:18', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:16:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1749cc001c', 'lang.service.item.type', 'Service Item Type', 'en', '2014-07-25 09:16:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:16:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1936c60020', 'common.logic.condition', '逻辑条件', 'zh-cn', '2014-07-25 09:18:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:18:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1956dd0022', 'common.logic.condition', 'Logic Condition', 'en', '2014-07-25 09:18:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:18:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1a1cc30024', 'common.data.table', '数据表', 'zh-cn', '2014-07-25 09:19:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:19:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1a3c0a0026', 'common.data.table', 'Data Table', 'en', '2014-07-25 09:19:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:19:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1ac59e0028', 'common.document.category', '文档分类', 'zh-cn', '2014-07-25 09:20:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:20:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1aeaa3002a', 'common.document.category', 'Document Category', 'en', '2014-07-25 09:20:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:20:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1b3e55002c', 'common.sex.type', '性别类', 'zh-cn', '2014-07-25 09:20:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:20:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1b59af002e', 'common.sex.type', 'Sex Type', 'en', '2014-07-25 09:21:00', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:21:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1c08ba0030', 'common.attachment', '附件', 'zh-cn', '2014-07-25 09:21:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:21:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1c22dd0032', 'common.attachment', 'Attachment', 'en', '2014-07-25 09:21:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:21:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1d4e400034', 'lang.excellent.order', '优质订单', 'zh-cn', '2014-07-25 09:23:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:23:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1d7ece0036', 'lang.excellent.order', 'Excellent Order', 'en', '2014-07-25 09:23:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:23:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1de2050038', 'lang.normal.order', '普通订单', 'zh-cn', '2014-07-25 09:23:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:23:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1dfde4003a', 'lang.normal.order', 'Normal Order', 'en', '2014-07-25 09:23:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:23:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1ef393003c', 'lang.contract.customer', '签约客户', 'zh-cn', '2014-07-25 09:24:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:24:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1f0b32003e', 'lang.contract.customer', 'Contract Customer', 'en', '2014-07-25 09:25:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1f4fea0040', 'lang.normal.customer', '普通客户', 'zh-cn', '2014-07-25 09:25:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1f67050042', 'lang.normal.customer', 'Normal Customer', 'en', '2014-07-25 09:25:25', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1fa93d0044', 'lang.special.servcie', '特殊服务', 'zh-cn', '2014-07-25 09:25:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:42', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1fceec0046', 'lang.special.servcie', 'Special Service', 'en', '2014-07-25 09:25:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2014720048', 'lang.normal.service', '普通服务', 'zh-cn', '2014-07-25 09:26:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:26:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b203ca4004a', 'lang.normal.service', 'Normal Service', 'en', '2014-07-25 09:26:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:26:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b20bf5a004c', 'common.single.condition.query', '单条件查询', 'zh-cn', '2014-07-25 09:26:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:26:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b20e447004e', 'common.single.condition.query', 'Single Condition Query', 'en', '2014-07-25 09:27:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:27:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b214fe20050', 'common.scope.query', '范围查询', 'zh-cn', '2014-07-25 09:27:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:27:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2171de0052', 'common.scope.query', 'Scope Queyr', 'en', '2014-07-25 09:27:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:27:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b21ffbf0054', 'common.db.integer', 'Integer', 'en', '2014-07-25 09:28:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:29:19', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2227930056', 'common.db.integer', '数值类型', 'zh-cn', '2014-07-25 09:28:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:29:23', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b234ba5005a', 'common.db.date', 'Date', 'en', '2014-07-25 09:29:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:29:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b238657005c', 'common.db.date', '日期类型', 'zh-cn', '2014-07-25 09:29:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:29:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b23efed005e', 'common.db.string', '字符类型', 'zh-cn', '2014-07-25 09:30:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:30:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2404d30060', 'common.db.string', 'String', 'en', '2014-07-25 09:30:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:30:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b245e800062', 'common.db.long', 'Long', 'en', '2014-07-25 09:30:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:30:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b248ee60064', 'common.db.long', '长整型', 'zh-cn', '2014-07-25 09:31:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:31:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b253d760066', 'common.workflow.engine.table', '工作流引擎表', 'zh-cn', '2014-07-25 09:31:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:31:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b256e3a0068', 'common.workflow.engine.table', 'Workflow Engine Table', 'en', '2014-07-25 09:32:00', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:32:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b25c1d4006a', 'common.system.table', '系统基础表', 'zh-cn', '2014-07-25 09:32:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:32:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b25d9b3006c', 'common.system.table', 'System Table', 'en', '2014-07-25 09:32:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:32:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b267773006e', 'common.business.table', '业务表', 'zh-cn', '2014-07-25 09:33:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:33:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b26a71c0070', 'common.business.table', 'Business Table', 'en', '2014-07-25 09:33:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:33:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2761320072', 'common.customer.engine.table', '自定义引擎表', 'zh-cn', '2014-07-25 09:34:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:34:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2791440074', 'common.customer.engine.table', 'Customer Engine Table', 'en', '2014-07-25 09:34:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:34:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b27d3790076', 'common.news', '新闻', 'zh-cn', '2014-07-25 09:34:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:34:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b27f9b30078', '新闻', 'News', 'en', '2014-07-25 09:34:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:34:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b28e56e007a', 'common.male', '男性', 'zh-cn', '2014-07-25 09:35:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:35:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b28fa30007c', 'common.male', 'Male', 'en', '2014-07-25 09:35:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:35:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b291a73007e', 'common.female', '女性', 'zh-cn', '2014-07-25 09:36:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:36:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b29466c0080', 'common.female', 'Female', 'en', '2014-07-25 09:36:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:36:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c37d001487c488a4d0006', 'common.datasource.manage', '多数据源管理', 'zh-cn', '2014-09-16 10:26:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-09-16 10:30:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c37d001487c491f480008', 'common.datasource.manage', 'Multiple DataSource Manage', 'en', '2014-09-16 10:27:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-09-16 10:30:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c5f6d400001', 'common.datasrouce.key', '多数据源主键', 'zh-cn', '2014-09-16 10:51:41', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c5fba980003', 'common.datasrouce.key', 'Mutipule DataSource Key', 'en', '2014-09-16 10:52:01', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c6193ec0005', 'common.driverclass', '驱动类', 'zh-cn', '2014-09-16 10:54:02', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c61b73d0007', 'common.driverclass', 'Driver Class', 'en', '2014-09-16 10:54:11', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c62b0b00009', 'common.datasrouce.url', '数据源地址', 'zh-cn', '2014-09-16 10:55:15', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c62f4d8000b', 'common.datasrouce.url', 'DataSource URL', 'en', '2014-09-16 10:55:33', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c63c17c000d', 'common.dbuser', '数据库用户名', 'zh-cn', '2014-09-16 10:56:25', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c63f0bf000f', 'common.dbuser', 'DB User', 'en', '2014-09-16 10:56:37', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c6430510011', 'common.dbpassword', '数据库密码', 'zh-cn', '2014-09-16 10:56:53', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c6456940013', 'common.dbpassword', 'DB Password', 'en', '2014-09-16 10:57:03', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c66d45d0015', 'common.dbtype', '数据库类型', 'zh-cn', '2014-09-16 10:59:46', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c66ffe00017', 'common.dbtype', 'DB Type', 'en', '2014-09-16 10:59:58', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c79d0660021', 'common.oracle', '甲骨文Oracle数据库', 'zh-cn', '2014-09-16 11:20:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-09-16 11:21:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c7aee7b0024', 'common.oracle', 'Oracle', 'en', '2014-09-16 11:21:44', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c8f0bfc0027', 'common.sqlserver2008', '微软SQL Server2008', 'zh-cn', '2014-09-16 11:43:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-09-16 11:48:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c8f57910029', 'common.sqlserver2008', 'SQL Server2008', 'en', '2014-09-16 11:44:01', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c94614b002d', 'common.mysql', '甲骨文MySQL', 'zh-cn', '2014-09-16 11:49:32', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c948fc0002f', 'common.mysql', 'MySQL', 'en', '2014-09-16 11:49:44', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0c34761c347014761dfb98c0001', 'common.english', 'English', 'en', '2014-07-23 14:19:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-23 14:19:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0c34761c347014761dfde030003', 'common.english', 'English', 'zh-cn', '2014-07-23 14:19:27', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 08:51:07', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0c34761c347014761e00f350005', 'common.chinese', '中文', 'en', '2014-07-23 14:19:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 08:51:20', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0c34761c347014761e0305c0007', 'common.chinese', '中文', 'zh-cn', '2014-07-23 14:19:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-23 14:19:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756a3bd014756ad82990002', 'user.analysis.histogram', '用户分析直方图', 'zh-cn', '2014-07-21 10:08:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 10:08:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756a3bd014756ae22ce0004', 'usename.range2to10', '用户账号长度范围在2~10', 'zh-cn', '2014-07-21 10:09:18', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 10:09:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756a3bd014756ae9c2a0006', 'sequence.name', '序号', 'zh-cn', '2014-07-21 10:09:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2016-03-01 21:26:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756ec17014756eff8410001', 'common.menu', '菜单', 'zh-cn', '2014-07-21 11:21:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:21:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756ec17014756f0122e0003', 'common.menu', 'Menu', 'en', '2014-07-21 11:21:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:21:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756ec17014756f5940d0007', 'common.area', '地域', 'zh-cn', '2014-07-21 11:27:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:27:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756ec17014756f5b12e0009', 'common.area', 'Area', 'en', '2014-07-21 11:27:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:27:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d447576a86014757a4266d0004', 'common.role.select', '角色选择', 'zh-cn', '2014-07-21 14:38:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:38:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d447576a86014757a44a7b0006', 'common.role.select', 'Role Select', 'en', '2014-07-21 14:38:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:38:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44757b3f2014757b802010004', 'common.cancel', 'Cancel', 'en', '2014-07-21 14:59:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:59:42', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44757b3f2014757b821e00006', 'common.cancel', '取消', 'zh-cn', '2014-07-21 14:59:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:59:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c674f6ee0002', 'common.data.loading', '数据加载中...', 'zh-cn', '2014-06-23 10:01:32', 'admin', '管理员', '2014-06-23 10:01:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c675351b0004', 'common.data.loading', 'Data Loading......', 'en', '2014-06-23 10:01:48', 'admin', '管理员', '2014-06-23 10:01:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c6788e550006', 'common.exit.confirm', '确定退出该系统吗 ?', 'zh-cn', '2014-06-23 10:05:28', 'admin', '管理员', '2014-06-23 10:05:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c678d8600008', 'common.exit.confirm', 'Confirm Exit?', 'en', '2014-06-23 10:05:46', 'admin', '管理员', '2014-06-23 10:05:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c67af864000a', 'common.change.style', '首页风格', 'zh-cn', '2014-06-23 10:08:06', 'admin', '管理员', '2015-05-29 14:09:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c67b3590000c', 'common.change.style', 'Change Style', 'en', '2014-06-23 10:08:21', 'admin', '管理员', '2014-06-23 10:08:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c683c4ea0012', 'common.browser.recommend', '(推荐使用IE8+,谷歌浏览器可以获得更快,更安全的页面响应速度) 技术支持：', 'zh-cn', '2014-06-23 10:17:42', 'admin', '管理员', '2014-06-23 11:05:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c68486160014', 'common.browser.recommend', '(Recommend IE+, Google browser) Support: ', 'en', '2014-06-23 10:18:32', 'admin', '管理员', '2014-06-23 10:18:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0e8476756d8014767594f500001', 'common.mutilang', '多语言', 'zh-cn', '2014-07-24 15:50:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-24 15:50:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0e8476756d801476759b8930003', 'common.mutilang', 'Muti Language', 'en', '2014-07-24 15:50:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-24 15:50:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8c8d1c475192970147519e89800004', 'common.description', 'Description', 'en', '2014-07-20 10:34:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 10:35:01', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8c8d1c475192970147519eae6d0006', 'common.description', '描述', 'zh-cn', '2014-07-20 10:34:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 10:34:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8c8d1c4751c965014751cb1ff50001', 'common.langcontext.exist', '该内容已经存在，请不要重复添加', 'zh-cn', '2014-07-20 11:22:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 11:22:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8c8d1c4751c965014751cd221a0003', 'common.langcontext.exist', 'Lang context exist already, don\'t add it again', 'en', '2014-07-20 11:25:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 11:25:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8b4f561992c84eaa958b10c7912896b8', 'common.weak', '弱', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8ca84db9bbcb44bfb39746822a976907', 'common.role', 'Role', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('95903aa116c74bdb95b5be510a89c79d', 'common.tel', '办公电话', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('9c3a8db4891a4d4390f6093ae2fd81af', 'common.strong', '强', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('9f750fb969ed4bdcbbdb212c43746112', 'common.lock.user', 'lock user', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('a8e5a8e8c5e44576a1500c3b5f57937b', 'select.byrole', 'According to the role select', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('ac43aecc3356487c8eb5fa869149412f', 'common.repeat.password', '重复密码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('aec73ffa01b5499db0253b3b34194560', 'username.rang2to10', '用户账号范围在2~10位字符', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('b8865c9032054772b39d43efda9ba0c8', 'role.muti.select', 'The role of multiple choices', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('b8dae445b3ef468db87167ddd8cd1b64', 'please.select.department', '请选择组织机构', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('c150726fac0d43fd9bf28f4590018950', 'common.username', 'User Account', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('caaf209a7acb413ea59bbdf30e944f20', 'common.common.mail', 'Mail', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('ce8b2968f1fc49bba1a636ca18e7f08f', 'usename.range2to10', 'User account need 2~10 bits', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('d136cd1f25cc42fe8a0fae2dddc5de23', 'common.weak', 'Weak', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('dc787a2087ea4f248a394f8a88a5792c', 'common.real.name', '用户名称', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('df075bc6373b4658afcfaff33b088952', 'common.role', '角色', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('e1fb12b3993b4d1ea35bd536801ada1f', 'common.common.mail', '常用邮箱', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2015-04-02 23:10:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('e547fec1826c4811b6d759f2d81153f8', 'common.password.reset', 'Password Reset', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('f9f74528bde04a0f9e25e29cbc87d9fb', 'fill.realname', '填写个人真实姓名', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('fa07850cb8ed4c268cc91ffd31e7ace1', 'common.password', 'Password', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('ff8080816002af43016002bcc25b0002', 'common.refreshType', 'Refresh dictionary cache', 'en', '2017-11-28 21:06:53', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d000', 'common.querybuilder', '高级查询', 'zh-cn', '2015-04-28 10:26:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-04-28 10:30:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d001', 'common.code.range', '编码范围在2~8位字符', 'zh-cn', '2015-06-01 10:21:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-01 10:22:49', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d002', 'common.code.range', 'The coding in the range of 2~8 characters', 'en', '2015-06-01 10:29:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-01 10:30:54', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d003', 'common.name.range', '名称范围在2~10位字符', 'zh-cn', '2015-06-01 10:49:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-01 10:49:57', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d004', 'common.name.range', 'The name in the range of 2~10 characters', 'en', '2015-06-01 10:51:35', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-01 10:51:48', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d005', 'menu.graph.configuration', 'Online图表配置', 'zh-cn', '2015-06-02 11:29:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 11:30:02', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d006', 'menu.graph.configuration', 'The graph configuration', 'en', '2015-06-02 11:31:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 11:31:26', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d007', 'menu.input.demo', '事例录入', 'zh-cn', '2015-06-02 11:40:30', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 11:40:43', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d008', 'menu.input.demo', 'input demo', 'en', '2015-06-02 11:41:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 11:41:29', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d009', 'menu.push.message', '消息推送', 'zh-cn', '2015-06-02 11:45:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 11:45:48', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d010', 'menu.push.message', 'push message', 'en', '2015-06-02 11:46:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 11:46:55', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d011', 'menu.business.management', '业务SQL', 'zh-cn', '2015-06-02 11:49:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-10-15 10:37:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d012', 'menu.business.management', 'Business Sql', 'en', '2015-06-02 11:50:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-10-15 10:37:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d013', 'menu.message.template', '消息模板', 'zh-cn', '2015-06-02 11:54:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-10-15 10:31:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d014', 'menu.message.template', 'Message template', 'en', '2015-06-02 11:54:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-10-15 10:32:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d015', 'menu.Business.configuration', '业务配置', 'zh-cn', '2015-06-02 11:58:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 11:58:58', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d016', 'menu.Business.configuration', 'Business configuration', 'en', '2015-06-02 11:58:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 11:59:01', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d017', 'menu.send.message', '消息中心', 'zh-cn', '2015-06-02 12:02:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-10-15 10:34:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d018', 'menu.send.message', 'Message Center', 'en', '2015-06-02 12:02:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-10-15 10:35:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d019', 'menu.sort.management', '分类管理', 'zh-cn', '2015-06-02 12:07:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 12:07:23', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d020', 'menu.sort.management', 'sort management', 'en', '2015-06-02 12:07:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 12:07:27', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d021', 'menu.nice.list', '漂亮列表', 'zh-cn', '2015-06-02 12:11:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 12:11:29', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d022', 'menu.nice.list', 'Nice list', 'en', '2015-06-02 12:11:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 12:11:26', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d023', 'menu.data.permission', '数据权限', 'zh-cn', '2015-06-02 12:14:25', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 12:14:39', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d024', 'menu.data.permission', 'data permission', 'en', '2015-06-02 12:14:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 12:14:58', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d025', 'menu.user.management', '用户管理', 'zh-cn', '2015-06-02 13:14:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 13:14:32', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d026', 'menu.user.management', 'user management', 'en', '2015-06-02 13:14:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 13:14:44', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d027', 'menu.Leave.data.access', 'OL请假数据权限', 'zh-cn', '2015-06-02 13:19:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 13:20:10', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d028', 'menu.Leave.data.access', 'Leave the data access', 'en', '2015-06-02 13:19:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 13:20:13', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d029', 'menu.form.validation', '表单验证', 'zh-cn', '2015-06-02 14:49:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 14:55:01', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d030', 'menu.form.validation', 'Form validation', 'en', '2015-06-02 14:49:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 14:55:13', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d031', 'menu.demo.example', '综合Demo', 'zh-cn', '2015-06-02 14:58:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2016-03-15 12:32:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d032', 'menu.demo.example', 'Main Demo', 'en', '2015-06-02 14:58:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2016-03-15 12:32:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d033', 'menu.minidao.example', 'minidao例子', 'zh-cn', '2015-06-02 15:03:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:04:04', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d034', 'menu.minidao.example', 'minidao example', 'en', '2015-06-02 15:03:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:04:10', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d035', 'menu.form.model', '表单模型', 'zh-cn', '2015-06-02 15:13:44', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:13:59', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d036', 'menu.form.model', 'The form model', 'en', '2015-06-02 15:13:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:14:02', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d037', 'menu.one_to_many.model', '一对多模型', 'zh-cn', '2015-06-02 15:17:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:18:18', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d038', 'menu.one_to_many.model', 'one-to-many model', 'en', '2015-06-02 15:17:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:18:21', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d039', 'menu.import_export.excel', 'Excel导入导出', 'zh-cn', '2015-06-02 15:23:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:23:39', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d040', 'menu.import_export.excel', 'import and export of the excel ', 'en', '2015-06-02 15:23:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:23:43', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d041', 'menu.uploads_downloads', '上传下载', 'zh-cn', '2015-06-02 15:31:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2016-03-21 16:49:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d042', 'menu.uploads_downloads', 'Upload', 'en', '2015-06-02 15:31:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2016-03-21 16:49:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d043', 'menu.JqueryFileUpload.example', 'Jquery上传示例', 'zh-cn', '2015-06-02 15:35:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:35:30', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d044', 'menu.JqueryFileUpload.example', 'JqueryUploadDemo', 'en', '2015-06-02 15:35:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:35:32', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d045', 'menu.no.paging', '无分页列表', 'zh-cn', '2015-06-02 15:39:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:39:34', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d046', 'menu.no.paging', 'No paging  list', 'en', '2015-06-02 15:39:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:39:37', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d047', 'menu.jdbc.example', 'jdbc示例', 'zh-cn', '2015-06-02 15:42:32', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:42:49', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d048', 'menu.jdbc.example', 'jdbc example', 'en', '2015-06-02 15:42:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:42:52', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d049', 'menu.sql.separation', 'SQL分离', 'zh-cn', '2015-06-02 15:47:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:47:17', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d050', 'menu.sql.separation', 'SQL separation', 'en', '2015-06-02 15:47:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:47:23', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d051', 'menu.dictionary.labels', '字典标签', 'zh-cn', '2015-06-02 15:49:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:50:34', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d052', 'menu.dictionary.labels', 'The dictionary labels', 'en', '2015-06-02 15:50:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:50:40', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d053', 'menu.form.thePop_UpStyle', '表单弹出风格', 'zh-cn', '2015-06-02 15:54:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:55:13', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d054', 'menu.form.thePop_UpStyle', 'Form the pop-up style', 'en', '2015-06-02 15:54:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:55:15', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d055', 'menu.special.layout', '左右布局', 'zh-cn', '2015-06-02 15:58:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:58:57', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d056', 'menu.special.layout', 'page layout', 'en', '2015-06-02 15:58:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 15:58:59', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d057', 'menu.single.table', '单表例子（无tag）', 'zh-cn', '2015-06-02 16:02:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:02:52', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d058', 'menu.single.table', 'Single table example(no tag)', 'en', '2015-06-02 16:02:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:02:54', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d059', 'menu.one_to_many.example', '一对多例子（无tag）', 'zh-cn', '2015-06-02 16:06:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:08:01', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d060', 'menu.one_to_many.example', 'one to many example(no tag)', 'en', '2015-06-02 16:07:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:08:04', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d061', 'menu.html.editor', 'HTML编辑器', 'zh-cn', '2015-06-02 16:11:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:12:00', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d062', 'menu.html.editor', 'HTML editor', 'en', '2015-06-02 16:11:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:12:03', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d063', 'menu.word.online', '在线word(IE)', 'zh-cn', '2015-06-02 16:14:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:14:55', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d064', 'menu.word.online', 'word online(IE)', 'en', '2015-06-02 16:14:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:14:58', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d065', 'menu.webOfficeo.fficialExample', 'WebOffice官方例子', 'zh-cn', '2015-06-02 16:19:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:20:05', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d066', 'menu.webOfficeo.fficialExample', 'The official example of WebOffice', 'en', '2015-06-02 16:19:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:20:07', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d067', 'menu.moreAccessoriesManagement', '多附件管理', 'zh-cn', '2015-06-02 16:24:18', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:24:36', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d068', 'menu.moreAccessoriesManagement', 'More accessories management', 'en', '2015-06-02 16:24:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:24:39', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d069', 'menu.datagridHandHtml', 'Datagrid自定义查询条件', 'zh-cn', '2015-06-02 16:28:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-12-22 16:58:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d070', 'menu.datagridHandHtml', 'Datagrid Custom Condition', 'en', '2015-06-02 16:28:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-12-22 16:59:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d071', 'menu.materialPom', '树列表', 'zh-cn', '2015-06-02 16:37:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:37:27', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d072', 'menu.materialPom', 'tree list', 'en', '2015-06-02 16:37:11', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:37:29', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d073', 'menu.ckfinderDemo', 'ckfinder例子', 'zh-cn', '2015-06-02 16:40:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:40:26', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d074', 'menu.ckfinderDemo', 'ckfinder demo', 'en', '2015-06-02 16:40:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:40:28', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d075', 'menu.queryEditor', '查询编辑器', 'zh-cn', '2015-06-02 16:44:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:44:34', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba487c37d001487c488a4d076', 'menu.queryEditor', 'The query editor', 'en', '2015-06-02 16:44:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-02 16:44:38', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0001', 'common.wage', 'wage', 'en', '2015-06-03 16:34:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:34:52', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0002', 'common.clear.localstorage', '清除缓存', 'zh-cn', '2015-04-28 10:26:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-05-25 16:30:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0003', 'common.clear.localstorage', 'Clear Cache', 'en', '2015-04-28 10:26:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-05-25 16:30:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0004', 'common.messageSend.record', '消息发送记录表', 'zh-cn', '2015-06-03 10:50:30', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 10:50:48', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0005', 'common.messageSend.record', 'data record to send message', 'en', '2015-06-03 10:50:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 10:50:50', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0006', 'common.messageHeader', '消息标题', 'zh-cn', '2015-06-03 11:05:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:05:46', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0007', 'common.messageHeader', 'message header', 'en', '2015-06-03 11:05:25', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:05:49', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0008', 'common.messageType', '消息类型', 'zh-cn', '2015-06-03 11:09:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:09:35', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0009', 'common.messageType', 'message type', 'en', '2015-06-03 11:09:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:09:38', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0010', 'common.sender', '发送人', 'zh-cn', '2015-06-03 11:13:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:13:26', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0011', 'common.sender', 'sender', 'en', '2015-06-03 11:13:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:13:29', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0012', 'common.receiver', '接收人', 'zh-cn', '2015-06-03 11:15:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:16:21', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0013', 'common.receiver', 'receiver', 'en', '2015-06-03 11:16:00', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:16:24', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0014', 'common.content_2', '内容', 'zh-cn', '2015-06-03 11:19:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:20:13', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0015', 'common.content_2', 'content', 'en', '2015-06-03 11:19:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:20:16', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0016', 'common.dateCreated', '创建日期', 'zh-cn', '2015-06-03 11:22:32', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:22:55', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0017', 'common.dateCreated', 'date created', 'en', '2015-06-03 11:22:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:22:59', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0018', 'common.sendtime', '发送时间', 'zh-cn', '2015-06-03 11:25:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:26:02', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0019', 'common.sendtime', 'sendtime', 'en', '2015-06-03 11:25:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:26:05', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0020', 'common.sendState', '发送状态', 'zh-cn', '2015-06-03 11:30:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:30:23', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0021', 'common.sendState', 'send state', 'en', '2015-06-03 11:30:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:30:26', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0022', 'common.remark', '备注', 'zh-cn', '2015-06-03 11:32:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:32:56', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0023', 'common.remark', 'remark', 'en', '2015-06-03 11:32:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:33:00', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0024', 'common.esId', '主键', 'zh-cn', '2015-06-03 11:37:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:37:38', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0025', 'common.esId', 'ID', 'en', '2015-06-03 11:37:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:37:41', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0026', 'common.iconEdit', '消息修正', 'zh-cn', '2015-06-03 11:40:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:41:09', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0027', 'common.iconEdit', 'Message modification', 'en', '2015-06-03 11:40:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:41:11', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0028', 'common.businessSqlTable', '业务SQL表', 'zh-cn', '2015-06-03 11:50:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:50:48', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0029', 'common.businessSqlTable', 'The SQL table of business', 'en', '2015-06-03 11:50:27', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:50:52', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0030', 'common.sqlName', 'SQL名称', 'zh-cn', '2015-06-03 11:53:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:53:28', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0031', 'common.sqlName', 'SQL name', 'en', '2015-06-03 11:53:11', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:53:33', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0032', 'common.sqlContent', 'SQL内容', 'zh-cn', '2015-06-03 11:55:25', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:55:47', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0033', 'common.sqlContent', 'SQL content', 'en', '2015-06-03 11:55:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:55:49', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0034', 'common.operate', '操作', 'zh-cn', '2015-06-03 11:57:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:58:13', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0035', 'common.operate', 'operate', 'en', '2015-06-03 11:57:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 11:58:16', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0036', 'common.delete_2', '删除', 'zh-cn', '2015-06-03 12:01:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:01:48', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0037', 'common.delete_2', 'delete', 'en', '2015-06-03 12:01:25', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:01:51', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0038', 'common.add_2', '录入', 'zh-cn', '2015-06-03 12:04:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:04:28', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0039', 'common.add_2', 'add', 'en', '2015-06-03 12:04:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:04:31', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0040', 'common.edit_2', '编辑', 'zh-cn', '2015-06-03 12:06:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:06:46', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0041', 'common.edit_2', 'edit', 'en', '2015-06-03 12:06:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:06:50', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0042', 'common.batchDelete', '批量删除', 'zh-cn', '2015-06-03 12:09:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:09:52', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0043', 'common.batchDelete', 'Batch Delete', 'en', '2015-06-03 12:09:32', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:09:57', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0044', 'common.search', '查询', 'zh-cn', '2015-06-03 12:12:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-11-30 12:37:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0045', 'common.search', 'check', 'en', '2015-06-03 12:13:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 12:13:17', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0046', 'common.isId', '主键', 'zh-cn', '2015-06-03 14:29:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:30:06', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0047', 'common.isId', 'ID', 'en', '2015-06-03 14:29:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:30:13', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0048', 'common.createName', '创建人名称', 'zh-cn', '2015-06-03 14:32:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:32:41', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0049', 'common.createName', 'createName', 'en', '2015-06-03 14:32:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:32:45', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0050', 'common.create.By', '创建人登录名', 'zh-cn', '2015-06-03 14:35:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:36:23', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0051', 'common.create.By', 'createBy', 'en', '2015-06-03 14:35:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:36:27', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0052', 'common.createDate', '创建日期', 'zh-cn', '2015-06-03 14:38:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:38:42', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0053', 'common.createDate', 'createDate', 'en', '2015-06-03 14:38:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:38:45', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0054', 'common.updateName', '更新人名称', 'zh-cn', '2015-06-03 14:41:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:41:34', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0055', 'common.updateName', 'updateName', 'en', '2015-06-03 14:41:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:41:37', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0056', 'common.updateByName', '更新人登录名称', 'zh-cn', '2015-06-03 14:44:11', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:44:30', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0057', 'common.updateByName', 'updateByName', 'en', '2015-06-03 14:44:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:44:34', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0058', 'common.updateDate', '更新日期', 'zh-cn', '2015-06-03 14:46:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:46:41', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0059', 'common.updateDate', 'updateDate', 'en', '2015-06-03 14:46:27', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:46:44', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0060', 'common.templateName', '模板名称', 'zh-cn', '2015-06-03 14:49:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:49:54', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0061', 'common.templateName', 'templateName', 'en', '2015-06-03 14:49:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:49:49', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0062', 'common.templateType', '模板类型', 'zh-cn', '2015-06-03 14:51:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:52:18', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0063', 'common.templateType', 'templateType', 'en', '2015-06-03 14:52:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:52:21', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0064', 'common.templateContent', '模板内容', 'zh-cn', '2015-06-03 14:54:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:55:00', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0065', 'common.templateContent', 'templateContent', 'en', '2015-06-03 14:54:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:55:04', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0066', 'common.opt', '操作', 'zh-cn', '2015-06-03 14:56:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:57:13', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0067', 'common.opt', 'opt', 'en', '2015-06-03 14:56:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 14:57:15', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0068', 'common.deleteTo', '删除', 'zh-cn', '2015-06-03 15:01:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:01:22', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0069', 'common.deleteTo', 'delete', 'en', '2015-06-03 15:01:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:01:25', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0070', 'common.icon.add', '录入', 'zh-cn', '2015-06-03 15:03:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:04:15', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0071', 'common.icon.add', 'add', 'en', '2015-06-03 15:03:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:04:18', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0072', 'common.icon.edit', '编辑', 'zh-cn', '2015-06-03 15:06:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:06:34', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0073', 'common.icon.edit', 'edit', 'en', '2015-06-03 15:06:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:06:38', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0074', 'common.icon.remove', '批量删除', 'zh-cn', '2015-06-03 15:08:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:08:55', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0075', 'common.icon.remove', 'Batch Delete', 'en', '2015-06-03 15:08:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:08:58', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0076', 'common.icon.search', '查询', 'zh-cn', '2015-06-03 15:10:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-11-30 12:36:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0077', 'common.icon.search', 'search', 'en', '2015-06-03 15:10:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:11:10', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0078', 'common.msgTemplateTable', '消息模板表', 'zh-cn', '2015-06-03 15:14:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:14:35', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0079', 'common.msgTemplateTable', 'message template table', 'en', '2015-06-03 15:14:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:14:39', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0080', 'common.sqlDataTable', '消息模板_业务SQL配置表', 'zh-cn', '2015-06-03 15:29:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:30:01', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0081', 'common.sqlDataTable', 'message template_sql configuration', 'en', '2015-06-03 15:29:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:30:04', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0082', 'common.createLoginName', '创建人登录名称', 'zh-cn', '2015-06-03 15:46:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:46:25', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0083', 'common.createLoginName', 'create by name to login', 'en', '2015-06-03 15:46:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:46:30', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0084', 'common.configurationCODE', '配置CODE', 'zh-cn', '2015-06-03 15:50:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:50:57', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0085', 'common.configurationCODE', 'configurationCODE', 'en', '2015-06-03 15:50:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:51:00', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0086', 'common.configurationName', '配置名称', 'zh-cn', '2015-06-03 15:53:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:53:19', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0087', 'common.configurationName', 'configurationName', 'en', '2015-06-03 15:53:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:53:22', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0088', 'common.sqlBusinessId', '业务SQLID', 'zh-cn', '2015-06-03 15:56:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:56:59', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0089', 'common.sqlBusinessId', 'ID of SQL business', 'en', '2015-06-03 15:56:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 15:57:01', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0090', 'common.msgModeliD', '消息模本ID', 'zh-cn', '2015-06-03 16:01:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:01:49', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0091', 'common.msgModeliD', 'message model ID ', 'en', '2015-06-03 16:01:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:01:52', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0092', 'common.pushTest', '推送测试', 'zh-cn', '2015-06-03 16:04:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:05:13', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0093', 'common.pushTest', 'push test', 'en', '2015-06-03 16:04:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:05:16', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0094', 'common.moblePhone', '手机', 'zh-cn', '2015-06-03 16:24:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:24:29', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0095', 'common.moblePhone', 'moble phone', 'en', '2015-06-03 16:24:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:24:33', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0096', 'common.age', '年龄', 'zh-cn', '2015-06-03 16:26:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:26:54', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0097', 'common.age', 'age', 'en', '2015-06-03 16:26:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:26:57', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0098', 'common.email', '电子邮箱', 'zh-cn', '2015-06-03 16:29:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:29:19', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0099', 'common.email', 'email', 'en', '2015-06-03 16:29:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:29:22', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c488a4d0100', 'common.wage', '工资', 'zh-cn', '2015-06-03 16:34:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:34:49', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0002', 'common.sex', '性别', 'zh-cn', '2015-06-03 16:37:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:37:36', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0003', 'common.sex', 'sex', 'en', '2015-06-03 16:37:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:37:39', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0004', 'common.birthday', '生日', 'zh-cn', '2015-06-03 16:40:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:40:49', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0005', 'common.birthday', 'birthday', 'en', '2015-06-03 16:40:27', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-03 16:40:53', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0022', 'common.sendSuccess', '发送成功', 'zh-cn', '2015-06-05 10:38:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:38:53', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0023', 'common.sendSuccess', 'send success', 'en', '2015-06-05 10:38:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:38:55', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0024', 'common.failToSend', '发送失败', 'zh-cn', '2015-06-05 10:42:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:42:58', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0025', 'common.failToSend', 'fail to send', 'en', '2015-06-05 10:42:44', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:43:01', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0026', 'common.didNotSend', '未发送', 'zh-cn', '2015-06-05 10:47:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:48:18', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0027', 'common.didNotSend', 'Did not send', 'en', '2015-06-05 10:48:00', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:48:20', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0028', 'common.smsAlerts', '短信提醒', 'zh-cn', '2015-06-05 10:51:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:51:42', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0029', 'common.smsAlerts', 'SMS alerts', 'en', '2015-06-05 10:51:30', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:51:45', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0030', 'common.emailAlerts', '邮件提醒', 'zh-cn', '2015-06-05 10:58:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:58:55', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0031', 'common.emailAlerts', ' Email Alerts', 'en', '2015-06-05 10:58:44', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 10:58:57', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0032', 'common.sysAlerts', '系统提醒', 'zh-cn', '2015-06-05 11:02:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 11:03:08', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0033', 'common.sysAlerts', 'SYS alerts', 'en', '2015-06-05 11:02:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 11:03:10', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0034', 'common.smsAlertsModel', '短信提醒模板', 'zh-cn', '2015-06-05 11:07:30', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 11:07:43', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0035', 'common.smsAlertsModel', 'SMS alerts model', 'en', '2015-06-05 11:07:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 11:07:45', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0036', 'common.emailAlertsModel', '邮件提醒模板', 'zh-cn', '2015-06-05 11:11:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 11:12:12', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d0037', 'common.emailAlertsModel', 'Email alerts model', 'en', '2015-06-05 11:12:00', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 11:12:14', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d1111', 'common.lock.user.tips', '确定锁定用户吗', 'zh-cn', '2015-06-05 16:56:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 16:56:23', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d1112', 'common.lock.user.tips', 'is confirm lock user', 'en', '2015-06-05 16:56:11', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 16:56:26', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d1113', 'common.unlock.user.tips', '确定激活用户吗', 'zh-cn', '2015-06-05 16:59:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 16:59:34', 'admin', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('jglongjba87c37d001487c499a4d1114', 'common.unlock.user.tips', 'Sure to activate user', 'en', '2015-06-05 16:59:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2015-06-05 16:59:36', 'admin', 'admin');

-- ----------------------------
-- Table structure for t_s_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_s_notice`;
CREATE TABLE `t_s_notice` (
  `id` varchar(36) NOT NULL DEFAULT '' COMMENT 'ID',
  `notice_title` varchar(255) DEFAULT NULL COMMENT '通知标题',
  `notice_content` longtext COMMENT '通知公告内容',
  `notice_type` varchar(2) DEFAULT NULL COMMENT '通知公告类型（1：通知，2:公告）',
  `notice_level` varchar(2) DEFAULT NULL COMMENT '通告授权级别（1:全员，2：角色，3：用户）',
  `notice_term` datetime DEFAULT NULL COMMENT '阅读期限',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of t_s_notice
-- ----------------------------
INSERT INTO `t_s_notice` VALUES ('402880ec5d97f106015d97f704500016', '555', '<p>5555</p>', '2', '1', '2017-07-31 00:00:00', null, '2017-07-31 17:25:34');
INSERT INTO `t_s_notice` VALUES ('402880f25b0da07e015b0dc68e7b0051', '111', '<p>111</p>', '2', '2', '2017-03-27 00:00:00', null, '2017-03-27 11:19:28');
INSERT INTO `t_s_notice` VALUES ('402881855b90f0d5015b90fb8721000e', '222', '<p>2222</p>', '2', '1', '2017-04-22 00:00:00', null, '2017-04-21 22:47:34');

-- ----------------------------
-- Table structure for t_s_notice_authority_role
-- ----------------------------
DROP TABLE IF EXISTS `t_s_notice_authority_role`;
CREATE TABLE `t_s_notice_authority_role` (
  `id` varchar(36) NOT NULL DEFAULT '' COMMENT 'ID',
  `notice_id` varchar(36) DEFAULT NULL COMMENT '通告ID',
  `role_id` varchar(32) DEFAULT NULL COMMENT '授权角色ID',
  PRIMARY KEY (`id`),
  KEY `index_noteid` (`notice_id`),
  KEY `index_roleid` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通告授权角色表';

-- ----------------------------
-- Records of t_s_notice_authority_role
-- ----------------------------
INSERT INTO `t_s_notice_authority_role` VALUES ('402880f25b0da07e015b0dc68e870052', '402880f25b0da07e015b0dc68e7b0051', '8a8ab0b246dc81120146dc8181870050');

-- ----------------------------
-- Table structure for t_s_notice_authority_user
-- ----------------------------
DROP TABLE IF EXISTS `t_s_notice_authority_user`;
CREATE TABLE `t_s_notice_authority_user` (
  `id` varchar(36) NOT NULL DEFAULT '' COMMENT 'ID',
  `notice_id` varchar(36) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '授权用户ID',
  PRIMARY KEY (`id`),
  KEY `index_noticeid` (`notice_id`),
  KEY `index_userid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通告授权用户表';

-- ----------------------------
-- Records of t_s_notice_authority_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_s_notice_read_user
-- ----------------------------
DROP TABLE IF EXISTS `t_s_notice_read_user`;
CREATE TABLE `t_s_notice_read_user` (
  `id` varchar(36) NOT NULL DEFAULT '' COMMENT 'ID',
  `notice_id` varchar(36) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `is_read` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否已阅读',
  `del_flag` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `notice_id_index` (`notice_id`),
  KEY `user_id_index` (`user_id`),
  KEY `index_delflag` (`del_flag`),
  KEY `index_isread` (`is_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通告已读用户表';

-- ----------------------------
-- Records of t_s_notice_read_user
-- ----------------------------
INSERT INTO `t_s_notice_read_user` VALUES ('402880ec5d97f106015d97f7046f0018', '402880ec5d97f106015d97f704500016', '402880e74d75c4dd014d75d44af30005', '0', '0', '2017-07-31 17:25:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402880ec5d97f106015d97f7048a0019', '402880ec5d97f106015d97f704500016', '402881875988e889015988ec36770001', '0', '0', '2017-07-31 17:25:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402880ec5d97f106015d97f7049d001a', '402880ec5d97f106015d97f704500016', '4028ef81538330cd01538333b7bc0001', '0', '0', '2017-07-31 17:25:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402880ec5d97f106015d97f704ae001b', '402880ec5d97f106015d97f704500016', '4028ef81563ae5be01563ae92d7f0002', '0', '0', '2017-07-31 17:25:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402880ec5d97f106015d97f704bf001c', '402880ec5d97f106015d97f704500016', '8a8ab0b246dc81120146dc8181950052', '1', '0', '2017-07-31 17:25:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402880ec5d97f106015d97f704d0001d', '402880ec5d97f106015d97f704500016', '8a8ab0b246dc81120146dc81819d0053', '0', '0', '2017-07-31 17:25:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402880ec5d97f106015d97f704e0001e', '402880ec5d97f106015d97f704500016', '8a8ab0b246dc81120146dc8181a10054', '0', '0', '2017-07-31 17:25:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402880ec5d97f106015d97f704f1001f', '402880ec5d97f106015d97f704500016', '8a8ab0b246dc81120146dc8181a60055', '0', '0', '2017-07-31 17:25:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402880f25b0da07e015b0dc68e960055', '402880f25b0da07e015b0dc68e7b0051', '8a8ab0b246dc81120146dc8181a60055', '0', '0', '2017-03-27 11:19:28');
INSERT INTO `t_s_notice_read_user` VALUES ('402880f25b0da07e015b0dc68ea30056', '402880f25b0da07e015b0dc68e7b0051', '8a8ab0b246dc81120146dc8181a10054', '0', '0', '2017-03-27 11:19:28');
INSERT INTO `t_s_notice_read_user` VALUES ('402880f25b0da07e015b0dc68eaf0057', '402880f25b0da07e015b0dc68e7b0051', '8a8ab0b246dc81120146dc8181950052', '1', '0', '2017-03-27 11:19:28');
INSERT INTO `t_s_notice_read_user` VALUES ('402881855b90f0d5015b90fb87470010', '402881855b90f0d5015b90fb8721000e', '402880e74d75c4dd014d75d44af30005', '0', '0', '2017-04-21 22:47:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402881855b90f0d5015b90fb87560011', '402881855b90f0d5015b90fb8721000e', '402881875988e889015988ec36770001', '0', '0', '2017-04-21 22:47:34');
INSERT INTO `t_s_notice_read_user` VALUES ('402881855b90f0d5015b90fb87640012', '402881855b90f0d5015b90fb8721000e', '4028ef81538330cd01538333b7bc0001', '0', '0', '2017-04-21 22:47:35');
INSERT INTO `t_s_notice_read_user` VALUES ('402881855b90f0d5015b90fb87750013', '402881855b90f0d5015b90fb8721000e', '4028ef81563ae5be01563ae92d7f0002', '0', '0', '2017-04-21 22:47:35');
INSERT INTO `t_s_notice_read_user` VALUES ('402881855b90f0d5015b90fb87840014', '402881855b90f0d5015b90fb8721000e', '8a8ab0b246dc81120146dc8181950052', '1', '0', '2017-04-21 22:47:35');
INSERT INTO `t_s_notice_read_user` VALUES ('402881855b90f0d5015b90fb87920015', '402881855b90f0d5015b90fb8721000e', '8a8ab0b246dc81120146dc81819d0053', '0', '0', '2017-04-21 22:47:35');
INSERT INTO `t_s_notice_read_user` VALUES ('402881855b90f0d5015b90fb879f0016', '402881855b90f0d5015b90fb8721000e', '8a8ab0b246dc81120146dc8181a10054', '0', '0', '2017-04-21 22:47:35');
INSERT INTO `t_s_notice_read_user` VALUES ('402881855b90f0d5015b90fb87ac0017', '402881855b90f0d5015b90fb8721000e', '8a8ab0b246dc81120146dc8181a60055', '0', '0', '2017-04-21 22:47:35');

-- ----------------------------
-- Table structure for t_s_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_s_operation`;
CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `operationcode` varchar(50) DEFAULT NULL COMMENT '页面控件code',
  `operationicon` varchar(100) DEFAULT NULL COMMENT '图标',
  `operationname` varchar(50) DEFAULT NULL COMMENT '页面名字',
  `status` smallint(6) DEFAULT NULL COMMENT '状态',
  `functionid` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `iconid` varchar(32) DEFAULT NULL COMMENT '图标ID',
  `operationtype` smallint(6) DEFAULT NULL COMMENT '规则类型：1/禁用 0/隐藏',
  `processnode_id` varchar(32) DEFAULT NULL COMMENT '流程节点id',
  PRIMARY KEY (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_operation
-- ----------------------------
INSERT INTO `t_s_operation` VALUES ('40288088481d019401481d30a0d1000f', 'add_phnoe', null, '手机号码录入', '0', '40288088481d019401481d2fcebf000d', '8a8ab0b246dc81120146dc8180460000', '1', null);
INSERT INTO `t_s_operation` VALUES ('402880f25a87b619015a8800be110008', 'hol_reson', null, '请假原因隐藏', '0', '4028ef815378741f01537879315e0009', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25a980e2a015a981e9e460008', 'leave_reason', null, '请假原因隐藏', '0', '402880f25a980e2a015a981dc8de0005', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25a9833f5015a9844ed14000f', '订单客户.订单号', null, '列表订单号隐藏', '0', '402880f25a9833f5015a9843218f000c', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b182dcf015b183926370003', 'db_generate_form', null, '隐藏数据库导入表单', '0', '8a8ab0b246dc81120146dc818106002d', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b182dcf015b1839762c0005', 'copyOnlineTable', null, '隐藏复制表单功能', '0', '8a8ab0b246dc81120146dc818106002d', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b182dcf015b184c4885001b', 'sql_enhance', null, '隐藏SQL增强按钮', '0', '8a8ab0b246dc81120146dc818106002d', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b182dcf015b1860f334002f', '#mail_id', null, '隐藏邮箱字段', '0', '4028f6815af5ca04015af5cbf9300001', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b182dcf015b18632e970036', 'phone_code', null, '隐藏手机号字段', '0', '4028f6815af5ca04015af5cbf9300001', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b182dcf015b187b464a004b', '#money_id', null, '禁用金额字段', '0', '4028f6815af5ca04015af5cbf9300001', '8a8ab0b246dc81120146dc8180460000', '1', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b1d5a3a015b1d77ff6a0015', 'day_num', null, '禁用请假天数', '0', '402880f25b1d5a3a015b1d772c2b0013', '8a8ab0b246dc81120146dc8180460000', '1', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b1d5a3a015b1d901da00028', 'hol_dept', null, '列表隐藏请假部门', '0', '402880e74d76e784014d76f5cc2e0014', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b1d5a3a015b1d941094002e', '#import', null, '隐藏excel导入按钮', '0', '402880e74d76e784014d76f5cc2e0014', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b1d5a3a015b1d97b13d0039', '#delete', null, '隐藏批量删除按钮', '0', '402880e74d76e784014d76f5cc2e0014', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b1df029015b1e19a8890027', '#bohui', null, '隐藏按钮驳回', '0', '402880e74d76e784014d76f5cc2e0014', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b1df029015b1e19e0d00029', '#pizhun', null, '隐藏按钮批准', '0', '402880e74d76e784014d76f5cc2e0014', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b23a635015b23ab94b60006', 'order_date', null, '隐藏订单日期', '0', '402880f25b23a635015b23a992f10003', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402880f25b23a635015b23ad152f000d', 'jform_order_customer.telphone', null, '隐藏客户手机号', '0', '402880f25b23a635015b23a992f10003', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402881855ab8c48a015ab8c945a70008', 'contact_way', null, '联系方式隐藏', '0', '402880f25a980e2a015a981dc8de0005', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402881855ab8c48a015ab8caa347000a', 'GO_RETURN_PRICE', null, '合同定金', '0', '402880f25a9833f5015a9843218f000c', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402881855ab8c48a015ab8d331b1001e', 'content', null, '隐藏审批意见', '0', '402881855ab8c48a015ab8d1f96f001b', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402881875b1a8040015b1a84fd800001', 'phone', null, '列表隐藏手机号', '0', '4028f6815af5e479015af5f08dc4001a', '8a8ab0b246dc81120146dc8180460000', '0', null);
INSERT INTO `t_s_operation` VALUES ('402881f4606cc3d501606cd0cbdb0007', 'jeecgdemo_add', null, '个人介绍', '0', '402881f4606cc3d501606cd07a520005', '8a8ab0b246dc81120146dc8180460000', '0', null);

-- ----------------------------
-- Table structure for t_s_password_resetkey
-- ----------------------------
DROP TABLE IF EXISTS `t_s_password_resetkey`;
CREATE TABLE `t_s_password_resetkey` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱地址',
  `is_reset` int(11) DEFAULT NULL COMMENT '是否已重置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_password_resetkey
-- ----------------------------
INSERT INTO `t_s_password_resetkey` VALUES ('4028318163a675250163a67588e70000', null, null, '2018-05-28 19:15:10', 'admin', '445654970@qq.com', '0');
INSERT INTO `t_s_password_resetkey` VALUES ('402881f36395650a01639565de0f0000', null, null, '2018-05-25 11:44:30', 'admin', '445654970@qq.com', '1');
INSERT INTO `t_s_password_resetkey` VALUES ('4028838f63da83910163da8721880003', null, null, '2018-06-07 21:54:39', 'admin', '445654970@qq.com', '0');

-- ----------------------------
-- Table structure for t_s_region
-- ----------------------------
DROP TABLE IF EXISTS `t_s_region`;
CREATE TABLE `t_s_region` (
  `ID` varchar(10) NOT NULL COMMENT 'ID',
  `NAME` varchar(50) NOT NULL COMMENT '城市名',
  `PID` varchar(10) NOT NULL COMMENT '父ID',
  `NAME_EN` varchar(100) NOT NULL COMMENT '英文名',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_region
-- ----------------------------
INSERT INTO `t_s_region` VALUES ('1', '中国', '0', 'Zhong Guo');
INSERT INTO `t_s_region` VALUES ('10', '上海市', '1', 'Shanghai Shi');
INSERT INTO `t_s_region` VALUES ('100', '伊春市', '9', 'Yichun Shi');
INSERT INTO `t_s_region` VALUES ('1000', '前郭尔罗斯蒙古族自治县', '91', 'Qian Gorlos Mongolzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('1001', '长岭县', '91', 'Changling Xian');
INSERT INTO `t_s_region` VALUES ('1002', '乾安县', '91', 'Qian,an Xian');
INSERT INTO `t_s_region` VALUES ('1003', '扶余县', '91', 'Fuyu Xian');
INSERT INTO `t_s_region` VALUES ('1004', '市辖区', '92', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1005', '洮北区', '92', 'Taobei Qu');
INSERT INTO `t_s_region` VALUES ('1006', '镇赉县', '92', 'Zhenlai Xian');
INSERT INTO `t_s_region` VALUES ('1007', '通榆县', '92', 'Tongyu Xian');
INSERT INTO `t_s_region` VALUES ('1008', '洮南市', '92', 'Taonan Shi');
INSERT INTO `t_s_region` VALUES ('1009', '大安市', '92', 'Da,an Shi');
INSERT INTO `t_s_region` VALUES ('101', '佳木斯市', '9', 'Jiamusi Shi');
INSERT INTO `t_s_region` VALUES ('1010', '延吉市', '93', 'Yanji Shi');
INSERT INTO `t_s_region` VALUES ('1011', '图们市', '93', 'Tumen Shi');
INSERT INTO `t_s_region` VALUES ('1012', '敦化市', '93', 'Dunhua Shi');
INSERT INTO `t_s_region` VALUES ('1013', '珲春市', '93', 'Hunchun Shi');
INSERT INTO `t_s_region` VALUES ('1014', '龙井市', '93', 'Longjing Shi');
INSERT INTO `t_s_region` VALUES ('1015', '和龙市', '93', 'Helong Shi');
INSERT INTO `t_s_region` VALUES ('1016', '汪清县', '93', 'Wangqing Xian');
INSERT INTO `t_s_region` VALUES ('1017', '安图县', '93', 'Antu Xian');
INSERT INTO `t_s_region` VALUES ('1018', '市辖区', '94', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1019', '道里区', '94', 'Daoli Qu');
INSERT INTO `t_s_region` VALUES ('102', '七台河市', '9', 'Qitaihe Shi');
INSERT INTO `t_s_region` VALUES ('1020', '南岗区', '94', 'Nangang Qu');
INSERT INTO `t_s_region` VALUES ('1021', '道外区', '94', 'Daowai Qu');
INSERT INTO `t_s_region` VALUES ('1022', '香坊区', '94', 'Xiangfang Qu');
INSERT INTO `t_s_region` VALUES ('1024', '平房区', '94', 'Pingfang Qu');
INSERT INTO `t_s_region` VALUES ('1025', '松北区', '94', 'Songbei Qu');
INSERT INTO `t_s_region` VALUES ('1026', '呼兰区', '94', 'Hulan Qu');
INSERT INTO `t_s_region` VALUES ('1027', '依兰县', '94', 'Yilan Xian');
INSERT INTO `t_s_region` VALUES ('1028', '方正县', '94', 'Fangzheng Xian');
INSERT INTO `t_s_region` VALUES ('1029', '宾县', '94', 'Bin Xian');
INSERT INTO `t_s_region` VALUES ('103', '牡丹江市', '9', 'Mudanjiang Shi');
INSERT INTO `t_s_region` VALUES ('1030', '巴彦县', '94', 'Bayan Xian');
INSERT INTO `t_s_region` VALUES ('1031', '木兰县', '94', 'Mulan Xian ');
INSERT INTO `t_s_region` VALUES ('1032', '通河县', '94', 'Tonghe Xian');
INSERT INTO `t_s_region` VALUES ('1033', '延寿县', '94', 'Yanshou Xian');
INSERT INTO `t_s_region` VALUES ('1034', '阿城区', '94', 'Acheng Shi');
INSERT INTO `t_s_region` VALUES ('1035', '双城市', '94', 'Shuangcheng Shi');
INSERT INTO `t_s_region` VALUES ('1036', '尚志市', '94', 'Shangzhi Shi');
INSERT INTO `t_s_region` VALUES ('1037', '五常市', '94', 'Wuchang Shi');
INSERT INTO `t_s_region` VALUES ('1038', '市辖区', '95', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1039', '龙沙区', '95', 'Longsha Qu');
INSERT INTO `t_s_region` VALUES ('104', '黑河市', '9', 'Heihe Shi');
INSERT INTO `t_s_region` VALUES ('1040', '建华区', '95', 'Jianhua Qu');
INSERT INTO `t_s_region` VALUES ('1041', '铁锋区', '95', 'Tiefeng Qu');
INSERT INTO `t_s_region` VALUES ('1042', '昂昂溪区', '95', 'Ang,angxi Qu');
INSERT INTO `t_s_region` VALUES ('1043', '富拉尔基区', '95', 'Hulan Ergi Qu');
INSERT INTO `t_s_region` VALUES ('1044', '碾子山区', '95', 'Nianzishan Qu');
INSERT INTO `t_s_region` VALUES ('1045', '梅里斯达斡尔族区', '95', 'Meilisidawoerzu Qu');
INSERT INTO `t_s_region` VALUES ('1046', '龙江县', '95', 'Longjiang Xian');
INSERT INTO `t_s_region` VALUES ('1047', '依安县', '95', 'Yi,an Xian');
INSERT INTO `t_s_region` VALUES ('1048', '泰来县', '95', 'Tailai Xian');
INSERT INTO `t_s_region` VALUES ('1049', '甘南县', '95', 'Gannan Xian');
INSERT INTO `t_s_region` VALUES ('105', '绥化市', '9', 'Suihua Shi');
INSERT INTO `t_s_region` VALUES ('1050', '富裕县', '95', 'Fuyu Xian');
INSERT INTO `t_s_region` VALUES ('1051', '克山县', '95', 'Keshan Xian');
INSERT INTO `t_s_region` VALUES ('1052', '克东县', '95', 'Kedong Xian');
INSERT INTO `t_s_region` VALUES ('1053', '拜泉县', '95', 'Baiquan Xian');
INSERT INTO `t_s_region` VALUES ('1054', '讷河市', '95', 'Nehe Shi');
INSERT INTO `t_s_region` VALUES ('1055', '市辖区', '96', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1056', '鸡冠区', '96', 'Jiguan Qu');
INSERT INTO `t_s_region` VALUES ('1057', '恒山区', '96', 'Hengshan Qu');
INSERT INTO `t_s_region` VALUES ('1058', '滴道区', '96', 'Didao Qu');
INSERT INTO `t_s_region` VALUES ('1059', '梨树区', '96', 'Lishu Qu');
INSERT INTO `t_s_region` VALUES ('106', '大兴安岭地区', '9', 'Da Hinggan Ling Diqu');
INSERT INTO `t_s_region` VALUES ('1060', '城子河区', '96', 'Chengzihe Qu');
INSERT INTO `t_s_region` VALUES ('1061', '麻山区', '96', 'Mashan Qu');
INSERT INTO `t_s_region` VALUES ('1062', '鸡东县', '96', 'Jidong Xian');
INSERT INTO `t_s_region` VALUES ('1063', '虎林市', '96', 'Hulin Shi');
INSERT INTO `t_s_region` VALUES ('1064', '密山市', '96', 'Mishan Shi');
INSERT INTO `t_s_region` VALUES ('1065', '市辖区', '97', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1066', '向阳区', '97', 'Xiangyang  Qu ');
INSERT INTO `t_s_region` VALUES ('1067', '工农区', '97', 'Gongnong Qu');
INSERT INTO `t_s_region` VALUES ('1068', '南山区', '97', 'Nanshan Qu');
INSERT INTO `t_s_region` VALUES ('1069', '兴安区', '97', 'Xing,an Qu');
INSERT INTO `t_s_region` VALUES ('107', '市辖区', '10', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1070', '东山区', '97', 'Dongshan Qu');
INSERT INTO `t_s_region` VALUES ('1071', '兴山区', '97', 'Xingshan Qu');
INSERT INTO `t_s_region` VALUES ('1072', '萝北县', '97', 'Luobei Xian');
INSERT INTO `t_s_region` VALUES ('1073', '绥滨县', '97', 'Suibin Xian');
INSERT INTO `t_s_region` VALUES ('1074', '市辖区', '98', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1075', '尖山区', '98', 'Jianshan Qu');
INSERT INTO `t_s_region` VALUES ('1076', '岭东区', '98', 'Lingdong Qu');
INSERT INTO `t_s_region` VALUES ('1077', '四方台区', '98', 'Sifangtai Qu');
INSERT INTO `t_s_region` VALUES ('1078', '宝山区', '98', 'Baoshan Qu');
INSERT INTO `t_s_region` VALUES ('1079', '集贤县', '98', 'Jixian Xian');
INSERT INTO `t_s_region` VALUES ('108', '县', '10', 'Xian');
INSERT INTO `t_s_region` VALUES ('1080', '友谊县', '98', 'Youyi Xian');
INSERT INTO `t_s_region` VALUES ('1081', '宝清县', '98', 'Baoqing Xian');
INSERT INTO `t_s_region` VALUES ('1082', '饶河县', '98', 'Raohe Xian ');
INSERT INTO `t_s_region` VALUES ('1083', '市辖区', '99', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1084', '萨尔图区', '99', 'Sairt Qu');
INSERT INTO `t_s_region` VALUES ('1085', '龙凤区', '99', 'Longfeng Qu');
INSERT INTO `t_s_region` VALUES ('1086', '让胡路区', '99', 'Ranghulu Qu');
INSERT INTO `t_s_region` VALUES ('1087', '红岗区', '99', 'Honggang Qu');
INSERT INTO `t_s_region` VALUES ('1088', '大同区', '99', 'Datong Qu');
INSERT INTO `t_s_region` VALUES ('1089', '肇州县', '99', 'Zhaozhou Xian');
INSERT INTO `t_s_region` VALUES ('109', '南京市', '11', 'Nanjing Shi');
INSERT INTO `t_s_region` VALUES ('1090', '肇源县', '99', 'Zhaoyuan Xian');
INSERT INTO `t_s_region` VALUES ('1091', '林甸县', '99', 'Lindian Xian ');
INSERT INTO `t_s_region` VALUES ('1092', '杜尔伯特蒙古族自治县', '99', 'Dorbod Mongolzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('1093', '市辖区', '100', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1094', '伊春区', '100', 'Yichun Qu');
INSERT INTO `t_s_region` VALUES ('1095', '南岔区', '100', 'Nancha Qu');
INSERT INTO `t_s_region` VALUES ('1096', '友好区', '100', 'Youhao Qu');
INSERT INTO `t_s_region` VALUES ('1097', '西林区', '100', 'Xilin Qu');
INSERT INTO `t_s_region` VALUES ('1098', '翠峦区', '100', 'Cuiluan Qu');
INSERT INTO `t_s_region` VALUES ('1099', '新青区', '100', 'Xinqing Qu');
INSERT INTO `t_s_region` VALUES ('11', '江苏省', '1', 'Jiangsu Sheng');
INSERT INTO `t_s_region` VALUES ('110', '无锡市', '11', 'Wuxi Shi');
INSERT INTO `t_s_region` VALUES ('1100', '美溪区', '100', 'Meixi Qu');
INSERT INTO `t_s_region` VALUES ('1101', '金山屯区', '100', 'Jinshantun Qu');
INSERT INTO `t_s_region` VALUES ('1102', '五营区', '100', 'Wuying Qu');
INSERT INTO `t_s_region` VALUES ('1103', '乌马河区', '100', 'Wumahe Qu');
INSERT INTO `t_s_region` VALUES ('1104', '汤旺河区', '100', 'Tangwanghe Qu');
INSERT INTO `t_s_region` VALUES ('1105', '带岭区', '100', 'Dailing Qu');
INSERT INTO `t_s_region` VALUES ('1106', '乌伊岭区', '100', 'Wuyiling Qu');
INSERT INTO `t_s_region` VALUES ('1107', '红星区', '100', 'Hongxing Qu');
INSERT INTO `t_s_region` VALUES ('1108', '上甘岭区', '100', 'Shangganling Qu');
INSERT INTO `t_s_region` VALUES ('1109', '嘉荫县', '100', 'Jiayin Xian');
INSERT INTO `t_s_region` VALUES ('111', '徐州市', '11', 'Xuzhou Shi');
INSERT INTO `t_s_region` VALUES ('1110', '铁力市', '100', 'Tieli Shi');
INSERT INTO `t_s_region` VALUES ('1111', '市辖区', '101', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1113', '向阳区', '101', 'Xiangyang  Qu ');
INSERT INTO `t_s_region` VALUES ('1114', '前进区', '101', 'Qianjin Qu');
INSERT INTO `t_s_region` VALUES ('1115', '东风区', '101', 'Dongfeng Qu');
INSERT INTO `t_s_region` VALUES ('1116', '郊区', '101', 'Jiaoqu');
INSERT INTO `t_s_region` VALUES ('1117', '桦南县', '101', 'Huanan Xian');
INSERT INTO `t_s_region` VALUES ('1118', '桦川县', '101', 'Huachuan Xian');
INSERT INTO `t_s_region` VALUES ('1119', '汤原县', '101', 'Tangyuan Xian');
INSERT INTO `t_s_region` VALUES ('112', '常州市', '11', 'Changzhou Shi');
INSERT INTO `t_s_region` VALUES ('1120', '抚远县', '101', 'Fuyuan Xian');
INSERT INTO `t_s_region` VALUES ('1121', '同江市', '101', 'Tongjiang Shi');
INSERT INTO `t_s_region` VALUES ('1122', '富锦市', '101', 'Fujin Shi');
INSERT INTO `t_s_region` VALUES ('1123', '市辖区', '102', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1124', '新兴区', '102', 'Xinxing Qu');
INSERT INTO `t_s_region` VALUES ('1125', '桃山区', '102', 'Taoshan Qu');
INSERT INTO `t_s_region` VALUES ('1126', '茄子河区', '102', 'Qiezihe Qu');
INSERT INTO `t_s_region` VALUES ('1127', '勃利县', '102', 'Boli Xian');
INSERT INTO `t_s_region` VALUES ('1128', '市辖区', '103', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1129', '东安区', '103', 'Dong,an Qu');
INSERT INTO `t_s_region` VALUES ('113', '苏州市', '11', 'Suzhou Shi');
INSERT INTO `t_s_region` VALUES ('1130', '阳明区', '103', 'Yangming Qu');
INSERT INTO `t_s_region` VALUES ('1131', '爱民区', '103', 'Aimin Qu');
INSERT INTO `t_s_region` VALUES ('1132', '西安区', '103', 'Xi,an Qu');
INSERT INTO `t_s_region` VALUES ('1133', '东宁县', '103', 'Dongning Xian');
INSERT INTO `t_s_region` VALUES ('1134', '林口县', '103', 'Linkou Xian');
INSERT INTO `t_s_region` VALUES ('1135', '绥芬河市', '103', 'Suifenhe Shi');
INSERT INTO `t_s_region` VALUES ('1136', '海林市', '103', 'Hailin Shi');
INSERT INTO `t_s_region` VALUES ('1137', '宁安市', '103', 'Ning,an Shi');
INSERT INTO `t_s_region` VALUES ('1138', '穆棱市', '103', 'Muling Shi');
INSERT INTO `t_s_region` VALUES ('1139', '市辖区', '104', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('114', '南通市', '11', 'Nantong Shi');
INSERT INTO `t_s_region` VALUES ('1140', '爱辉区', '104', 'Aihui Qu');
INSERT INTO `t_s_region` VALUES ('1141', '嫩江县', '104', 'Nenjiang Xian');
INSERT INTO `t_s_region` VALUES ('1142', '逊克县', '104', 'Xunke Xian');
INSERT INTO `t_s_region` VALUES ('1143', '孙吴县', '104', 'Sunwu Xian');
INSERT INTO `t_s_region` VALUES ('1144', '北安市', '104', 'Bei,an Shi');
INSERT INTO `t_s_region` VALUES ('1145', '五大连池市', '104', 'Wudalianchi Shi');
INSERT INTO `t_s_region` VALUES ('1146', '市辖区', '105', '1');
INSERT INTO `t_s_region` VALUES ('1147', '北林区', '105', 'Beilin Qu');
INSERT INTO `t_s_region` VALUES ('1148', '望奎县', '105', 'Wangkui Xian');
INSERT INTO `t_s_region` VALUES ('1149', '兰西县', '105', 'Lanxi Xian');
INSERT INTO `t_s_region` VALUES ('115', '连云港市', '11', 'Lianyungang Shi');
INSERT INTO `t_s_region` VALUES ('1150', '青冈县', '105', 'Qinggang Xian');
INSERT INTO `t_s_region` VALUES ('1151', '庆安县', '105', 'Qing,an Xian');
INSERT INTO `t_s_region` VALUES ('1152', '明水县', '105', 'Mingshui Xian');
INSERT INTO `t_s_region` VALUES ('1153', '绥棱县', '105', 'Suileng Xian');
INSERT INTO `t_s_region` VALUES ('1154', '安达市', '105', 'Anda Shi');
INSERT INTO `t_s_region` VALUES ('1155', '肇东市', '105', 'Zhaodong Shi');
INSERT INTO `t_s_region` VALUES ('1156', '海伦市', '105', 'Hailun Shi');
INSERT INTO `t_s_region` VALUES ('1157', '呼玛县', '106', 'Huma Xian');
INSERT INTO `t_s_region` VALUES ('1158', '塔河县', '106', 'Tahe Xian');
INSERT INTO `t_s_region` VALUES ('1159', '漠河县', '106', 'Mohe Xian');
INSERT INTO `t_s_region` VALUES ('116', '淮安市', '11', 'Huai,an Xian');
INSERT INTO `t_s_region` VALUES ('1160', '黄浦区', '107', 'Huangpu Qu');
INSERT INTO `t_s_region` VALUES ('1161', '卢湾区', '107', 'Luwan Qu');
INSERT INTO `t_s_region` VALUES ('1162', '徐汇区', '107', 'Xuhui Qu');
INSERT INTO `t_s_region` VALUES ('1163', '长宁区', '107', 'Changning Qu');
INSERT INTO `t_s_region` VALUES ('1164', '静安区', '107', 'Jing,an Qu');
INSERT INTO `t_s_region` VALUES ('1165', '普陀区', '107', 'Putuo Qu');
INSERT INTO `t_s_region` VALUES ('1166', '闸北区', '107', 'Zhabei Qu');
INSERT INTO `t_s_region` VALUES ('1167', '虹口区', '107', 'Hongkou Qu');
INSERT INTO `t_s_region` VALUES ('1168', '杨浦区', '107', 'Yangpu Qu');
INSERT INTO `t_s_region` VALUES ('1169', '闵行区', '107', 'Minhang Qu');
INSERT INTO `t_s_region` VALUES ('117', '盐城市', '11', 'Yancheng Shi');
INSERT INTO `t_s_region` VALUES ('1170', '宝山区', '107', 'Baoshan Qu');
INSERT INTO `t_s_region` VALUES ('1171', '嘉定区', '107', 'Jiading Qu');
INSERT INTO `t_s_region` VALUES ('1172', '浦东新区', '107', 'Pudong Xinqu');
INSERT INTO `t_s_region` VALUES ('1173', '金山区', '107', 'Jinshan Qu');
INSERT INTO `t_s_region` VALUES ('1174', '松江区', '107', 'Songjiang Qu');
INSERT INTO `t_s_region` VALUES ('1175', '青浦区', '107', 'Qingpu  Qu');
INSERT INTO `t_s_region` VALUES ('1177', '奉贤区', '107', 'Fengxian Qu');
INSERT INTO `t_s_region` VALUES ('1178', '崇明县', '108', 'Chongming Xian');
INSERT INTO `t_s_region` VALUES ('1179', '市辖区', '109', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('118', '扬州市', '11', 'Yangzhou Shi');
INSERT INTO `t_s_region` VALUES ('1180', '玄武区', '109', 'Xuanwu Qu');
INSERT INTO `t_s_region` VALUES ('1181', '白下区', '109', 'Baixia Qu');
INSERT INTO `t_s_region` VALUES ('1182', '秦淮区', '109', 'Qinhuai Qu');
INSERT INTO `t_s_region` VALUES ('1183', '建邺区', '109', 'Jianye Qu');
INSERT INTO `t_s_region` VALUES ('1184', '鼓楼区', '109', 'Gulou Qu');
INSERT INTO `t_s_region` VALUES ('1185', '下关区', '109', 'Xiaguan Qu');
INSERT INTO `t_s_region` VALUES ('1186', '浦口区', '109', 'Pukou Qu');
INSERT INTO `t_s_region` VALUES ('1187', '栖霞区', '109', 'Qixia Qu');
INSERT INTO `t_s_region` VALUES ('1188', '雨花台区', '109', 'Yuhuatai Qu');
INSERT INTO `t_s_region` VALUES ('1189', '江宁区', '109', 'Jiangning Qu');
INSERT INTO `t_s_region` VALUES ('119', '镇江市', '11', 'Zhenjiang Shi');
INSERT INTO `t_s_region` VALUES ('1190', '六合区', '109', 'Liuhe Qu');
INSERT INTO `t_s_region` VALUES ('1191', '溧水县', '109', 'Lishui Xian');
INSERT INTO `t_s_region` VALUES ('1192', '高淳县', '109', 'Gaochun Xian');
INSERT INTO `t_s_region` VALUES ('1193', '市辖区', '110', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1194', '崇安区', '110', 'Chong,an Qu');
INSERT INTO `t_s_region` VALUES ('1195', '南长区', '110', 'Nanchang Qu');
INSERT INTO `t_s_region` VALUES ('1196', '北塘区', '110', 'Beitang Qu');
INSERT INTO `t_s_region` VALUES ('1197', '锡山区', '110', 'Xishan Qu');
INSERT INTO `t_s_region` VALUES ('1198', '惠山区', '110', 'Huishan Qu');
INSERT INTO `t_s_region` VALUES ('1199', '滨湖区', '110', 'Binhu Qu');
INSERT INTO `t_s_region` VALUES ('12', '浙江省', '1', 'Zhejiang Sheng');
INSERT INTO `t_s_region` VALUES ('120', '泰州市', '11', 'Taizhou Shi');
INSERT INTO `t_s_region` VALUES ('1200', '江阴市', '110', 'Jiangyin Shi');
INSERT INTO `t_s_region` VALUES ('1201', '宜兴市', '110', 'Yixing Shi');
INSERT INTO `t_s_region` VALUES ('1202', '市辖区', '111', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1203', '鼓楼区', '111', 'Gulou Qu');
INSERT INTO `t_s_region` VALUES ('1204', '云龙区', '111', 'Yunlong Qu');
INSERT INTO `t_s_region` VALUES ('1206', '贾汪区', '111', 'Jiawang Qu');
INSERT INTO `t_s_region` VALUES ('1207', '泉山区', '111', 'Quanshan Qu');
INSERT INTO `t_s_region` VALUES ('1208', '丰县', '111', 'Feng Xian');
INSERT INTO `t_s_region` VALUES ('1209', '沛县', '111', 'Pei Xian');
INSERT INTO `t_s_region` VALUES ('121', '宿迁市', '11', 'Suqian Shi');
INSERT INTO `t_s_region` VALUES ('1210', '铜山区', '111', 'Tongshan Xian');
INSERT INTO `t_s_region` VALUES ('1211', '睢宁县', '111', 'Suining Xian');
INSERT INTO `t_s_region` VALUES ('1212', '新沂市', '111', 'Xinyi Shi');
INSERT INTO `t_s_region` VALUES ('1213', '邳州市', '111', 'Pizhou Shi');
INSERT INTO `t_s_region` VALUES ('1214', '市辖区', '112', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1215', '天宁区', '112', 'Tianning Qu');
INSERT INTO `t_s_region` VALUES ('1216', '钟楼区', '112', 'Zhonglou Qu');
INSERT INTO `t_s_region` VALUES ('1217', '戚墅堰区', '112', 'Qishuyan Qu');
INSERT INTO `t_s_region` VALUES ('1218', '新北区', '112', 'Xinbei Qu');
INSERT INTO `t_s_region` VALUES ('1219', '武进区', '112', 'Wujin Qu');
INSERT INTO `t_s_region` VALUES ('122', '杭州市', '12', 'Hangzhou Shi');
INSERT INTO `t_s_region` VALUES ('1220', '溧阳市', '112', 'Liyang Shi');
INSERT INTO `t_s_region` VALUES ('1221', '金坛市', '112', 'Jintan Shi');
INSERT INTO `t_s_region` VALUES ('1222', '市辖区', '113', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1223', '沧浪区', '113', 'Canglang Qu');
INSERT INTO `t_s_region` VALUES ('1224', '平江区', '113', 'Pingjiang Qu');
INSERT INTO `t_s_region` VALUES ('1225', '金阊区', '113', 'Jinchang Qu');
INSERT INTO `t_s_region` VALUES ('1226', '虎丘区', '113', 'Huqiu Qu');
INSERT INTO `t_s_region` VALUES ('1227', '吴中区', '113', 'Wuzhong Qu');
INSERT INTO `t_s_region` VALUES ('1228', '相城区', '113', 'Xiangcheng Qu');
INSERT INTO `t_s_region` VALUES ('1229', '常熟市', '113', 'Changshu Shi');
INSERT INTO `t_s_region` VALUES ('123', '宁波市', '12', 'Ningbo Shi');
INSERT INTO `t_s_region` VALUES ('1230', '张家港市', '113', 'Zhangjiagang Shi ');
INSERT INTO `t_s_region` VALUES ('1231', '昆山市', '113', 'Kunshan Shi');
INSERT INTO `t_s_region` VALUES ('1232', '吴江市', '113', 'Wujiang Shi');
INSERT INTO `t_s_region` VALUES ('1233', '太仓市', '113', 'Taicang Shi');
INSERT INTO `t_s_region` VALUES ('1234', '市辖区', '114', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1235', '崇川区', '114', 'Chongchuan Qu');
INSERT INTO `t_s_region` VALUES ('1236', '港闸区', '114', 'Gangzha Qu');
INSERT INTO `t_s_region` VALUES ('1237', '海安县', '114', 'Hai,an Xian');
INSERT INTO `t_s_region` VALUES ('1238', '如东县', '114', 'Rudong Xian');
INSERT INTO `t_s_region` VALUES ('1239', '启东市', '114', 'Qidong Shi');
INSERT INTO `t_s_region` VALUES ('124', '温州市', '12', 'Wenzhou Shi');
INSERT INTO `t_s_region` VALUES ('1240', '如皋市', '114', 'Rugao Shi');
INSERT INTO `t_s_region` VALUES ('1241', '通州区', '114', 'Tongzhou Shi');
INSERT INTO `t_s_region` VALUES ('1242', '海门市', '114', 'Haimen Shi');
INSERT INTO `t_s_region` VALUES ('1243', '市辖区', '115', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1244', '连云区', '115', 'Lianyun Qu');
INSERT INTO `t_s_region` VALUES ('1245', '新浦区', '115', 'Xinpu Qu');
INSERT INTO `t_s_region` VALUES ('1246', '海州区', '115', 'Haizhou Qu');
INSERT INTO `t_s_region` VALUES ('1247', '赣榆县', '115', 'Ganyu Xian');
INSERT INTO `t_s_region` VALUES ('1248', '东海县', '115', 'Donghai Xian');
INSERT INTO `t_s_region` VALUES ('1249', '灌云县', '115', 'Guanyun Xian');
INSERT INTO `t_s_region` VALUES ('125', '嘉兴市', '12', 'Jiaxing Shi');
INSERT INTO `t_s_region` VALUES ('1250', '灌南县', '115', 'Guannan Xian');
INSERT INTO `t_s_region` VALUES ('1251', '市辖区', '116', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1252', '清河区', '116', 'Qinghe Qu');
INSERT INTO `t_s_region` VALUES ('1253', '楚州区', '116', 'Chuzhou Qu');
INSERT INTO `t_s_region` VALUES ('1254', '淮阴区', '116', 'Huaiyin Qu');
INSERT INTO `t_s_region` VALUES ('1255', '清浦区', '116', 'Qingpu Qu');
INSERT INTO `t_s_region` VALUES ('1256', '涟水县', '116', 'Lianshui Xian');
INSERT INTO `t_s_region` VALUES ('1257', '洪泽县', '116', 'Hongze Xian');
INSERT INTO `t_s_region` VALUES ('1258', '盱眙县', '116', 'Xuyi Xian');
INSERT INTO `t_s_region` VALUES ('1259', '金湖县', '116', 'Jinhu Xian');
INSERT INTO `t_s_region` VALUES ('126', '湖州市', '12', 'Huzhou Shi ');
INSERT INTO `t_s_region` VALUES ('1260', '市辖区', '117', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1261', '亭湖区', '117', 'Tinghu Qu');
INSERT INTO `t_s_region` VALUES ('1262', '盐都区', '117', 'Yandu Qu');
INSERT INTO `t_s_region` VALUES ('1263', '响水县', '117', 'Xiangshui Xian');
INSERT INTO `t_s_region` VALUES ('1264', '滨海县', '117', 'Binhai Xian');
INSERT INTO `t_s_region` VALUES ('1265', '阜宁县', '117', 'Funing Xian');
INSERT INTO `t_s_region` VALUES ('1266', '射阳县', '117', 'Sheyang Xian');
INSERT INTO `t_s_region` VALUES ('1267', '建湖县', '117', 'Jianhu Xian');
INSERT INTO `t_s_region` VALUES ('1268', '东台市', '117', 'Dongtai Shi');
INSERT INTO `t_s_region` VALUES ('1269', '大丰市', '117', 'Dafeng Shi');
INSERT INTO `t_s_region` VALUES ('127', '绍兴市', '12', 'Shaoxing Shi');
INSERT INTO `t_s_region` VALUES ('1270', '市辖区', '118', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1271', '广陵区', '118', 'Guangling Qu');
INSERT INTO `t_s_region` VALUES ('1272', '邗江区', '118', 'Hanjiang Qu');
INSERT INTO `t_s_region` VALUES ('1273', '维扬区', '118', 'Weiyang Qu');
INSERT INTO `t_s_region` VALUES ('1274', '宝应县', '118', 'Baoying Xian ');
INSERT INTO `t_s_region` VALUES ('1275', '仪征市', '118', 'Yizheng Shi');
INSERT INTO `t_s_region` VALUES ('1276', '高邮市', '118', 'Gaoyou Shi');
INSERT INTO `t_s_region` VALUES ('1277', '江都市', '118', 'Jiangdu Shi');
INSERT INTO `t_s_region` VALUES ('1278', '市辖区', '119', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1279', '京口区', '119', 'Jingkou Qu');
INSERT INTO `t_s_region` VALUES ('128', '金华市', '12', 'Jinhua Shi');
INSERT INTO `t_s_region` VALUES ('1280', '润州区', '119', 'Runzhou Qu');
INSERT INTO `t_s_region` VALUES ('1281', '丹徒区', '119', 'Dantu Qu');
INSERT INTO `t_s_region` VALUES ('1282', '丹阳市', '119', 'Danyang Xian');
INSERT INTO `t_s_region` VALUES ('1283', '扬中市', '119', 'Yangzhong Shi');
INSERT INTO `t_s_region` VALUES ('1284', '句容市', '119', 'Jurong Shi');
INSERT INTO `t_s_region` VALUES ('1285', '市辖区', '120', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1286', '海陵区', '120', 'Hailing Qu');
INSERT INTO `t_s_region` VALUES ('1287', '高港区', '120', 'Gaogang Qu');
INSERT INTO `t_s_region` VALUES ('1288', '兴化市', '120', 'Xinghua Shi');
INSERT INTO `t_s_region` VALUES ('1289', '靖江市', '120', 'Jingjiang Shi');
INSERT INTO `t_s_region` VALUES ('129', '衢州市', '12', 'Quzhou Shi');
INSERT INTO `t_s_region` VALUES ('1290', '泰兴市', '120', 'Taixing Shi');
INSERT INTO `t_s_region` VALUES ('1291', '姜堰市', '120', 'Jiangyan Shi');
INSERT INTO `t_s_region` VALUES ('1292', '市辖区', '121', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1293', '宿城区', '121', 'Sucheng Qu');
INSERT INTO `t_s_region` VALUES ('1294', '宿豫区', '121', 'Suyu Qu');
INSERT INTO `t_s_region` VALUES ('1295', '沭阳县', '121', 'Shuyang Xian');
INSERT INTO `t_s_region` VALUES ('1296', '泗阳县', '121', 'Siyang Xian ');
INSERT INTO `t_s_region` VALUES ('1297', '泗洪县', '121', 'Sihong Xian');
INSERT INTO `t_s_region` VALUES ('1298', '市辖区', '122', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1299', '上城区', '122', 'Shangcheng Qu');
INSERT INTO `t_s_region` VALUES ('13', '安徽省', '1', 'Anhui Sheng');
INSERT INTO `t_s_region` VALUES ('130', '舟山市', '12', 'Zhoushan Shi');
INSERT INTO `t_s_region` VALUES ('1300', '下城区', '122', 'Xiacheng Qu');
INSERT INTO `t_s_region` VALUES ('1301', '江干区', '122', 'Jianggan Qu');
INSERT INTO `t_s_region` VALUES ('1302', '拱墅区', '122', 'Gongshu Qu');
INSERT INTO `t_s_region` VALUES ('1303', '西湖区', '122', 'Xihu Qu ');
INSERT INTO `t_s_region` VALUES ('1304', '滨江区', '122', 'Binjiang Qu');
INSERT INTO `t_s_region` VALUES ('1305', '萧山区', '122', 'Xiaoshan Qu');
INSERT INTO `t_s_region` VALUES ('1306', '余杭区', '122', 'Yuhang Qu');
INSERT INTO `t_s_region` VALUES ('1307', '桐庐县', '122', 'Tonglu Xian');
INSERT INTO `t_s_region` VALUES ('1308', '淳安县', '122', 'Chun,an Xian');
INSERT INTO `t_s_region` VALUES ('1309', '建德市', '122', 'Jiande Shi');
INSERT INTO `t_s_region` VALUES ('131', '台州市', '12', 'Taizhou Shi');
INSERT INTO `t_s_region` VALUES ('1310', '富阳市', '122', 'Fuyang Shi');
INSERT INTO `t_s_region` VALUES ('1311', '临安市', '122', 'Lin,an Shi');
INSERT INTO `t_s_region` VALUES ('1312', '市辖区', '123', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1313', '海曙区', '123', 'Haishu Qu');
INSERT INTO `t_s_region` VALUES ('1314', '江东区', '123', 'Jiangdong Qu');
INSERT INTO `t_s_region` VALUES ('1315', '江北区', '123', 'Jiangbei Qu');
INSERT INTO `t_s_region` VALUES ('1316', '北仑区', '123', 'Beilun Qu');
INSERT INTO `t_s_region` VALUES ('1317', '镇海区', '123', 'Zhenhai Qu');
INSERT INTO `t_s_region` VALUES ('1318', '鄞州区', '123', 'Yinzhou Qu');
INSERT INTO `t_s_region` VALUES ('1319', '象山县', '123', 'Xiangshan Xian');
INSERT INTO `t_s_region` VALUES ('132', '丽水市', '12', 'Lishui Shi');
INSERT INTO `t_s_region` VALUES ('1320', '宁海县', '123', 'Ninghai Xian');
INSERT INTO `t_s_region` VALUES ('1321', '余姚市', '123', 'Yuyao Shi');
INSERT INTO `t_s_region` VALUES ('1322', '慈溪市', '123', 'Cixi Shi');
INSERT INTO `t_s_region` VALUES ('1323', '奉化市', '123', 'Fenghua Shi');
INSERT INTO `t_s_region` VALUES ('1324', '市辖区', '124', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1325', '鹿城区', '124', 'Lucheng Qu');
INSERT INTO `t_s_region` VALUES ('1326', '龙湾区', '124', 'Longwan Qu');
INSERT INTO `t_s_region` VALUES ('1327', '瓯海区', '124', 'Ouhai Qu');
INSERT INTO `t_s_region` VALUES ('1328', '洞头县', '124', 'Dongtou Xian');
INSERT INTO `t_s_region` VALUES ('1329', '永嘉县', '124', 'Yongjia Xian');
INSERT INTO `t_s_region` VALUES ('133', '合肥市', '13', 'Hefei Shi');
INSERT INTO `t_s_region` VALUES ('1330', '平阳县', '124', 'Pingyang Xian');
INSERT INTO `t_s_region` VALUES ('1331', '苍南县', '124', 'Cangnan Xian');
INSERT INTO `t_s_region` VALUES ('1332', '文成县', '124', 'Wencheng Xian');
INSERT INTO `t_s_region` VALUES ('1333', '泰顺县', '124', 'Taishun Xian');
INSERT INTO `t_s_region` VALUES ('1334', '瑞安市', '124', 'Rui,an Xian');
INSERT INTO `t_s_region` VALUES ('1335', '乐清市', '124', 'Yueqing Shi');
INSERT INTO `t_s_region` VALUES ('1336', '市辖区', '125', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1338', '秀洲区', '125', 'Xiuzhou Qu');
INSERT INTO `t_s_region` VALUES ('1339', '嘉善县', '125', 'Jiashan Xian');
INSERT INTO `t_s_region` VALUES ('134', '芜湖市', '13', 'Wuhu Shi');
INSERT INTO `t_s_region` VALUES ('1340', '海盐县', '125', 'Haiyan Xian');
INSERT INTO `t_s_region` VALUES ('1341', '海宁市', '125', 'Haining Shi');
INSERT INTO `t_s_region` VALUES ('1342', '平湖市', '125', 'Pinghu Shi');
INSERT INTO `t_s_region` VALUES ('1343', '桐乡市', '125', 'Tongxiang Shi');
INSERT INTO `t_s_region` VALUES ('1344', '市辖区', '126', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1345', '吴兴区', '126', 'Wuxing Qu');
INSERT INTO `t_s_region` VALUES ('1346', '南浔区', '126', 'Nanxun Qu');
INSERT INTO `t_s_region` VALUES ('1347', '德清县', '126', 'Deqing Xian');
INSERT INTO `t_s_region` VALUES ('1348', '长兴县', '126', 'Changxing Xian');
INSERT INTO `t_s_region` VALUES ('1349', '安吉县', '126', 'Anji Xian');
INSERT INTO `t_s_region` VALUES ('135', '蚌埠市', '13', 'Bengbu Shi');
INSERT INTO `t_s_region` VALUES ('1350', '市辖区', '127', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1351', '越城区', '127', 'Yuecheng Qu');
INSERT INTO `t_s_region` VALUES ('1352', '绍兴县', '127', 'Shaoxing Xian');
INSERT INTO `t_s_region` VALUES ('1353', '新昌县', '127', 'Xinchang Xian');
INSERT INTO `t_s_region` VALUES ('1354', '诸暨市', '127', 'Zhuji Shi');
INSERT INTO `t_s_region` VALUES ('1355', '上虞市', '127', 'Shangyu Shi');
INSERT INTO `t_s_region` VALUES ('1356', '嵊州市', '127', 'Shengzhou Shi');
INSERT INTO `t_s_region` VALUES ('1357', '市辖区', '128', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1358', '婺城区', '128', 'Wucheng Qu');
INSERT INTO `t_s_region` VALUES ('1359', '金东区', '128', 'Jindong Qu');
INSERT INTO `t_s_region` VALUES ('136', '淮南市', '13', 'Huainan Shi');
INSERT INTO `t_s_region` VALUES ('1360', '武义县', '128', 'Wuyi Xian');
INSERT INTO `t_s_region` VALUES ('1361', '浦江县', '128', 'Pujiang Xian ');
INSERT INTO `t_s_region` VALUES ('1362', '磐安县', '128', 'Pan,an Xian');
INSERT INTO `t_s_region` VALUES ('1363', '兰溪市', '128', 'Lanxi Shi');
INSERT INTO `t_s_region` VALUES ('1364', '义乌市', '128', 'Yiwu Shi');
INSERT INTO `t_s_region` VALUES ('1365', '东阳市', '128', 'Dongyang Shi');
INSERT INTO `t_s_region` VALUES ('1366', '永康市', '128', 'Yongkang Shi');
INSERT INTO `t_s_region` VALUES ('1367', '市辖区', '129', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1368', '柯城区', '129', 'Kecheng Qu');
INSERT INTO `t_s_region` VALUES ('1369', '衢江区', '129', 'Qujiang Qu');
INSERT INTO `t_s_region` VALUES ('137', '马鞍山市', '13', 'Ma,anshan Shi');
INSERT INTO `t_s_region` VALUES ('1370', '常山县', '129', 'Changshan Xian');
INSERT INTO `t_s_region` VALUES ('1371', '开化县', '129', 'Kaihua Xian');
INSERT INTO `t_s_region` VALUES ('1372', '龙游县', '129', 'Longyou Xian ');
INSERT INTO `t_s_region` VALUES ('1373', '江山市', '129', 'Jiangshan Shi');
INSERT INTO `t_s_region` VALUES ('1374', '市辖区', '130', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1375', '定海区', '130', 'Dinghai Qu');
INSERT INTO `t_s_region` VALUES ('1376', '普陀区', '130', 'Putuo Qu');
INSERT INTO `t_s_region` VALUES ('1377', '岱山县', '130', 'Daishan Xian');
INSERT INTO `t_s_region` VALUES ('1378', '嵊泗县', '130', 'Shengsi Xian');
INSERT INTO `t_s_region` VALUES ('1379', '市辖区', '131', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('138', '淮北市', '13', 'Huaibei Shi');
INSERT INTO `t_s_region` VALUES ('1380', '椒江区', '131', 'Jiaojiang Qu');
INSERT INTO `t_s_region` VALUES ('1381', '黄岩区', '131', 'Huangyan Qu');
INSERT INTO `t_s_region` VALUES ('1382', '路桥区', '131', 'Luqiao Qu');
INSERT INTO `t_s_region` VALUES ('1383', '玉环县', '131', 'Yuhuan Xian');
INSERT INTO `t_s_region` VALUES ('1384', '三门县', '131', 'Sanmen Xian');
INSERT INTO `t_s_region` VALUES ('1385', '天台县', '131', 'Tiantai Xian');
INSERT INTO `t_s_region` VALUES ('1386', '仙居县', '131', 'Xianju Xian');
INSERT INTO `t_s_region` VALUES ('1387', '温岭市', '131', 'Wenling Shi');
INSERT INTO `t_s_region` VALUES ('1388', '临海市', '131', 'Linhai Shi');
INSERT INTO `t_s_region` VALUES ('1389', '市辖区', '132', '1');
INSERT INTO `t_s_region` VALUES ('139', '铜陵市', '13', 'Tongling Shi');
INSERT INTO `t_s_region` VALUES ('1390', '莲都区', '132', 'Liandu Qu');
INSERT INTO `t_s_region` VALUES ('1391', '青田县', '132', 'Qingtian Xian');
INSERT INTO `t_s_region` VALUES ('1392', '缙云县', '132', 'Jinyun Xian');
INSERT INTO `t_s_region` VALUES ('1393', '遂昌县', '132', 'Suichang Xian');
INSERT INTO `t_s_region` VALUES ('1394', '松阳县', '132', 'Songyang Xian');
INSERT INTO `t_s_region` VALUES ('1395', '云和县', '132', 'Yunhe Xian');
INSERT INTO `t_s_region` VALUES ('1396', '庆元县', '132', 'Qingyuan Xian');
INSERT INTO `t_s_region` VALUES ('1397', '景宁畲族自治县', '132', 'Jingning Shezu Zizhixian');
INSERT INTO `t_s_region` VALUES ('1398', '龙泉市', '132', 'Longquan Shi');
INSERT INTO `t_s_region` VALUES ('1399', '市辖区', '133', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('14', '福建省', '1', 'Fujian Sheng ');
INSERT INTO `t_s_region` VALUES ('140', '安庆市', '13', 'Anqing Shi');
INSERT INTO `t_s_region` VALUES ('1400', '瑶海区', '133', 'Yaohai Qu');
INSERT INTO `t_s_region` VALUES ('1401', '庐阳区', '133', 'Luyang Qu');
INSERT INTO `t_s_region` VALUES ('1402', '蜀山区', '133', 'Shushan Qu');
INSERT INTO `t_s_region` VALUES ('1403', '包河区', '133', 'Baohe Qu');
INSERT INTO `t_s_region` VALUES ('1404', '长丰县', '133', 'Changfeng Xian');
INSERT INTO `t_s_region` VALUES ('1405', '肥东县', '133', 'Feidong Xian');
INSERT INTO `t_s_region` VALUES ('1406', '肥西县', '133', 'Feixi Xian');
INSERT INTO `t_s_region` VALUES ('1407', '市辖区', '1412', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1408', '镜湖区', '1412', 'Jinghu Qu');
INSERT INTO `t_s_region` VALUES ('1409', '三山区', '1412', 'Matang Qu');
INSERT INTO `t_s_region` VALUES ('141', '黄山市', '13', 'Huangshan Shi');
INSERT INTO `t_s_region` VALUES ('1410', '弋江区', '1412', 'Xinwu Qu');
INSERT INTO `t_s_region` VALUES ('1411', '鸠江区', '1412', 'Jiujiang Qu');
INSERT INTO `t_s_region` VALUES ('1412', '芜湖市', '134', 'Wuhu Shi');
INSERT INTO `t_s_region` VALUES ('1413', '繁昌县', '1412', 'Fanchang Xian');
INSERT INTO `t_s_region` VALUES ('1414', '南陵县', '1412', 'Nanling Xian');
INSERT INTO `t_s_region` VALUES ('1415', '市辖区', '135', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1416', '龙子湖区', '135', 'Longzihu Qu');
INSERT INTO `t_s_region` VALUES ('1417', '蚌山区', '135', 'Bangshan Qu');
INSERT INTO `t_s_region` VALUES ('1418', '禹会区', '135', 'Yuhui Qu');
INSERT INTO `t_s_region` VALUES ('1419', '淮上区', '135', 'Huaishang Qu');
INSERT INTO `t_s_region` VALUES ('142', '滁州市', '13', 'Chuzhou Shi');
INSERT INTO `t_s_region` VALUES ('1420', '怀远县', '135', 'Huaiyuan Qu');
INSERT INTO `t_s_region` VALUES ('1421', '五河县', '135', 'Wuhe Xian');
INSERT INTO `t_s_region` VALUES ('1422', '固镇县', '135', 'Guzhen Xian');
INSERT INTO `t_s_region` VALUES ('1423', '市辖区', '136', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1424', '大通区', '136', 'Datong Qu');
INSERT INTO `t_s_region` VALUES ('1425', '田家庵区', '136', 'Tianjia,an Qu');
INSERT INTO `t_s_region` VALUES ('1426', '谢家集区', '136', 'Xiejiaji Qu');
INSERT INTO `t_s_region` VALUES ('1427', '八公山区', '136', 'Bagongshan Qu');
INSERT INTO `t_s_region` VALUES ('1428', '潘集区', '136', 'Panji Qu');
INSERT INTO `t_s_region` VALUES ('1429', '凤台县', '136', 'Fengtai Xian');
INSERT INTO `t_s_region` VALUES ('143', '阜阳市', '13', 'Fuyang Shi');
INSERT INTO `t_s_region` VALUES ('1430', '市辖区', '137', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1431', '金家庄区', '137', 'Jinjiazhuang Qu');
INSERT INTO `t_s_region` VALUES ('1432', '花山区', '137', 'Huashan Qu');
INSERT INTO `t_s_region` VALUES ('1433', '雨山区', '137', 'Yushan Qu');
INSERT INTO `t_s_region` VALUES ('1434', '当涂县', '137', 'Dangtu Xian');
INSERT INTO `t_s_region` VALUES ('1435', '市辖区', '138', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1436', '杜集区', '138', 'Duji Qu');
INSERT INTO `t_s_region` VALUES ('1437', '相山区', '138', 'Xiangshan Qu');
INSERT INTO `t_s_region` VALUES ('1438', '烈山区', '138', 'Lieshan Qu');
INSERT INTO `t_s_region` VALUES ('1439', '濉溪县', '138', 'Suixi Xian');
INSERT INTO `t_s_region` VALUES ('144', '宿州市', '13', 'Suzhou Shi');
INSERT INTO `t_s_region` VALUES ('1440', '市辖区', '139', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1441', '铜官山区', '139', 'Tongguanshan Qu');
INSERT INTO `t_s_region` VALUES ('1442', '狮子山区', '139', 'Shizishan Qu');
INSERT INTO `t_s_region` VALUES ('1443', '郊区', '139', 'Jiaoqu');
INSERT INTO `t_s_region` VALUES ('1444', '铜陵县', '139', 'Tongling Xian');
INSERT INTO `t_s_region` VALUES ('1445', '市辖区', '140', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1446', '迎江区', '140', 'Yingjiang Qu');
INSERT INTO `t_s_region` VALUES ('1447', '大观区', '140', 'Daguan Qu');
INSERT INTO `t_s_region` VALUES ('1448', '宜秀区', '140', 'Yixiu Qu');
INSERT INTO `t_s_region` VALUES ('1449', '怀宁县', '140', 'Huaining Xian');
INSERT INTO `t_s_region` VALUES ('145', '巢湖市', '13', 'Chaohu Shi');
INSERT INTO `t_s_region` VALUES ('1450', '枞阳县', '140', 'Zongyang Xian');
INSERT INTO `t_s_region` VALUES ('1451', '潜山县', '140', 'Qianshan Xian');
INSERT INTO `t_s_region` VALUES ('1452', '太湖县', '140', 'Taihu Xian');
INSERT INTO `t_s_region` VALUES ('1453', '宿松县', '140', 'Susong Xian');
INSERT INTO `t_s_region` VALUES ('1454', '望江县', '140', 'Wangjiang Xian');
INSERT INTO `t_s_region` VALUES ('1455', '岳西县', '140', 'Yuexi Xian');
INSERT INTO `t_s_region` VALUES ('1456', '桐城市', '140', 'Tongcheng Shi');
INSERT INTO `t_s_region` VALUES ('1457', '市辖区', '141', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1458', '屯溪区', '141', 'Tunxi Qu');
INSERT INTO `t_s_region` VALUES ('1459', '黄山区', '141', 'Huangshan Qu');
INSERT INTO `t_s_region` VALUES ('146', '六安市', '13', 'Liu,an Shi');
INSERT INTO `t_s_region` VALUES ('1460', '徽州区', '141', 'Huizhou Qu');
INSERT INTO `t_s_region` VALUES ('1461', '歙县', '141', 'She Xian');
INSERT INTO `t_s_region` VALUES ('1462', '休宁县', '141', 'Xiuning Xian');
INSERT INTO `t_s_region` VALUES ('1463', '黟县', '141', 'Yi Xian');
INSERT INTO `t_s_region` VALUES ('1464', '祁门县', '141', 'Qimen Xian');
INSERT INTO `t_s_region` VALUES ('1465', '市辖区', '142', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1466', '琅琊区', '142', 'Langya Qu');
INSERT INTO `t_s_region` VALUES ('1467', '南谯区', '142', 'Nanqiao Qu');
INSERT INTO `t_s_region` VALUES ('1468', '来安县', '142', 'Lai,an Xian');
INSERT INTO `t_s_region` VALUES ('1469', '全椒县', '142', 'Quanjiao Xian');
INSERT INTO `t_s_region` VALUES ('147', '亳州市', '13', 'Bozhou Shi');
INSERT INTO `t_s_region` VALUES ('1470', '定远县', '142', 'Dingyuan Xian');
INSERT INTO `t_s_region` VALUES ('1471', '凤阳县', '142', 'Fengyang Xian');
INSERT INTO `t_s_region` VALUES ('1472', '天长市', '142', 'Tianchang Shi');
INSERT INTO `t_s_region` VALUES ('1473', '明光市', '142', 'Mingguang Shi');
INSERT INTO `t_s_region` VALUES ('1474', '市辖区', '143', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1475', '颍州区', '143', 'Yingzhou Qu');
INSERT INTO `t_s_region` VALUES ('1476', '颍东区', '143', 'Yingdong Qu');
INSERT INTO `t_s_region` VALUES ('1477', '颍泉区', '143', 'Yingquan Qu');
INSERT INTO `t_s_region` VALUES ('1478', '临泉县', '143', 'Linquan Xian');
INSERT INTO `t_s_region` VALUES ('1479', '太和县', '143', 'Taihe Xian');
INSERT INTO `t_s_region` VALUES ('148', '池州市', '13', 'Chizhou Shi');
INSERT INTO `t_s_region` VALUES ('1480', '阜南县', '143', 'Funan Xian');
INSERT INTO `t_s_region` VALUES ('1481', '颍上县', '143', 'Yingshang Xian');
INSERT INTO `t_s_region` VALUES ('1482', '界首市', '143', 'Jieshou Shi');
INSERT INTO `t_s_region` VALUES ('1483', '市辖区', '144', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1484', '埇桥区', '144', 'Yongqiao Qu');
INSERT INTO `t_s_region` VALUES ('1485', '砀山县', '144', 'Dangshan Xian');
INSERT INTO `t_s_region` VALUES ('1486', '萧县', '144', 'Xiao Xian');
INSERT INTO `t_s_region` VALUES ('1487', '灵璧县', '144', 'Lingbi Xian');
INSERT INTO `t_s_region` VALUES ('1488', '泗县', '144', 'Si Xian ');
INSERT INTO `t_s_region` VALUES ('1489', '市辖区', '145', '1');
INSERT INTO `t_s_region` VALUES ('149', '宣城市', '13', 'Xuancheng Shi');
INSERT INTO `t_s_region` VALUES ('1490', '居巢区', '145', 'Juchao Qu');
INSERT INTO `t_s_region` VALUES ('1491', '庐江县', '145', 'Lujiang Xian');
INSERT INTO `t_s_region` VALUES ('1492', '无为县', '145', 'Wuwei Xian');
INSERT INTO `t_s_region` VALUES ('1493', '含山县', '145', 'Hanshan Xian');
INSERT INTO `t_s_region` VALUES ('1494', '和县', '145', 'He Xian ');
INSERT INTO `t_s_region` VALUES ('1495', '市辖区', '146', '1');
INSERT INTO `t_s_region` VALUES ('1496', '金安区', '146', 'Jinan Qu');
INSERT INTO `t_s_region` VALUES ('1497', '裕安区', '146', 'Yuan Qu');
INSERT INTO `t_s_region` VALUES ('1498', '寿县', '146', 'Shou Xian');
INSERT INTO `t_s_region` VALUES ('1499', '霍邱县', '146', 'Huoqiu Xian');
INSERT INTO `t_s_region` VALUES ('15', '江西省', '1', 'Jiangxi Sheng');
INSERT INTO `t_s_region` VALUES ('150', '福州市', '14', 'Fuzhou Shi');
INSERT INTO `t_s_region` VALUES ('1500', '舒城县', '146', 'Shucheng Xian');
INSERT INTO `t_s_region` VALUES ('1501', '金寨县', '146', 'Jingzhai Xian');
INSERT INTO `t_s_region` VALUES ('1502', '霍山县', '146', 'Huoshan Xian');
INSERT INTO `t_s_region` VALUES ('1503', '市辖区', '147', '1');
INSERT INTO `t_s_region` VALUES ('1504', '谯城区', '147', 'Qiaocheng Qu');
INSERT INTO `t_s_region` VALUES ('1505', '涡阳县', '147', 'Guoyang Xian');
INSERT INTO `t_s_region` VALUES ('1506', '蒙城县', '147', 'Mengcheng Xian');
INSERT INTO `t_s_region` VALUES ('1507', '利辛县', '147', 'Lixin Xian');
INSERT INTO `t_s_region` VALUES ('1508', '市辖区', '148', '1');
INSERT INTO `t_s_region` VALUES ('1509', '贵池区', '148', 'Guichi Qu');
INSERT INTO `t_s_region` VALUES ('151', '厦门市', '14', 'Xiamen Shi');
INSERT INTO `t_s_region` VALUES ('1510', '东至县', '148', 'Dongzhi Xian');
INSERT INTO `t_s_region` VALUES ('1511', '石台县', '148', 'Shitai Xian');
INSERT INTO `t_s_region` VALUES ('1512', '青阳县', '148', 'Qingyang Xian');
INSERT INTO `t_s_region` VALUES ('1513', '市辖区', '149', '1');
INSERT INTO `t_s_region` VALUES ('1514', '宣州区', '149', 'Xuanzhou Qu');
INSERT INTO `t_s_region` VALUES ('1515', '郎溪县', '149', 'Langxi Xian');
INSERT INTO `t_s_region` VALUES ('1516', '广德县', '149', 'Guangde Xian');
INSERT INTO `t_s_region` VALUES ('1517', '泾县', '149', 'Jing Xian');
INSERT INTO `t_s_region` VALUES ('1518', '绩溪县', '149', 'Jixi Xian');
INSERT INTO `t_s_region` VALUES ('1519', '旌德县', '149', 'Jingde Xian');
INSERT INTO `t_s_region` VALUES ('152', '莆田市', '14', 'Putian Shi');
INSERT INTO `t_s_region` VALUES ('1520', '宁国市', '149', 'Ningguo Shi');
INSERT INTO `t_s_region` VALUES ('1521', '市辖区', '150', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1522', '鼓楼区', '150', 'Gulou Qu');
INSERT INTO `t_s_region` VALUES ('1523', '台江区', '150', 'Taijiang Qu');
INSERT INTO `t_s_region` VALUES ('1524', '仓山区', '150', 'Cangshan Qu');
INSERT INTO `t_s_region` VALUES ('1525', '马尾区', '150', 'Mawei Qu');
INSERT INTO `t_s_region` VALUES ('1526', '晋安区', '150', 'Jin,an Qu');
INSERT INTO `t_s_region` VALUES ('1527', '闽侯县', '150', 'Minhou Qu');
INSERT INTO `t_s_region` VALUES ('1528', '连江县', '150', 'Lianjiang Xian');
INSERT INTO `t_s_region` VALUES ('1529', '罗源县', '150', 'Luoyuan Xian');
INSERT INTO `t_s_region` VALUES ('153', '三明市', '14', 'Sanming Shi');
INSERT INTO `t_s_region` VALUES ('1530', '闽清县', '150', 'Minqing Xian');
INSERT INTO `t_s_region` VALUES ('1531', '永泰县', '150', 'Yongtai Xian');
INSERT INTO `t_s_region` VALUES ('1532', '平潭县', '150', 'Pingtan Xian');
INSERT INTO `t_s_region` VALUES ('1533', '福清市', '150', 'Fuqing Shi');
INSERT INTO `t_s_region` VALUES ('1534', '长乐市', '150', 'Changle Shi');
INSERT INTO `t_s_region` VALUES ('1535', '市辖区', '151', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1536', '思明区', '151', 'Siming Qu');
INSERT INTO `t_s_region` VALUES ('1537', '海沧区', '151', 'Haicang Qu');
INSERT INTO `t_s_region` VALUES ('1538', '湖里区', '151', 'Huli Qu');
INSERT INTO `t_s_region` VALUES ('1539', '集美区', '151', 'Jimei Qu');
INSERT INTO `t_s_region` VALUES ('154', '泉州市', '14', 'Quanzhou Shi');
INSERT INTO `t_s_region` VALUES ('1540', '同安区', '151', 'Tong,an Qu');
INSERT INTO `t_s_region` VALUES ('1541', '翔安区', '151', 'Xiangan Qu');
INSERT INTO `t_s_region` VALUES ('1542', '市辖区', '152', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1543', '城厢区', '152', 'Chengxiang Qu');
INSERT INTO `t_s_region` VALUES ('1544', '涵江区', '152', 'Hanjiang Qu');
INSERT INTO `t_s_region` VALUES ('1545', '荔城区', '152', 'Licheng Qu');
INSERT INTO `t_s_region` VALUES ('1546', '秀屿区', '152', 'Xiuyu Qu');
INSERT INTO `t_s_region` VALUES ('1547', '仙游县', '152', 'Xianyou Xian');
INSERT INTO `t_s_region` VALUES ('1548', '市辖区', '153', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1549', '梅列区', '153', 'Meilie Qu');
INSERT INTO `t_s_region` VALUES ('155', '漳州市', '14', 'Zhangzhou Shi');
INSERT INTO `t_s_region` VALUES ('1550', '三元区', '153', 'Sanyuan Qu');
INSERT INTO `t_s_region` VALUES ('1551', '明溪县', '153', 'Mingxi Xian');
INSERT INTO `t_s_region` VALUES ('1552', '清流县', '153', 'Qingliu Xian');
INSERT INTO `t_s_region` VALUES ('1553', '宁化县', '153', 'Ninghua Xian');
INSERT INTO `t_s_region` VALUES ('1554', '大田县', '153', 'Datian Xian');
INSERT INTO `t_s_region` VALUES ('1555', '尤溪县', '153', 'Youxi Xian');
INSERT INTO `t_s_region` VALUES ('1556', '沙县', '153', 'Sha Xian');
INSERT INTO `t_s_region` VALUES ('1557', '将乐县', '153', 'Jiangle Xian');
INSERT INTO `t_s_region` VALUES ('1558', '泰宁县', '153', 'Taining Xian');
INSERT INTO `t_s_region` VALUES ('1559', '建宁县', '153', 'Jianning Xian');
INSERT INTO `t_s_region` VALUES ('156', '南平市', '14', 'Nanping Shi');
INSERT INTO `t_s_region` VALUES ('1560', '永安市', '153', 'Yong,an Shi');
INSERT INTO `t_s_region` VALUES ('1561', '市辖区', '154', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1562', '鲤城区', '154', 'Licheng Qu');
INSERT INTO `t_s_region` VALUES ('1563', '丰泽区', '154', 'Fengze Qu');
INSERT INTO `t_s_region` VALUES ('1564', '洛江区', '154', 'Luojiang Qu');
INSERT INTO `t_s_region` VALUES ('1565', '泉港区', '154', 'Quangang Qu');
INSERT INTO `t_s_region` VALUES ('1566', '惠安县', '154', 'Hui,an Xian');
INSERT INTO `t_s_region` VALUES ('1567', '安溪县', '154', 'Anxi Xian');
INSERT INTO `t_s_region` VALUES ('1568', '永春县', '154', 'Yongchun Xian');
INSERT INTO `t_s_region` VALUES ('1569', '德化县', '154', 'Dehua Xian');
INSERT INTO `t_s_region` VALUES ('157', '龙岩市', '14', 'Longyan Shi');
INSERT INTO `t_s_region` VALUES ('1570', '金门县', '154', 'Jinmen Xian');
INSERT INTO `t_s_region` VALUES ('1571', '石狮市', '154', 'Shishi Shi');
INSERT INTO `t_s_region` VALUES ('1572', '晋江市', '154', 'Jinjiang Shi');
INSERT INTO `t_s_region` VALUES ('1573', '南安市', '154', 'Nan,an Shi');
INSERT INTO `t_s_region` VALUES ('1574', '市辖区', '155', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1575', '芗城区', '155', 'Xiangcheng Qu');
INSERT INTO `t_s_region` VALUES ('1576', '龙文区', '155', 'Longwen Qu');
INSERT INTO `t_s_region` VALUES ('1577', '云霄县', '155', 'Yunxiao Xian');
INSERT INTO `t_s_region` VALUES ('1578', '漳浦县', '155', 'Zhangpu Xian');
INSERT INTO `t_s_region` VALUES ('1579', '诏安县', '155', 'Zhao,an Xian');
INSERT INTO `t_s_region` VALUES ('158', '宁德市', '14', 'Ningde Shi');
INSERT INTO `t_s_region` VALUES ('1580', '长泰县', '155', 'Changtai Xian');
INSERT INTO `t_s_region` VALUES ('1581', '东山县', '155', 'Dongshan Xian');
INSERT INTO `t_s_region` VALUES ('1582', '南靖县', '155', 'Nanjing Xian');
INSERT INTO `t_s_region` VALUES ('1583', '平和县', '155', 'Pinghe Xian');
INSERT INTO `t_s_region` VALUES ('1584', '华安县', '155', 'Hua,an Xian');
INSERT INTO `t_s_region` VALUES ('1585', '龙海市', '155', 'Longhai Shi');
INSERT INTO `t_s_region` VALUES ('1586', '市辖区', '156', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1587', '延平区', '156', 'Yanping Qu');
INSERT INTO `t_s_region` VALUES ('1588', '顺昌县', '156', 'Shunchang Xian');
INSERT INTO `t_s_region` VALUES ('1589', '浦城县', '156', 'Pucheng Xian');
INSERT INTO `t_s_region` VALUES ('159', '南昌市', '15', 'Nanchang Shi');
INSERT INTO `t_s_region` VALUES ('1590', '光泽县', '156', 'Guangze Xian');
INSERT INTO `t_s_region` VALUES ('1591', '松溪县', '156', 'Songxi Xian');
INSERT INTO `t_s_region` VALUES ('1592', '政和县', '156', 'Zhenghe Xian');
INSERT INTO `t_s_region` VALUES ('1593', '邵武市', '156', 'Shaowu Shi');
INSERT INTO `t_s_region` VALUES ('1594', '武夷山市', '156', 'Wuyishan Shi');
INSERT INTO `t_s_region` VALUES ('1595', '建瓯市', '156', 'Jian,ou Shi');
INSERT INTO `t_s_region` VALUES ('1596', '建阳市', '156', 'Jianyang Shi');
INSERT INTO `t_s_region` VALUES ('1597', '市辖区', '157', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1598', '新罗区', '157', 'Xinluo Qu');
INSERT INTO `t_s_region` VALUES ('1599', '长汀县', '157', 'Changting Xian');
INSERT INTO `t_s_region` VALUES ('16', '山东省', '1', 'Shandong Sheng ');
INSERT INTO `t_s_region` VALUES ('160', '景德镇市', '15', 'Jingdezhen Shi');
INSERT INTO `t_s_region` VALUES ('1600', '永定县', '157', 'Yongding Xian');
INSERT INTO `t_s_region` VALUES ('1601', '上杭县', '157', 'Shanghang Xian');
INSERT INTO `t_s_region` VALUES ('1602', '武平县', '157', 'Wuping Xian');
INSERT INTO `t_s_region` VALUES ('1603', '连城县', '157', 'Liancheng Xian');
INSERT INTO `t_s_region` VALUES ('1604', '漳平市', '157', 'Zhangping Xian');
INSERT INTO `t_s_region` VALUES ('1605', '市辖区', '158', '1');
INSERT INTO `t_s_region` VALUES ('1606', '蕉城区', '158', 'Jiaocheng Qu');
INSERT INTO `t_s_region` VALUES ('1607', '霞浦县', '158', 'Xiapu Xian');
INSERT INTO `t_s_region` VALUES ('1608', '古田县', '158', 'Gutian Xian');
INSERT INTO `t_s_region` VALUES ('1609', '屏南县', '158', 'Pingnan Xian');
INSERT INTO `t_s_region` VALUES ('161', '萍乡市', '15', 'Pingxiang Shi');
INSERT INTO `t_s_region` VALUES ('1610', '寿宁县', '158', 'Shouning Xian');
INSERT INTO `t_s_region` VALUES ('1611', '周宁县', '158', 'Zhouning Xian');
INSERT INTO `t_s_region` VALUES ('1612', '柘荣县', '158', 'Zherong Xian');
INSERT INTO `t_s_region` VALUES ('1613', '福安市', '158', 'Fu,an Shi');
INSERT INTO `t_s_region` VALUES ('1614', '福鼎市', '158', 'Fuding Shi');
INSERT INTO `t_s_region` VALUES ('1615', '市辖区', '159', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1616', '东湖区', '159', 'Donghu Qu');
INSERT INTO `t_s_region` VALUES ('1617', '西湖区', '159', 'Xihu Qu ');
INSERT INTO `t_s_region` VALUES ('1618', '青云谱区', '159', 'Qingyunpu Qu');
INSERT INTO `t_s_region` VALUES ('1619', '湾里区', '159', 'Wanli Qu');
INSERT INTO `t_s_region` VALUES ('162', '九江市', '15', 'Jiujiang Shi');
INSERT INTO `t_s_region` VALUES ('1620', '青山湖区', '159', 'Qingshanhu Qu');
INSERT INTO `t_s_region` VALUES ('1621', '南昌县', '159', 'Nanchang Xian');
INSERT INTO `t_s_region` VALUES ('1622', '新建县', '159', 'Xinjian Xian');
INSERT INTO `t_s_region` VALUES ('1623', '安义县', '159', 'Anyi Xian');
INSERT INTO `t_s_region` VALUES ('1624', '进贤县', '159', 'Jinxian Xian');
INSERT INTO `t_s_region` VALUES ('1625', '市辖区', '160', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1626', '昌江区', '160', 'Changjiang Qu');
INSERT INTO `t_s_region` VALUES ('1627', '珠山区', '160', 'Zhushan Qu');
INSERT INTO `t_s_region` VALUES ('1628', '浮梁县', '160', 'Fuliang Xian');
INSERT INTO `t_s_region` VALUES ('1629', '乐平市', '160', 'Leping Shi');
INSERT INTO `t_s_region` VALUES ('163', '新余市', '15', 'Xinyu Shi');
INSERT INTO `t_s_region` VALUES ('1630', '市辖区', '161', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1631', '安源区', '161', 'Anyuan Qu');
INSERT INTO `t_s_region` VALUES ('1632', '湘东区', '161', 'Xiangdong Qu');
INSERT INTO `t_s_region` VALUES ('1633', '莲花县', '161', 'Lianhua Xian');
INSERT INTO `t_s_region` VALUES ('1634', '上栗县', '161', 'Shangli Xian');
INSERT INTO `t_s_region` VALUES ('1635', '芦溪县', '161', 'Lixi Xian');
INSERT INTO `t_s_region` VALUES ('1636', '市辖区', '162', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1637', '庐山区', '162', 'Lushan Qu');
INSERT INTO `t_s_region` VALUES ('1638', '浔阳区', '162', 'Xunyang Qu');
INSERT INTO `t_s_region` VALUES ('1639', '九江县', '162', 'Jiujiang Xian');
INSERT INTO `t_s_region` VALUES ('164', '鹰潭市', '15', 'Yingtan Shi');
INSERT INTO `t_s_region` VALUES ('1640', '武宁县', '162', 'Wuning Xian');
INSERT INTO `t_s_region` VALUES ('1641', '修水县', '162', 'Xiushui Xian');
INSERT INTO `t_s_region` VALUES ('1642', '永修县', '162', 'Yongxiu Xian');
INSERT INTO `t_s_region` VALUES ('1643', '德安县', '162', 'De,an Xian');
INSERT INTO `t_s_region` VALUES ('1644', '星子县', '162', 'Xingzi Xian');
INSERT INTO `t_s_region` VALUES ('1645', '都昌县', '162', 'Duchang Xian');
INSERT INTO `t_s_region` VALUES ('1646', '湖口县', '162', 'Hukou Xian');
INSERT INTO `t_s_region` VALUES ('1647', '彭泽县', '162', 'Pengze Xian');
INSERT INTO `t_s_region` VALUES ('1648', '瑞昌市', '162', 'Ruichang Shi');
INSERT INTO `t_s_region` VALUES ('1649', '市辖区', '163', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('165', '赣州市', '15', 'Ganzhou Shi');
INSERT INTO `t_s_region` VALUES ('1650', '渝水区', '163', 'Yushui Qu');
INSERT INTO `t_s_region` VALUES ('1651', '分宜县', '163', 'Fenyi Xian');
INSERT INTO `t_s_region` VALUES ('1652', '市辖区', '164', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1653', '月湖区', '164', 'Yuehu Qu');
INSERT INTO `t_s_region` VALUES ('1654', '余江县', '164', 'Yujiang Xian');
INSERT INTO `t_s_region` VALUES ('1655', '贵溪市', '164', 'Guixi Shi');
INSERT INTO `t_s_region` VALUES ('1656', '市辖区', '165', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1657', '章贡区', '165', 'Zhanggong Qu');
INSERT INTO `t_s_region` VALUES ('1658', '赣县', '165', 'Gan Xian');
INSERT INTO `t_s_region` VALUES ('1659', '信丰县', '165', 'Xinfeng Xian ');
INSERT INTO `t_s_region` VALUES ('166', '吉安市', '15', 'Ji,an Shi');
INSERT INTO `t_s_region` VALUES ('1660', '大余县', '165', 'Dayu Xian');
INSERT INTO `t_s_region` VALUES ('1661', '上犹县', '165', 'Shangyou Xian');
INSERT INTO `t_s_region` VALUES ('1662', '崇义县', '165', 'Chongyi Xian');
INSERT INTO `t_s_region` VALUES ('1663', '安远县', '165', 'Anyuan Xian');
INSERT INTO `t_s_region` VALUES ('1664', '龙南县', '165', 'Longnan Xian');
INSERT INTO `t_s_region` VALUES ('1665', '定南县', '165', 'Dingnan Xian');
INSERT INTO `t_s_region` VALUES ('1666', '全南县', '165', 'Quannan Xian');
INSERT INTO `t_s_region` VALUES ('1667', '宁都县', '165', 'Ningdu Xian');
INSERT INTO `t_s_region` VALUES ('1668', '于都县', '165', 'Yudu Xian');
INSERT INTO `t_s_region` VALUES ('1669', '兴国县', '165', 'Xingguo Xian');
INSERT INTO `t_s_region` VALUES ('167', '宜春市', '15', 'Yichun Shi');
INSERT INTO `t_s_region` VALUES ('1670', '会昌县', '165', 'Huichang Xian');
INSERT INTO `t_s_region` VALUES ('1671', '寻乌县', '165', 'Xunwu Xian');
INSERT INTO `t_s_region` VALUES ('1672', '石城县', '165', 'Shicheng Xian');
INSERT INTO `t_s_region` VALUES ('1673', '瑞金市', '165', 'Ruijin Shi');
INSERT INTO `t_s_region` VALUES ('1674', '南康市', '165', 'Nankang Shi');
INSERT INTO `t_s_region` VALUES ('1675', '市辖区', '166', '1');
INSERT INTO `t_s_region` VALUES ('1676', '吉州区', '166', 'Jizhou Qu');
INSERT INTO `t_s_region` VALUES ('1677', '青原区', '166', 'Qingyuan Qu');
INSERT INTO `t_s_region` VALUES ('1678', '吉安县', '166', 'Ji,an Xian');
INSERT INTO `t_s_region` VALUES ('1679', '吉水县', '166', 'Jishui Xian');
INSERT INTO `t_s_region` VALUES ('168', '抚州市', '15', 'Wuzhou Shi');
INSERT INTO `t_s_region` VALUES ('1680', '峡江县', '166', 'Xiajiang Xian');
INSERT INTO `t_s_region` VALUES ('1681', '新干县', '166', 'Xingan Xian');
INSERT INTO `t_s_region` VALUES ('1682', '永丰县', '166', 'Yongfeng Xian');
INSERT INTO `t_s_region` VALUES ('1683', '泰和县', '166', 'Taihe Xian');
INSERT INTO `t_s_region` VALUES ('1684', '遂川县', '166', 'Suichuan Xian');
INSERT INTO `t_s_region` VALUES ('1685', '万安县', '166', 'Wan,an Xian');
INSERT INTO `t_s_region` VALUES ('1686', '安福县', '166', 'Anfu Xian');
INSERT INTO `t_s_region` VALUES ('1687', '永新县', '166', 'Yongxin Xian ');
INSERT INTO `t_s_region` VALUES ('1688', '井冈山市', '166', 'Jinggangshan Shi');
INSERT INTO `t_s_region` VALUES ('1689', '市辖区', '167', '1');
INSERT INTO `t_s_region` VALUES ('169', '上饶市', '15', 'Shangrao Shi');
INSERT INTO `t_s_region` VALUES ('1690', '袁州区', '167', 'Yuanzhou Qu');
INSERT INTO `t_s_region` VALUES ('1691', '奉新县', '167', 'Fengxin Xian');
INSERT INTO `t_s_region` VALUES ('1692', '万载县', '167', 'Wanzai Xian');
INSERT INTO `t_s_region` VALUES ('1693', '上高县', '167', 'Shanggao Xian');
INSERT INTO `t_s_region` VALUES ('1694', '宜丰县', '167', 'Yifeng Xian');
INSERT INTO `t_s_region` VALUES ('1695', '靖安县', '167', 'Jing,an Xian');
INSERT INTO `t_s_region` VALUES ('1696', '铜鼓县', '167', 'Tonggu Xian');
INSERT INTO `t_s_region` VALUES ('1697', '丰城市', '167', 'Fengcheng Shi');
INSERT INTO `t_s_region` VALUES ('1698', '樟树市', '167', 'Zhangshu Shi');
INSERT INTO `t_s_region` VALUES ('1699', '高安市', '167', 'Gao,an Shi');
INSERT INTO `t_s_region` VALUES ('17', '河南省', '1', 'Henan Sheng');
INSERT INTO `t_s_region` VALUES ('170', '济南市', '16', 'Jinan Shi');
INSERT INTO `t_s_region` VALUES ('1700', '市辖区', '168', '1');
INSERT INTO `t_s_region` VALUES ('1701', '临川区', '168', 'Linchuan Qu');
INSERT INTO `t_s_region` VALUES ('1702', '南城县', '168', 'Nancheng Xian');
INSERT INTO `t_s_region` VALUES ('1703', '黎川县', '168', 'Lichuan Xian');
INSERT INTO `t_s_region` VALUES ('1704', '南丰县', '168', 'Nanfeng Xian');
INSERT INTO `t_s_region` VALUES ('1705', '崇仁县', '168', 'Chongren Xian');
INSERT INTO `t_s_region` VALUES ('1706', '乐安县', '168', 'Le,an Xian');
INSERT INTO `t_s_region` VALUES ('1707', '宜黄县', '168', 'Yihuang Xian');
INSERT INTO `t_s_region` VALUES ('1708', '金溪县', '168', 'Jinxi Xian');
INSERT INTO `t_s_region` VALUES ('1709', '资溪县', '168', 'Zixi Xian');
INSERT INTO `t_s_region` VALUES ('171', '青岛市', '16', 'Qingdao Shi');
INSERT INTO `t_s_region` VALUES ('1710', '东乡县', '168', 'Dongxiang Xian');
INSERT INTO `t_s_region` VALUES ('1711', '广昌县', '168', 'Guangchang Xian');
INSERT INTO `t_s_region` VALUES ('1712', '市辖区', '169', '1');
INSERT INTO `t_s_region` VALUES ('1713', '信州区', '169', 'Xinzhou Qu');
INSERT INTO `t_s_region` VALUES ('1714', '上饶县', '169', 'Shangrao Xian ');
INSERT INTO `t_s_region` VALUES ('1715', '广丰县', '169', 'Guangfeng Xian');
INSERT INTO `t_s_region` VALUES ('1716', '玉山县', '169', 'Yushan Xian');
INSERT INTO `t_s_region` VALUES ('1717', '铅山县', '169', 'Qianshan Xian');
INSERT INTO `t_s_region` VALUES ('1718', '横峰县', '169', 'Hengfeng Xian');
INSERT INTO `t_s_region` VALUES ('1719', '弋阳县', '169', 'Yiyang Xian');
INSERT INTO `t_s_region` VALUES ('172', '淄博市', '16', 'Zibo Shi');
INSERT INTO `t_s_region` VALUES ('1720', '余干县', '169', 'Yugan Xian');
INSERT INTO `t_s_region` VALUES ('1721', '鄱阳县', '169', 'Poyang Xian');
INSERT INTO `t_s_region` VALUES ('1722', '万年县', '169', 'Wannian Xian');
INSERT INTO `t_s_region` VALUES ('1723', '婺源县', '169', 'Wuyuan Xian');
INSERT INTO `t_s_region` VALUES ('1724', '德兴市', '169', 'Dexing Shi');
INSERT INTO `t_s_region` VALUES ('1725', '市辖区', '170', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1726', '历下区', '170', 'Lixia Qu');
INSERT INTO `t_s_region` VALUES ('1727', '市中区', '170', 'Shizhong Qu');
INSERT INTO `t_s_region` VALUES ('1728', '槐荫区', '170', 'Huaiyin Qu');
INSERT INTO `t_s_region` VALUES ('1729', '天桥区', '170', 'Tianqiao Qu');
INSERT INTO `t_s_region` VALUES ('173', '枣庄市', '16', 'Zaozhuang Shi');
INSERT INTO `t_s_region` VALUES ('1730', '历城区', '170', 'Licheng Qu');
INSERT INTO `t_s_region` VALUES ('1731', '长清区', '170', 'Changqing Qu');
INSERT INTO `t_s_region` VALUES ('1732', '平阴县', '170', 'Pingyin Xian');
INSERT INTO `t_s_region` VALUES ('1733', '济阳县', '170', 'Jiyang Xian');
INSERT INTO `t_s_region` VALUES ('1734', '商河县', '170', 'Shanghe Xian');
INSERT INTO `t_s_region` VALUES ('1735', '章丘市', '170', 'Zhangqiu Shi');
INSERT INTO `t_s_region` VALUES ('1736', '市辖区', '171', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1737', '市南区', '171', 'Shinan Qu');
INSERT INTO `t_s_region` VALUES ('1738', '市北区', '171', 'Shibei Qu');
INSERT INTO `t_s_region` VALUES ('1739', '四方区', '171', 'Sifang Qu');
INSERT INTO `t_s_region` VALUES ('174', '东营市', '16', 'Dongying Shi');
INSERT INTO `t_s_region` VALUES ('1740', '黄岛区', '171', 'Huangdao Qu');
INSERT INTO `t_s_region` VALUES ('1741', '崂山区', '171', 'Laoshan Qu');
INSERT INTO `t_s_region` VALUES ('1742', '李沧区', '171', 'Licang Qu');
INSERT INTO `t_s_region` VALUES ('1743', '城阳区', '171', 'Chengyang Qu');
INSERT INTO `t_s_region` VALUES ('1744', '胶州市', '171', 'Jiaozhou Shi');
INSERT INTO `t_s_region` VALUES ('1745', '即墨市', '171', 'Jimo Shi');
INSERT INTO `t_s_region` VALUES ('1746', '平度市', '171', 'Pingdu Shi');
INSERT INTO `t_s_region` VALUES ('1747', '胶南市', '171', 'Jiaonan Shi');
INSERT INTO `t_s_region` VALUES ('1748', '莱西市', '171', 'Laixi Shi');
INSERT INTO `t_s_region` VALUES ('1749', '市辖区', '172', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('175', '烟台市', '16', 'Yantai Shi');
INSERT INTO `t_s_region` VALUES ('1750', '淄川区', '172', 'Zichuan Qu');
INSERT INTO `t_s_region` VALUES ('1751', '张店区', '172', 'Zhangdian Qu');
INSERT INTO `t_s_region` VALUES ('1752', '博山区', '172', 'Boshan Qu');
INSERT INTO `t_s_region` VALUES ('1753', '临淄区', '172', 'Linzi Qu');
INSERT INTO `t_s_region` VALUES ('1754', '周村区', '172', 'Zhoucun Qu');
INSERT INTO `t_s_region` VALUES ('1755', '桓台县', '172', 'Huantai Xian');
INSERT INTO `t_s_region` VALUES ('1756', '高青县', '172', 'Gaoqing Xian');
INSERT INTO `t_s_region` VALUES ('1757', '沂源县', '172', 'Yiyuan Xian');
INSERT INTO `t_s_region` VALUES ('1758', '市辖区', '173', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1759', '市中区', '173', 'Shizhong Qu');
INSERT INTO `t_s_region` VALUES ('176', '潍坊市', '16', 'Weifang Shi');
INSERT INTO `t_s_region` VALUES ('1760', '薛城区', '173', 'Xuecheng Qu');
INSERT INTO `t_s_region` VALUES ('1761', '峄城区', '173', 'Yicheng Qu');
INSERT INTO `t_s_region` VALUES ('1762', '台儿庄区', '173', 'Tai,erzhuang Qu');
INSERT INTO `t_s_region` VALUES ('1763', '山亭区', '173', 'Shanting Qu');
INSERT INTO `t_s_region` VALUES ('1764', '滕州市', '173', 'Tengzhou Shi');
INSERT INTO `t_s_region` VALUES ('1765', '市辖区', '174', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1766', '东营区', '174', 'Dongying Qu');
INSERT INTO `t_s_region` VALUES ('1767', '河口区', '174', 'Hekou Qu');
INSERT INTO `t_s_region` VALUES ('1768', '垦利县', '174', 'Kenli Xian');
INSERT INTO `t_s_region` VALUES ('1769', '利津县', '174', 'Lijin Xian');
INSERT INTO `t_s_region` VALUES ('177', '济宁市', '16', 'Jining Shi');
INSERT INTO `t_s_region` VALUES ('1770', '广饶县', '174', 'Guangrao Xian ');
INSERT INTO `t_s_region` VALUES ('1771', '市辖区', '175', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1772', '芝罘区', '175', 'Zhifu Qu');
INSERT INTO `t_s_region` VALUES ('1773', '福山区', '175', 'Fushan Qu');
INSERT INTO `t_s_region` VALUES ('1774', '牟平区', '175', 'Muping Qu');
INSERT INTO `t_s_region` VALUES ('1775', '莱山区', '175', 'Laishan Qu');
INSERT INTO `t_s_region` VALUES ('1776', '长岛县', '175', 'Changdao Xian');
INSERT INTO `t_s_region` VALUES ('1777', '龙口市', '175', 'Longkou Shi');
INSERT INTO `t_s_region` VALUES ('1778', '莱阳市', '175', 'Laiyang Shi');
INSERT INTO `t_s_region` VALUES ('1779', '莱州市', '175', 'Laizhou Shi');
INSERT INTO `t_s_region` VALUES ('178', '泰安市', '16', 'Tai,an Shi');
INSERT INTO `t_s_region` VALUES ('1780', '蓬莱市', '175', 'Penglai Shi');
INSERT INTO `t_s_region` VALUES ('1781', '招远市', '175', 'Zhaoyuan Shi');
INSERT INTO `t_s_region` VALUES ('1782', '栖霞市', '175', 'Qixia Shi');
INSERT INTO `t_s_region` VALUES ('1783', '海阳市', '175', 'Haiyang Shi');
INSERT INTO `t_s_region` VALUES ('1784', '市辖区', '176', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1785', '潍城区', '176', 'Weicheng Qu');
INSERT INTO `t_s_region` VALUES ('1786', '寒亭区', '176', 'Hanting Qu');
INSERT INTO `t_s_region` VALUES ('1787', '坊子区', '176', 'Fangzi Qu');
INSERT INTO `t_s_region` VALUES ('1788', '奎文区', '176', 'Kuiwen Qu');
INSERT INTO `t_s_region` VALUES ('1789', '临朐县', '176', 'Linqu Xian');
INSERT INTO `t_s_region` VALUES ('179', '威海市', '16', 'Weihai Shi');
INSERT INTO `t_s_region` VALUES ('1790', '昌乐县', '176', 'Changle Xian');
INSERT INTO `t_s_region` VALUES ('1791', '青州市', '176', 'Qingzhou Shi');
INSERT INTO `t_s_region` VALUES ('1792', '诸城市', '176', 'Zhucheng Shi');
INSERT INTO `t_s_region` VALUES ('1793', '寿光市', '176', 'Shouguang Shi');
INSERT INTO `t_s_region` VALUES ('1794', '安丘市', '176', 'Anqiu Shi');
INSERT INTO `t_s_region` VALUES ('1795', '高密市', '176', 'Gaomi Shi');
INSERT INTO `t_s_region` VALUES ('1796', '昌邑市', '176', 'Changyi Shi');
INSERT INTO `t_s_region` VALUES ('1797', '市辖区', '177', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1798', '市中区', '177', 'Shizhong Qu');
INSERT INTO `t_s_region` VALUES ('1799', '任城区', '177', 'Rencheng Qu');
INSERT INTO `t_s_region` VALUES ('18', '湖北省', '1', 'Hubei Sheng');
INSERT INTO `t_s_region` VALUES ('180', '日照市', '16', 'Rizhao Shi');
INSERT INTO `t_s_region` VALUES ('1800', '微山县', '177', 'Weishan Xian');
INSERT INTO `t_s_region` VALUES ('1801', '鱼台县', '177', 'Yutai Xian');
INSERT INTO `t_s_region` VALUES ('1802', '金乡县', '177', 'Jinxiang Xian');
INSERT INTO `t_s_region` VALUES ('1803', '嘉祥县', '177', 'Jiaxiang Xian');
INSERT INTO `t_s_region` VALUES ('1804', '汶上县', '177', 'Wenshang Xian');
INSERT INTO `t_s_region` VALUES ('1805', '泗水县', '177', 'Sishui Xian');
INSERT INTO `t_s_region` VALUES ('1806', '梁山县', '177', 'Liangshan Xian');
INSERT INTO `t_s_region` VALUES ('1807', '曲阜市', '177', 'Qufu Shi');
INSERT INTO `t_s_region` VALUES ('1808', '兖州市', '177', 'Yanzhou Shi');
INSERT INTO `t_s_region` VALUES ('1809', '邹城市', '177', 'Zoucheng Shi');
INSERT INTO `t_s_region` VALUES ('181', '莱芜市', '16', 'Laiwu Shi');
INSERT INTO `t_s_region` VALUES ('1810', '市辖区', '178', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1811', '泰山区', '178', 'Taishan Qu');
INSERT INTO `t_s_region` VALUES ('1812', '岱岳区', '178', 'Daiyue Qu');
INSERT INTO `t_s_region` VALUES ('1813', '宁阳县', '178', 'Ningyang Xian');
INSERT INTO `t_s_region` VALUES ('1814', '东平县', '178', 'Dongping Xian');
INSERT INTO `t_s_region` VALUES ('1815', '新泰市', '178', 'Xintai Shi');
INSERT INTO `t_s_region` VALUES ('1816', '肥城市', '178', 'Feicheng Shi');
INSERT INTO `t_s_region` VALUES ('1817', '市辖区', '179', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1818', '环翠区', '179', 'Huancui Qu');
INSERT INTO `t_s_region` VALUES ('1819', '文登市', '179', 'Wendeng Shi');
INSERT INTO `t_s_region` VALUES ('182', '临沂市', '16', 'Linyi Shi');
INSERT INTO `t_s_region` VALUES ('1820', '荣成市', '179', 'Rongcheng Shi');
INSERT INTO `t_s_region` VALUES ('1821', '乳山市', '179', 'Rushan Shi');
INSERT INTO `t_s_region` VALUES ('1822', '市辖区', '180', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1823', '东港区', '180', 'Donggang Qu');
INSERT INTO `t_s_region` VALUES ('1824', '岚山区', '180', 'Lanshan Qu');
INSERT INTO `t_s_region` VALUES ('1825', '五莲县', '180', 'Wulian Xian');
INSERT INTO `t_s_region` VALUES ('1826', '莒县', '180', 'Ju Xian');
INSERT INTO `t_s_region` VALUES ('1827', '市辖区', '181', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1828', '莱城区', '181', 'Laicheng Qu');
INSERT INTO `t_s_region` VALUES ('1829', '钢城区', '181', 'Gangcheng Qu');
INSERT INTO `t_s_region` VALUES ('183', '德州市', '16', 'Dezhou Shi');
INSERT INTO `t_s_region` VALUES ('1830', '市辖区', '182', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1831', '兰山区', '182', 'Lanshan Qu');
INSERT INTO `t_s_region` VALUES ('1832', '罗庄区', '182', 'Luozhuang Qu');
INSERT INTO `t_s_region` VALUES ('1833', '河东区', '182', 'Hedong Qu');
INSERT INTO `t_s_region` VALUES ('1834', '沂南县', '182', 'Yinan Xian');
INSERT INTO `t_s_region` VALUES ('1835', '郯城县', '182', 'Tancheng Xian');
INSERT INTO `t_s_region` VALUES ('1836', '沂水县', '182', 'Yishui Xian');
INSERT INTO `t_s_region` VALUES ('1837', '苍山县', '182', 'Cangshan Xian');
INSERT INTO `t_s_region` VALUES ('1838', '费县', '182', 'Fei Xian');
INSERT INTO `t_s_region` VALUES ('1839', '平邑县', '182', 'Pingyi Xian');
INSERT INTO `t_s_region` VALUES ('184', '聊城市', '16', 'Liaocheng Shi');
INSERT INTO `t_s_region` VALUES ('1840', '莒南县', '182', 'Junan Xian');
INSERT INTO `t_s_region` VALUES ('1841', '蒙阴县', '182', 'Mengyin Xian');
INSERT INTO `t_s_region` VALUES ('1842', '临沭县', '182', 'Linshu Xian');
INSERT INTO `t_s_region` VALUES ('1843', '市辖区', '183', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1844', '德城区', '183', 'Decheng Qu');
INSERT INTO `t_s_region` VALUES ('1845', '陵县', '183', 'Ling Xian');
INSERT INTO `t_s_region` VALUES ('1846', '宁津县', '183', 'Ningjin Xian');
INSERT INTO `t_s_region` VALUES ('1847', '庆云县', '183', 'Qingyun Xian');
INSERT INTO `t_s_region` VALUES ('1848', '临邑县', '183', 'Linyi xian');
INSERT INTO `t_s_region` VALUES ('1849', '齐河县', '183', 'Qihe Xian');
INSERT INTO `t_s_region` VALUES ('185', '滨州市', '16', 'Binzhou Shi');
INSERT INTO `t_s_region` VALUES ('1850', '平原县', '183', 'Pingyuan Xian');
INSERT INTO `t_s_region` VALUES ('1851', '夏津县', '183', 'Xiajin Xian');
INSERT INTO `t_s_region` VALUES ('1852', '武城县', '183', 'Wucheng Xian');
INSERT INTO `t_s_region` VALUES ('1853', '乐陵市', '183', 'Leling Shi');
INSERT INTO `t_s_region` VALUES ('1854', '禹城市', '183', 'Yucheng Shi');
INSERT INTO `t_s_region` VALUES ('1855', '市辖区', '184', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1856', '东昌府区', '184', 'Dongchangfu Qu');
INSERT INTO `t_s_region` VALUES ('1857', '阳谷县', '184', 'Yanggu Xian ');
INSERT INTO `t_s_region` VALUES ('1858', '莘县', '184', 'Shen Xian');
INSERT INTO `t_s_region` VALUES ('1859', '茌平县', '184', 'Chiping Xian ');
INSERT INTO `t_s_region` VALUES ('186', '菏泽市', '16', 'Heze Shi');
INSERT INTO `t_s_region` VALUES ('1860', '东阿县', '184', 'Dong,e Xian');
INSERT INTO `t_s_region` VALUES ('1861', '冠县', '184', 'Guan Xian');
INSERT INTO `t_s_region` VALUES ('1862', '高唐县', '184', 'Gaotang Xian');
INSERT INTO `t_s_region` VALUES ('1863', '临清市', '184', 'Linqing Xian');
INSERT INTO `t_s_region` VALUES ('1864', '市辖区', '185', '1');
INSERT INTO `t_s_region` VALUES ('1865', '滨城区', '185', 'Bincheng Qu');
INSERT INTO `t_s_region` VALUES ('1866', '惠民县', '185', 'Huimin Xian');
INSERT INTO `t_s_region` VALUES ('1867', '阳信县', '185', 'Yangxin Xian');
INSERT INTO `t_s_region` VALUES ('1868', '无棣县', '185', 'Wudi Xian');
INSERT INTO `t_s_region` VALUES ('1869', '沾化县', '185', 'Zhanhua Xian');
INSERT INTO `t_s_region` VALUES ('187', '郑州市', '17', 'Zhengzhou Shi');
INSERT INTO `t_s_region` VALUES ('1870', '博兴县', '185', 'Boxing Xian');
INSERT INTO `t_s_region` VALUES ('1871', '邹平县', '185', 'Zouping Xian');
INSERT INTO `t_s_region` VALUES ('1873', '牡丹区', '186', 'Mudan Qu');
INSERT INTO `t_s_region` VALUES ('1874', '曹县', '186', 'Cao Xian');
INSERT INTO `t_s_region` VALUES ('1875', '单县', '186', 'Shan Xian');
INSERT INTO `t_s_region` VALUES ('1876', '成武县', '186', 'Chengwu Xian');
INSERT INTO `t_s_region` VALUES ('1877', '巨野县', '186', 'Juye Xian');
INSERT INTO `t_s_region` VALUES ('1878', '郓城县', '186', 'Yuncheng Xian');
INSERT INTO `t_s_region` VALUES ('1879', '鄄城县', '186', 'Juancheng Xian');
INSERT INTO `t_s_region` VALUES ('188', '开封市', '17', 'Kaifeng Shi');
INSERT INTO `t_s_region` VALUES ('1880', '定陶县', '186', 'Dingtao Xian');
INSERT INTO `t_s_region` VALUES ('1881', '东明县', '186', 'Dongming Xian');
INSERT INTO `t_s_region` VALUES ('1882', '市辖区', '187', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1883', '中原区', '187', 'Zhongyuan Qu');
INSERT INTO `t_s_region` VALUES ('1884', '二七区', '187', 'Erqi Qu');
INSERT INTO `t_s_region` VALUES ('1885', '管城回族区', '187', 'Guancheng Huizu Qu');
INSERT INTO `t_s_region` VALUES ('1886', '金水区', '187', 'Jinshui Qu');
INSERT INTO `t_s_region` VALUES ('1887', '上街区', '187', 'Shangjie Qu');
INSERT INTO `t_s_region` VALUES ('1888', '惠济区', '187', 'Mangshan Qu');
INSERT INTO `t_s_region` VALUES ('1889', '中牟县', '187', 'Zhongmou Xian');
INSERT INTO `t_s_region` VALUES ('189', '洛阳市', '17', 'Luoyang Shi');
INSERT INTO `t_s_region` VALUES ('1890', '巩义市', '187', 'Gongyi Shi');
INSERT INTO `t_s_region` VALUES ('1891', '荥阳市', '187', 'Xingyang Shi');
INSERT INTO `t_s_region` VALUES ('1892', '新密市', '187', 'Xinmi Shi');
INSERT INTO `t_s_region` VALUES ('1893', '新郑市', '187', 'Xinzheng Shi');
INSERT INTO `t_s_region` VALUES ('1894', '登封市', '187', 'Dengfeng Shi');
INSERT INTO `t_s_region` VALUES ('1895', '市辖区', '188', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1896', '龙亭区', '188', 'Longting Qu');
INSERT INTO `t_s_region` VALUES ('1897', '顺河回族区', '188', 'Shunhe Huizu Qu');
INSERT INTO `t_s_region` VALUES ('1898', '鼓楼区', '188', 'Gulou Qu');
INSERT INTO `t_s_region` VALUES ('1899', '禹王台区', '188', 'Yuwangtai Qu');
INSERT INTO `t_s_region` VALUES ('19', '湖南省', '1', 'Hunan Sheng');
INSERT INTO `t_s_region` VALUES ('190', '平顶山市', '17', 'Pingdingshan Shi');
INSERT INTO `t_s_region` VALUES ('1900', '金明区', '188', 'Jinming Qu');
INSERT INTO `t_s_region` VALUES ('1901', '杞县', '188', 'Qi Xian');
INSERT INTO `t_s_region` VALUES ('1902', '通许县', '188', 'Tongxu Xian');
INSERT INTO `t_s_region` VALUES ('1903', '尉氏县', '188', 'Weishi Xian');
INSERT INTO `t_s_region` VALUES ('1904', '开封县', '188', 'Kaifeng Xian');
INSERT INTO `t_s_region` VALUES ('1905', '兰考县', '188', 'Lankao Xian');
INSERT INTO `t_s_region` VALUES ('1906', '市辖区', '189', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1907', '老城区', '189', 'Laocheng Qu');
INSERT INTO `t_s_region` VALUES ('1908', '西工区', '189', 'Xigong Qu');
INSERT INTO `t_s_region` VALUES ('1909', '瀍河回族区', '189', 'Chanhehuizu Qu');
INSERT INTO `t_s_region` VALUES ('191', '安阳市', '17', 'Anyang Shi');
INSERT INTO `t_s_region` VALUES ('1910', '涧西区', '189', 'Jianxi Qu');
INSERT INTO `t_s_region` VALUES ('1911', '吉利区', '189', 'Jili Qu');
INSERT INTO `t_s_region` VALUES ('1912', '洛龙区', '189', 'Luolong Qu');
INSERT INTO `t_s_region` VALUES ('1913', '孟津县', '189', 'Mengjin Xian');
INSERT INTO `t_s_region` VALUES ('1914', '新安县', '189', 'Xin,an Xian');
INSERT INTO `t_s_region` VALUES ('1915', '栾川县', '189', 'Luanchuan Xian');
INSERT INTO `t_s_region` VALUES ('1916', '嵩县', '189', 'Song Xian');
INSERT INTO `t_s_region` VALUES ('1917', '汝阳县', '189', 'Ruyang Xian');
INSERT INTO `t_s_region` VALUES ('1918', '宜阳县', '189', 'Yiyang Xian');
INSERT INTO `t_s_region` VALUES ('1919', '洛宁县', '189', 'Luoning Xian');
INSERT INTO `t_s_region` VALUES ('192', '鹤壁市', '17', 'Hebi Shi');
INSERT INTO `t_s_region` VALUES ('1920', '伊川县', '189', 'Yichuan Xian');
INSERT INTO `t_s_region` VALUES ('1921', '偃师市', '189', 'Yanshi Shi');
INSERT INTO `t_s_region` VALUES ('1922', '市辖区', '190', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1923', '新华区', '190', 'Xinhua Qu');
INSERT INTO `t_s_region` VALUES ('1924', '卫东区', '190', 'Weidong Qu');
INSERT INTO `t_s_region` VALUES ('1925', '石龙区', '190', 'Shilong Qu');
INSERT INTO `t_s_region` VALUES ('1926', '湛河区', '190', 'Zhanhe Qu');
INSERT INTO `t_s_region` VALUES ('1927', '宝丰县', '190', 'Baofeng Xian');
INSERT INTO `t_s_region` VALUES ('1928', '叶县', '190', 'Ye Xian');
INSERT INTO `t_s_region` VALUES ('1929', '鲁山县', '190', 'Lushan Xian');
INSERT INTO `t_s_region` VALUES ('193', '新乡市', '17', 'Xinxiang Shi');
INSERT INTO `t_s_region` VALUES ('1930', '郏县', '190', 'Jia Xian');
INSERT INTO `t_s_region` VALUES ('1931', '舞钢市', '190', 'Wugang Shi');
INSERT INTO `t_s_region` VALUES ('1932', '汝州市', '190', 'Ruzhou Shi');
INSERT INTO `t_s_region` VALUES ('1933', '市辖区', '191', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1934', '文峰区', '191', 'Wenfeng Qu');
INSERT INTO `t_s_region` VALUES ('1935', '北关区', '191', 'Beiguan Qu');
INSERT INTO `t_s_region` VALUES ('1936', '殷都区', '191', 'Yindu Qu');
INSERT INTO `t_s_region` VALUES ('1937', '龙安区', '191', 'Longan Qu');
INSERT INTO `t_s_region` VALUES ('1938', '安阳县', '191', 'Anyang Xian');
INSERT INTO `t_s_region` VALUES ('1939', '汤阴县', '191', 'Tangyin Xian');
INSERT INTO `t_s_region` VALUES ('194', '焦作市', '17', 'Jiaozuo Shi');
INSERT INTO `t_s_region` VALUES ('1940', '滑县', '191', 'Hua Xian');
INSERT INTO `t_s_region` VALUES ('1941', '内黄县', '191', 'Neihuang Xian');
INSERT INTO `t_s_region` VALUES ('1942', '林州市', '191', 'Linzhou Shi');
INSERT INTO `t_s_region` VALUES ('1943', '市辖区', '192', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1944', '鹤山区', '192', 'Heshan Qu');
INSERT INTO `t_s_region` VALUES ('1945', '山城区', '192', 'Shancheng Qu');
INSERT INTO `t_s_region` VALUES ('1946', '淇滨区', '192', 'Qibin Qu');
INSERT INTO `t_s_region` VALUES ('1947', '浚县', '192', 'Xun Xian');
INSERT INTO `t_s_region` VALUES ('1948', '淇县', '192', 'Qi Xian');
INSERT INTO `t_s_region` VALUES ('1949', '市辖区', '193', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('195', '濮阳市', '17', 'Puyang Shi');
INSERT INTO `t_s_region` VALUES ('1950', '红旗区', '193', 'Hongqi Qu');
INSERT INTO `t_s_region` VALUES ('1951', '卫滨区', '193', 'Weibin Qu');
INSERT INTO `t_s_region` VALUES ('1952', '凤泉区', '193', 'Fengquan Qu');
INSERT INTO `t_s_region` VALUES ('1953', '牧野区', '193', 'Muye Qu');
INSERT INTO `t_s_region` VALUES ('1954', '新乡县', '193', 'Xinxiang Xian');
INSERT INTO `t_s_region` VALUES ('1955', '获嘉县', '193', 'Huojia Xian');
INSERT INTO `t_s_region` VALUES ('1956', '原阳县', '193', 'Yuanyang Xian');
INSERT INTO `t_s_region` VALUES ('1957', '延津县', '193', 'Yanjin Xian');
INSERT INTO `t_s_region` VALUES ('1958', '封丘县', '193', 'Fengqiu Xian');
INSERT INTO `t_s_region` VALUES ('1959', '长垣县', '193', 'Changyuan Xian');
INSERT INTO `t_s_region` VALUES ('196', '许昌市', '17', 'Xuchang Shi');
INSERT INTO `t_s_region` VALUES ('1960', '卫辉市', '193', 'Weihui Shi');
INSERT INTO `t_s_region` VALUES ('1961', '辉县市', '193', 'Huixian Shi');
INSERT INTO `t_s_region` VALUES ('1962', '市辖区', '194', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1963', '解放区', '194', 'Jiefang Qu');
INSERT INTO `t_s_region` VALUES ('1964', '中站区', '194', 'Zhongzhan Qu');
INSERT INTO `t_s_region` VALUES ('1965', '马村区', '194', 'Macun Qu');
INSERT INTO `t_s_region` VALUES ('1966', '山阳区', '194', 'Shanyang Qu');
INSERT INTO `t_s_region` VALUES ('1967', '修武县', '194', 'Xiuwu Xian');
INSERT INTO `t_s_region` VALUES ('1968', '博爱县', '194', 'Bo,ai Xian');
INSERT INTO `t_s_region` VALUES ('1969', '武陟县', '194', 'Wuzhi Xian');
INSERT INTO `t_s_region` VALUES ('197', '漯河市', '17', 'Luohe Shi');
INSERT INTO `t_s_region` VALUES ('1970', '温县', '194', 'Wen Xian');
INSERT INTO `t_s_region` VALUES ('1971', '济源市', '194', 'Jiyuan Shi');
INSERT INTO `t_s_region` VALUES ('1972', '沁阳市', '194', 'Qinyang Shi');
INSERT INTO `t_s_region` VALUES ('1973', '孟州市', '194', 'Mengzhou Shi');
INSERT INTO `t_s_region` VALUES ('1974', '市辖区', '195', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1975', '华龙区', '195', 'Hualong Qu');
INSERT INTO `t_s_region` VALUES ('1976', '清丰县', '195', 'Qingfeng Xian');
INSERT INTO `t_s_region` VALUES ('1977', '南乐县', '195', 'Nanle Xian');
INSERT INTO `t_s_region` VALUES ('1978', '范县', '195', 'Fan Xian');
INSERT INTO `t_s_region` VALUES ('1979', '台前县', '195', 'Taiqian Xian');
INSERT INTO `t_s_region` VALUES ('198', '三门峡市', '17', 'Sanmenxia Shi');
INSERT INTO `t_s_region` VALUES ('1980', '濮阳县', '195', 'Puyang Xian');
INSERT INTO `t_s_region` VALUES ('1981', '市辖区', '196', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1982', '魏都区', '196', 'Weidu Qu');
INSERT INTO `t_s_region` VALUES ('1983', '许昌县', '196', 'Xuchang Xian');
INSERT INTO `t_s_region` VALUES ('1984', '鄢陵县', '196', 'Yanling Xian');
INSERT INTO `t_s_region` VALUES ('1985', '襄城县', '196', 'Xiangcheng Xian');
INSERT INTO `t_s_region` VALUES ('1986', '禹州市', '196', 'Yuzhou Shi');
INSERT INTO `t_s_region` VALUES ('1987', '长葛市', '196', 'Changge Shi');
INSERT INTO `t_s_region` VALUES ('1988', '市辖区', '197', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1989', '源汇区', '197', 'Yuanhui Qu');
INSERT INTO `t_s_region` VALUES ('199', '南阳市', '17', 'Nanyang Shi');
INSERT INTO `t_s_region` VALUES ('1990', '郾城区', '197', 'Yancheng Qu');
INSERT INTO `t_s_region` VALUES ('1991', '召陵区', '197', 'Zhaoling Qu');
INSERT INTO `t_s_region` VALUES ('1992', '舞阳县', '197', 'Wuyang Xian');
INSERT INTO `t_s_region` VALUES ('1993', '临颍县', '197', 'Linying Xian');
INSERT INTO `t_s_region` VALUES ('1994', '市辖区', '198', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('1995', '湖滨区', '198', 'Hubin Qu');
INSERT INTO `t_s_region` VALUES ('1996', '渑池县', '198', 'Mianchi Xian');
INSERT INTO `t_s_region` VALUES ('1997', '陕县', '198', 'Shan Xian');
INSERT INTO `t_s_region` VALUES ('1998', '卢氏县', '198', 'Lushi Xian');
INSERT INTO `t_s_region` VALUES ('1999', '义马市', '198', 'Yima Shi');
INSERT INTO `t_s_region` VALUES ('2', '北京市', '1', 'Beijing Shi');
INSERT INTO `t_s_region` VALUES ('20', '广东省', '1', 'Guangdong Sheng');
INSERT INTO `t_s_region` VALUES ('200', '商丘市', '17', 'Shangqiu Shi');
INSERT INTO `t_s_region` VALUES ('2000', '灵宝市', '198', 'Lingbao Shi');
INSERT INTO `t_s_region` VALUES ('2001', '市辖区', '199', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2002', '宛城区', '199', 'Wancheng Qu');
INSERT INTO `t_s_region` VALUES ('2003', '卧龙区', '199', 'Wolong Qu');
INSERT INTO `t_s_region` VALUES ('2004', '南召县', '199', 'Nanzhao Xian');
INSERT INTO `t_s_region` VALUES ('2005', '方城县', '199', 'Fangcheng Xian');
INSERT INTO `t_s_region` VALUES ('2006', '西峡县', '199', 'Xixia Xian');
INSERT INTO `t_s_region` VALUES ('2007', '镇平县', '199', 'Zhenping Xian');
INSERT INTO `t_s_region` VALUES ('2008', '内乡县', '199', 'Neixiang Xian');
INSERT INTO `t_s_region` VALUES ('2009', '淅川县', '199', 'Xichuan Xian');
INSERT INTO `t_s_region` VALUES ('201', '信阳市', '17', 'Xinyang Shi');
INSERT INTO `t_s_region` VALUES ('2010', '社旗县', '199', 'Sheqi Xian');
INSERT INTO `t_s_region` VALUES ('2011', '唐河县', '199', 'Tanghe Xian');
INSERT INTO `t_s_region` VALUES ('2012', '新野县', '199', 'Xinye Xian');
INSERT INTO `t_s_region` VALUES ('2013', '桐柏县', '199', 'Tongbai Xian');
INSERT INTO `t_s_region` VALUES ('2014', '邓州市', '199', 'Dengzhou Shi');
INSERT INTO `t_s_region` VALUES ('2015', '市辖区', '200', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2016', '梁园区', '200', 'Liangyuan Qu');
INSERT INTO `t_s_region` VALUES ('2017', '睢阳区', '200', 'Suiyang Qu');
INSERT INTO `t_s_region` VALUES ('2018', '民权县', '200', 'Minquan Xian');
INSERT INTO `t_s_region` VALUES ('2019', '睢县', '200', 'Sui Xian');
INSERT INTO `t_s_region` VALUES ('202', '周口市', '17', 'Zhoukou Shi');
INSERT INTO `t_s_region` VALUES ('2020', '宁陵县', '200', 'Ningling Xian');
INSERT INTO `t_s_region` VALUES ('2021', '柘城县', '200', 'Zhecheng Xian');
INSERT INTO `t_s_region` VALUES ('2022', '虞城县', '200', 'Yucheng Xian');
INSERT INTO `t_s_region` VALUES ('2023', '夏邑县', '200', 'Xiayi Xian');
INSERT INTO `t_s_region` VALUES ('2024', '永城市', '200', 'Yongcheng Shi');
INSERT INTO `t_s_region` VALUES ('2025', '市辖区', '201', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2026', '浉河区', '201', 'Shihe Qu');
INSERT INTO `t_s_region` VALUES ('2027', '平桥区', '201', 'Pingqiao Qu');
INSERT INTO `t_s_region` VALUES ('2028', '罗山县', '201', 'Luoshan Xian');
INSERT INTO `t_s_region` VALUES ('2029', '光山县', '201', 'Guangshan Xian');
INSERT INTO `t_s_region` VALUES ('203', '驻马店市', '17', 'Zhumadian Shi');
INSERT INTO `t_s_region` VALUES ('2030', '新县', '201', 'Xin Xian');
INSERT INTO `t_s_region` VALUES ('2031', '商城县', '201', 'Shangcheng Xian');
INSERT INTO `t_s_region` VALUES ('2032', '固始县', '201', 'Gushi Xian');
INSERT INTO `t_s_region` VALUES ('2033', '潢川县', '201', 'Huangchuan Xian');
INSERT INTO `t_s_region` VALUES ('2034', '淮滨县', '201', 'Huaibin Xian');
INSERT INTO `t_s_region` VALUES ('2035', '息县', '201', 'Xi Xian');
INSERT INTO `t_s_region` VALUES ('2036', '市辖区', '202', '1');
INSERT INTO `t_s_region` VALUES ('2037', '川汇区', '202', 'Chuanhui Qu');
INSERT INTO `t_s_region` VALUES ('2038', '扶沟县', '202', 'Fugou Xian');
INSERT INTO `t_s_region` VALUES ('2039', '西华县', '202', 'Xihua Xian');
INSERT INTO `t_s_region` VALUES ('204', '武汉市', '18', 'Wuhan Shi');
INSERT INTO `t_s_region` VALUES ('2040', '商水县', '202', 'Shangshui Xian');
INSERT INTO `t_s_region` VALUES ('2041', '沈丘县', '202', 'Shenqiu Xian');
INSERT INTO `t_s_region` VALUES ('2042', '郸城县', '202', 'Dancheng Xian');
INSERT INTO `t_s_region` VALUES ('2043', '淮阳县', '202', 'Huaiyang Xian');
INSERT INTO `t_s_region` VALUES ('2044', '太康县', '202', 'Taikang Xian');
INSERT INTO `t_s_region` VALUES ('2045', '鹿邑县', '202', 'Luyi Xian');
INSERT INTO `t_s_region` VALUES ('2046', '项城市', '202', 'Xiangcheng Shi');
INSERT INTO `t_s_region` VALUES ('2047', '市辖区', '203', '1');
INSERT INTO `t_s_region` VALUES ('2048', '驿城区', '203', 'Yicheng Qu');
INSERT INTO `t_s_region` VALUES ('2049', '西平县', '203', 'Xiping Xian');
INSERT INTO `t_s_region` VALUES ('205', '黄石市', '18', 'Huangshi Shi');
INSERT INTO `t_s_region` VALUES ('2050', '上蔡县', '203', 'Shangcai Xian');
INSERT INTO `t_s_region` VALUES ('2051', '平舆县', '203', 'Pingyu Xian');
INSERT INTO `t_s_region` VALUES ('2052', '正阳县', '203', 'Zhengyang Xian');
INSERT INTO `t_s_region` VALUES ('2053', '确山县', '203', 'Queshan Xian');
INSERT INTO `t_s_region` VALUES ('2054', '泌阳县', '203', 'Biyang Xian');
INSERT INTO `t_s_region` VALUES ('2055', '汝南县', '203', 'Runan Xian');
INSERT INTO `t_s_region` VALUES ('2056', '遂平县', '203', 'Suiping Xian');
INSERT INTO `t_s_region` VALUES ('2057', '新蔡县', '203', 'Xincai Xian');
INSERT INTO `t_s_region` VALUES ('2058', '市辖区', '204', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2059', '江岸区', '204', 'Jiang,an Qu');
INSERT INTO `t_s_region` VALUES ('206', '十堰市', '18', 'Shiyan Shi');
INSERT INTO `t_s_region` VALUES ('2060', '江汉区', '204', 'Jianghan Qu');
INSERT INTO `t_s_region` VALUES ('2061', '硚口区', '204', 'Qiaokou Qu');
INSERT INTO `t_s_region` VALUES ('2062', '汉阳区', '204', 'Hanyang Qu');
INSERT INTO `t_s_region` VALUES ('2063', '武昌区', '204', 'Wuchang Qu');
INSERT INTO `t_s_region` VALUES ('2064', '青山区', '204', 'Qingshan Qu');
INSERT INTO `t_s_region` VALUES ('2065', '洪山区', '204', 'Hongshan Qu');
INSERT INTO `t_s_region` VALUES ('2066', '东西湖区', '204', 'Dongxihu Qu');
INSERT INTO `t_s_region` VALUES ('2067', '汉南区', '204', 'Hannan Qu');
INSERT INTO `t_s_region` VALUES ('2068', '蔡甸区', '204', 'Caidian Qu');
INSERT INTO `t_s_region` VALUES ('2069', '江夏区', '204', 'Jiangxia Qu');
INSERT INTO `t_s_region` VALUES ('207', '宜昌市', '18', 'Yichang Shi');
INSERT INTO `t_s_region` VALUES ('2070', '黄陂区', '204', 'Huangpi Qu');
INSERT INTO `t_s_region` VALUES ('2071', '新洲区', '204', 'Xinzhou Qu');
INSERT INTO `t_s_region` VALUES ('2072', '市辖区', '205', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2073', '黄石港区', '205', 'Huangshigang Qu');
INSERT INTO `t_s_region` VALUES ('2074', '西塞山区', '205', 'Xisaishan Qu');
INSERT INTO `t_s_region` VALUES ('2075', '下陆区', '205', 'Xialu Qu');
INSERT INTO `t_s_region` VALUES ('2076', '铁山区', '205', 'Tieshan Qu');
INSERT INTO `t_s_region` VALUES ('2077', '阳新县', '205', 'Yangxin Xian');
INSERT INTO `t_s_region` VALUES ('2078', '大冶市', '205', 'Daye Shi');
INSERT INTO `t_s_region` VALUES ('2079', '市辖区', '206', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('208', '襄樊市', '18', 'Xiangfan Shi');
INSERT INTO `t_s_region` VALUES ('2080', '茅箭区', '206', 'Maojian Qu');
INSERT INTO `t_s_region` VALUES ('2081', '张湾区', '206', 'Zhangwan Qu');
INSERT INTO `t_s_region` VALUES ('2082', '郧县', '206', 'Yun Xian');
INSERT INTO `t_s_region` VALUES ('2083', '郧西县', '206', 'Yunxi Xian');
INSERT INTO `t_s_region` VALUES ('2084', '竹山县', '206', 'Zhushan Xian');
INSERT INTO `t_s_region` VALUES ('2085', '竹溪县', '206', 'Zhuxi Xian');
INSERT INTO `t_s_region` VALUES ('2086', '房县', '206', 'Fang Xian');
INSERT INTO `t_s_region` VALUES ('2087', '丹江口市', '206', 'Danjiangkou Shi');
INSERT INTO `t_s_region` VALUES ('2088', '市辖区', '207', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2089', '西陵区', '207', 'Xiling Qu');
INSERT INTO `t_s_region` VALUES ('209', '鄂州市', '18', 'Ezhou Shi');
INSERT INTO `t_s_region` VALUES ('2090', '伍家岗区', '207', 'Wujiagang Qu');
INSERT INTO `t_s_region` VALUES ('2091', '点军区', '207', 'Dianjun Qu');
INSERT INTO `t_s_region` VALUES ('2092', '猇亭区', '207', 'Xiaoting Qu');
INSERT INTO `t_s_region` VALUES ('2093', '夷陵区', '207', 'Yiling Qu');
INSERT INTO `t_s_region` VALUES ('2094', '远安县', '207', 'Yuan,an Xian');
INSERT INTO `t_s_region` VALUES ('2095', '兴山县', '207', 'Xingshan Xian');
INSERT INTO `t_s_region` VALUES ('2096', '秭归县', '207', 'Zigui Xian');
INSERT INTO `t_s_region` VALUES ('2097', '长阳土家族自治县', '207', 'Changyang Tujiazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2098', '五峰土家族自治县', '207', 'Wufeng Tujiazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2099', '宜都市', '207', 'Yidu Shi');
INSERT INTO `t_s_region` VALUES ('21', '广西壮族自治区', '1', 'Guangxi Zhuangzu Zizhiqu');
INSERT INTO `t_s_region` VALUES ('210', '荆门市', '18', 'Jingmen Shi');
INSERT INTO `t_s_region` VALUES ('2100', '当阳市', '207', 'Dangyang Shi');
INSERT INTO `t_s_region` VALUES ('2101', '枝江市', '207', 'Zhijiang Shi');
INSERT INTO `t_s_region` VALUES ('2102', '市辖区', '208', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2103', '襄城区', '208', 'Xiangcheng Qu');
INSERT INTO `t_s_region` VALUES ('2104', '樊城区', '208', 'Fancheng Qu');
INSERT INTO `t_s_region` VALUES ('2105', '襄阳区', '208', 'Xiangyang Qu');
INSERT INTO `t_s_region` VALUES ('2106', '南漳县', '208', 'Nanzhang Xian');
INSERT INTO `t_s_region` VALUES ('2107', '谷城县', '208', 'Gucheng Xian');
INSERT INTO `t_s_region` VALUES ('2108', '保康县', '208', 'Baokang Xian');
INSERT INTO `t_s_region` VALUES ('2109', '老河口市', '208', 'Laohekou Shi');
INSERT INTO `t_s_region` VALUES ('211', '孝感市', '18', 'Xiaogan Shi');
INSERT INTO `t_s_region` VALUES ('2110', '枣阳市', '208', 'Zaoyang Shi');
INSERT INTO `t_s_region` VALUES ('2111', '宜城市', '208', 'Yicheng Shi');
INSERT INTO `t_s_region` VALUES ('2112', '市辖区', '209', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2113', '梁子湖区', '209', 'Liangzihu Qu');
INSERT INTO `t_s_region` VALUES ('2114', '华容区', '209', 'Huarong Qu');
INSERT INTO `t_s_region` VALUES ('2115', '鄂城区', '209', 'Echeng Qu');
INSERT INTO `t_s_region` VALUES ('2116', '市辖区', '210', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2117', '东宝区', '210', 'Dongbao Qu');
INSERT INTO `t_s_region` VALUES ('2118', '掇刀区', '210', 'Duodao Qu');
INSERT INTO `t_s_region` VALUES ('2119', '京山县', '210', 'Jingshan Xian');
INSERT INTO `t_s_region` VALUES ('212', '荆州市', '18', 'Jingzhou Shi');
INSERT INTO `t_s_region` VALUES ('2120', '沙洋县', '210', 'Shayang Xian');
INSERT INTO `t_s_region` VALUES ('2121', '钟祥市', '210', 'Zhongxiang Shi');
INSERT INTO `t_s_region` VALUES ('2122', '市辖区', '211', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2123', '孝南区', '211', 'Xiaonan Qu');
INSERT INTO `t_s_region` VALUES ('2124', '孝昌县', '211', 'Xiaochang Xian');
INSERT INTO `t_s_region` VALUES ('2125', '大悟县', '211', 'Dawu Xian');
INSERT INTO `t_s_region` VALUES ('2126', '云梦县', '211', 'Yunmeng Xian');
INSERT INTO `t_s_region` VALUES ('2127', '应城市', '211', 'Yingcheng Shi');
INSERT INTO `t_s_region` VALUES ('2128', '安陆市', '211', 'Anlu Shi');
INSERT INTO `t_s_region` VALUES ('2129', '汉川市', '211', 'Hanchuan Shi');
INSERT INTO `t_s_region` VALUES ('213', '黄冈市', '18', 'Huanggang Shi');
INSERT INTO `t_s_region` VALUES ('2130', '市辖区', '212', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2131', '沙市区', '212', 'Shashi Qu');
INSERT INTO `t_s_region` VALUES ('2132', '荆州区', '212', 'Jingzhou Qu');
INSERT INTO `t_s_region` VALUES ('2133', '公安县', '212', 'Gong,an Xian');
INSERT INTO `t_s_region` VALUES ('2134', '监利县', '212', 'Jianli Xian');
INSERT INTO `t_s_region` VALUES ('2135', '江陵县', '212', 'Jiangling Xian');
INSERT INTO `t_s_region` VALUES ('2136', '石首市', '212', 'Shishou Shi');
INSERT INTO `t_s_region` VALUES ('2137', '洪湖市', '212', 'Honghu Shi');
INSERT INTO `t_s_region` VALUES ('2138', '松滋市', '212', 'Songzi Shi');
INSERT INTO `t_s_region` VALUES ('2139', '市辖区', '213', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('214', '咸宁市', '18', 'Xianning Xian');
INSERT INTO `t_s_region` VALUES ('2140', '黄州区', '213', 'Huangzhou Qu');
INSERT INTO `t_s_region` VALUES ('2141', '团风县', '213', 'Tuanfeng Xian');
INSERT INTO `t_s_region` VALUES ('2142', '红安县', '213', 'Hong,an Xian');
INSERT INTO `t_s_region` VALUES ('2143', '罗田县', '213', 'Luotian Xian');
INSERT INTO `t_s_region` VALUES ('2144', '英山县', '213', 'Yingshan Xian');
INSERT INTO `t_s_region` VALUES ('2145', '浠水县', '213', 'Xishui Xian');
INSERT INTO `t_s_region` VALUES ('2146', '蕲春县', '213', 'Qichun Xian');
INSERT INTO `t_s_region` VALUES ('2147', '黄梅县', '213', 'Huangmei Xian');
INSERT INTO `t_s_region` VALUES ('2148', '麻城市', '213', 'Macheng Shi');
INSERT INTO `t_s_region` VALUES ('2149', '武穴市', '213', 'Wuxue Shi');
INSERT INTO `t_s_region` VALUES ('215', '随州市', '18', 'Suizhou Shi');
INSERT INTO `t_s_region` VALUES ('2150', '市辖区', '214', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2151', '咸安区', '214', 'Xian,an Qu');
INSERT INTO `t_s_region` VALUES ('2152', '嘉鱼县', '214', 'Jiayu Xian');
INSERT INTO `t_s_region` VALUES ('2153', '通城县', '214', 'Tongcheng Xian');
INSERT INTO `t_s_region` VALUES ('2154', '崇阳县', '214', 'Chongyang Xian');
INSERT INTO `t_s_region` VALUES ('2155', '通山县', '214', 'Tongshan Xian');
INSERT INTO `t_s_region` VALUES ('2156', '赤壁市', '214', 'Chibi Shi');
INSERT INTO `t_s_region` VALUES ('2157', '市辖区', '215', '1');
INSERT INTO `t_s_region` VALUES ('2158', '曾都区', '215', 'Zengdu Qu');
INSERT INTO `t_s_region` VALUES ('2159', '广水市', '215', 'Guangshui Shi');
INSERT INTO `t_s_region` VALUES ('216', '恩施土家族苗族自治州', '18', 'Enshi Tujiazu Miaozu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('2160', '恩施市', '216', 'Enshi Shi');
INSERT INTO `t_s_region` VALUES ('2161', '利川市', '216', 'Lichuan Shi');
INSERT INTO `t_s_region` VALUES ('2162', '建始县', '216', 'Jianshi Xian');
INSERT INTO `t_s_region` VALUES ('2163', '巴东县', '216', 'Badong Xian');
INSERT INTO `t_s_region` VALUES ('2164', '宣恩县', '216', 'Xuan,en Xian');
INSERT INTO `t_s_region` VALUES ('2165', '咸丰县', '216', 'Xianfeng Xian');
INSERT INTO `t_s_region` VALUES ('2166', '来凤县', '216', 'Laifeng Xian');
INSERT INTO `t_s_region` VALUES ('2167', '鹤峰县', '216', 'Hefeng Xian');
INSERT INTO `t_s_region` VALUES ('2168', '仙桃市', '217', 'Xiantao Shi');
INSERT INTO `t_s_region` VALUES ('2169', '潜江市', '217', 'Qianjiang Shi');
INSERT INTO `t_s_region` VALUES ('217', '省直辖县级行政区划', '18', 'shengzhixiaxianjixingzhengquhua');
INSERT INTO `t_s_region` VALUES ('2170', '天门市', '217', 'Tianmen Shi');
INSERT INTO `t_s_region` VALUES ('2171', '神农架林区', '217', 'Shennongjia Linqu');
INSERT INTO `t_s_region` VALUES ('2172', '市辖区', '218', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2173', '芙蓉区', '218', 'Furong Qu');
INSERT INTO `t_s_region` VALUES ('2174', '天心区', '218', 'Tianxin Qu');
INSERT INTO `t_s_region` VALUES ('2175', '岳麓区', '218', 'Yuelu Qu');
INSERT INTO `t_s_region` VALUES ('2176', '开福区', '218', 'Kaifu Qu');
INSERT INTO `t_s_region` VALUES ('2177', '雨花区', '218', 'Yuhua Qu');
INSERT INTO `t_s_region` VALUES ('2178', '长沙县', '218', 'Changsha Xian');
INSERT INTO `t_s_region` VALUES ('2179', '望城县', '218', 'Wangcheng Xian');
INSERT INTO `t_s_region` VALUES ('218', '长沙市', '19', 'Changsha Shi');
INSERT INTO `t_s_region` VALUES ('2180', '宁乡县', '218', 'Ningxiang Xian');
INSERT INTO `t_s_region` VALUES ('2181', '浏阳市', '218', 'Liuyang Shi');
INSERT INTO `t_s_region` VALUES ('2182', '市辖区', '219', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2183', '荷塘区', '219', 'Hetang Qu');
INSERT INTO `t_s_region` VALUES ('2184', '芦淞区', '219', 'Lusong Qu');
INSERT INTO `t_s_region` VALUES ('2185', '石峰区', '219', 'Shifeng Qu');
INSERT INTO `t_s_region` VALUES ('2186', '天元区', '219', 'Tianyuan Qu');
INSERT INTO `t_s_region` VALUES ('2187', '株洲县', '219', 'Zhuzhou Xian');
INSERT INTO `t_s_region` VALUES ('2188', '攸县', '219', 'You Xian');
INSERT INTO `t_s_region` VALUES ('2189', '茶陵县', '219', 'Chaling Xian');
INSERT INTO `t_s_region` VALUES ('219', '株洲市', '19', 'Zhuzhou Shi');
INSERT INTO `t_s_region` VALUES ('2190', '炎陵县', '219', 'Yanling Xian');
INSERT INTO `t_s_region` VALUES ('2191', '醴陵市', '219', 'Liling Shi');
INSERT INTO `t_s_region` VALUES ('2192', '市辖区', '220', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2193', '雨湖区', '220', 'Yuhu Qu');
INSERT INTO `t_s_region` VALUES ('2194', '岳塘区', '220', 'Yuetang Qu');
INSERT INTO `t_s_region` VALUES ('2195', '湘潭县', '220', 'Xiangtan Qu');
INSERT INTO `t_s_region` VALUES ('2196', '湘乡市', '220', 'Xiangxiang Shi');
INSERT INTO `t_s_region` VALUES ('2197', '韶山市', '220', 'Shaoshan Shi');
INSERT INTO `t_s_region` VALUES ('2198', '市辖区', '221', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2199', '珠晖区', '221', 'Zhuhui Qu');
INSERT INTO `t_s_region` VALUES ('22', '海南省', '1', 'Hainan Sheng');
INSERT INTO `t_s_region` VALUES ('220', '湘潭市', '19', 'Xiangtan Shi');
INSERT INTO `t_s_region` VALUES ('2200', '雁峰区', '221', 'Yanfeng Qu');
INSERT INTO `t_s_region` VALUES ('2201', '石鼓区', '221', 'Shigu Qu');
INSERT INTO `t_s_region` VALUES ('2202', '蒸湘区', '221', 'Zhengxiang Qu');
INSERT INTO `t_s_region` VALUES ('2203', '南岳区', '221', 'Nanyue Qu');
INSERT INTO `t_s_region` VALUES ('2204', '衡阳县', '221', 'Hengyang Xian');
INSERT INTO `t_s_region` VALUES ('2205', '衡南县', '221', 'Hengnan Xian');
INSERT INTO `t_s_region` VALUES ('2206', '衡山县', '221', 'Hengshan Xian');
INSERT INTO `t_s_region` VALUES ('2207', '衡东县', '221', 'Hengdong Xian');
INSERT INTO `t_s_region` VALUES ('2208', '祁东县', '221', 'Qidong Xian');
INSERT INTO `t_s_region` VALUES ('2209', '耒阳市', '221', 'Leiyang Shi');
INSERT INTO `t_s_region` VALUES ('221', '衡阳市', '19', 'Hengyang Shi');
INSERT INTO `t_s_region` VALUES ('2210', '常宁市', '221', 'Changning Shi');
INSERT INTO `t_s_region` VALUES ('2211', '市辖区', '222', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2212', '双清区', '222', 'Shuangqing Qu');
INSERT INTO `t_s_region` VALUES ('2213', '大祥区', '222', 'Daxiang Qu');
INSERT INTO `t_s_region` VALUES ('2214', '北塔区', '222', 'Beita Qu');
INSERT INTO `t_s_region` VALUES ('2215', '邵东县', '222', 'Shaodong Xian');
INSERT INTO `t_s_region` VALUES ('2216', '新邵县', '222', 'Xinshao Xian');
INSERT INTO `t_s_region` VALUES ('2217', '邵阳县', '222', 'Shaoyang Xian');
INSERT INTO `t_s_region` VALUES ('2218', '隆回县', '222', 'Longhui Xian');
INSERT INTO `t_s_region` VALUES ('2219', '洞口县', '222', 'Dongkou Xian');
INSERT INTO `t_s_region` VALUES ('222', '邵阳市', '19', 'Shaoyang Shi');
INSERT INTO `t_s_region` VALUES ('2220', '绥宁县', '222', 'Suining Xian');
INSERT INTO `t_s_region` VALUES ('2221', '新宁县', '222', 'Xinning Xian');
INSERT INTO `t_s_region` VALUES ('2222', '城步苗族自治县', '222', 'Chengbu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2223', '武冈市', '222', 'Wugang Shi');
INSERT INTO `t_s_region` VALUES ('2224', '市辖区', '223', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2225', '岳阳楼区', '223', 'Yueyanglou Qu');
INSERT INTO `t_s_region` VALUES ('2226', '云溪区', '223', 'Yunxi Qu');
INSERT INTO `t_s_region` VALUES ('2227', '君山区', '223', 'Junshan Qu');
INSERT INTO `t_s_region` VALUES ('2228', '岳阳县', '223', 'Yueyang Xian');
INSERT INTO `t_s_region` VALUES ('2229', '华容县', '223', 'Huarong Xian');
INSERT INTO `t_s_region` VALUES ('223', '岳阳市', '19', 'Yueyang Shi');
INSERT INTO `t_s_region` VALUES ('2230', '湘阴县', '223', 'Xiangyin Xian');
INSERT INTO `t_s_region` VALUES ('2231', '平江县', '223', 'Pingjiang Xian');
INSERT INTO `t_s_region` VALUES ('2232', '汨罗市', '223', 'Miluo Shi');
INSERT INTO `t_s_region` VALUES ('2233', '临湘市', '223', 'Linxiang Shi');
INSERT INTO `t_s_region` VALUES ('2234', '市辖区', '224', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2235', '武陵区', '224', 'Wuling Qu');
INSERT INTO `t_s_region` VALUES ('2236', '鼎城区', '224', 'Dingcheng Qu');
INSERT INTO `t_s_region` VALUES ('2237', '安乡县', '224', 'Anxiang Xian');
INSERT INTO `t_s_region` VALUES ('2238', '汉寿县', '224', 'Hanshou Xian');
INSERT INTO `t_s_region` VALUES ('2239', '澧县', '224', 'Li Xian');
INSERT INTO `t_s_region` VALUES ('224', '常德市', '19', 'Changde Shi');
INSERT INTO `t_s_region` VALUES ('2240', '临澧县', '224', 'Linli Xian');
INSERT INTO `t_s_region` VALUES ('2241', '桃源县', '224', 'Taoyuan Xian');
INSERT INTO `t_s_region` VALUES ('2242', '石门县', '224', 'Shimen Xian');
INSERT INTO `t_s_region` VALUES ('2243', '津市市', '224', 'Jinshi Shi');
INSERT INTO `t_s_region` VALUES ('2244', '市辖区', '225', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2245', '永定区', '225', 'Yongding Qu');
INSERT INTO `t_s_region` VALUES ('2246', '武陵源区', '225', 'Wulingyuan Qu');
INSERT INTO `t_s_region` VALUES ('2247', '慈利县', '225', 'Cili Xian');
INSERT INTO `t_s_region` VALUES ('2248', '桑植县', '225', 'Sangzhi Xian');
INSERT INTO `t_s_region` VALUES ('2249', '市辖区', '226', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('225', '张家界市', '19', 'Zhangjiajie Shi');
INSERT INTO `t_s_region` VALUES ('2250', '资阳区', '226', 'Ziyang Qu');
INSERT INTO `t_s_region` VALUES ('2251', '赫山区', '226', 'Heshan Qu');
INSERT INTO `t_s_region` VALUES ('2252', '南县', '226', 'Nan Xian');
INSERT INTO `t_s_region` VALUES ('2253', '桃江县', '226', 'Taojiang Xian');
INSERT INTO `t_s_region` VALUES ('2254', '安化县', '226', 'Anhua Xian');
INSERT INTO `t_s_region` VALUES ('2255', '沅江市', '226', 'Yuanjiang Shi');
INSERT INTO `t_s_region` VALUES ('2256', '市辖区', '227', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2257', '北湖区', '227', 'Beihu Qu');
INSERT INTO `t_s_region` VALUES ('2258', '苏仙区', '227', 'Suxian Qu');
INSERT INTO `t_s_region` VALUES ('2259', '桂阳县', '227', 'Guiyang Xian');
INSERT INTO `t_s_region` VALUES ('226', '益阳市', '19', 'Yiyang Shi');
INSERT INTO `t_s_region` VALUES ('2260', '宜章县', '227', 'yizhang Xian');
INSERT INTO `t_s_region` VALUES ('2261', '永兴县', '227', 'Yongxing Xian');
INSERT INTO `t_s_region` VALUES ('2262', '嘉禾县', '227', 'Jiahe Xian');
INSERT INTO `t_s_region` VALUES ('2263', '临武县', '227', 'Linwu Xian');
INSERT INTO `t_s_region` VALUES ('2264', '汝城县', '227', 'Rucheng Xian');
INSERT INTO `t_s_region` VALUES ('2265', '桂东县', '227', 'Guidong Xian');
INSERT INTO `t_s_region` VALUES ('2266', '安仁县', '227', 'Anren Xian');
INSERT INTO `t_s_region` VALUES ('2267', '资兴市', '227', 'Zixing Shi');
INSERT INTO `t_s_region` VALUES ('2268', '市辖区', '228', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('227', '郴州市', '19', 'Chenzhou Shi');
INSERT INTO `t_s_region` VALUES ('2270', '冷水滩区', '228', 'Lengshuitan Qu');
INSERT INTO `t_s_region` VALUES ('2271', '祁阳县', '228', 'Qiyang Xian');
INSERT INTO `t_s_region` VALUES ('2272', '东安县', '228', 'Dong,an Xian');
INSERT INTO `t_s_region` VALUES ('2273', '双牌县', '228', 'Shuangpai Xian');
INSERT INTO `t_s_region` VALUES ('2274', '道县', '228', 'Dao Xian');
INSERT INTO `t_s_region` VALUES ('2275', '江永县', '228', 'Jiangyong Xian');
INSERT INTO `t_s_region` VALUES ('2276', '宁远县', '228', 'Ningyuan Xian');
INSERT INTO `t_s_region` VALUES ('2277', '蓝山县', '228', 'Lanshan Xian');
INSERT INTO `t_s_region` VALUES ('2278', '新田县', '228', 'Xintian Xian');
INSERT INTO `t_s_region` VALUES ('2279', '江华瑶族自治县', '228', 'Jianghua Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('228', '永州市', '19', 'Yongzhou Shi');
INSERT INTO `t_s_region` VALUES ('2280', '市辖区', '229', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2281', '鹤城区', '229', 'Hecheng Qu');
INSERT INTO `t_s_region` VALUES ('2282', '中方县', '229', 'Zhongfang Xian');
INSERT INTO `t_s_region` VALUES ('2283', '沅陵县', '229', 'Yuanling Xian');
INSERT INTO `t_s_region` VALUES ('2284', '辰溪县', '229', 'Chenxi Xian');
INSERT INTO `t_s_region` VALUES ('2285', '溆浦县', '229', 'Xupu Xian');
INSERT INTO `t_s_region` VALUES ('2286', '会同县', '229', 'Huitong Xian');
INSERT INTO `t_s_region` VALUES ('2287', '麻阳苗族自治县', '229', 'Mayang Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2288', '新晃侗族自治县', '229', 'Xinhuang Dongzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2289', '芷江侗族自治县', '229', 'Zhijiang Dongzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('229', '怀化市', '19', 'Huaihua Shi');
INSERT INTO `t_s_region` VALUES ('2290', '靖州苗族侗族自治县', '229', 'Jingzhou Miaozu Dongzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2291', '通道侗族自治县', '229', 'Tongdao Dongzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2292', '洪江市', '229', 'Hongjiang Shi');
INSERT INTO `t_s_region` VALUES ('2293', '市辖区', '230', '1');
INSERT INTO `t_s_region` VALUES ('2294', '娄星区', '230', 'Louxing Qu');
INSERT INTO `t_s_region` VALUES ('2295', '双峰县', '230', 'Shuangfeng Xian');
INSERT INTO `t_s_region` VALUES ('2296', '新化县', '230', 'Xinhua Xian');
INSERT INTO `t_s_region` VALUES ('2297', '冷水江市', '230', 'Lengshuijiang Shi');
INSERT INTO `t_s_region` VALUES ('2298', '涟源市', '230', 'Lianyuan Shi');
INSERT INTO `t_s_region` VALUES ('2299', '吉首市', '231', 'Jishou Shi');
INSERT INTO `t_s_region` VALUES ('23', '重庆市', '1', 'Chongqing Shi');
INSERT INTO `t_s_region` VALUES ('230', '娄底市', '19', 'Loudi Shi');
INSERT INTO `t_s_region` VALUES ('2300', '泸溪县', '231', 'Luxi Xian');
INSERT INTO `t_s_region` VALUES ('2301', '凤凰县', '231', 'Fenghuang Xian');
INSERT INTO `t_s_region` VALUES ('2302', '花垣县', '231', 'Huayuan Xian');
INSERT INTO `t_s_region` VALUES ('2303', '保靖县', '231', 'Baojing Xian');
INSERT INTO `t_s_region` VALUES ('2304', '古丈县', '231', 'Guzhang Xian');
INSERT INTO `t_s_region` VALUES ('2305', '永顺县', '231', 'Yongshun Xian');
INSERT INTO `t_s_region` VALUES ('2306', '龙山县', '231', 'Longshan Xian');
INSERT INTO `t_s_region` VALUES ('2307', '市辖区', '232', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2308', '南沙区', '232', 'Nansha Qu');
INSERT INTO `t_s_region` VALUES ('2309', '荔湾区', '232', 'Liwan Qu');
INSERT INTO `t_s_region` VALUES ('231', '湘西土家族苗族自治州', '19', 'Xiangxi Tujiazu Miaozu Zizhizhou ');
INSERT INTO `t_s_region` VALUES ('2310', '越秀区', '232', 'Yuexiu Qu');
INSERT INTO `t_s_region` VALUES ('2311', '海珠区', '232', 'Haizhu Qu');
INSERT INTO `t_s_region` VALUES ('2312', '天河区', '232', 'Tianhe Qu');
INSERT INTO `t_s_region` VALUES ('2313', '萝岗区', '232', 'Luogang Qu');
INSERT INTO `t_s_region` VALUES ('2314', '白云区', '232', 'Baiyun Qu');
INSERT INTO `t_s_region` VALUES ('2315', '黄埔区', '232', 'Huangpu Qu');
INSERT INTO `t_s_region` VALUES ('2316', '番禺区', '232', 'Panyu Qu');
INSERT INTO `t_s_region` VALUES ('2317', '花都区', '232', 'Huadu Qu');
INSERT INTO `t_s_region` VALUES ('2318', '增城市', '232', 'Zengcheng Shi');
INSERT INTO `t_s_region` VALUES ('2319', '从化市', '232', 'Conghua Shi');
INSERT INTO `t_s_region` VALUES ('232', '广州市', '20', 'Guangzhou Shi');
INSERT INTO `t_s_region` VALUES ('2320', '市辖区', '233', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2321', '武江区', '233', 'Wujiang Qu');
INSERT INTO `t_s_region` VALUES ('2322', '浈江区', '233', 'Zhenjiang Qu');
INSERT INTO `t_s_region` VALUES ('2323', '曲江区', '233', 'Qujiang Qu');
INSERT INTO `t_s_region` VALUES ('2324', '始兴县', '233', 'Shixing Xian');
INSERT INTO `t_s_region` VALUES ('2325', '仁化县', '233', 'Renhua Xian');
INSERT INTO `t_s_region` VALUES ('2326', '翁源县', '233', 'Wengyuan Xian');
INSERT INTO `t_s_region` VALUES ('2327', '乳源瑶族自治县', '233', 'Ruyuan Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2328', '新丰县', '233', 'Xinfeng Xian');
INSERT INTO `t_s_region` VALUES ('2329', '乐昌市', '233', 'Lechang Shi');
INSERT INTO `t_s_region` VALUES ('233', '韶关市', '20', 'Shaoguan Shi');
INSERT INTO `t_s_region` VALUES ('2330', '南雄市', '233', 'Nanxiong Shi');
INSERT INTO `t_s_region` VALUES ('2331', '市辖区', '234', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2332', '罗湖区', '234', 'Luohu Qu');
INSERT INTO `t_s_region` VALUES ('2333', '福田区', '234', 'Futian Qu');
INSERT INTO `t_s_region` VALUES ('2334', '南山区', '234', 'Nanshan Qu');
INSERT INTO `t_s_region` VALUES ('2335', '宝安区', '234', 'Bao,an Qu');
INSERT INTO `t_s_region` VALUES ('2336', '龙岗区', '234', 'Longgang Qu');
INSERT INTO `t_s_region` VALUES ('2337', '盐田区', '234', 'Yan Tian Qu');
INSERT INTO `t_s_region` VALUES ('2338', '市辖区', '235', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2339', '香洲区', '235', 'Xiangzhou Qu');
INSERT INTO `t_s_region` VALUES ('234', '深圳市', '20', 'Shenzhen Shi');
INSERT INTO `t_s_region` VALUES ('2340', '斗门区', '235', 'Doumen Qu');
INSERT INTO `t_s_region` VALUES ('2341', '金湾区', '235', 'Jinwan Qu');
INSERT INTO `t_s_region` VALUES ('2342', '市辖区', '236', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2343', '龙湖区', '236', 'Longhu Qu');
INSERT INTO `t_s_region` VALUES ('2344', '金平区', '236', 'Jinping Qu');
INSERT INTO `t_s_region` VALUES ('2345', '濠江区', '236', 'Haojiang Qu');
INSERT INTO `t_s_region` VALUES ('2346', '潮阳区', '236', 'Chaoyang  Qu');
INSERT INTO `t_s_region` VALUES ('2347', '潮南区', '236', 'Chaonan Qu');
INSERT INTO `t_s_region` VALUES ('2348', '澄海区', '236', 'Chenghai QU');
INSERT INTO `t_s_region` VALUES ('2349', '南澳县', '236', 'Nan,ao Xian');
INSERT INTO `t_s_region` VALUES ('235', '珠海市', '20', 'Zhuhai Shi');
INSERT INTO `t_s_region` VALUES ('2350', '市辖区', '237', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2351', '禅城区', '237', 'Chancheng Qu');
INSERT INTO `t_s_region` VALUES ('2352', '南海区', '237', 'Nanhai Shi');
INSERT INTO `t_s_region` VALUES ('2353', '顺德区', '237', 'Shunde Shi');
INSERT INTO `t_s_region` VALUES ('2354', '三水区', '237', 'Sanshui Shi');
INSERT INTO `t_s_region` VALUES ('2355', '高明区', '237', 'Gaoming Shi');
INSERT INTO `t_s_region` VALUES ('2356', '市辖区', '238', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2357', '蓬江区', '238', 'Pengjiang Qu');
INSERT INTO `t_s_region` VALUES ('2358', '江海区', '238', 'Jianghai Qu');
INSERT INTO `t_s_region` VALUES ('2359', '新会区', '238', 'Xinhui Shi');
INSERT INTO `t_s_region` VALUES ('236', '汕头市', '20', 'Shantou Shi');
INSERT INTO `t_s_region` VALUES ('2360', '台山市', '238', 'Taishan Shi');
INSERT INTO `t_s_region` VALUES ('2361', '开平市', '238', 'Kaiping Shi');
INSERT INTO `t_s_region` VALUES ('2362', '鹤山市', '238', 'Heshan Shi');
INSERT INTO `t_s_region` VALUES ('2363', '恩平市', '238', 'Enping Shi');
INSERT INTO `t_s_region` VALUES ('2364', '市辖区', '239', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2365', '赤坎区', '239', 'Chikan Qu');
INSERT INTO `t_s_region` VALUES ('2366', '霞山区', '239', 'Xiashan Qu');
INSERT INTO `t_s_region` VALUES ('2367', '坡头区', '239', 'Potou Qu');
INSERT INTO `t_s_region` VALUES ('2368', '麻章区', '239', 'Mazhang Qu');
INSERT INTO `t_s_region` VALUES ('2369', '遂溪县', '239', 'Suixi Xian');
INSERT INTO `t_s_region` VALUES ('237', '佛山市', '20', 'Foshan Shi');
INSERT INTO `t_s_region` VALUES ('2370', '徐闻县', '239', 'Xuwen Xian');
INSERT INTO `t_s_region` VALUES ('2371', '廉江市', '239', 'Lianjiang Shi');
INSERT INTO `t_s_region` VALUES ('2372', '雷州市', '239', 'Leizhou Shi');
INSERT INTO `t_s_region` VALUES ('2373', '吴川市', '239', 'Wuchuan Shi');
INSERT INTO `t_s_region` VALUES ('2374', '市辖区', '240', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2375', '茂南区', '240', 'Maonan Qu');
INSERT INTO `t_s_region` VALUES ('2376', '茂港区', '240', 'Maogang Qu');
INSERT INTO `t_s_region` VALUES ('2377', '电白县', '240', 'Dianbai Xian');
INSERT INTO `t_s_region` VALUES ('2378', '高州市', '240', 'Gaozhou Shi');
INSERT INTO `t_s_region` VALUES ('2379', '化州市', '240', 'Huazhou Shi');
INSERT INTO `t_s_region` VALUES ('238', '江门市', '20', 'Jiangmen Shi');
INSERT INTO `t_s_region` VALUES ('2380', '信宜市', '240', 'Xinyi Shi');
INSERT INTO `t_s_region` VALUES ('2381', '市辖区', '241', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2382', '端州区', '241', 'Duanzhou Qu');
INSERT INTO `t_s_region` VALUES ('2383', '鼎湖区', '241', 'Dinghu Qu');
INSERT INTO `t_s_region` VALUES ('2384', '广宁县', '241', 'Guangning Xian');
INSERT INTO `t_s_region` VALUES ('2385', '怀集县', '241', 'Huaiji Xian');
INSERT INTO `t_s_region` VALUES ('2386', '封开县', '241', 'Fengkai Xian');
INSERT INTO `t_s_region` VALUES ('2387', '德庆县', '241', 'Deqing Xian');
INSERT INTO `t_s_region` VALUES ('2388', '高要市', '241', 'Gaoyao Xian');
INSERT INTO `t_s_region` VALUES ('2389', '四会市', '241', 'Sihui Shi');
INSERT INTO `t_s_region` VALUES ('239', '湛江市', '20', 'Zhanjiang Shi');
INSERT INTO `t_s_region` VALUES ('2390', '市辖区', '242', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2391', '惠城区', '242', 'Huicheng Qu');
INSERT INTO `t_s_region` VALUES ('2392', '惠阳区', '242', 'Huiyang Shi');
INSERT INTO `t_s_region` VALUES ('2393', '博罗县', '242', 'Boluo Xian');
INSERT INTO `t_s_region` VALUES ('2394', '惠东县', '242', 'Huidong Xian');
INSERT INTO `t_s_region` VALUES ('2395', '龙门县', '242', 'Longmen Xian');
INSERT INTO `t_s_region` VALUES ('2396', '市辖区', '243', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2397', '梅江区', '243', 'Meijiang Qu');
INSERT INTO `t_s_region` VALUES ('2398', '梅县', '243', 'Mei Xian');
INSERT INTO `t_s_region` VALUES ('2399', '大埔县', '243', 'Dabu Xian');
INSERT INTO `t_s_region` VALUES ('24', '四川省', '1', 'Sichuan Sheng');
INSERT INTO `t_s_region` VALUES ('240', '茂名市', '20', 'Maoming Shi');
INSERT INTO `t_s_region` VALUES ('2400', '丰顺县', '243', 'Fengshun Xian');
INSERT INTO `t_s_region` VALUES ('2401', '五华县', '243', 'Wuhua Xian');
INSERT INTO `t_s_region` VALUES ('2402', '平远县', '243', 'Pingyuan Xian');
INSERT INTO `t_s_region` VALUES ('2403', '蕉岭县', '243', 'Jiaoling Xian');
INSERT INTO `t_s_region` VALUES ('2404', '兴宁市', '243', 'Xingning Shi');
INSERT INTO `t_s_region` VALUES ('2405', '市辖区', '244', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2406', '城区', '244', 'Chengqu');
INSERT INTO `t_s_region` VALUES ('2407', '海丰县', '244', 'Haifeng Xian');
INSERT INTO `t_s_region` VALUES ('2408', '陆河县', '244', 'Luhe Xian');
INSERT INTO `t_s_region` VALUES ('2409', '陆丰市', '244', 'Lufeng Shi');
INSERT INTO `t_s_region` VALUES ('241', '肇庆市', '20', 'Zhaoqing Shi');
INSERT INTO `t_s_region` VALUES ('2410', '市辖区', '245', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2411', '源城区', '245', 'Yuancheng Qu');
INSERT INTO `t_s_region` VALUES ('2412', '紫金县', '245', 'Zijin Xian');
INSERT INTO `t_s_region` VALUES ('2413', '龙川县', '245', 'Longchuan Xian');
INSERT INTO `t_s_region` VALUES ('2414', '连平县', '245', 'Lianping Xian');
INSERT INTO `t_s_region` VALUES ('2415', '和平县', '245', 'Heping Xian');
INSERT INTO `t_s_region` VALUES ('2416', '东源县', '245', 'Dongyuan Xian');
INSERT INTO `t_s_region` VALUES ('2417', '市辖区', '246', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2418', '江城区', '246', 'Jiangcheng Qu');
INSERT INTO `t_s_region` VALUES ('2419', '阳西县', '246', 'Yangxi Xian');
INSERT INTO `t_s_region` VALUES ('242', '惠州市', '20', 'Huizhou Shi');
INSERT INTO `t_s_region` VALUES ('2420', '阳东县', '246', 'Yangdong Xian');
INSERT INTO `t_s_region` VALUES ('2421', '阳春市', '246', 'Yangchun Shi');
INSERT INTO `t_s_region` VALUES ('2422', '市辖区', '247', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2423', '清城区', '247', 'Qingcheng Qu');
INSERT INTO `t_s_region` VALUES ('2424', '佛冈县', '247', 'Fogang Xian');
INSERT INTO `t_s_region` VALUES ('2425', '阳山县', '247', 'Yangshan Xian');
INSERT INTO `t_s_region` VALUES ('2426', '连山壮族瑶族自治县', '247', 'Lianshan Zhuangzu Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2427', '连南瑶族自治县', '247', 'Liannanyaozuzizhi Qu');
INSERT INTO `t_s_region` VALUES ('2428', '清新县', '247', 'Qingxin Xian');
INSERT INTO `t_s_region` VALUES ('2429', '英德市', '247', 'Yingde Shi');
INSERT INTO `t_s_region` VALUES ('243', '梅州市', '20', 'Meizhou Shi');
INSERT INTO `t_s_region` VALUES ('2430', '连州市', '247', 'Lianzhou Shi');
INSERT INTO `t_s_region` VALUES ('2431', '市辖区', '250', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2432', '湘桥区', '250', 'Xiangqiao Qu');
INSERT INTO `t_s_region` VALUES ('2433', '潮安县', '250', 'Chao,an Xian');
INSERT INTO `t_s_region` VALUES ('2434', '饶平县', '250', 'Raoping Xian');
INSERT INTO `t_s_region` VALUES ('2435', '市辖区', '251', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2436', '榕城区', '251', 'Rongcheng Qu');
INSERT INTO `t_s_region` VALUES ('2437', '揭东县', '251', 'Jiedong Xian');
INSERT INTO `t_s_region` VALUES ('2438', '揭西县', '251', 'Jiexi Xian');
INSERT INTO `t_s_region` VALUES ('2439', '惠来县', '251', 'Huilai Xian');
INSERT INTO `t_s_region` VALUES ('244', '汕尾市', '20', 'Shanwei Shi');
INSERT INTO `t_s_region` VALUES ('2440', '普宁市', '251', 'Puning Shi');
INSERT INTO `t_s_region` VALUES ('2441', '市辖区', '252', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2442', '云城区', '252', 'Yuncheng Qu');
INSERT INTO `t_s_region` VALUES ('2443', '新兴县', '252', 'Xinxing Xian');
INSERT INTO `t_s_region` VALUES ('2444', '郁南县', '252', 'Yunan Xian');
INSERT INTO `t_s_region` VALUES ('2445', '云安县', '252', 'Yun,an Xian');
INSERT INTO `t_s_region` VALUES ('2446', '罗定市', '252', 'Luoding Shi');
INSERT INTO `t_s_region` VALUES ('2447', '市辖区', '253', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2448', '兴宁区', '253', 'Xingning Qu');
INSERT INTO `t_s_region` VALUES ('2449', '青秀区', '253', 'Qingxiu Qu');
INSERT INTO `t_s_region` VALUES ('245', '河源市', '20', 'Heyuan Shi');
INSERT INTO `t_s_region` VALUES ('2450', '江南区', '253', 'Jiangnan Qu');
INSERT INTO `t_s_region` VALUES ('2451', '西乡塘区', '253', 'Xixiangtang Qu');
INSERT INTO `t_s_region` VALUES ('2452', '良庆区', '253', 'Liangqing Qu');
INSERT INTO `t_s_region` VALUES ('2453', '邕宁区', '253', 'Yongning Qu');
INSERT INTO `t_s_region` VALUES ('2454', '武鸣县', '253', 'Wuming Xian');
INSERT INTO `t_s_region` VALUES ('2455', '隆安县', '253', 'Long,an Xian');
INSERT INTO `t_s_region` VALUES ('2456', '马山县', '253', 'Mashan Xian');
INSERT INTO `t_s_region` VALUES ('2457', '上林县', '253', 'Shanglin Xian');
INSERT INTO `t_s_region` VALUES ('2458', '宾阳县', '253', 'Binyang Xian');
INSERT INTO `t_s_region` VALUES ('2459', '横县', '253', 'Heng Xian');
INSERT INTO `t_s_region` VALUES ('246', '阳江市', '20', 'Yangjiang Shi');
INSERT INTO `t_s_region` VALUES ('2460', '市辖区', '254', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2461', '城中区', '254', 'Chengzhong Qu');
INSERT INTO `t_s_region` VALUES ('2462', '鱼峰区', '254', 'Yufeng Qu');
INSERT INTO `t_s_region` VALUES ('2463', '柳南区', '254', 'Liunan Qu');
INSERT INTO `t_s_region` VALUES ('2464', '柳北区', '254', 'Liubei Qu');
INSERT INTO `t_s_region` VALUES ('2465', '柳江县', '254', 'Liujiang Xian');
INSERT INTO `t_s_region` VALUES ('2466', '柳城县', '254', 'Liucheng Xian');
INSERT INTO `t_s_region` VALUES ('2467', '鹿寨县', '254', 'Luzhai Xian');
INSERT INTO `t_s_region` VALUES ('2468', '融安县', '254', 'Rong,an Xian');
INSERT INTO `t_s_region` VALUES ('2469', '融水苗族自治县', '254', 'Rongshui Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('247', '清远市', '20', 'Qingyuan Shi');
INSERT INTO `t_s_region` VALUES ('2470', '三江侗族自治县', '254', 'Sanjiang Dongzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2471', '市辖区', '255', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2472', '秀峰区', '255', 'Xiufeng Qu');
INSERT INTO `t_s_region` VALUES ('2473', '叠彩区', '255', 'Diecai Qu');
INSERT INTO `t_s_region` VALUES ('2474', '象山区', '255', 'Xiangshan Qu');
INSERT INTO `t_s_region` VALUES ('2475', '七星区', '255', 'Qixing Qu');
INSERT INTO `t_s_region` VALUES ('2476', '雁山区', '255', 'Yanshan Qu');
INSERT INTO `t_s_region` VALUES ('2477', '阳朔县', '255', 'Yangshuo Xian');
INSERT INTO `t_s_region` VALUES ('2478', '临桂县', '255', 'Lingui Xian');
INSERT INTO `t_s_region` VALUES ('2479', '灵川县', '255', 'Lingchuan Xian');
INSERT INTO `t_s_region` VALUES ('248', '东莞市', '20', 'Dongguan Shi');
INSERT INTO `t_s_region` VALUES ('2480', '全州县', '255', 'Quanzhou Xian');
INSERT INTO `t_s_region` VALUES ('2481', '兴安县', '255', 'Xing,an Xian');
INSERT INTO `t_s_region` VALUES ('2482', '永福县', '255', 'Yongfu Xian');
INSERT INTO `t_s_region` VALUES ('2483', '灌阳县', '255', 'Guanyang Xian');
INSERT INTO `t_s_region` VALUES ('2484', '龙胜各族自治县', '255', 'Longsheng Gezu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2485', '资源县', '255', 'Ziyuan Xian');
INSERT INTO `t_s_region` VALUES ('2486', '平乐县', '255', 'Pingle Xian');
INSERT INTO `t_s_region` VALUES ('2487', '荔蒲县', '255', 'Lipu Xian');
INSERT INTO `t_s_region` VALUES ('2488', '恭城瑶族自治县', '255', 'Gongcheng Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2489', '市辖区', '256', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('249', '中山市', '20', 'Zhongshan Shi');
INSERT INTO `t_s_region` VALUES ('2490', '万秀区', '256', 'Wanxiu Qu');
INSERT INTO `t_s_region` VALUES ('2491', '蝶山区', '256', 'Dieshan Qu');
INSERT INTO `t_s_region` VALUES ('2492', '长洲区', '256', 'Changzhou Qu');
INSERT INTO `t_s_region` VALUES ('2493', '苍梧县', '256', 'Cangwu Xian');
INSERT INTO `t_s_region` VALUES ('2494', '藤县', '256', 'Teng Xian');
INSERT INTO `t_s_region` VALUES ('2495', '蒙山县', '256', 'Mengshan Xian');
INSERT INTO `t_s_region` VALUES ('2496', '岑溪市', '256', 'Cenxi Shi');
INSERT INTO `t_s_region` VALUES ('2497', '市辖区', '257', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2498', '海城区', '257', 'Haicheng Qu');
INSERT INTO `t_s_region` VALUES ('2499', '银海区', '257', 'Yinhai Qu');
INSERT INTO `t_s_region` VALUES ('25', '贵州省', '1', 'Guizhou Sheng');
INSERT INTO `t_s_region` VALUES ('250', '潮州市', '20', 'Chaozhou Shi');
INSERT INTO `t_s_region` VALUES ('2500', '铁山港区', '257', 'Tieshangangqu ');
INSERT INTO `t_s_region` VALUES ('2501', '合浦县', '257', 'Hepu Xian');
INSERT INTO `t_s_region` VALUES ('2502', '市辖区', '258', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2503', '港口区', '258', 'Gangkou Qu');
INSERT INTO `t_s_region` VALUES ('2504', '防城区', '258', 'Fangcheng Qu');
INSERT INTO `t_s_region` VALUES ('2505', '上思县', '258', 'Shangsi Xian');
INSERT INTO `t_s_region` VALUES ('2506', '东兴市', '258', 'Dongxing Shi');
INSERT INTO `t_s_region` VALUES ('2507', '市辖区', '259', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2508', '钦南区', '259', 'Qinnan Qu');
INSERT INTO `t_s_region` VALUES ('2509', '钦北区', '259', 'Qinbei Qu');
INSERT INTO `t_s_region` VALUES ('251', '揭阳市', '20', 'Jieyang Shi');
INSERT INTO `t_s_region` VALUES ('2510', '灵山县', '259', 'Lingshan Xian');
INSERT INTO `t_s_region` VALUES ('2511', '浦北县', '259', 'Pubei Xian');
INSERT INTO `t_s_region` VALUES ('2512', '市辖区', '260', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2513', '港北区', '260', 'Gangbei Qu');
INSERT INTO `t_s_region` VALUES ('2514', '港南区', '260', 'Gangnan Qu');
INSERT INTO `t_s_region` VALUES ('2515', '覃塘区', '260', 'Tantang Qu');
INSERT INTO `t_s_region` VALUES ('2516', '平南县', '260', 'Pingnan Xian');
INSERT INTO `t_s_region` VALUES ('2517', '桂平市', '260', 'Guiping Shi');
INSERT INTO `t_s_region` VALUES ('2518', '市辖区', '261', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2519', '玉州区', '261', 'Yuzhou Qu');
INSERT INTO `t_s_region` VALUES ('252', '云浮市', '20', 'Yunfu Shi');
INSERT INTO `t_s_region` VALUES ('2520', '容县', '261', 'Rong Xian');
INSERT INTO `t_s_region` VALUES ('2521', '陆川县', '261', 'Luchuan Xian');
INSERT INTO `t_s_region` VALUES ('2522', '博白县', '261', 'Bobai Xian');
INSERT INTO `t_s_region` VALUES ('2523', '兴业县', '261', 'Xingye Xian');
INSERT INTO `t_s_region` VALUES ('2524', '北流市', '261', 'Beiliu Shi');
INSERT INTO `t_s_region` VALUES ('2525', '市辖区', '262', '1');
INSERT INTO `t_s_region` VALUES ('2526', '右江区', '262', 'Youjiang Qu');
INSERT INTO `t_s_region` VALUES ('2527', '田阳县', '262', 'Tianyang Xian');
INSERT INTO `t_s_region` VALUES ('2528', '田东县', '262', 'Tiandong Xian');
INSERT INTO `t_s_region` VALUES ('2529', '平果县', '262', 'Pingguo Xian');
INSERT INTO `t_s_region` VALUES ('253', '南宁市', '21', 'Nanning Shi');
INSERT INTO `t_s_region` VALUES ('2530', '德保县', '262', 'Debao Xian');
INSERT INTO `t_s_region` VALUES ('2531', '靖西县', '262', 'Jingxi Xian');
INSERT INTO `t_s_region` VALUES ('2532', '那坡县', '262', 'Napo Xian');
INSERT INTO `t_s_region` VALUES ('2533', '凌云县', '262', 'Lingyun Xian');
INSERT INTO `t_s_region` VALUES ('2534', '乐业县', '262', 'Leye Xian');
INSERT INTO `t_s_region` VALUES ('2535', '田林县', '262', 'Tianlin Xian');
INSERT INTO `t_s_region` VALUES ('2536', '西林县', '262', 'Xilin Xian');
INSERT INTO `t_s_region` VALUES ('2537', '隆林各族自治县', '262', 'Longlin Gezu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2538', '市辖区', '263', '1');
INSERT INTO `t_s_region` VALUES ('2539', '八步区', '263', 'Babu Qu');
INSERT INTO `t_s_region` VALUES ('254', '柳州市', '21', 'Liuzhou Shi');
INSERT INTO `t_s_region` VALUES ('2540', '昭平县', '263', 'Zhaoping Xian');
INSERT INTO `t_s_region` VALUES ('2541', '钟山县', '263', 'Zhongshan Xian');
INSERT INTO `t_s_region` VALUES ('2542', '富川瑶族自治县', '263', 'Fuchuan Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2543', '市辖区', '264', '1');
INSERT INTO `t_s_region` VALUES ('2544', '金城江区', '264', 'Jinchengjiang Qu');
INSERT INTO `t_s_region` VALUES ('2545', '南丹县', '264', 'Nandan Xian');
INSERT INTO `t_s_region` VALUES ('2546', '天峨县', '264', 'Tian,e Xian');
INSERT INTO `t_s_region` VALUES ('2547', '凤山县', '264', 'Fengshan Xian');
INSERT INTO `t_s_region` VALUES ('2548', '东兰县', '264', 'Donglan Xian');
INSERT INTO `t_s_region` VALUES ('2549', '罗城仫佬族自治县', '264', 'Luocheng Mulaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('255', '桂林市', '21', 'Guilin Shi');
INSERT INTO `t_s_region` VALUES ('2550', '环江毛南族自治县', '264', 'Huanjiang Maonanzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2551', '巴马瑶族自治县', '264', 'Bama Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2552', '都安瑶族自治县', '264', 'Du,an Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2553', '大化瑶族自治县', '264', 'Dahua Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2554', '宜州市', '264', 'Yizhou Shi');
INSERT INTO `t_s_region` VALUES ('2555', '市辖区', '265', '1');
INSERT INTO `t_s_region` VALUES ('2556', '兴宾区', '265', 'Xingbin Qu');
INSERT INTO `t_s_region` VALUES ('2557', '忻城县', '265', 'Xincheng Xian');
INSERT INTO `t_s_region` VALUES ('2558', '象州县', '265', 'Xiangzhou Xian');
INSERT INTO `t_s_region` VALUES ('2559', '武宣县', '265', 'Wuxuan Xian');
INSERT INTO `t_s_region` VALUES ('256', '梧州市', '21', 'Wuzhou Shi');
INSERT INTO `t_s_region` VALUES ('2560', '金秀瑶族自治县', '265', 'Jinxiu Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2561', '合山市', '265', 'Heshan Shi');
INSERT INTO `t_s_region` VALUES ('2562', '市辖区', '266', '1');
INSERT INTO `t_s_region` VALUES ('2563', '江洲区', '266', 'Jiangzhou Qu');
INSERT INTO `t_s_region` VALUES ('2564', '扶绥县', '266', 'Fusui Xian');
INSERT INTO `t_s_region` VALUES ('2565', '宁明县', '266', 'Ningming Xian');
INSERT INTO `t_s_region` VALUES ('2566', '龙州县', '266', 'Longzhou Xian');
INSERT INTO `t_s_region` VALUES ('2567', '大新县', '266', 'Daxin Xian');
INSERT INTO `t_s_region` VALUES ('2568', '天等县', '266', 'Tiandeng Xian');
INSERT INTO `t_s_region` VALUES ('2569', '凭祥市', '266', 'Pingxiang Shi');
INSERT INTO `t_s_region` VALUES ('257', '北海市', '21', 'Beihai Shi');
INSERT INTO `t_s_region` VALUES ('2570', '市辖区', '267', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2571', '秀英区', '267', 'Xiuying Qu');
INSERT INTO `t_s_region` VALUES ('2572', '龙华区', '267', 'LongHua Qu');
INSERT INTO `t_s_region` VALUES ('2573', '琼山区', '267', 'QiongShan Qu');
INSERT INTO `t_s_region` VALUES ('2574', '美兰区', '267', 'MeiLan Qu');
INSERT INTO `t_s_region` VALUES ('2575', '市辖区', '268', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2576', '五指山市', '269', 'Wuzhishan Qu');
INSERT INTO `t_s_region` VALUES ('2577', '琼海市', '269', 'Qionghai Shi');
INSERT INTO `t_s_region` VALUES ('2578', '儋州市', '269', 'Danzhou Shi');
INSERT INTO `t_s_region` VALUES ('2579', '文昌市', '269', 'Wenchang Shi');
INSERT INTO `t_s_region` VALUES ('258', '防城港市', '21', 'Fangchenggang Shi');
INSERT INTO `t_s_region` VALUES ('2580', '万宁市', '269', 'Wanning Shi');
INSERT INTO `t_s_region` VALUES ('2581', '东方市', '269', 'Dongfang Shi');
INSERT INTO `t_s_region` VALUES ('2582', '定安县', '269', 'Ding,an Xian');
INSERT INTO `t_s_region` VALUES ('2583', '屯昌县', '269', 'Tunchang Xian');
INSERT INTO `t_s_region` VALUES ('2584', '澄迈县', '269', 'Chengmai Xian');
INSERT INTO `t_s_region` VALUES ('2585', '临高县', '269', 'Lingao Xian');
INSERT INTO `t_s_region` VALUES ('2586', '白沙黎族自治县', '269', 'Baisha Lizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2587', '昌江黎族自治县', '269', 'Changjiang Lizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2588', '乐东黎族自治县', '269', 'Ledong Lizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2589', '陵水黎族自治县', '269', 'Lingshui Lizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('259', '钦州市', '21', 'Qinzhou Shi');
INSERT INTO `t_s_region` VALUES ('2590', '保亭黎族苗族自治县', '269', 'Baoting Lizu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2591', '琼中黎族苗族自治县', '269', 'Qiongzhong Lizu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2592', '西沙群岛', '269', 'Xisha Qundao');
INSERT INTO `t_s_region` VALUES ('2593', '南沙群岛', '269', 'Nansha Qundao');
INSERT INTO `t_s_region` VALUES ('2594', '中沙群岛的岛礁及其海域', '269', 'Zhongsha Qundao de Daojiao Jiqi Haiyu');
INSERT INTO `t_s_region` VALUES ('2595', '万州区', '270', 'Wanzhou Qu');
INSERT INTO `t_s_region` VALUES ('2596', '涪陵区', '270', 'Fuling Qu');
INSERT INTO `t_s_region` VALUES ('2597', '渝中区', '270', 'Yuzhong Qu');
INSERT INTO `t_s_region` VALUES ('2598', '大渡口区', '270', 'Dadukou Qu');
INSERT INTO `t_s_region` VALUES ('2599', '江北区', '270', 'Jiangbei Qu');
INSERT INTO `t_s_region` VALUES ('26', '云南省', '1', 'Yunnan Sheng');
INSERT INTO `t_s_region` VALUES ('260', '贵港市', '21', 'Guigang Shi');
INSERT INTO `t_s_region` VALUES ('2600', '沙坪坝区', '270', 'Shapingba Qu');
INSERT INTO `t_s_region` VALUES ('2601', '九龙坡区', '270', 'Jiulongpo Qu');
INSERT INTO `t_s_region` VALUES ('2602', '南岸区', '270', 'Nan,an Qu');
INSERT INTO `t_s_region` VALUES ('2603', '北碚区', '270', 'Beibei Qu');
INSERT INTO `t_s_region` VALUES ('2604', '万盛区', '270', 'Wansheng Qu');
INSERT INTO `t_s_region` VALUES ('2605', '双桥区', '270', 'Shuangqiao Qu');
INSERT INTO `t_s_region` VALUES ('2606', '渝北区', '270', 'Yubei Qu');
INSERT INTO `t_s_region` VALUES ('2607', '巴南区', '270', 'Banan Qu');
INSERT INTO `t_s_region` VALUES ('2608', '黔江区', '270', 'Qianjiang Qu');
INSERT INTO `t_s_region` VALUES ('2609', '长寿区', '270', 'Changshou Qu');
INSERT INTO `t_s_region` VALUES ('261', '玉林市', '21', 'Yulin Shi');
INSERT INTO `t_s_region` VALUES ('2610', '綦江县', '271', 'Qijiang Xian');
INSERT INTO `t_s_region` VALUES ('2611', '潼南县', '271', 'Tongnan Xian');
INSERT INTO `t_s_region` VALUES ('2612', '铜梁县', '271', 'Tongliang Xian');
INSERT INTO `t_s_region` VALUES ('2613', '大足县', '271', 'Dazu Xian');
INSERT INTO `t_s_region` VALUES ('2614', '荣昌县', '271', 'Rongchang Xian');
INSERT INTO `t_s_region` VALUES ('2615', '璧山县', '271', 'Bishan Xian');
INSERT INTO `t_s_region` VALUES ('2616', '梁平县', '271', 'Liangping Xian');
INSERT INTO `t_s_region` VALUES ('2617', '城口县', '271', 'Chengkou Xian');
INSERT INTO `t_s_region` VALUES ('2618', '丰都县', '271', 'Fengdu Xian');
INSERT INTO `t_s_region` VALUES ('2619', '垫江县', '271', 'Dianjiang Xian');
INSERT INTO `t_s_region` VALUES ('262', '百色市', '21', 'Baise Shi');
INSERT INTO `t_s_region` VALUES ('2620', '武隆县', '271', 'Wulong Xian');
INSERT INTO `t_s_region` VALUES ('2621', '忠县', '271', 'Zhong Xian');
INSERT INTO `t_s_region` VALUES ('2622', '开县', '271', 'Kai Xian');
INSERT INTO `t_s_region` VALUES ('2623', '云阳县', '271', 'Yunyang Xian');
INSERT INTO `t_s_region` VALUES ('2624', '奉节县', '271', 'Fengjie Xian');
INSERT INTO `t_s_region` VALUES ('2625', '巫山县', '271', 'Wushan Xian');
INSERT INTO `t_s_region` VALUES ('2626', '巫溪县', '271', 'Wuxi Xian');
INSERT INTO `t_s_region` VALUES ('2627', '石柱土家族自治县', '271', 'Shizhu Tujiazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2628', '秀山土家族苗族自治县', '271', 'Xiushan Tujiazu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2629', '酉阳土家族苗族自治县', '271', 'Youyang Tujiazu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('263', '贺州市', '21', 'Hezhou Shi');
INSERT INTO `t_s_region` VALUES ('2630', '彭水苗族土家族自治县', '271', 'Pengshui Miaozu Tujiazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2635', '市辖区', '273', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2636', '锦江区', '273', 'Jinjiang Qu');
INSERT INTO `t_s_region` VALUES ('2637', '青羊区', '273', 'Qingyang Qu');
INSERT INTO `t_s_region` VALUES ('2638', '金牛区', '273', 'Jinniu Qu');
INSERT INTO `t_s_region` VALUES ('2639', '武侯区', '273', 'Wuhou Qu');
INSERT INTO `t_s_region` VALUES ('264', '河池市', '21', 'Hechi Shi');
INSERT INTO `t_s_region` VALUES ('2640', '成华区', '273', 'Chenghua Qu');
INSERT INTO `t_s_region` VALUES ('2641', '龙泉驿区', '273', 'Longquanyi Qu');
INSERT INTO `t_s_region` VALUES ('2642', '青白江区', '273', 'Qingbaijiang Qu');
INSERT INTO `t_s_region` VALUES ('2643', '新都区', '273', 'Xindu Qu');
INSERT INTO `t_s_region` VALUES ('2644', '温江区', '273', 'Wenjiang Qu');
INSERT INTO `t_s_region` VALUES ('2645', '金堂县', '273', 'Jintang Xian');
INSERT INTO `t_s_region` VALUES ('2646', '双流县', '273', 'Shuangliu Xian');
INSERT INTO `t_s_region` VALUES ('2647', '郫县', '273', 'Pi Xian');
INSERT INTO `t_s_region` VALUES ('2648', '大邑县', '273', 'Dayi Xian');
INSERT INTO `t_s_region` VALUES ('2649', '蒲江县', '273', 'Pujiang Xian');
INSERT INTO `t_s_region` VALUES ('265', '来宾市', '21', 'Laibin Shi');
INSERT INTO `t_s_region` VALUES ('2650', '新津县', '273', 'Xinjin Xian');
INSERT INTO `t_s_region` VALUES ('2651', '都江堰市', '273', 'Dujiangyan Shi');
INSERT INTO `t_s_region` VALUES ('2652', '彭州市', '273', 'Pengzhou Shi');
INSERT INTO `t_s_region` VALUES ('2653', '邛崃市', '273', 'Qionglai Shi');
INSERT INTO `t_s_region` VALUES ('2654', '崇州市', '273', 'Chongzhou Shi');
INSERT INTO `t_s_region` VALUES ('2655', '市辖区', '274', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2656', '自流井区', '274', 'Ziliujing Qu');
INSERT INTO `t_s_region` VALUES ('2657', '贡井区', '274', 'Gongjing Qu');
INSERT INTO `t_s_region` VALUES ('2658', '大安区', '274', 'Da,an Qu');
INSERT INTO `t_s_region` VALUES ('2659', '沿滩区', '274', 'Yantan Qu');
INSERT INTO `t_s_region` VALUES ('266', '崇左市', '21', 'Chongzuo Shi');
INSERT INTO `t_s_region` VALUES ('2660', '荣县', '274', 'Rong Xian');
INSERT INTO `t_s_region` VALUES ('2661', '富顺县', '274', 'Fushun Xian');
INSERT INTO `t_s_region` VALUES ('2662', '市辖区', '275', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2663', '东区', '275', 'Dong Qu');
INSERT INTO `t_s_region` VALUES ('2664', '西区', '275', 'Xi Qu');
INSERT INTO `t_s_region` VALUES ('2665', '仁和区', '275', 'Renhe Qu');
INSERT INTO `t_s_region` VALUES ('2666', '米易县', '275', 'Miyi Xian');
INSERT INTO `t_s_region` VALUES ('2667', '盐边县', '275', 'Yanbian Xian');
INSERT INTO `t_s_region` VALUES ('2668', '市辖区', '276', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2669', '江阳区', '276', 'Jiangyang Qu');
INSERT INTO `t_s_region` VALUES ('267', '海口市', '22', 'Haikou Shi');
INSERT INTO `t_s_region` VALUES ('2670', '纳溪区', '276', 'Naxi Qu');
INSERT INTO `t_s_region` VALUES ('2671', '龙马潭区', '276', 'Longmatan Qu');
INSERT INTO `t_s_region` VALUES ('2672', '泸县', '276', 'Lu Xian');
INSERT INTO `t_s_region` VALUES ('2673', '合江县', '276', 'Hejiang Xian');
INSERT INTO `t_s_region` VALUES ('2674', '叙永县', '276', 'Xuyong Xian');
INSERT INTO `t_s_region` VALUES ('2675', '古蔺县', '276', 'Gulin Xian');
INSERT INTO `t_s_region` VALUES ('2676', '市辖区', '277', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2677', '旌阳区', '277', 'Jingyang Qu');
INSERT INTO `t_s_region` VALUES ('2678', '中江县', '277', 'Zhongjiang Xian');
INSERT INTO `t_s_region` VALUES ('2679', '罗江县', '277', 'Luojiang Xian');
INSERT INTO `t_s_region` VALUES ('268', '三亚市', '22', 'Sanya Shi');
INSERT INTO `t_s_region` VALUES ('2680', '广汉市', '277', 'Guanghan Shi');
INSERT INTO `t_s_region` VALUES ('2681', '什邡市', '277', 'Shifang Shi');
INSERT INTO `t_s_region` VALUES ('2682', '绵竹市', '277', 'Jinzhou Shi');
INSERT INTO `t_s_region` VALUES ('2683', '市辖区', '278', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2684', '涪城区', '278', 'Fucheng Qu');
INSERT INTO `t_s_region` VALUES ('2685', '游仙区', '278', 'Youxian Qu');
INSERT INTO `t_s_region` VALUES ('2686', '三台县', '278', 'Santai Xian');
INSERT INTO `t_s_region` VALUES ('2687', '盐亭县', '278', 'Yanting Xian');
INSERT INTO `t_s_region` VALUES ('2688', '安县', '278', 'An Xian');
INSERT INTO `t_s_region` VALUES ('2689', '梓潼县', '278', 'Zitong Xian');
INSERT INTO `t_s_region` VALUES ('269', '省直辖县级行政区划', '22', 'shengzhixiaxianjixingzhengquhua');
INSERT INTO `t_s_region` VALUES ('2690', '北川羌族自治县', '278', 'Beichuanqiangzuzizhi Qu');
INSERT INTO `t_s_region` VALUES ('2691', '平武县', '278', 'Pingwu Xian');
INSERT INTO `t_s_region` VALUES ('2692', '江油市', '278', 'Jiangyou Shi');
INSERT INTO `t_s_region` VALUES ('2693', '市辖区', '279', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2694', '市中区', '279', 'Shizhong Qu');
INSERT INTO `t_s_region` VALUES ('2695', '元坝区', '279', 'Yuanba Qu');
INSERT INTO `t_s_region` VALUES ('2696', '朝天区', '279', 'Chaotian Qu');
INSERT INTO `t_s_region` VALUES ('2697', '旺苍县', '279', 'Wangcang Xian');
INSERT INTO `t_s_region` VALUES ('2698', '青川县', '279', 'Qingchuan Xian');
INSERT INTO `t_s_region` VALUES ('2699', '剑阁县', '279', 'Jiange Xian');
INSERT INTO `t_s_region` VALUES ('27', '西藏自治区', '1', 'Xizang Zizhiqu');
INSERT INTO `t_s_region` VALUES ('270', '市辖区', '23', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2700', '苍溪县', '279', 'Cangxi Xian');
INSERT INTO `t_s_region` VALUES ('2701', '市辖区', '280', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2702', '船山区', '280', 'Chuanshan Qu');
INSERT INTO `t_s_region` VALUES ('2703', '安居区', '280', 'Anju Qu');
INSERT INTO `t_s_region` VALUES ('2704', '蓬溪县', '280', 'Pengxi Xian');
INSERT INTO `t_s_region` VALUES ('2705', '射洪县', '280', 'Shehong Xian');
INSERT INTO `t_s_region` VALUES ('2706', '大英县', '280', 'Daying Xian');
INSERT INTO `t_s_region` VALUES ('2707', '市辖区', '281', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2708', '市中区', '281', 'Shizhong Qu');
INSERT INTO `t_s_region` VALUES ('2709', '东兴区', '281', 'Dongxing Qu');
INSERT INTO `t_s_region` VALUES ('271', '县', '23', 'Xian');
INSERT INTO `t_s_region` VALUES ('2710', '威远县', '281', 'Weiyuan Xian');
INSERT INTO `t_s_region` VALUES ('2711', '资中县', '281', 'Zizhong Xian');
INSERT INTO `t_s_region` VALUES ('2712', '隆昌县', '281', 'Longchang Xian');
INSERT INTO `t_s_region` VALUES ('2713', '市辖区', '282', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2714', '市中区', '282', 'Shizhong Qu');
INSERT INTO `t_s_region` VALUES ('2715', '沙湾区', '282', 'Shawan Qu');
INSERT INTO `t_s_region` VALUES ('2716', '五通桥区', '282', 'Wutongqiao Qu');
INSERT INTO `t_s_region` VALUES ('2717', '金口河区', '282', 'Jinkouhe Qu');
INSERT INTO `t_s_region` VALUES ('2718', '犍为县', '282', 'Qianwei Xian');
INSERT INTO `t_s_region` VALUES ('2719', '井研县', '282', 'Jingyan Xian');
INSERT INTO `t_s_region` VALUES ('2720', '夹江县', '282', 'Jiajiang Xian');
INSERT INTO `t_s_region` VALUES ('2721', '沐川县', '282', 'Muchuan Xian');
INSERT INTO `t_s_region` VALUES ('2722', '峨边彝族自治县', '282', 'Ebian Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2723', '马边彝族自治县', '282', 'Mabian Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2724', '峨眉山市', '282', 'Emeishan Shi');
INSERT INTO `t_s_region` VALUES ('2725', '市辖区', '283', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2726', '顺庆区', '283', 'Shunqing Xian');
INSERT INTO `t_s_region` VALUES ('2727', '高坪区', '283', 'Gaoping Qu');
INSERT INTO `t_s_region` VALUES ('2728', '嘉陵区', '283', 'Jialing Qu');
INSERT INTO `t_s_region` VALUES ('2729', '南部县', '283', 'Nanbu Xian');
INSERT INTO `t_s_region` VALUES ('273', '成都市', '24', 'Chengdu Shi');
INSERT INTO `t_s_region` VALUES ('2730', '营山县', '283', 'Yingshan Xian');
INSERT INTO `t_s_region` VALUES ('2731', '蓬安县', '283', 'Peng,an Xian');
INSERT INTO `t_s_region` VALUES ('2732', '仪陇县', '283', 'Yilong Xian');
INSERT INTO `t_s_region` VALUES ('2733', '西充县', '283', 'Xichong Xian');
INSERT INTO `t_s_region` VALUES ('2734', '阆中市', '283', 'Langzhong Shi');
INSERT INTO `t_s_region` VALUES ('2735', '市辖区', '284', '1');
INSERT INTO `t_s_region` VALUES ('2736', '东坡区', '284', 'Dongpo Qu');
INSERT INTO `t_s_region` VALUES ('2737', '仁寿县', '284', 'Renshou Xian');
INSERT INTO `t_s_region` VALUES ('2738', '彭山县', '284', 'Pengshan Xian');
INSERT INTO `t_s_region` VALUES ('2739', '洪雅县', '284', 'Hongya Xian');
INSERT INTO `t_s_region` VALUES ('274', '自贡市', '24', 'Zigong Shi');
INSERT INTO `t_s_region` VALUES ('2740', '丹棱县', '284', 'Danling Xian');
INSERT INTO `t_s_region` VALUES ('2741', '青神县', '284', 'Qingshen Xian');
INSERT INTO `t_s_region` VALUES ('2742', '市辖区', '285', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2743', '翠屏区', '285', 'Cuiping Qu');
INSERT INTO `t_s_region` VALUES ('2744', '宜宾县', '285', 'Yibin Xian');
INSERT INTO `t_s_region` VALUES ('2745', '南溪县', '285', 'Nanxi Xian');
INSERT INTO `t_s_region` VALUES ('2746', '江安县', '285', 'Jiang,an Xian');
INSERT INTO `t_s_region` VALUES ('2747', '长宁县', '285', 'Changning Xian');
INSERT INTO `t_s_region` VALUES ('2748', '高县', '285', 'Gao Xian');
INSERT INTO `t_s_region` VALUES ('2749', '珙县', '285', 'Gong Xian');
INSERT INTO `t_s_region` VALUES ('275', '攀枝花市', '24', 'Panzhihua Shi');
INSERT INTO `t_s_region` VALUES ('2750', '筠连县', '285', 'Junlian Xian');
INSERT INTO `t_s_region` VALUES ('2751', '兴文县', '285', 'Xingwen Xian');
INSERT INTO `t_s_region` VALUES ('2752', '屏山县', '285', 'Pingshan Xian');
INSERT INTO `t_s_region` VALUES ('2753', '市辖区', '286', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2754', '广安区', '286', 'Guang,an Qu');
INSERT INTO `t_s_region` VALUES ('2755', '岳池县', '286', 'Yuechi Xian');
INSERT INTO `t_s_region` VALUES ('2756', '武胜县', '286', 'Wusheng Xian');
INSERT INTO `t_s_region` VALUES ('2757', '邻水县', '286', 'Linshui Xian');
INSERT INTO `t_s_region` VALUES ('2759', '市辖区', '287', '1');
INSERT INTO `t_s_region` VALUES ('276', '泸州市', '24', 'Luzhou Shi');
INSERT INTO `t_s_region` VALUES ('2760', '通川区', '287', 'Tongchuan Qu');
INSERT INTO `t_s_region` VALUES ('2761', '达县', '287', 'Da Xian');
INSERT INTO `t_s_region` VALUES ('2762', '宣汉县', '287', 'Xuanhan Xian');
INSERT INTO `t_s_region` VALUES ('2763', '开江县', '287', 'Kaijiang Xian');
INSERT INTO `t_s_region` VALUES ('2764', '大竹县', '287', 'Dazhu Xian');
INSERT INTO `t_s_region` VALUES ('2765', '渠县', '287', 'Qu Xian');
INSERT INTO `t_s_region` VALUES ('2766', '万源市', '287', 'Wanyuan Shi');
INSERT INTO `t_s_region` VALUES ('2767', '市辖区', '288', '1');
INSERT INTO `t_s_region` VALUES ('2768', '雨城区', '288', 'Yucheg Qu');
INSERT INTO `t_s_region` VALUES ('2769', '名山县', '288', 'Mingshan Xian');
INSERT INTO `t_s_region` VALUES ('277', '德阳市', '24', 'Deyang Shi');
INSERT INTO `t_s_region` VALUES ('2770', '荥经县', '288', 'Yingjing Xian');
INSERT INTO `t_s_region` VALUES ('2771', '汉源县', '288', 'Hanyuan Xian');
INSERT INTO `t_s_region` VALUES ('2772', '石棉县', '288', 'Shimian Xian');
INSERT INTO `t_s_region` VALUES ('2773', '天全县', '288', 'Tianquan Xian');
INSERT INTO `t_s_region` VALUES ('2774', '芦山县', '288', 'Lushan Xian');
INSERT INTO `t_s_region` VALUES ('2775', '宝兴县', '288', 'Baoxing Xian');
INSERT INTO `t_s_region` VALUES ('2776', '市辖区', '289', '1');
INSERT INTO `t_s_region` VALUES ('2777', '巴州区', '289', 'Bazhou Qu');
INSERT INTO `t_s_region` VALUES ('2778', '通江县', '289', 'Tongjiang Xian');
INSERT INTO `t_s_region` VALUES ('2779', '南江县', '289', 'Nanjiang Xian');
INSERT INTO `t_s_region` VALUES ('278', '绵阳市', '24', 'Mianyang Shi');
INSERT INTO `t_s_region` VALUES ('2780', '平昌县', '289', 'Pingchang Xian');
INSERT INTO `t_s_region` VALUES ('2781', '市辖区', '290', '1');
INSERT INTO `t_s_region` VALUES ('2782', '雁江区', '290', 'Yanjiang Qu');
INSERT INTO `t_s_region` VALUES ('2783', '安岳县', '290', 'Anyue Xian');
INSERT INTO `t_s_region` VALUES ('2784', '乐至县', '290', 'Lezhi Xian');
INSERT INTO `t_s_region` VALUES ('2785', '简阳市', '290', 'Jianyang Shi');
INSERT INTO `t_s_region` VALUES ('2786', '汶川县', '291', 'Wenchuan Xian');
INSERT INTO `t_s_region` VALUES ('2787', '理县', '291', 'Li Xian');
INSERT INTO `t_s_region` VALUES ('2788', '茂县', '291', 'Mao Xian');
INSERT INTO `t_s_region` VALUES ('2789', '松潘县', '291', 'Songpan Xian');
INSERT INTO `t_s_region` VALUES ('279', '广元市', '24', 'Guangyuan Shi');
INSERT INTO `t_s_region` VALUES ('2790', '九寨沟县', '291', 'Jiuzhaigou Xian');
INSERT INTO `t_s_region` VALUES ('2791', '金川县', '291', 'Jinchuan Xian');
INSERT INTO `t_s_region` VALUES ('2792', '小金县', '291', 'Xiaojin Xian');
INSERT INTO `t_s_region` VALUES ('2793', '黑水县', '291', 'Heishui Xian');
INSERT INTO `t_s_region` VALUES ('2794', '马尔康县', '291', 'Barkam Xian');
INSERT INTO `t_s_region` VALUES ('2795', '壤塘县', '291', 'Zamtang Xian');
INSERT INTO `t_s_region` VALUES ('2796', '阿坝县', '291', 'Aba(Ngawa) Xian');
INSERT INTO `t_s_region` VALUES ('2797', '若尔盖县', '291', 'ZoigeXian');
INSERT INTO `t_s_region` VALUES ('2798', '红原县', '291', 'Hongyuan Xian');
INSERT INTO `t_s_region` VALUES ('2799', '康定县', '292', 'Kangding(Dardo) Xian');
INSERT INTO `t_s_region` VALUES ('28', '陕西省', '1', 'Shanxi Sheng ');
INSERT INTO `t_s_region` VALUES ('280', '遂宁市', '24', 'Suining Shi');
INSERT INTO `t_s_region` VALUES ('2800', '泸定县', '292', 'Luding(Jagsamka) Xian');
INSERT INTO `t_s_region` VALUES ('2801', '丹巴县', '292', 'Danba(Rongzhag) Xian');
INSERT INTO `t_s_region` VALUES ('2802', '九龙县', '292', 'Jiulong(Gyaisi) Xian');
INSERT INTO `t_s_region` VALUES ('2803', '雅江县', '292', 'Yajiang(Nyagquka) Xian');
INSERT INTO `t_s_region` VALUES ('2804', '道孚县', '292', 'Dawu Xian');
INSERT INTO `t_s_region` VALUES ('2805', '炉霍县', '292', 'Luhuo(Zhaggo) Xian');
INSERT INTO `t_s_region` VALUES ('2806', '甘孜县', '292', 'Garze Xian');
INSERT INTO `t_s_region` VALUES ('2807', '新龙县', '292', 'Xinlong(Nyagrong) Xian');
INSERT INTO `t_s_region` VALUES ('2808', '德格县', '292', 'DegeXian');
INSERT INTO `t_s_region` VALUES ('2809', '白玉县', '292', 'Baiyu Xian');
INSERT INTO `t_s_region` VALUES ('281', '内江市', '24', 'Neijiang Shi');
INSERT INTO `t_s_region` VALUES ('2810', '石渠县', '292', 'Serxv Xian');
INSERT INTO `t_s_region` VALUES ('2811', '色达县', '292', 'Sertar Xian');
INSERT INTO `t_s_region` VALUES ('2812', '理塘县', '292', 'Litang Xian');
INSERT INTO `t_s_region` VALUES ('2813', '巴塘县', '292', 'Batang Xian');
INSERT INTO `t_s_region` VALUES ('2814', '乡城县', '292', 'Xiangcheng(Qagcheng) Xian');
INSERT INTO `t_s_region` VALUES ('2815', '稻城县', '292', 'Daocheng(Dabba) Xian');
INSERT INTO `t_s_region` VALUES ('2816', '得荣县', '292', 'Derong Xian');
INSERT INTO `t_s_region` VALUES ('2817', '西昌市', '293', 'Xichang Shi');
INSERT INTO `t_s_region` VALUES ('2818', '木里藏族自治县', '293', 'Muli Zangzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2819', '盐源县', '293', 'Yanyuan Xian');
INSERT INTO `t_s_region` VALUES ('282', '乐山市', '24', 'Leshan Shi');
INSERT INTO `t_s_region` VALUES ('2820', '德昌县', '293', 'Dechang Xian');
INSERT INTO `t_s_region` VALUES ('2821', '会理县', '293', 'Huili Xian');
INSERT INTO `t_s_region` VALUES ('2822', '会东县', '293', 'Huidong Xian');
INSERT INTO `t_s_region` VALUES ('2823', '宁南县', '293', 'Ningnan Xian');
INSERT INTO `t_s_region` VALUES ('2824', '普格县', '293', 'Puge Xian');
INSERT INTO `t_s_region` VALUES ('2825', '布拖县', '293', 'Butuo Xian');
INSERT INTO `t_s_region` VALUES ('2826', '金阳县', '293', 'Jinyang Xian');
INSERT INTO `t_s_region` VALUES ('2827', '昭觉县', '293', 'Zhaojue Xian');
INSERT INTO `t_s_region` VALUES ('2828', '喜德县', '293', 'Xide Xian');
INSERT INTO `t_s_region` VALUES ('2829', '冕宁县', '293', 'Mianning Xian');
INSERT INTO `t_s_region` VALUES ('283', '南充市', '24', 'Nanchong Shi');
INSERT INTO `t_s_region` VALUES ('2830', '越西县', '293', 'Yuexi Xian');
INSERT INTO `t_s_region` VALUES ('2831', '甘洛县', '293', 'Ganluo Xian');
INSERT INTO `t_s_region` VALUES ('2832', '美姑县', '293', 'Meigu Xian');
INSERT INTO `t_s_region` VALUES ('2833', '雷波县', '293', 'Leibo Xian');
INSERT INTO `t_s_region` VALUES ('2834', '市辖区', '294', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2835', '南明区', '294', 'Nanming Qu');
INSERT INTO `t_s_region` VALUES ('2836', '云岩区', '294', 'Yunyan Qu');
INSERT INTO `t_s_region` VALUES ('2837', '花溪区', '294', 'Huaxi Qu');
INSERT INTO `t_s_region` VALUES ('2838', '乌当区', '294', 'Wudang Qu');
INSERT INTO `t_s_region` VALUES ('2839', '白云区', '294', 'Baiyun Qu');
INSERT INTO `t_s_region` VALUES ('284', '眉山市', '24', 'Meishan Shi');
INSERT INTO `t_s_region` VALUES ('2840', '小河区', '294', 'Xiaohe Qu');
INSERT INTO `t_s_region` VALUES ('2841', '开阳县', '294', 'Kaiyang Xian');
INSERT INTO `t_s_region` VALUES ('2842', '息烽县', '294', 'Xifeng Xian');
INSERT INTO `t_s_region` VALUES ('2843', '修文县', '294', 'Xiuwen Xian');
INSERT INTO `t_s_region` VALUES ('2844', '清镇市', '294', 'Qingzhen Shi');
INSERT INTO `t_s_region` VALUES ('2845', '钟山区', '295', 'Zhongshan Qu');
INSERT INTO `t_s_region` VALUES ('2846', '六枝特区', '295', 'Liuzhi Tequ');
INSERT INTO `t_s_region` VALUES ('2847', '水城县', '295', 'Shuicheng Xian');
INSERT INTO `t_s_region` VALUES ('2848', '盘县', '295', 'Pan Xian');
INSERT INTO `t_s_region` VALUES ('2849', '市辖区', '296', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('285', '宜宾市', '24', 'Yibin Shi');
INSERT INTO `t_s_region` VALUES ('2850', '红花岗区', '296', 'Honghuagang Qu');
INSERT INTO `t_s_region` VALUES ('2851', '汇川区', '296', 'Huichuan Qu');
INSERT INTO `t_s_region` VALUES ('2852', '遵义县', '296', 'Zunyi Xian');
INSERT INTO `t_s_region` VALUES ('2853', '桐梓县', '296', 'Tongzi Xian');
INSERT INTO `t_s_region` VALUES ('2854', '绥阳县', '296', 'Suiyang Xian');
INSERT INTO `t_s_region` VALUES ('2855', '正安县', '296', 'Zhengan Xan');
INSERT INTO `t_s_region` VALUES ('2856', '道真仡佬族苗族自治县', '296', 'Daozhen Gelaozu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2857', '务川仡佬族苗族自治县', '296', 'Wuchuan Gelaozu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2858', '凤冈县', '296', 'Fenggang Xian');
INSERT INTO `t_s_region` VALUES ('2859', '湄潭县', '296', 'Meitan Xian');
INSERT INTO `t_s_region` VALUES ('286', '广安市', '24', 'Guang,an Shi');
INSERT INTO `t_s_region` VALUES ('2860', '余庆县', '296', 'Yuqing Xian');
INSERT INTO `t_s_region` VALUES ('2861', '习水县', '296', 'Xishui Xian');
INSERT INTO `t_s_region` VALUES ('2862', '赤水市', '296', 'Chishui Shi');
INSERT INTO `t_s_region` VALUES ('2863', '仁怀市', '296', 'Renhuai Shi');
INSERT INTO `t_s_region` VALUES ('2864', '市辖区', '297', '1');
INSERT INTO `t_s_region` VALUES ('2865', '西秀区', '297', 'Xixiu Qu');
INSERT INTO `t_s_region` VALUES ('2866', '平坝县', '297', 'Pingba Xian');
INSERT INTO `t_s_region` VALUES ('2867', '普定县', '297', 'Puding Xian');
INSERT INTO `t_s_region` VALUES ('2868', '镇宁布依族苗族自治县', '297', 'Zhenning Buyeizu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2869', '关岭布依族苗族自治县', '297', 'Guanling Buyeizu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('287', '达州市', '24', 'Dazhou Shi');
INSERT INTO `t_s_region` VALUES ('2870', '紫云苗族布依族自治县', '297', 'Ziyun Miaozu Buyeizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2871', '铜仁市', '298', 'Tongren Shi');
INSERT INTO `t_s_region` VALUES ('2872', '江口县', '298', 'Jiangkou Xian');
INSERT INTO `t_s_region` VALUES ('2873', '玉屏侗族自治县', '298', 'Yuping Dongzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2874', '石阡县', '298', 'Shiqian Xian');
INSERT INTO `t_s_region` VALUES ('2875', '思南县', '298', 'Sinan Xian');
INSERT INTO `t_s_region` VALUES ('2876', '印江土家族苗族自治县', '298', 'Yinjiang Tujiazu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2877', '德江县', '298', 'Dejiang Xian');
INSERT INTO `t_s_region` VALUES ('2878', '沿河土家族自治县', '298', 'Yanhe Tujiazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2879', '松桃苗族自治县', '298', 'Songtao Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('288', '雅安市', '24', 'Ya,an Shi');
INSERT INTO `t_s_region` VALUES ('2880', '万山特区', '298', 'Wanshan Tequ');
INSERT INTO `t_s_region` VALUES ('2881', '兴义市', '299', 'Xingyi Shi');
INSERT INTO `t_s_region` VALUES ('2882', '兴仁县', '299', 'Xingren Xian');
INSERT INTO `t_s_region` VALUES ('2883', '普安县', '299', 'Pu,an Xian');
INSERT INTO `t_s_region` VALUES ('2884', '晴隆县', '299', 'Qinglong Xian');
INSERT INTO `t_s_region` VALUES ('2885', '贞丰县', '299', 'Zhenfeng Xian');
INSERT INTO `t_s_region` VALUES ('2886', '望谟县', '299', 'Wangmo Xian');
INSERT INTO `t_s_region` VALUES ('2887', '册亨县', '299', 'Ceheng Xian');
INSERT INTO `t_s_region` VALUES ('2888', '安龙县', '299', 'Anlong Xian');
INSERT INTO `t_s_region` VALUES ('2889', '毕节市', '300', 'Bijie Shi');
INSERT INTO `t_s_region` VALUES ('289', '巴中市', '24', 'Bazhong Shi');
INSERT INTO `t_s_region` VALUES ('2890', '大方县', '300', 'Dafang Xian');
INSERT INTO `t_s_region` VALUES ('2891', '黔西县', '300', 'Qianxi Xian');
INSERT INTO `t_s_region` VALUES ('2892', '金沙县', '300', 'Jinsha Xian');
INSERT INTO `t_s_region` VALUES ('2893', '织金县', '300', 'Zhijin Xian');
INSERT INTO `t_s_region` VALUES ('2894', '纳雍县', '300', 'Nayong Xian');
INSERT INTO `t_s_region` VALUES ('2895', '威宁彝族回族苗族自治县', '300', 'Weining Yizu Huizu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2896', '赫章县', '300', 'Hezhang Xian');
INSERT INTO `t_s_region` VALUES ('2897', '凯里市', '301', 'Kaili Shi');
INSERT INTO `t_s_region` VALUES ('2898', '黄平县', '301', 'Huangping Xian');
INSERT INTO `t_s_region` VALUES ('2899', '施秉县', '301', 'Shibing Xian');
INSERT INTO `t_s_region` VALUES ('29', '甘肃省', '1', 'Gansu Sheng');
INSERT INTO `t_s_region` VALUES ('290', '资阳市', '24', 'Ziyang Shi');
INSERT INTO `t_s_region` VALUES ('2900', '三穗县', '301', 'Sansui Xian');
INSERT INTO `t_s_region` VALUES ('2901', '镇远县', '301', 'Zhenyuan Xian');
INSERT INTO `t_s_region` VALUES ('2902', '岑巩县', '301', 'Cengong Xian');
INSERT INTO `t_s_region` VALUES ('2903', '天柱县', '301', 'Tianzhu Xian');
INSERT INTO `t_s_region` VALUES ('2904', '锦屏县', '301', 'Jinping Xian');
INSERT INTO `t_s_region` VALUES ('2905', '剑河县', '301', 'Jianhe Xian');
INSERT INTO `t_s_region` VALUES ('2906', '台江县', '301', 'Taijiang Xian');
INSERT INTO `t_s_region` VALUES ('2907', '黎平县', '301', 'Liping Xian');
INSERT INTO `t_s_region` VALUES ('2908', '榕江县', '301', 'Rongjiang Xian');
INSERT INTO `t_s_region` VALUES ('2909', '从江县', '301', 'Congjiang Xian');
INSERT INTO `t_s_region` VALUES ('291', '阿坝藏族羌族自治州', '24', 'Aba(Ngawa) Zangzu Qiangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('2910', '雷山县', '301', 'Leishan Xian');
INSERT INTO `t_s_region` VALUES ('2911', '麻江县', '301', 'Majiang Xian');
INSERT INTO `t_s_region` VALUES ('2912', '丹寨县', '301', 'Danzhai Xian');
INSERT INTO `t_s_region` VALUES ('2913', '都匀市', '302', 'Duyun Shi');
INSERT INTO `t_s_region` VALUES ('2914', '福泉市', '302', 'Fuquan Shi');
INSERT INTO `t_s_region` VALUES ('2915', '荔波县', '302', 'Libo Xian');
INSERT INTO `t_s_region` VALUES ('2916', '贵定县', '302', 'Guiding Xian');
INSERT INTO `t_s_region` VALUES ('2917', '瓮安县', '302', 'Weng,an Xian');
INSERT INTO `t_s_region` VALUES ('2918', '独山县', '302', 'Dushan Xian');
INSERT INTO `t_s_region` VALUES ('2919', '平塘县', '302', 'Pingtang Xian');
INSERT INTO `t_s_region` VALUES ('292', '甘孜藏族自治州', '24', 'Garze Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('2920', '罗甸县', '302', 'Luodian Xian');
INSERT INTO `t_s_region` VALUES ('2921', '长顺县', '302', 'Changshun Xian');
INSERT INTO `t_s_region` VALUES ('2922', '龙里县', '302', 'Longli Xian');
INSERT INTO `t_s_region` VALUES ('2923', '惠水县', '302', 'Huishui Xian');
INSERT INTO `t_s_region` VALUES ('2924', '三都水族自治县', '302', 'Sandu Suizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2925', '市辖区', '303', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2926', '五华区', '303', 'Wuhua Qu');
INSERT INTO `t_s_region` VALUES ('2927', '盘龙区', '303', 'Panlong Qu');
INSERT INTO `t_s_region` VALUES ('2928', '官渡区', '303', 'Guandu Qu');
INSERT INTO `t_s_region` VALUES ('2929', '西山区', '303', 'Xishan Qu');
INSERT INTO `t_s_region` VALUES ('293', '凉山彝族自治州', '24', 'Liangshan Yizu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('2930', '东川区', '303', 'Dongchuan Qu');
INSERT INTO `t_s_region` VALUES ('2931', '呈贡县', '303', 'Chenggong Xian');
INSERT INTO `t_s_region` VALUES ('2932', '晋宁县', '303', 'Jinning Xian');
INSERT INTO `t_s_region` VALUES ('2933', '富民县', '303', 'Fumin Xian');
INSERT INTO `t_s_region` VALUES ('2934', '宜良县', '303', 'Yiliang Xian');
INSERT INTO `t_s_region` VALUES ('2935', '石林彝族自治县', '303', 'Shilin Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2936', '嵩明县', '303', 'Songming Xian');
INSERT INTO `t_s_region` VALUES ('2937', '禄劝彝族苗族自治县', '303', 'Luchuan Yizu Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2938', '寻甸回族彝族自治县', '303', 'Xundian Huizu Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2939', '安宁市', '303', 'Anning Shi');
INSERT INTO `t_s_region` VALUES ('294', '贵阳市', '25', 'Guiyang Shi');
INSERT INTO `t_s_region` VALUES ('2940', '市辖区', '304', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2941', '麒麟区', '304', 'Qilin Xian');
INSERT INTO `t_s_region` VALUES ('2942', '马龙县', '304', 'Malong Xian');
INSERT INTO `t_s_region` VALUES ('2943', '陆良县', '304', 'Luliang Xian');
INSERT INTO `t_s_region` VALUES ('2944', '师宗县', '304', 'Shizong Xian');
INSERT INTO `t_s_region` VALUES ('2945', '罗平县', '304', 'Luoping Xian');
INSERT INTO `t_s_region` VALUES ('2946', '富源县', '304', 'Fuyuan Xian');
INSERT INTO `t_s_region` VALUES ('2947', '会泽县', '304', 'Huize Xian');
INSERT INTO `t_s_region` VALUES ('2948', '沾益县', '304', 'Zhanyi Xian');
INSERT INTO `t_s_region` VALUES ('2949', '宣威市', '304', 'Xuanwei Shi');
INSERT INTO `t_s_region` VALUES ('295', '六盘水市', '25', 'Liupanshui Shi');
INSERT INTO `t_s_region` VALUES ('2950', '市辖区', '305', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('2951', '红塔区', '305', 'Hongta Qu');
INSERT INTO `t_s_region` VALUES ('2952', '江川县', '305', 'Jiangchuan Xian');
INSERT INTO `t_s_region` VALUES ('2953', '澄江县', '305', 'Chengjiang Xian');
INSERT INTO `t_s_region` VALUES ('2954', '通海县', '305', 'Tonghai Xian');
INSERT INTO `t_s_region` VALUES ('2955', '华宁县', '305', 'Huaning Xian');
INSERT INTO `t_s_region` VALUES ('2956', '易门县', '305', 'Yimen Xian');
INSERT INTO `t_s_region` VALUES ('2957', '峨山彝族自治县', '305', 'Eshan Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2958', '新平彝族傣族自治县', '305', 'Xinping Yizu Daizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2959', '元江哈尼族彝族傣族自治县', '305', 'Yuanjiang Hanizu Yizu Daizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('296', '遵义市', '25', 'Zunyi Shi');
INSERT INTO `t_s_region` VALUES ('2960', '市辖区', '306', '1');
INSERT INTO `t_s_region` VALUES ('2961', '隆阳区', '306', 'Longyang Qu');
INSERT INTO `t_s_region` VALUES ('2962', '施甸县', '306', 'Shidian Xian');
INSERT INTO `t_s_region` VALUES ('2963', '腾冲县', '306', 'Tengchong Xian');
INSERT INTO `t_s_region` VALUES ('2964', '龙陵县', '306', 'Longling Xian');
INSERT INTO `t_s_region` VALUES ('2965', '昌宁县', '306', 'Changning Xian');
INSERT INTO `t_s_region` VALUES ('2966', '市辖区', '307', '1');
INSERT INTO `t_s_region` VALUES ('2967', '昭阳区', '307', 'Zhaoyang Qu');
INSERT INTO `t_s_region` VALUES ('2968', '鲁甸县', '307', 'Ludian Xian');
INSERT INTO `t_s_region` VALUES ('2969', '巧家县', '307', 'Qiaojia Xian');
INSERT INTO `t_s_region` VALUES ('297', '安顺市', '25', 'Anshun Xian');
INSERT INTO `t_s_region` VALUES ('2970', '盐津县', '307', 'Yanjin Xian');
INSERT INTO `t_s_region` VALUES ('2971', '大关县', '307', 'Daguan Xian');
INSERT INTO `t_s_region` VALUES ('2972', '永善县', '307', 'Yongshan Xian');
INSERT INTO `t_s_region` VALUES ('2973', '绥江县', '307', 'Suijiang Xian');
INSERT INTO `t_s_region` VALUES ('2974', '镇雄县', '307', 'Zhenxiong Xian');
INSERT INTO `t_s_region` VALUES ('2975', '彝良县', '307', 'Yiliang Xian');
INSERT INTO `t_s_region` VALUES ('2976', '威信县', '307', 'Weixin Xian');
INSERT INTO `t_s_region` VALUES ('2977', '水富县', '307', 'Shuifu Xian ');
INSERT INTO `t_s_region` VALUES ('2978', '市辖区', '308', '1');
INSERT INTO `t_s_region` VALUES ('2979', '古城区', '308', 'Gucheng Qu');
INSERT INTO `t_s_region` VALUES ('298', '铜仁地区', '25', 'Tongren Diqu');
INSERT INTO `t_s_region` VALUES ('2980', '玉龙纳西族自治县', '308', 'Yulongnaxizuzizhi Xian');
INSERT INTO `t_s_region` VALUES ('2981', '永胜县', '308', 'Yongsheng Xian');
INSERT INTO `t_s_region` VALUES ('2982', '华坪县', '308', 'Huaping Xian');
INSERT INTO `t_s_region` VALUES ('2983', '宁蒗彝族自治县', '308', 'Ninglang Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2984', '市辖区', '309', '1');
INSERT INTO `t_s_region` VALUES ('2985', '思茅区', '309', 'Simao Qu');
INSERT INTO `t_s_region` VALUES ('2986', '宁洱哈尼族彝族自治县', '309', 'Pu,er Hanizu Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2987', '墨江哈尼族自治县', '309', 'Mojiang Hanizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2988', '景东彝族自治县', '309', 'Jingdong Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2989', '景谷傣族彝族自治县', '309', 'Jinggu Daizu Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('299', '黔西南布依族苗族自治州', '25', 'Qianxinan Buyeizu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('2990', '镇沅彝族哈尼族拉祜族自治县', '309', 'Zhenyuan Yizu Hanizu Lahuzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2991', '江城哈尼族彝族自治县', '309', 'Jiangcheng Hanizu Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2992', '孟连傣族拉祜族佤族自治县', '309', 'Menglian Daizu Lahuzu Vazu Zizixian');
INSERT INTO `t_s_region` VALUES ('2993', '澜沧拉祜族自治县', '309', 'Lancang Lahuzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2994', '西盟佤族自治县', '309', 'Ximeng Vazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('2995', '市辖区', '310', '1');
INSERT INTO `t_s_region` VALUES ('2996', '临翔区', '310', 'Linxiang Qu');
INSERT INTO `t_s_region` VALUES ('2997', '凤庆县', '310', 'Fengqing Xian');
INSERT INTO `t_s_region` VALUES ('2998', '云县', '310', 'Yun Xian');
INSERT INTO `t_s_region` VALUES ('2999', '永德县', '310', 'Yongde Xian');
INSERT INTO `t_s_region` VALUES ('3', '天津市', '1', 'Tianjin Shi');
INSERT INTO `t_s_region` VALUES ('30', '青海省', '1', 'Qinghai Sheng');
INSERT INTO `t_s_region` VALUES ('300', '毕节地区', '25', 'Bijie Diqu');
INSERT INTO `t_s_region` VALUES ('3000', '镇康县', '310', 'Zhenkang Xian');
INSERT INTO `t_s_region` VALUES ('3001', '双江拉祜族佤族布朗族傣族自治县', '310', 'Shuangjiang Lahuzu Vazu Bulangzu Daizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3002', '耿马傣族佤族自治县', '310', 'Gengma Daizu Vazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3003', '沧源佤族自治县', '310', 'Cangyuan Vazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3004', '楚雄市', '311', 'Chuxiong Shi');
INSERT INTO `t_s_region` VALUES ('3005', '双柏县', '311', 'Shuangbai Xian');
INSERT INTO `t_s_region` VALUES ('3006', '牟定县', '311', 'Mouding Xian');
INSERT INTO `t_s_region` VALUES ('3007', '南华县', '311', 'Nanhua Xian');
INSERT INTO `t_s_region` VALUES ('3008', '姚安县', '311', 'Yao,an Xian');
INSERT INTO `t_s_region` VALUES ('3009', '大姚县', '311', 'Dayao Xian');
INSERT INTO `t_s_region` VALUES ('301', '黔东南苗族侗族自治州', '25', 'Qiandongnan Miaozu Dongzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3010', '永仁县', '311', 'Yongren Xian');
INSERT INTO `t_s_region` VALUES ('3011', '元谋县', '311', 'Yuanmou Xian');
INSERT INTO `t_s_region` VALUES ('3012', '武定县', '311', 'Wuding Xian');
INSERT INTO `t_s_region` VALUES ('3013', '禄丰县', '311', 'Lufeng Xian');
INSERT INTO `t_s_region` VALUES ('3014', '个旧市', '312', 'Gejiu Shi');
INSERT INTO `t_s_region` VALUES ('3015', '开远市', '312', 'Kaiyuan Shi');
INSERT INTO `t_s_region` VALUES ('3016', '蒙自市', '312', 'Mengzi Xian');
INSERT INTO `t_s_region` VALUES ('3017', '屏边苗族自治县', '312', 'Pingbian Miaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3018', '建水县', '312', 'Jianshui Xian');
INSERT INTO `t_s_region` VALUES ('3019', '石屏县', '312', 'Shiping Xian');
INSERT INTO `t_s_region` VALUES ('302', '黔南布依族苗族自治州', '25', 'Qiannan Buyeizu Miaozu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3020', '弥勒县', '312', 'Mile Xian');
INSERT INTO `t_s_region` VALUES ('3021', '泸西县', '312', 'Luxi Xian');
INSERT INTO `t_s_region` VALUES ('3022', '元阳县', '312', 'Yuanyang Xian');
INSERT INTO `t_s_region` VALUES ('3023', '红河县', '312', 'Honghe Xian');
INSERT INTO `t_s_region` VALUES ('3024', '金平苗族瑶族傣族自治县', '312', 'Jinping Miaozu Yaozu Daizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3025', '绿春县', '312', 'Lvchun Xian');
INSERT INTO `t_s_region` VALUES ('3026', '河口瑶族自治县', '312', 'Hekou Yaozu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3027', '文山县', '313', 'Wenshan Xian');
INSERT INTO `t_s_region` VALUES ('3028', '砚山县', '313', 'Yanshan Xian');
INSERT INTO `t_s_region` VALUES ('3029', '西畴县', '313', 'Xichou Xian');
INSERT INTO `t_s_region` VALUES ('303', '昆明市', '26', 'Kunming Shi');
INSERT INTO `t_s_region` VALUES ('3030', '麻栗坡县', '313', 'Malipo Xian');
INSERT INTO `t_s_region` VALUES ('3031', '马关县', '313', 'Maguan Xian');
INSERT INTO `t_s_region` VALUES ('3032', '丘北县', '313', 'Qiubei Xian');
INSERT INTO `t_s_region` VALUES ('3033', '广南县', '313', 'Guangnan Xian');
INSERT INTO `t_s_region` VALUES ('3034', '富宁县', '313', 'Funing Xian');
INSERT INTO `t_s_region` VALUES ('3035', '景洪市', '314', 'Jinghong Shi');
INSERT INTO `t_s_region` VALUES ('3036', '勐海县', '314', 'Menghai Xian');
INSERT INTO `t_s_region` VALUES ('3037', '勐腊县', '314', 'Mengla Xian');
INSERT INTO `t_s_region` VALUES ('3038', '大理市', '315', 'Dali Shi');
INSERT INTO `t_s_region` VALUES ('3039', '漾濞彝族自治县', '315', 'Yangbi Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('304', '曲靖市', '26', 'Qujing Shi');
INSERT INTO `t_s_region` VALUES ('3040', '祥云县', '315', 'Xiangyun Xian');
INSERT INTO `t_s_region` VALUES ('3041', '宾川县', '315', 'Binchuan Xian');
INSERT INTO `t_s_region` VALUES ('3042', '弥渡县', '315', 'Midu Xian');
INSERT INTO `t_s_region` VALUES ('3043', '南涧彝族自治县', '315', 'Nanjian Yizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3044', '巍山彝族回族自治县', '315', 'Weishan Yizu Huizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3045', '永平县', '315', 'Yongping Xian');
INSERT INTO `t_s_region` VALUES ('3046', '云龙县', '315', 'Yunlong Xian');
INSERT INTO `t_s_region` VALUES ('3047', '洱源县', '315', 'Eryuan Xian');
INSERT INTO `t_s_region` VALUES ('3048', '剑川县', '315', 'Jianchuan Xian');
INSERT INTO `t_s_region` VALUES ('3049', '鹤庆县', '315', 'Heqing Xian');
INSERT INTO `t_s_region` VALUES ('305', '玉溪市', '26', 'Yuxi Shi');
INSERT INTO `t_s_region` VALUES ('3050', '瑞丽市', '316', 'Ruili Shi');
INSERT INTO `t_s_region` VALUES ('3051', '芒市', '316', 'Luxi Shi');
INSERT INTO `t_s_region` VALUES ('3052', '梁河县', '316', 'Lianghe Xian');
INSERT INTO `t_s_region` VALUES ('3053', '盈江县', '316', 'Yingjiang Xian');
INSERT INTO `t_s_region` VALUES ('3054', '陇川县', '316', 'Longchuan Xian');
INSERT INTO `t_s_region` VALUES ('3055', '泸水县', '317', 'Lushui Xian');
INSERT INTO `t_s_region` VALUES ('3056', '福贡县', '317', 'Fugong Xian');
INSERT INTO `t_s_region` VALUES ('3057', '贡山独龙族怒族自治县', '317', 'Gongshan Dulongzu Nuzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3058', '兰坪白族普米族自治县', '317', 'Lanping Baizu Pumizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3059', '香格里拉县', '318', 'Xianggelila Xian');
INSERT INTO `t_s_region` VALUES ('306', '保山市', '26', 'Baoshan Shi');
INSERT INTO `t_s_region` VALUES ('3060', '德钦县', '318', 'Deqen Xian');
INSERT INTO `t_s_region` VALUES ('3061', '维西傈僳族自治县', '318', 'Weixi Lisuzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3062', '市辖区', '319', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3063', '城关区', '319', 'Chengguang Qu');
INSERT INTO `t_s_region` VALUES ('3064', '林周县', '319', 'Lhvnzhub Xian');
INSERT INTO `t_s_region` VALUES ('3065', '当雄县', '319', 'Damxung Xian');
INSERT INTO `t_s_region` VALUES ('3066', '尼木县', '319', 'Nyemo Xian');
INSERT INTO `t_s_region` VALUES ('3067', '曲水县', '319', 'Qvxv Xian');
INSERT INTO `t_s_region` VALUES ('3068', '堆龙德庆县', '319', 'Doilungdeqen Xian');
INSERT INTO `t_s_region` VALUES ('3069', '达孜县', '319', 'Dagze Xian');
INSERT INTO `t_s_region` VALUES ('307', '昭通市', '26', 'Zhaotong Shi');
INSERT INTO `t_s_region` VALUES ('3070', '墨竹工卡县', '319', 'Maizhokunggar Xian');
INSERT INTO `t_s_region` VALUES ('3071', '昌都县', '320', 'Qamdo Xian');
INSERT INTO `t_s_region` VALUES ('3072', '江达县', '320', 'Jomda Xian');
INSERT INTO `t_s_region` VALUES ('3073', '贡觉县', '320', 'Konjo Xian');
INSERT INTO `t_s_region` VALUES ('3074', '类乌齐县', '320', 'Riwoqe Xian');
INSERT INTO `t_s_region` VALUES ('3075', '丁青县', '320', 'Dengqen Xian');
INSERT INTO `t_s_region` VALUES ('3076', '察雅县', '320', 'Chagyab Xian');
INSERT INTO `t_s_region` VALUES ('3077', '八宿县', '320', 'Baxoi Xian');
INSERT INTO `t_s_region` VALUES ('3078', '左贡县', '320', 'Zogang Xian');
INSERT INTO `t_s_region` VALUES ('3079', '芒康县', '320', 'Mangkam Xian');
INSERT INTO `t_s_region` VALUES ('308', '丽江市', '26', 'Lijiang Shi');
INSERT INTO `t_s_region` VALUES ('3080', '洛隆县', '320', 'Lhorong Xian');
INSERT INTO `t_s_region` VALUES ('3081', '边坝县', '320', 'Banbar Xian');
INSERT INTO `t_s_region` VALUES ('3082', '乃东县', '321', 'Nedong Xian');
INSERT INTO `t_s_region` VALUES ('3083', '扎囊县', '321', 'Chanang(Chatang) Xian');
INSERT INTO `t_s_region` VALUES ('3084', '贡嘎县', '321', 'Gonggar Xian');
INSERT INTO `t_s_region` VALUES ('3085', '桑日县', '321', 'Sangri Xian');
INSERT INTO `t_s_region` VALUES ('3086', '琼结县', '321', 'Qonggyai Xian');
INSERT INTO `t_s_region` VALUES ('3087', '曲松县', '321', 'Qusum Xian');
INSERT INTO `t_s_region` VALUES ('3088', '措美县', '321', 'Comai Xian');
INSERT INTO `t_s_region` VALUES ('3089', '洛扎县', '321', 'Lhozhag Xian');
INSERT INTO `t_s_region` VALUES ('309', '普洱市', '26', 'Simao Shi');
INSERT INTO `t_s_region` VALUES ('3090', '加查县', '321', 'Gyaca Xian');
INSERT INTO `t_s_region` VALUES ('3091', '隆子县', '321', 'Lhvnze Xian');
INSERT INTO `t_s_region` VALUES ('3092', '错那县', '321', 'Cona Xian');
INSERT INTO `t_s_region` VALUES ('3093', '浪卡子县', '321', 'Nagarze Xian');
INSERT INTO `t_s_region` VALUES ('3094', '日喀则市', '322', 'Xigaze Shi');
INSERT INTO `t_s_region` VALUES ('3095', '南木林县', '322', 'Namling Xian');
INSERT INTO `t_s_region` VALUES ('3096', '江孜县', '322', 'Gyangze Xian');
INSERT INTO `t_s_region` VALUES ('3097', '定日县', '322', 'Tingri Xian');
INSERT INTO `t_s_region` VALUES ('3098', '萨迦县', '322', 'Sa,gya Xian');
INSERT INTO `t_s_region` VALUES ('3099', '拉孜县', '322', 'Lhaze Xian');
INSERT INTO `t_s_region` VALUES ('31', '宁夏回族自治区', '1', 'Ningxia Huizu Zizhiqu');
INSERT INTO `t_s_region` VALUES ('310', '临沧市', '26', 'Lincang Shi');
INSERT INTO `t_s_region` VALUES ('3100', '昂仁县', '322', 'Ngamring Xian');
INSERT INTO `t_s_region` VALUES ('3101', '谢通门县', '322', 'Xaitongmoin Xian');
INSERT INTO `t_s_region` VALUES ('3102', '白朗县', '322', 'Bainang Xian');
INSERT INTO `t_s_region` VALUES ('3103', '仁布县', '322', 'Rinbung Xian');
INSERT INTO `t_s_region` VALUES ('3104', '康马县', '322', 'Kangmar Xian');
INSERT INTO `t_s_region` VALUES ('3105', '定结县', '322', 'Dinggye Xian');
INSERT INTO `t_s_region` VALUES ('3106', '仲巴县', '322', 'Zhongba Xian');
INSERT INTO `t_s_region` VALUES ('3107', '亚东县', '322', 'Yadong(Chomo) Xian');
INSERT INTO `t_s_region` VALUES ('3108', '吉隆县', '322', 'Gyirong Xian');
INSERT INTO `t_s_region` VALUES ('3109', '聂拉木县', '322', 'Nyalam Xian');
INSERT INTO `t_s_region` VALUES ('311', '楚雄彝族自治州', '26', 'Chuxiong Yizu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3110', '萨嘎县', '322', 'Saga Xian');
INSERT INTO `t_s_region` VALUES ('3111', '岗巴县', '322', 'Gamba Xian');
INSERT INTO `t_s_region` VALUES ('3112', '那曲县', '323', 'Nagqu Xian');
INSERT INTO `t_s_region` VALUES ('3113', '嘉黎县', '323', 'Lhari Xian');
INSERT INTO `t_s_region` VALUES ('3114', '比如县', '323', 'Biru Xian');
INSERT INTO `t_s_region` VALUES ('3115', '聂荣县', '323', 'Nyainrong Xian');
INSERT INTO `t_s_region` VALUES ('3116', '安多县', '323', 'Amdo Xian');
INSERT INTO `t_s_region` VALUES ('3117', '申扎县', '323', 'Xainza Xian');
INSERT INTO `t_s_region` VALUES ('3118', '索县', '323', 'Sog Xian');
INSERT INTO `t_s_region` VALUES ('3119', '班戈县', '323', 'Bangoin Xian');
INSERT INTO `t_s_region` VALUES ('312', '红河哈尼族彝族自治州', '26', 'Honghe Hanizu Yizu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3120', '巴青县', '323', 'Baqen Xian');
INSERT INTO `t_s_region` VALUES ('3121', '尼玛县', '323', 'Nyima Xian');
INSERT INTO `t_s_region` VALUES ('3122', '普兰县', '324', 'Burang Xian');
INSERT INTO `t_s_region` VALUES ('3123', '札达县', '324', 'Zanda Xian');
INSERT INTO `t_s_region` VALUES ('3124', '噶尔县', '324', 'Gar Xian');
INSERT INTO `t_s_region` VALUES ('3125', '日土县', '324', 'Rutog Xian');
INSERT INTO `t_s_region` VALUES ('3126', '革吉县', '324', 'Ge,gyai Xian');
INSERT INTO `t_s_region` VALUES ('3127', '改则县', '324', 'Gerze Xian');
INSERT INTO `t_s_region` VALUES ('3128', '措勤县', '324', 'Coqen Xian');
INSERT INTO `t_s_region` VALUES ('3129', '林芝县', '325', 'Nyingchi Xian');
INSERT INTO `t_s_region` VALUES ('313', '文山壮族苗族自治州', '26', 'Wenshan Zhuangzu Miaozu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3130', '工布江达县', '325', 'Gongbo,gyamda Xian');
INSERT INTO `t_s_region` VALUES ('3131', '米林县', '325', 'Mainling Xian');
INSERT INTO `t_s_region` VALUES ('3132', '墨脱县', '325', 'Metog Xian');
INSERT INTO `t_s_region` VALUES ('3133', '波密县', '325', 'Bomi(Bowo) Xian');
INSERT INTO `t_s_region` VALUES ('3134', '察隅县', '325', 'Zayv Xian');
INSERT INTO `t_s_region` VALUES ('3135', '朗县', '325', 'Nang Xian');
INSERT INTO `t_s_region` VALUES ('3136', '市辖区', '326', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3137', '新城区', '326', 'Xincheng Qu');
INSERT INTO `t_s_region` VALUES ('3138', '碑林区', '326', 'Beilin Qu');
INSERT INTO `t_s_region` VALUES ('3139', '莲湖区', '326', 'Lianhu Qu');
INSERT INTO `t_s_region` VALUES ('314', '西双版纳傣族自治州', '26', 'Xishuangbanna Daizu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3140', '灞桥区', '326', 'Baqiao Qu');
INSERT INTO `t_s_region` VALUES ('3141', '未央区', '326', 'Weiyang Qu');
INSERT INTO `t_s_region` VALUES ('3142', '雁塔区', '326', 'Yanta Qu');
INSERT INTO `t_s_region` VALUES ('3143', '阎良区', '326', 'Yanliang Qu');
INSERT INTO `t_s_region` VALUES ('3144', '临潼区', '326', 'Lintong Qu');
INSERT INTO `t_s_region` VALUES ('3145', '长安区', '326', 'Changan Qu');
INSERT INTO `t_s_region` VALUES ('3146', '蓝田县', '326', 'Lantian Xian');
INSERT INTO `t_s_region` VALUES ('3147', '周至县', '326', 'Zhouzhi Xian');
INSERT INTO `t_s_region` VALUES ('3148', '户县', '326', 'Hu Xian');
INSERT INTO `t_s_region` VALUES ('3149', '高陵县', '326', 'Gaoling Xian');
INSERT INTO `t_s_region` VALUES ('315', '大理白族自治州', '26', 'Dali Baizu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3150', '市辖区', '327', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3151', '王益区', '327', 'Wangyi Qu');
INSERT INTO `t_s_region` VALUES ('3152', '印台区', '327', 'Yintai Qu');
INSERT INTO `t_s_region` VALUES ('3153', '耀州区', '327', 'Yaozhou Qu');
INSERT INTO `t_s_region` VALUES ('3154', '宜君县', '327', 'Yijun Xian');
INSERT INTO `t_s_region` VALUES ('3155', '市辖区', '328', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3156', '渭滨区', '328', 'Weibin Qu');
INSERT INTO `t_s_region` VALUES ('3157', '金台区', '328', 'Jintai Qu');
INSERT INTO `t_s_region` VALUES ('3158', '陈仓区', '328', 'Chencang Qu');
INSERT INTO `t_s_region` VALUES ('3159', '凤翔县', '328', 'Fengxiang Xian');
INSERT INTO `t_s_region` VALUES ('316', '德宏傣族景颇族自治州', '26', 'Dehong Daizu Jingpozu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3160', '岐山县', '328', 'Qishan Xian');
INSERT INTO `t_s_region` VALUES ('3161', '扶风县', '328', 'Fufeng Xian');
INSERT INTO `t_s_region` VALUES ('3162', '眉县', '328', 'Mei Xian');
INSERT INTO `t_s_region` VALUES ('3163', '陇县', '328', 'Long Xian');
INSERT INTO `t_s_region` VALUES ('3164', '千阳县', '328', 'Qianyang Xian');
INSERT INTO `t_s_region` VALUES ('3165', '麟游县', '328', 'Linyou Xian');
INSERT INTO `t_s_region` VALUES ('3166', '凤县', '328', 'Feng Xian');
INSERT INTO `t_s_region` VALUES ('3167', '太白县', '328', 'Taibai Xian');
INSERT INTO `t_s_region` VALUES ('3168', '市辖区', '329', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3169', '秦都区', '329', 'Qindu Qu');
INSERT INTO `t_s_region` VALUES ('317', '怒江傈僳族自治州', '26', 'Nujiang Lisuzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3170', '杨陵区', '329', 'Yangling Qu');
INSERT INTO `t_s_region` VALUES ('3171', '渭城区', '329', 'Weicheng Qu');
INSERT INTO `t_s_region` VALUES ('3172', '三原县', '329', 'Sanyuan Xian');
INSERT INTO `t_s_region` VALUES ('3173', '泾阳县', '329', 'Jingyang Xian');
INSERT INTO `t_s_region` VALUES ('3174', '乾县', '329', 'Qian Xian');
INSERT INTO `t_s_region` VALUES ('3175', '礼泉县', '329', 'Liquan Xian');
INSERT INTO `t_s_region` VALUES ('3176', '永寿县', '329', 'Yongshou Xian');
INSERT INTO `t_s_region` VALUES ('3177', '彬县', '329', 'Bin Xian');
INSERT INTO `t_s_region` VALUES ('3178', '长武县', '329', 'Changwu Xian');
INSERT INTO `t_s_region` VALUES ('3179', '旬邑县', '329', 'Xunyi Xian');
INSERT INTO `t_s_region` VALUES ('318', '迪庆藏族自治州', '26', 'Deqen Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3180', '淳化县', '329', 'Chunhua Xian');
INSERT INTO `t_s_region` VALUES ('3181', '武功县', '329', 'Wugong Xian');
INSERT INTO `t_s_region` VALUES ('3182', '兴平市', '329', 'Xingping Shi');
INSERT INTO `t_s_region` VALUES ('3183', '市辖区', '330', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3184', '临渭区', '330', 'Linwei Qu');
INSERT INTO `t_s_region` VALUES ('3185', '华县', '330', 'Hua Xian');
INSERT INTO `t_s_region` VALUES ('3186', '潼关县', '330', 'Tongguan Xian');
INSERT INTO `t_s_region` VALUES ('3187', '大荔县', '330', 'Dali Xian');
INSERT INTO `t_s_region` VALUES ('3188', '合阳县', '330', 'Heyang Xian');
INSERT INTO `t_s_region` VALUES ('3189', '澄城县', '330', 'Chengcheng Xian');
INSERT INTO `t_s_region` VALUES ('319', '拉萨市', '27', 'Lhasa Shi');
INSERT INTO `t_s_region` VALUES ('3190', '蒲城县', '330', 'Pucheng Xian');
INSERT INTO `t_s_region` VALUES ('3191', '白水县', '330', 'Baishui Xian');
INSERT INTO `t_s_region` VALUES ('3192', '富平县', '330', 'Fuping Xian');
INSERT INTO `t_s_region` VALUES ('3193', '韩城市', '330', 'Hancheng Shi');
INSERT INTO `t_s_region` VALUES ('3194', '华阴市', '330', 'Huayin Shi');
INSERT INTO `t_s_region` VALUES ('3195', '市辖区', '331', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3196', '宝塔区', '331', 'Baota Qu');
INSERT INTO `t_s_region` VALUES ('3197', '延长县', '331', 'Yanchang Xian');
INSERT INTO `t_s_region` VALUES ('3198', '延川县', '331', 'Yanchuan Xian');
INSERT INTO `t_s_region` VALUES ('3199', '子长县', '331', 'Zichang Xian');
INSERT INTO `t_s_region` VALUES ('32', '新疆维吾尔自治区', '1', 'Xinjiang Uygur Zizhiqu');
INSERT INTO `t_s_region` VALUES ('320', '昌都地区', '27', 'Qamdo Diqu');
INSERT INTO `t_s_region` VALUES ('3200', '安塞县', '331', 'Ansai Xian');
INSERT INTO `t_s_region` VALUES ('3201', '志丹县', '331', 'Zhidan Xian');
INSERT INTO `t_s_region` VALUES ('3202', '吴起县', '331', 'Wuqi Xian');
INSERT INTO `t_s_region` VALUES ('3203', '甘泉县', '331', 'Ganquan Xian');
INSERT INTO `t_s_region` VALUES ('3204', '富县', '331', 'Fu Xian');
INSERT INTO `t_s_region` VALUES ('3205', '洛川县', '331', 'Luochuan Xian');
INSERT INTO `t_s_region` VALUES ('3206', '宜川县', '331', 'Yichuan Xian');
INSERT INTO `t_s_region` VALUES ('3207', '黄龙县', '331', 'Huanglong Xian');
INSERT INTO `t_s_region` VALUES ('3208', '黄陵县', '331', 'Huangling Xian');
INSERT INTO `t_s_region` VALUES ('3209', '市辖区', '332', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('321', '山南地区', '27', 'Shannan Diqu');
INSERT INTO `t_s_region` VALUES ('3210', '汉台区', '332', 'Hantai Qu');
INSERT INTO `t_s_region` VALUES ('3211', '南郑县', '332', 'Nanzheng Xian');
INSERT INTO `t_s_region` VALUES ('3212', '城固县', '332', 'Chenggu Xian');
INSERT INTO `t_s_region` VALUES ('3213', '洋县', '332', 'Yang Xian');
INSERT INTO `t_s_region` VALUES ('3214', '西乡县', '332', 'Xixiang Xian');
INSERT INTO `t_s_region` VALUES ('3215', '勉县', '332', 'Mian Xian');
INSERT INTO `t_s_region` VALUES ('3216', '宁强县', '332', 'Ningqiang Xian');
INSERT INTO `t_s_region` VALUES ('3217', '略阳县', '332', 'Lueyang Xian');
INSERT INTO `t_s_region` VALUES ('3218', '镇巴县', '332', 'Zhenba Xian');
INSERT INTO `t_s_region` VALUES ('3219', '留坝县', '332', 'Liuba Xian');
INSERT INTO `t_s_region` VALUES ('322', '日喀则地区', '27', 'Xigaze Diqu');
INSERT INTO `t_s_region` VALUES ('3220', '佛坪县', '332', 'Foping Xian');
INSERT INTO `t_s_region` VALUES ('3221', '市辖区', '333', '1');
INSERT INTO `t_s_region` VALUES ('3222', '榆阳区', '333', 'Yuyang Qu');
INSERT INTO `t_s_region` VALUES ('3223', '神木县', '333', 'Shenmu Xian');
INSERT INTO `t_s_region` VALUES ('3224', '府谷县', '333', 'Fugu Xian');
INSERT INTO `t_s_region` VALUES ('3225', '横山县', '333', 'Hengshan Xian');
INSERT INTO `t_s_region` VALUES ('3226', '靖边县', '333', 'Jingbian Xian');
INSERT INTO `t_s_region` VALUES ('3227', '定边县', '333', 'Dingbian Xian');
INSERT INTO `t_s_region` VALUES ('3228', '绥德县', '333', 'Suide Xian');
INSERT INTO `t_s_region` VALUES ('3229', '米脂县', '333', 'Mizhi Xian');
INSERT INTO `t_s_region` VALUES ('323', '那曲地区', '27', 'Nagqu Diqu');
INSERT INTO `t_s_region` VALUES ('3230', '佳县', '333', 'Jia Xian');
INSERT INTO `t_s_region` VALUES ('3231', '吴堡县', '333', 'Wubu Xian');
INSERT INTO `t_s_region` VALUES ('3232', '清涧县', '333', 'Qingjian Xian');
INSERT INTO `t_s_region` VALUES ('3233', '子洲县', '333', 'Zizhou Xian');
INSERT INTO `t_s_region` VALUES ('3234', '市辖区', '334', '1');
INSERT INTO `t_s_region` VALUES ('3235', '汉滨区', '334', 'Hanbin Qu');
INSERT INTO `t_s_region` VALUES ('3236', '汉阴县', '334', 'Hanyin Xian');
INSERT INTO `t_s_region` VALUES ('3237', '石泉县', '334', 'Shiquan Xian');
INSERT INTO `t_s_region` VALUES ('3238', '宁陕县', '334', 'Ningshan Xian');
INSERT INTO `t_s_region` VALUES ('3239', '紫阳县', '334', 'Ziyang Xian');
INSERT INTO `t_s_region` VALUES ('324', '阿里地区', '27', 'Ngari Diqu');
INSERT INTO `t_s_region` VALUES ('3240', '岚皋县', '334', 'Langao Xian');
INSERT INTO `t_s_region` VALUES ('3241', '平利县', '334', 'Pingli Xian');
INSERT INTO `t_s_region` VALUES ('3242', '镇坪县', '334', 'Zhenping Xian');
INSERT INTO `t_s_region` VALUES ('3243', '旬阳县', '334', 'Xunyang Xian');
INSERT INTO `t_s_region` VALUES ('3244', '白河县', '334', 'Baihe Xian');
INSERT INTO `t_s_region` VALUES ('3245', '市辖区', '335', '1');
INSERT INTO `t_s_region` VALUES ('3246', '商州区', '335', 'Shangzhou Qu');
INSERT INTO `t_s_region` VALUES ('3247', '洛南县', '335', 'Luonan Xian');
INSERT INTO `t_s_region` VALUES ('3248', '丹凤县', '335', 'Danfeng Xian');
INSERT INTO `t_s_region` VALUES ('3249', '商南县', '335', 'Shangnan Xian');
INSERT INTO `t_s_region` VALUES ('325', '林芝地区', '27', 'Nyingchi Diqu');
INSERT INTO `t_s_region` VALUES ('3250', '山阳县', '335', 'Shanyang Xian');
INSERT INTO `t_s_region` VALUES ('3251', '镇安县', '335', 'Zhen,an Xian');
INSERT INTO `t_s_region` VALUES ('3252', '柞水县', '335', 'Zhashui Xian');
INSERT INTO `t_s_region` VALUES ('3253', '市辖区', '336', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3254', '城关区', '336', 'Chengguan Qu');
INSERT INTO `t_s_region` VALUES ('3255', '七里河区', '336', 'Qilihe Qu');
INSERT INTO `t_s_region` VALUES ('3256', '西固区', '336', 'Xigu Qu');
INSERT INTO `t_s_region` VALUES ('3257', '安宁区', '336', 'Anning Qu');
INSERT INTO `t_s_region` VALUES ('3258', '红古区', '336', 'Honggu Qu');
INSERT INTO `t_s_region` VALUES ('3259', '永登县', '336', 'Yongdeng Xian');
INSERT INTO `t_s_region` VALUES ('326', '西安市', '28', 'Xi,an Shi');
INSERT INTO `t_s_region` VALUES ('3260', '皋兰县', '336', 'Gaolan Xian');
INSERT INTO `t_s_region` VALUES ('3261', '榆中县', '336', 'Yuzhong Xian');
INSERT INTO `t_s_region` VALUES ('3262', '市辖区', '337', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3263', '市辖区', '338', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3264', '金川区', '338', 'Jinchuan Qu');
INSERT INTO `t_s_region` VALUES ('3265', '永昌县', '338', 'Yongchang Xian');
INSERT INTO `t_s_region` VALUES ('3266', '市辖区', '339', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3267', '白银区', '339', 'Baiyin Qu');
INSERT INTO `t_s_region` VALUES ('3268', '平川区', '339', 'Pingchuan Qu');
INSERT INTO `t_s_region` VALUES ('3269', '靖远县', '339', 'Jingyuan Xian');
INSERT INTO `t_s_region` VALUES ('327', '铜川市', '28', 'Tongchuan Shi');
INSERT INTO `t_s_region` VALUES ('3270', '会宁县', '339', 'Huining xian');
INSERT INTO `t_s_region` VALUES ('3271', '景泰县', '339', 'Jingtai Xian');
INSERT INTO `t_s_region` VALUES ('3272', '市辖区', '340', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3274', '秦州区', '340', 'Beidao Qu');
INSERT INTO `t_s_region` VALUES ('3275', '清水县', '340', 'Qingshui Xian');
INSERT INTO `t_s_region` VALUES ('3276', '秦安县', '340', 'Qin,an Xian');
INSERT INTO `t_s_region` VALUES ('3277', '甘谷县', '340', 'Gangu Xian');
INSERT INTO `t_s_region` VALUES ('3278', '武山县', '340', 'Wushan Xian');
INSERT INTO `t_s_region` VALUES ('3279', '张家川回族自治县', '340', 'Zhangjiachuan Huizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('328', '宝鸡市', '28', 'Baoji Shi');
INSERT INTO `t_s_region` VALUES ('3280', '市辖区', '341', '1');
INSERT INTO `t_s_region` VALUES ('3281', '凉州区', '341', 'Liangzhou Qu');
INSERT INTO `t_s_region` VALUES ('3282', '民勤县', '341', 'Minqin Xian');
INSERT INTO `t_s_region` VALUES ('3283', '古浪县', '341', 'Gulang Xian');
INSERT INTO `t_s_region` VALUES ('3284', '天祝藏族自治县', '341', 'Tianzhu Zangzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3285', '市辖区', '342', '1');
INSERT INTO `t_s_region` VALUES ('3286', '甘州区', '342', 'Ganzhou Qu');
INSERT INTO `t_s_region` VALUES ('3287', '肃南裕固族自治县', '342', 'Sunan Yugurzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3288', '民乐县', '342', 'Minle Xian');
INSERT INTO `t_s_region` VALUES ('3289', '临泽县', '342', 'Linze Xian');
INSERT INTO `t_s_region` VALUES ('329', '咸阳市', '28', 'Xianyang Shi');
INSERT INTO `t_s_region` VALUES ('3290', '高台县', '342', 'Gaotai Xian');
INSERT INTO `t_s_region` VALUES ('3291', '山丹县', '342', 'Shandan Xian');
INSERT INTO `t_s_region` VALUES ('3292', '市辖区', '343', '1');
INSERT INTO `t_s_region` VALUES ('3293', '崆峒区', '343', 'Kongdong Qu');
INSERT INTO `t_s_region` VALUES ('3294', '泾川县', '343', 'Jingchuan Xian');
INSERT INTO `t_s_region` VALUES ('3295', '灵台县', '343', 'Lingtai Xian');
INSERT INTO `t_s_region` VALUES ('3296', '崇信县', '343', 'Chongxin Xian');
INSERT INTO `t_s_region` VALUES ('3297', '华亭县', '343', 'Huating Xian');
INSERT INTO `t_s_region` VALUES ('3298', '庄浪县', '343', 'Zhuanglang Xian');
INSERT INTO `t_s_region` VALUES ('3299', '静宁县', '343', 'Jingning Xian');
INSERT INTO `t_s_region` VALUES ('33', '市辖区', '2', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('330', '渭南市', '28', 'Weinan Shi');
INSERT INTO `t_s_region` VALUES ('3300', '市辖区', '344', '1');
INSERT INTO `t_s_region` VALUES ('3301', '肃州区', '344', 'Suzhou Qu');
INSERT INTO `t_s_region` VALUES ('3302', '金塔县', '344', 'Jinta Xian');
INSERT INTO `t_s_region` VALUES ('3304', '肃北蒙古族自治县', '344', 'Subei Monguzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3305', '阿克塞哈萨克族自治县', '344', 'Aksay Kazakzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3306', '玉门市', '344', 'Yumen Shi');
INSERT INTO `t_s_region` VALUES ('3307', '敦煌市', '344', 'Dunhuang Shi');
INSERT INTO `t_s_region` VALUES ('3308', '市辖区', '345', '1');
INSERT INTO `t_s_region` VALUES ('3309', '西峰区', '345', 'Xifeng Qu');
INSERT INTO `t_s_region` VALUES ('331', '延安市', '28', 'Yan,an Shi');
INSERT INTO `t_s_region` VALUES ('3310', '庆城县', '345', 'Qingcheng Xian');
INSERT INTO `t_s_region` VALUES ('3311', '环县', '345', 'Huan Xian');
INSERT INTO `t_s_region` VALUES ('3312', '华池县', '345', 'Huachi Xian');
INSERT INTO `t_s_region` VALUES ('3313', '合水县', '345', 'Heshui Xian');
INSERT INTO `t_s_region` VALUES ('3314', '正宁县', '345', 'Zhengning Xian');
INSERT INTO `t_s_region` VALUES ('3315', '宁县', '345', 'Ning Xian');
INSERT INTO `t_s_region` VALUES ('3316', '镇原县', '345', 'Zhenyuan Xian');
INSERT INTO `t_s_region` VALUES ('3317', '市辖区', '346', '1');
INSERT INTO `t_s_region` VALUES ('3318', '安定区', '346', 'Anding Qu');
INSERT INTO `t_s_region` VALUES ('3319', '通渭县', '346', 'Tongwei Xian');
INSERT INTO `t_s_region` VALUES ('332', '汉中市', '28', 'Hanzhong Shi');
INSERT INTO `t_s_region` VALUES ('3320', '陇西县', '346', 'Longxi Xian');
INSERT INTO `t_s_region` VALUES ('3321', '渭源县', '346', 'Weiyuan Xian');
INSERT INTO `t_s_region` VALUES ('3322', '临洮县', '346', 'Lintao Xian');
INSERT INTO `t_s_region` VALUES ('3323', '漳县', '346', 'Zhang Xian');
INSERT INTO `t_s_region` VALUES ('3324', '岷县', '346', 'Min Xian');
INSERT INTO `t_s_region` VALUES ('3325', '市辖区', '347', '1');
INSERT INTO `t_s_region` VALUES ('3326', '武都区', '347', 'Wudu Qu');
INSERT INTO `t_s_region` VALUES ('3327', '成县', '347', 'Cheng Xian');
INSERT INTO `t_s_region` VALUES ('3328', '文县', '347', 'Wen Xian');
INSERT INTO `t_s_region` VALUES ('3329', '宕昌县', '347', 'Dangchang Xian');
INSERT INTO `t_s_region` VALUES ('333', '榆林市', '28', 'Yulin Shi');
INSERT INTO `t_s_region` VALUES ('3330', '康县', '347', 'Kang Xian');
INSERT INTO `t_s_region` VALUES ('3331', '西和县', '347', 'Xihe Xian');
INSERT INTO `t_s_region` VALUES ('3332', '礼县', '347', 'Li Xian');
INSERT INTO `t_s_region` VALUES ('3333', '徽县', '347', 'Hui Xian');
INSERT INTO `t_s_region` VALUES ('3334', '两当县', '347', 'Liangdang Xian');
INSERT INTO `t_s_region` VALUES ('3335', '临夏市', '348', 'Linxia Shi');
INSERT INTO `t_s_region` VALUES ('3336', '临夏县', '348', 'Linxia Xian');
INSERT INTO `t_s_region` VALUES ('3337', '康乐县', '348', 'Kangle Xian');
INSERT INTO `t_s_region` VALUES ('3338', '永靖县', '348', 'Yongjing Xian');
INSERT INTO `t_s_region` VALUES ('3339', '广河县', '348', 'Guanghe Xian');
INSERT INTO `t_s_region` VALUES ('334', '安康市', '28', 'Ankang Shi');
INSERT INTO `t_s_region` VALUES ('3340', '和政县', '348', 'Hezheng Xian');
INSERT INTO `t_s_region` VALUES ('3341', '东乡族自治县', '348', 'Dongxiangzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3342', '积石山保安族东乡族撒拉族自治县', '348', 'Jishishan Bonanzu Dongxiangzu Salarzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3343', '合作市', '349', 'Hezuo Shi');
INSERT INTO `t_s_region` VALUES ('3344', '临潭县', '349', 'Lintan Xian');
INSERT INTO `t_s_region` VALUES ('3345', '卓尼县', '349', 'Jone');
INSERT INTO `t_s_region` VALUES ('3346', '舟曲县', '349', 'Zhugqu Xian');
INSERT INTO `t_s_region` VALUES ('3347', '迭部县', '349', 'Tewo Xian');
INSERT INTO `t_s_region` VALUES ('3348', '玛曲县', '349', 'Maqu Xian');
INSERT INTO `t_s_region` VALUES ('3349', '碌曲县', '349', 'Luqu Xian');
INSERT INTO `t_s_region` VALUES ('335', '商洛市', '28', 'Shangluo Shi');
INSERT INTO `t_s_region` VALUES ('3350', '夏河县', '349', 'Xiahe Xian');
INSERT INTO `t_s_region` VALUES ('3351', '市辖区', '350', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3352', '城东区', '350', 'Chengdong Qu');
INSERT INTO `t_s_region` VALUES ('3353', '城中区', '350', 'Chengzhong Qu');
INSERT INTO `t_s_region` VALUES ('3354', '城西区', '350', 'Chengxi Qu');
INSERT INTO `t_s_region` VALUES ('3355', '城北区', '350', 'Chengbei Qu');
INSERT INTO `t_s_region` VALUES ('3356', '大通回族土族自治县', '350', 'Datong Huizu Tuzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3357', '湟中县', '350', 'Huangzhong Xian');
INSERT INTO `t_s_region` VALUES ('3358', '湟源县', '350', 'Huangyuan Xian');
INSERT INTO `t_s_region` VALUES ('3359', '平安县', '351', 'Ping,an Xian');
INSERT INTO `t_s_region` VALUES ('336', '兰州市', '29', 'Lanzhou Shi');
INSERT INTO `t_s_region` VALUES ('3360', '民和回族土族自治县', '351', 'Minhe Huizu Tuzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3361', '乐都县', '351', 'Ledu Xian');
INSERT INTO `t_s_region` VALUES ('3362', '互助土族自治县', '351', 'Huzhu Tuzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3363', '化隆回族自治县', '351', 'Hualong Huizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3364', '循化撒拉族自治县', '351', 'Xunhua Salazu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3365', '门源回族自治县', '352', 'Menyuan Huizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3366', '祁连县', '352', 'Qilian Xian');
INSERT INTO `t_s_region` VALUES ('3367', '海晏县', '352', 'Haiyan Xian');
INSERT INTO `t_s_region` VALUES ('3368', '刚察县', '352', 'Gangca Xian');
INSERT INTO `t_s_region` VALUES ('3369', '同仁县', '353', 'Tongren Xian');
INSERT INTO `t_s_region` VALUES ('337', '嘉峪关市', '29', 'Jiayuguan Shi');
INSERT INTO `t_s_region` VALUES ('3370', '尖扎县', '353', 'Jainca Xian');
INSERT INTO `t_s_region` VALUES ('3371', '泽库县', '353', 'Zekog Xian');
INSERT INTO `t_s_region` VALUES ('3372', '河南蒙古族自治县', '353', 'Henan Mongolzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3373', '共和县', '354', 'Gonghe Xian');
INSERT INTO `t_s_region` VALUES ('3374', '同德县', '354', 'Tongde Xian');
INSERT INTO `t_s_region` VALUES ('3375', '贵德县', '354', 'Guide Xian');
INSERT INTO `t_s_region` VALUES ('3376', '兴海县', '354', 'Xinghai Xian');
INSERT INTO `t_s_region` VALUES ('3377', '贵南县', '354', 'Guinan Xian');
INSERT INTO `t_s_region` VALUES ('3378', '玛沁县', '355', 'Maqen Xian');
INSERT INTO `t_s_region` VALUES ('3379', '班玛县', '355', 'Baima Xian');
INSERT INTO `t_s_region` VALUES ('338', '金昌市', '29', 'Jinchang Shi');
INSERT INTO `t_s_region` VALUES ('3380', '甘德县', '355', 'Gade Xian');
INSERT INTO `t_s_region` VALUES ('3381', '达日县', '355', 'Tarlag Xian');
INSERT INTO `t_s_region` VALUES ('3382', '久治县', '355', 'Jigzhi Xian');
INSERT INTO `t_s_region` VALUES ('3383', '玛多县', '355', 'Madoi Xian');
INSERT INTO `t_s_region` VALUES ('3384', '玉树县', '356', 'Yushu Xian');
INSERT INTO `t_s_region` VALUES ('3385', '杂多县', '356', 'Zadoi Xian');
INSERT INTO `t_s_region` VALUES ('3386', '称多县', '356', 'Chindu Xian');
INSERT INTO `t_s_region` VALUES ('3387', '治多县', '356', 'Zhidoi Xian');
INSERT INTO `t_s_region` VALUES ('3388', '囊谦县', '356', 'Nangqen Xian');
INSERT INTO `t_s_region` VALUES ('3389', '曲麻莱县', '356', 'Qumarleb Xian');
INSERT INTO `t_s_region` VALUES ('339', '白银市', '29', 'Baiyin Shi');
INSERT INTO `t_s_region` VALUES ('3390', '格尔木市', '357', 'Golmud Shi');
INSERT INTO `t_s_region` VALUES ('3391', '德令哈市', '357', 'Delhi Shi');
INSERT INTO `t_s_region` VALUES ('3392', '乌兰县', '357', 'Ulan Xian');
INSERT INTO `t_s_region` VALUES ('3393', '都兰县', '357', 'Dulan Xian');
INSERT INTO `t_s_region` VALUES ('3394', '天峻县', '357', 'Tianjun Xian');
INSERT INTO `t_s_region` VALUES ('3395', '市辖区', '358', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3396', '兴庆区', '358', 'Xingqing Qu');
INSERT INTO `t_s_region` VALUES ('3397', '西夏区', '358', 'Xixia Qu');
INSERT INTO `t_s_region` VALUES ('3398', '金凤区', '358', 'Jinfeng Qu');
INSERT INTO `t_s_region` VALUES ('3399', '永宁县', '358', 'Yongning Xian');
INSERT INTO `t_s_region` VALUES ('34', '县', '2', 'Xian');
INSERT INTO `t_s_region` VALUES ('340', '天水市', '29', 'Tianshui Shi');
INSERT INTO `t_s_region` VALUES ('3400', '贺兰县', '358', 'Helan Xian');
INSERT INTO `t_s_region` VALUES ('3401', '灵武市', '358', 'Lingwu Shi');
INSERT INTO `t_s_region` VALUES ('3402', '市辖区', '359', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3403', '大武口区', '359', 'Dawukou Qu');
INSERT INTO `t_s_region` VALUES ('3404', '惠农区', '359', 'Huinong Qu');
INSERT INTO `t_s_region` VALUES ('3405', '平罗县', '359', 'Pingluo Xian');
INSERT INTO `t_s_region` VALUES ('3406', '市辖区', '360', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3407', '利通区', '360', 'Litong Qu');
INSERT INTO `t_s_region` VALUES ('3408', '盐池县', '360', 'Yanchi Xian');
INSERT INTO `t_s_region` VALUES ('3409', '同心县', '360', 'Tongxin Xian');
INSERT INTO `t_s_region` VALUES ('341', '武威市', '29', 'Wuwei Shi');
INSERT INTO `t_s_region` VALUES ('3410', '青铜峡市', '360', 'Qingtongxia Xian');
INSERT INTO `t_s_region` VALUES ('3411', '市辖区', '361', '1');
INSERT INTO `t_s_region` VALUES ('3412', '原州区', '361', 'Yuanzhou Qu');
INSERT INTO `t_s_region` VALUES ('3413', '西吉县', '361', 'Xiji Xian');
INSERT INTO `t_s_region` VALUES ('3414', '隆德县', '361', 'Longde Xian');
INSERT INTO `t_s_region` VALUES ('3415', '泾源县', '361', 'Jingyuan Xian');
INSERT INTO `t_s_region` VALUES ('3416', '彭阳县', '361', 'Pengyang Xian');
INSERT INTO `t_s_region` VALUES ('3417', '市辖区', '362', '1');
INSERT INTO `t_s_region` VALUES ('3418', '沙坡头区', '362', 'Shapotou Qu');
INSERT INTO `t_s_region` VALUES ('3419', '中宁县', '362', 'Zhongning Xian');
INSERT INTO `t_s_region` VALUES ('342', '张掖市', '29', 'Zhangye Shi');
INSERT INTO `t_s_region` VALUES ('3420', '海原县', '362', 'Haiyuan Xian');
INSERT INTO `t_s_region` VALUES ('3421', '市辖区', '363', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3422', '天山区', '363', 'Tianshan Qu');
INSERT INTO `t_s_region` VALUES ('3423', '沙依巴克区', '363', 'Saybag Qu');
INSERT INTO `t_s_region` VALUES ('3424', '新市区', '363', 'Xinshi Qu');
INSERT INTO `t_s_region` VALUES ('3425', '水磨沟区', '363', 'Shuimogou Qu');
INSERT INTO `t_s_region` VALUES ('3426', '头屯河区', '363', 'Toutunhe Qu');
INSERT INTO `t_s_region` VALUES ('3427', '达坂城区', '363', 'Dabancheng Qu');
INSERT INTO `t_s_region` VALUES ('3428', '米东区', '363', 'Midong Qu');
INSERT INTO `t_s_region` VALUES ('3429', '乌鲁木齐县', '363', 'Urumqi Xian');
INSERT INTO `t_s_region` VALUES ('343', '平凉市', '29', 'Pingliang Shi');
INSERT INTO `t_s_region` VALUES ('3430', '市辖区', '364', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('3431', '独山子区', '364', 'Dushanzi Qu');
INSERT INTO `t_s_region` VALUES ('3432', '克拉玛依区', '364', 'Karamay Qu');
INSERT INTO `t_s_region` VALUES ('3433', '白碱滩区', '364', 'Baijiantan Qu');
INSERT INTO `t_s_region` VALUES ('3434', '乌尔禾区', '364', 'Orku Qu');
INSERT INTO `t_s_region` VALUES ('3435', '吐鲁番市', '365', 'Turpan Shi');
INSERT INTO `t_s_region` VALUES ('3436', '鄯善县', '365', 'Shanshan(piqan) Xian');
INSERT INTO `t_s_region` VALUES ('3437', '托克逊县', '365', 'Toksun Xian');
INSERT INTO `t_s_region` VALUES ('3438', '哈密市', '366', 'Hami(kumul) Shi');
INSERT INTO `t_s_region` VALUES ('3439', '巴里坤哈萨克自治县', '366', 'Barkol Kazak Zizhixian');
INSERT INTO `t_s_region` VALUES ('344', '酒泉市', '29', 'Jiuquan Shi');
INSERT INTO `t_s_region` VALUES ('3440', '伊吾县', '366', 'Yiwu(Araturuk) Xian');
INSERT INTO `t_s_region` VALUES ('3441', '昌吉市', '367', 'Changji Shi');
INSERT INTO `t_s_region` VALUES ('3442', '阜康市', '367', 'Fukang Shi');
INSERT INTO `t_s_region` VALUES ('3444', '呼图壁县', '367', 'Hutubi Xian');
INSERT INTO `t_s_region` VALUES ('3445', '玛纳斯县', '367', 'Manas Xian');
INSERT INTO `t_s_region` VALUES ('3446', '奇台县', '367', 'Qitai Xian');
INSERT INTO `t_s_region` VALUES ('3447', '吉木萨尔县', '367', 'Jimsar Xian');
INSERT INTO `t_s_region` VALUES ('3448', '木垒哈萨克自治县', '367', 'Mori Kazak Zizhixian');
INSERT INTO `t_s_region` VALUES ('3449', '博乐市', '368', 'Bole(Bortala) Shi');
INSERT INTO `t_s_region` VALUES ('345', '庆阳市', '29', 'Qingyang Shi');
INSERT INTO `t_s_region` VALUES ('3450', '精河县', '368', 'Jinghe(Jing) Xian');
INSERT INTO `t_s_region` VALUES ('3451', '温泉县', '368', 'Wenquan(Arixang) Xian');
INSERT INTO `t_s_region` VALUES ('3452', '库尔勒市', '369', 'Korla Shi');
INSERT INTO `t_s_region` VALUES ('3453', '轮台县', '369', 'Luntai(Bugur) Xian');
INSERT INTO `t_s_region` VALUES ('3454', '尉犁县', '369', 'Yuli(Lopnur) Xian');
INSERT INTO `t_s_region` VALUES ('3455', '若羌县', '369', 'Ruoqiang(Qakilik) Xian');
INSERT INTO `t_s_region` VALUES ('3456', '且末县', '369', 'Qiemo(Qarqan) Xian');
INSERT INTO `t_s_region` VALUES ('3457', '焉耆回族自治县', '369', 'Yanqi Huizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('3458', '和静县', '369', 'Hejing Xian');
INSERT INTO `t_s_region` VALUES ('3459', '和硕县', '369', 'Hoxud Xian');
INSERT INTO `t_s_region` VALUES ('346', '定西市', '29', 'Dingxi Shi');
INSERT INTO `t_s_region` VALUES ('3460', '博湖县', '369', 'Bohu(Bagrax) Xian');
INSERT INTO `t_s_region` VALUES ('3461', '阿克苏市', '370', 'Aksu Shi');
INSERT INTO `t_s_region` VALUES ('3462', '温宿县', '370', 'Wensu Xian');
INSERT INTO `t_s_region` VALUES ('3463', '库车县', '370', 'Kuqa Xian');
INSERT INTO `t_s_region` VALUES ('3464', '沙雅县', '370', 'Xayar Xian');
INSERT INTO `t_s_region` VALUES ('3465', '新和县', '370', 'Xinhe(Toksu) Xian');
INSERT INTO `t_s_region` VALUES ('3466', '拜城县', '370', 'Baicheng(Bay) Xian');
INSERT INTO `t_s_region` VALUES ('3467', '乌什县', '370', 'Wushi(Uqturpan) Xian');
INSERT INTO `t_s_region` VALUES ('3468', '阿瓦提县', '370', 'Awat Xian');
INSERT INTO `t_s_region` VALUES ('3469', '柯坪县', '370', 'Kalpin Xian');
INSERT INTO `t_s_region` VALUES ('347', '陇南市', '29', 'Longnan Shi');
INSERT INTO `t_s_region` VALUES ('3470', '阿图什市', '371', 'Artux Shi');
INSERT INTO `t_s_region` VALUES ('3471', '阿克陶县', '371', 'Akto Xian');
INSERT INTO `t_s_region` VALUES ('3472', '阿合奇县', '371', 'Akqi Xian');
INSERT INTO `t_s_region` VALUES ('3473', '乌恰县', '371', 'Wuqia(Ulugqat) Xian');
INSERT INTO `t_s_region` VALUES ('3474', '喀什市', '372', 'Kashi (Kaxgar) Shi');
INSERT INTO `t_s_region` VALUES ('3475', '疏附县', '372', 'Shufu Xian');
INSERT INTO `t_s_region` VALUES ('3476', '疏勒县', '372', 'Shule Xian');
INSERT INTO `t_s_region` VALUES ('3477', '英吉沙县', '372', 'Yengisar Xian');
INSERT INTO `t_s_region` VALUES ('3478', '泽普县', '372', 'Zepu(Poskam) Xian');
INSERT INTO `t_s_region` VALUES ('3479', '莎车县', '372', 'Shache(Yarkant) Xian');
INSERT INTO `t_s_region` VALUES ('348', '临夏回族自治州', '29', 'Linxia Huizu Zizhizhou ');
INSERT INTO `t_s_region` VALUES ('3480', '叶城县', '372', 'Yecheng(Kargilik) Xian');
INSERT INTO `t_s_region` VALUES ('3481', '麦盖提县', '372', 'Markit Xian');
INSERT INTO `t_s_region` VALUES ('3482', '岳普湖县', '372', 'Yopurga Xian');
INSERT INTO `t_s_region` VALUES ('3483', '伽师县', '372', 'Jiashi(Payzawat) Xian');
INSERT INTO `t_s_region` VALUES ('3484', '巴楚县', '372', 'Bachu(Maralbexi) Xian');
INSERT INTO `t_s_region` VALUES ('3485', '塔什库尔干塔吉克自治县', '372', 'Taxkorgan Tajik Zizhixian');
INSERT INTO `t_s_region` VALUES ('3486', '和田市', '373', 'Hotan Shi');
INSERT INTO `t_s_region` VALUES ('3487', '和田县', '373', 'Hotan Xian');
INSERT INTO `t_s_region` VALUES ('3488', '墨玉县', '373', 'Moyu(Karakax) Xian');
INSERT INTO `t_s_region` VALUES ('3489', '皮山县', '373', 'Pishan(Guma) Xian');
INSERT INTO `t_s_region` VALUES ('349', '甘南藏族自治州', '29', 'Gannan Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3490', '洛浦县', '373', 'Lop Xian');
INSERT INTO `t_s_region` VALUES ('3491', '策勒县', '373', 'Qira Xian');
INSERT INTO `t_s_region` VALUES ('3492', '于田县', '373', 'Yutian(Keriya) Xian');
INSERT INTO `t_s_region` VALUES ('3493', '民丰县', '373', 'Minfeng(Niya) Xian');
INSERT INTO `t_s_region` VALUES ('3494', '伊宁市', '374', 'Yining(Gulja) Shi');
INSERT INTO `t_s_region` VALUES ('3495', '奎屯市', '374', 'Kuytun Shi');
INSERT INTO `t_s_region` VALUES ('3496', '伊宁县', '374', 'Yining(Gulja) Xian');
INSERT INTO `t_s_region` VALUES ('3497', '察布查尔锡伯自治县', '374', 'Qapqal Xibe Zizhixian');
INSERT INTO `t_s_region` VALUES ('3498', '霍城县', '374', 'Huocheng Xin');
INSERT INTO `t_s_region` VALUES ('3499', '巩留县', '374', 'Gongliu(Tokkuztara) Xian');
INSERT INTO `t_s_region` VALUES ('35', '市辖区', '3', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('350', '西宁市', '30', 'Xining Shi');
INSERT INTO `t_s_region` VALUES ('3500', '新源县', '374', 'Xinyuan(Kunes) Xian');
INSERT INTO `t_s_region` VALUES ('3501', '昭苏县', '374', 'Zhaosu(Mongolkure) Xian');
INSERT INTO `t_s_region` VALUES ('3502', '特克斯县', '374', 'Tekes Xian');
INSERT INTO `t_s_region` VALUES ('3503', '尼勒克县', '374', 'Nilka Xian');
INSERT INTO `t_s_region` VALUES ('3504', '塔城市', '375', 'Tacheng(Qoqek) Shi');
INSERT INTO `t_s_region` VALUES ('3505', '乌苏市', '375', 'Usu Shi');
INSERT INTO `t_s_region` VALUES ('3506', '额敏县', '375', 'Emin(Dorbiljin) Xian');
INSERT INTO `t_s_region` VALUES ('3507', '沙湾县', '375', 'Shawan Xian');
INSERT INTO `t_s_region` VALUES ('3508', '托里县', '375', 'Toli Xian');
INSERT INTO `t_s_region` VALUES ('3509', '裕民县', '375', 'Yumin(Qagantokay) Xian');
INSERT INTO `t_s_region` VALUES ('351', '海东地区', '30', 'Haidong Diqu');
INSERT INTO `t_s_region` VALUES ('3510', '和布克赛尔蒙古自治县', '375', 'Hebukesaiermengguzizhi Xian');
INSERT INTO `t_s_region` VALUES ('3511', '阿勒泰市', '376', 'Altay Shi');
INSERT INTO `t_s_region` VALUES ('3512', '布尔津县', '376', 'Burqin Xian');
INSERT INTO `t_s_region` VALUES ('3513', '富蕴县', '376', 'Fuyun(Koktokay) Xian');
INSERT INTO `t_s_region` VALUES ('3514', '福海县', '376', 'Fuhai(Burultokay) Xian');
INSERT INTO `t_s_region` VALUES ('3515', '哈巴河县', '376', 'Habahe(Kaba) Xian');
INSERT INTO `t_s_region` VALUES ('3516', '青河县', '376', 'Qinghe(Qinggil) Xian');
INSERT INTO `t_s_region` VALUES ('3517', '吉木乃县', '376', 'Jeminay Xian');
INSERT INTO `t_s_region` VALUES ('3518', '石河子市', '377', 'Shihezi Shi');
INSERT INTO `t_s_region` VALUES ('3519', '阿拉尔市', '377', 'Alaer Shi');
INSERT INTO `t_s_region` VALUES ('352', '海北藏族自治州', '30', 'Haibei Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('3520', '图木舒克市', '377', 'Tumushuke Shi');
INSERT INTO `t_s_region` VALUES ('3521', '五家渠市', '377', 'Wujiaqu Shi');
INSERT INTO `t_s_region` VALUES ('353', '黄南藏族自治州', '30', 'Huangnan Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('354', '海南藏族自治州', '30', 'Hainan Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('355', '果洛藏族自治州', '30', 'Golog Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('356', '玉树藏族自治州', '30', 'Yushu Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('357', '海西蒙古族藏族自治州', '30', 'Haixi Mongolzu Zangzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('358', '银川市', '31', 'Yinchuan Shi');
INSERT INTO `t_s_region` VALUES ('359', '石嘴山市', '31', 'Shizuishan Shi');
INSERT INTO `t_s_region` VALUES ('36', '县', '3', 'Xian');
INSERT INTO `t_s_region` VALUES ('360', '吴忠市', '31', 'Wuzhong Shi');
INSERT INTO `t_s_region` VALUES ('361', '固原市', '31', 'Guyuan Shi');
INSERT INTO `t_s_region` VALUES ('362', '中卫市', '31', 'Zhongwei Shi');
INSERT INTO `t_s_region` VALUES ('363', '乌鲁木齐市', '32', 'Urumqi Shi');
INSERT INTO `t_s_region` VALUES ('364', '克拉玛依市', '32', 'Karamay Shi');
INSERT INTO `t_s_region` VALUES ('365', '吐鲁番地区', '32', 'Turpan Diqu');
INSERT INTO `t_s_region` VALUES ('366', '哈密地区', '32', 'Hami(kumul) Diqu');
INSERT INTO `t_s_region` VALUES ('367', '昌吉回族自治州', '32', 'Changji Huizu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('368', '博尔塔拉蒙古自治州', '32', 'Bortala Monglo Zizhizhou');
INSERT INTO `t_s_region` VALUES ('369', '巴音郭楞蒙古自治州', '32', 'bayinguolengmengguzizhizhou');
INSERT INTO `t_s_region` VALUES ('37', '石家庄市', '4', 'Shijiazhuang Shi');
INSERT INTO `t_s_region` VALUES ('370', '阿克苏地区', '32', 'Aksu Diqu');
INSERT INTO `t_s_region` VALUES ('371', '克孜勒苏柯尔克孜自治州', '32', 'Kizilsu Kirgiz Zizhizhou');
INSERT INTO `t_s_region` VALUES ('372', '喀什地区', '32', 'Kashi(Kaxgar) Diqu');
INSERT INTO `t_s_region` VALUES ('373', '和田地区', '32', 'Hotan Diqu');
INSERT INTO `t_s_region` VALUES ('374', '伊犁哈萨克自治州', '32', 'Ili Kazak Zizhizhou');
INSERT INTO `t_s_region` VALUES ('375', '塔城地区', '32', 'Tacheng(Qoqek) Diqu');
INSERT INTO `t_s_region` VALUES ('376', '阿勒泰地区', '32', 'Altay Diqu');
INSERT INTO `t_s_region` VALUES ('377', '自治区直辖县级行政区划', '32', 'zizhiquzhixiaxianjixingzhengquhua');
INSERT INTO `t_s_region` VALUES ('378', '东城区', '33', 'Dongcheng Qu');
INSERT INTO `t_s_region` VALUES ('379', '西城区', '33', 'Xicheng Qu');
INSERT INTO `t_s_region` VALUES ('38', '唐山市', '4', 'Tangshan Shi');
INSERT INTO `t_s_region` VALUES ('382', '朝阳区', '33', 'Chaoyang Qu');
INSERT INTO `t_s_region` VALUES ('383', '丰台区', '33', 'Fengtai Qu');
INSERT INTO `t_s_region` VALUES ('384', '石景山区', '33', 'Shijingshan Qu');
INSERT INTO `t_s_region` VALUES ('385', '海淀区', '33', 'Haidian Qu');
INSERT INTO `t_s_region` VALUES ('386', '门头沟区', '33', 'Mentougou Qu');
INSERT INTO `t_s_region` VALUES ('387', '房山区', '33', 'Fangshan Qu');
INSERT INTO `t_s_region` VALUES ('388', '通州区', '33', 'Tongzhou Qu');
INSERT INTO `t_s_region` VALUES ('389', '顺义区', '33', 'Shunyi Qu');
INSERT INTO `t_s_region` VALUES ('39', '秦皇岛市', '4', 'Qinhuangdao Shi');
INSERT INTO `t_s_region` VALUES ('390', '昌平区', '33', 'Changping Qu');
INSERT INTO `t_s_region` VALUES ('391', '大兴区', '33', 'Daxing Qu');
INSERT INTO `t_s_region` VALUES ('392', '怀柔区', '33', 'Huairou Qu');
INSERT INTO `t_s_region` VALUES ('393', '平谷区', '33', 'Pinggu Qu');
INSERT INTO `t_s_region` VALUES ('394', '密云县', '34', 'Miyun Xian ');
INSERT INTO `t_s_region` VALUES ('395', '延庆县', '34', 'Yanqing Xian');
INSERT INTO `t_s_region` VALUES ('396', '和平区', '35', 'Heping Qu');
INSERT INTO `t_s_region` VALUES ('397', '河东区', '35', 'Hedong Qu');
INSERT INTO `t_s_region` VALUES ('398', '河西区', '35', 'Hexi Qu');
INSERT INTO `t_s_region` VALUES ('399', '南开区', '35', 'Nankai Qu');
INSERT INTO `t_s_region` VALUES ('4', '河北省', '1', 'Hebei Sheng');
INSERT INTO `t_s_region` VALUES ('40', '邯郸市', '4', 'Handan Shi');
INSERT INTO `t_s_region` VALUES ('400', '河北区', '35', 'Hebei Qu');
INSERT INTO `t_s_region` VALUES ('4000', '麦积区', '340', 'Maiji Qu');
INSERT INTO `t_s_region` VALUES ('4001', '江津区', '270', 'Jiangjin Qu');
INSERT INTO `t_s_region` VALUES ('4002', '合川区', '270', 'Hechuan Qu');
INSERT INTO `t_s_region` VALUES ('4003', '永川区', '270', 'Yongchuan Qu');
INSERT INTO `t_s_region` VALUES ('4004', '南川区', '270', 'Nanchuan Qu');
INSERT INTO `t_s_region` VALUES ('4006', '芜湖县', '1412', 'Wuhu Xian');
INSERT INTO `t_s_region` VALUES ('401', '红桥区', '35', 'Hongqiao Qu');
INSERT INTO `t_s_region` VALUES ('404', '滨海新区', '35', 'Dagang Qu');
INSERT INTO `t_s_region` VALUES ('405', '东丽区', '35', 'Dongli Qu');
INSERT INTO `t_s_region` VALUES ('406', '西青区', '35', 'Xiqing Qu');
INSERT INTO `t_s_region` VALUES ('407', '津南区', '35', 'Jinnan Qu');
INSERT INTO `t_s_region` VALUES ('408', '北辰区', '35', 'Beichen Qu');
INSERT INTO `t_s_region` VALUES ('409', '武清区', '35', 'Wuqing Qu');
INSERT INTO `t_s_region` VALUES ('41', '邢台市', '4', 'Xingtai Shi');
INSERT INTO `t_s_region` VALUES ('410', '宝坻区', '35', 'Baodi Qu');
INSERT INTO `t_s_region` VALUES ('4100', '加格达奇区', '106', 'Jiagedaqi Qu');
INSERT INTO `t_s_region` VALUES ('4101', '松岭区', '106', 'Songling Qu');
INSERT INTO `t_s_region` VALUES ('4102', '新林区', '106', 'Xinlin Qu');
INSERT INTO `t_s_region` VALUES ('4103', '呼中区', '106', 'Huzhong Qu');
INSERT INTO `t_s_region` VALUES ('411', '宁河县', '36', 'Ninghe Xian');
INSERT INTO `t_s_region` VALUES ('412', '静海县', '36', 'Jinghai Xian');
INSERT INTO `t_s_region` VALUES ('413', '蓟县', '36', 'Ji Xian');
INSERT INTO `t_s_region` VALUES ('414', '市辖区', '37', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('415', '长安区', '37', 'Chang,an Qu');
INSERT INTO `t_s_region` VALUES ('416', '桥东区', '37', 'Qiaodong Qu');
INSERT INTO `t_s_region` VALUES ('417', '桥西区', '37', 'Qiaoxi Qu');
INSERT INTO `t_s_region` VALUES ('418', '新华区', '37', 'Xinhua Qu');
INSERT INTO `t_s_region` VALUES ('419', '井陉矿区', '37', 'Jingxing Kuangqu');
INSERT INTO `t_s_region` VALUES ('42', '保定市', '4', 'Baoding Shi');
INSERT INTO `t_s_region` VALUES ('420', '裕华区', '37', 'Yuhua Qu');
INSERT INTO `t_s_region` VALUES ('4200', '南湖区', '125', 'Nanhu Qu');
INSERT INTO `t_s_region` VALUES ('421', '井陉县', '37', 'Jingxing Xian');
INSERT INTO `t_s_region` VALUES ('422', '正定县', '37', 'Zhengding Xian');
INSERT INTO `t_s_region` VALUES ('423', '栾城县', '37', 'Luancheng Xian');
INSERT INTO `t_s_region` VALUES ('424', '行唐县', '37', 'Xingtang Xian');
INSERT INTO `t_s_region` VALUES ('425', '灵寿县', '37', 'Lingshou Xian ');
INSERT INTO `t_s_region` VALUES ('426', '高邑县', '37', 'Gaoyi Xian');
INSERT INTO `t_s_region` VALUES ('427', '深泽县', '37', 'Shenze Xian');
INSERT INTO `t_s_region` VALUES ('428', '赞皇县', '37', 'Zanhuang Xian');
INSERT INTO `t_s_region` VALUES ('429', '无极县', '37', 'Wuji Xian');
INSERT INTO `t_s_region` VALUES ('43', '张家口市', '4', 'Zhangjiakou Shi ');
INSERT INTO `t_s_region` VALUES ('430', '平山县', '37', 'Pingshan Xian');
INSERT INTO `t_s_region` VALUES ('4300', '共青城市', '162', 'Gongqingcheng Shi');
INSERT INTO `t_s_region` VALUES ('431', '元氏县', '37', 'Yuanshi Xian');
INSERT INTO `t_s_region` VALUES ('432', '赵县', '37', 'Zhao Xian');
INSERT INTO `t_s_region` VALUES ('433', '辛集市', '37', 'Xinji Shi');
INSERT INTO `t_s_region` VALUES ('434', '藁城市', '37', 'Gaocheng Shi');
INSERT INTO `t_s_region` VALUES ('435', '晋州市', '37', 'Jinzhou Shi');
INSERT INTO `t_s_region` VALUES ('436', '新乐市', '37', 'Xinle Shi');
INSERT INTO `t_s_region` VALUES ('437', '鹿泉市', '37', 'Luquan Shi');
INSERT INTO `t_s_region` VALUES ('438', '市辖区', '38', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('439', '路南区', '38', 'Lunan Qu');
INSERT INTO `t_s_region` VALUES ('44', '承德市', '4', 'Chengde Shi');
INSERT INTO `t_s_region` VALUES ('440', '路北区', '38', 'Lubei Qu');
INSERT INTO `t_s_region` VALUES ('4400', '红寺堡区', '360', 'Hongsibao Qu');
INSERT INTO `t_s_region` VALUES ('441', '古冶区', '38', 'Guye Qu');
INSERT INTO `t_s_region` VALUES ('442', '开平区', '38', 'Kaiping Qu');
INSERT INTO `t_s_region` VALUES ('443', '丰南区', '38', 'Fengnan Qu');
INSERT INTO `t_s_region` VALUES ('444', '丰润区', '38', 'Fengrun Qu');
INSERT INTO `t_s_region` VALUES ('445', '滦县', '38', 'Luan Xian');
INSERT INTO `t_s_region` VALUES ('446', '滦南县', '38', 'Luannan Xian');
INSERT INTO `t_s_region` VALUES ('447', '乐亭县', '38', 'Leting Xian');
INSERT INTO `t_s_region` VALUES ('448', '迁西县', '38', 'Qianxi Xian');
INSERT INTO `t_s_region` VALUES ('449', '玉田县', '38', 'Yutian Xian');
INSERT INTO `t_s_region` VALUES ('45', '沧州市', '4', 'Cangzhou Shi');
INSERT INTO `t_s_region` VALUES ('450', '唐海县', '38', 'Tanghai Xian ');
INSERT INTO `t_s_region` VALUES ('4500', '瓜州县', '344', 'Guazhou Xian');
INSERT INTO `t_s_region` VALUES ('451', '遵化市', '38', 'Zunhua Shi');
INSERT INTO `t_s_region` VALUES ('452', '迁安市', '38', 'Qian,an Shi');
INSERT INTO `t_s_region` VALUES ('453', '市辖区', '39', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('454', '海港区', '39', 'Haigang Qu');
INSERT INTO `t_s_region` VALUES ('455', '山海关区', '39', 'Shanhaiguan Qu');
INSERT INTO `t_s_region` VALUES ('456', '北戴河区', '39', 'Beidaihe Qu');
INSERT INTO `t_s_region` VALUES ('457', '青龙满族自治县', '39', 'Qinglong Manzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('458', '昌黎县', '39', 'Changli Xian');
INSERT INTO `t_s_region` VALUES ('459', '抚宁县', '39', 'Funing Xian ');
INSERT INTO `t_s_region` VALUES ('46', '廊坊市', '4', 'Langfang Shi');
INSERT INTO `t_s_region` VALUES ('460', '卢龙县', '39', 'Lulong Xian');
INSERT INTO `t_s_region` VALUES ('4600', '随县', '215', 'Sui Xian');
INSERT INTO `t_s_region` VALUES ('461', '市辖区', '40', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('462', '邯山区', '40', 'Hanshan Qu');
INSERT INTO `t_s_region` VALUES ('463', '丛台区', '40', 'Congtai Qu');
INSERT INTO `t_s_region` VALUES ('464', '复兴区', '40', 'Fuxing Qu');
INSERT INTO `t_s_region` VALUES ('465', '峰峰矿区', '40', 'Fengfeng Kuangqu');
INSERT INTO `t_s_region` VALUES ('466', '邯郸县', '40', 'Handan Xian ');
INSERT INTO `t_s_region` VALUES ('467', '临漳县', '40', 'Linzhang Xian ');
INSERT INTO `t_s_region` VALUES ('468', '成安县', '40', 'Cheng,an Xian');
INSERT INTO `t_s_region` VALUES ('469', '大名县', '40', 'Daming Xian');
INSERT INTO `t_s_region` VALUES ('47', '衡水市', '4', 'Hengshui Shi ');
INSERT INTO `t_s_region` VALUES ('470', '涉县', '40', 'She Xian');
INSERT INTO `t_s_region` VALUES ('4700', '零陵区', '228', 'Lingling Qu');
INSERT INTO `t_s_region` VALUES ('471', '磁县', '40', 'Ci Xian');
INSERT INTO `t_s_region` VALUES ('472', '肥乡县', '40', 'Feixiang Xian');
INSERT INTO `t_s_region` VALUES ('473', '永年县', '40', 'Yongnian Xian');
INSERT INTO `t_s_region` VALUES ('474', '邱县', '40', 'Qiu Xian');
INSERT INTO `t_s_region` VALUES ('475', '鸡泽县', '40', 'Jize Xian');
INSERT INTO `t_s_region` VALUES ('476', '广平县', '40', 'Guangping Xian ');
INSERT INTO `t_s_region` VALUES ('477', '馆陶县', '40', 'Guantao Xian');
INSERT INTO `t_s_region` VALUES ('478', '魏县', '40', 'Wei Xian ');
INSERT INTO `t_s_region` VALUES ('479', '曲周县', '40', 'Quzhou Xian ');
INSERT INTO `t_s_region` VALUES ('48', '太原市', '5', 'Taiyuan Shi');
INSERT INTO `t_s_region` VALUES ('480', '武安市', '40', 'Wu,an Shi');
INSERT INTO `t_s_region` VALUES ('4800', '平桂管理区', '263', 'Pingguiguanli Qu');
INSERT INTO `t_s_region` VALUES ('481', '市辖区', '41', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('482', '桥东区', '41', 'Qiaodong Qu');
INSERT INTO `t_s_region` VALUES ('483', '桥西区', '41', 'Qiaoxi Qu');
INSERT INTO `t_s_region` VALUES ('484', '邢台县', '41', 'Xingtai Xian');
INSERT INTO `t_s_region` VALUES ('485', '临城县', '41', 'Lincheng Xian ');
INSERT INTO `t_s_region` VALUES ('486', '内丘县', '41', 'Neiqiu Xian ');
INSERT INTO `t_s_region` VALUES ('487', '柏乡县', '41', 'Baixiang Xian');
INSERT INTO `t_s_region` VALUES ('488', '隆尧县', '41', 'Longyao Xian');
INSERT INTO `t_s_region` VALUES ('489', '任县', '41', 'Ren Xian');
INSERT INTO `t_s_region` VALUES ('49', '大同市', '5', 'Datong Shi ');
INSERT INTO `t_s_region` VALUES ('490', '南和县', '41', 'Nanhe Xian');
INSERT INTO `t_s_region` VALUES ('4900', '利州区', '279', 'Lizhou Qu');
INSERT INTO `t_s_region` VALUES ('491', '宁晋县', '41', 'Ningjin Xian');
INSERT INTO `t_s_region` VALUES ('492', '巨鹿县', '41', 'Julu Xian');
INSERT INTO `t_s_region` VALUES ('493', '新河县', '41', 'Xinhe Xian ');
INSERT INTO `t_s_region` VALUES ('494', '广宗县', '41', 'Guangzong Xian ');
INSERT INTO `t_s_region` VALUES ('495', '平乡县', '41', 'Pingxiang Xian');
INSERT INTO `t_s_region` VALUES ('496', '威县', '41', 'Wei Xian ');
INSERT INTO `t_s_region` VALUES ('497', '清河县', '41', 'Qinghe Xian');
INSERT INTO `t_s_region` VALUES ('498', '临西县', '41', 'Linxi Xian');
INSERT INTO `t_s_region` VALUES ('499', '南宫市', '41', 'Nangong Shi');
INSERT INTO `t_s_region` VALUES ('5', '山西省', '1', 'Shanxi Sheng ');
INSERT INTO `t_s_region` VALUES ('50', '阳泉市', '5', 'Yangquan Shi');
INSERT INTO `t_s_region` VALUES ('500', '沙河市', '41', 'Shahe Shi');
INSERT INTO `t_s_region` VALUES ('5000', '华蓥市', '286', 'Huaying Shi');
INSERT INTO `t_s_region` VALUES ('501', '市辖区', '42', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('502', '新市区', '42', 'Xinshi Qu');
INSERT INTO `t_s_region` VALUES ('503', '北市区', '42', 'Beishi Qu');
INSERT INTO `t_s_region` VALUES ('504', '南市区', '42', 'Nanshi Qu');
INSERT INTO `t_s_region` VALUES ('505', '满城县', '42', 'Mancheng Xian ');
INSERT INTO `t_s_region` VALUES ('506', '清苑县', '42', 'Qingyuan Xian');
INSERT INTO `t_s_region` VALUES ('507', '涞水县', '42', 'Laishui Xian');
INSERT INTO `t_s_region` VALUES ('508', '阜平县', '42', 'Fuping Xian ');
INSERT INTO `t_s_region` VALUES ('509', '徐水县', '42', 'Xushui Xian ');
INSERT INTO `t_s_region` VALUES ('51', '长治市', '5', 'Changzhi Shi');
INSERT INTO `t_s_region` VALUES ('510', '定兴县', '42', 'Dingxing Xian ');
INSERT INTO `t_s_region` VALUES ('511', '唐县', '42', 'Tang Xian ');
INSERT INTO `t_s_region` VALUES ('512', '高阳县', '42', 'Gaoyang Xian ');
INSERT INTO `t_s_region` VALUES ('513', '容城县', '42', 'Rongcheng Xian ');
INSERT INTO `t_s_region` VALUES ('514', '涞源县', '42', 'Laiyuan Xian ');
INSERT INTO `t_s_region` VALUES ('515', '望都县', '42', 'Wangdu Xian ');
INSERT INTO `t_s_region` VALUES ('516', '安新县', '42', 'Anxin Xian ');
INSERT INTO `t_s_region` VALUES ('517', '易县', '42', 'Yi Xian');
INSERT INTO `t_s_region` VALUES ('518', '曲阳县', '42', 'Quyang Xian ');
INSERT INTO `t_s_region` VALUES ('519', '蠡县', '42', 'Li Xian');
INSERT INTO `t_s_region` VALUES ('52', '晋城市', '5', 'Jincheng Shi ');
INSERT INTO `t_s_region` VALUES ('520', '顺平县', '42', 'Shunping Xian ');
INSERT INTO `t_s_region` VALUES ('521', '博野县', '42', 'Boye Xian ');
INSERT INTO `t_s_region` VALUES ('522', '雄县', '42', 'Xiong Xian');
INSERT INTO `t_s_region` VALUES ('523', '涿州市', '42', 'Zhuozhou Shi');
INSERT INTO `t_s_region` VALUES ('524', '定州市', '42', 'Dingzhou Shi ');
INSERT INTO `t_s_region` VALUES ('525', '安国市', '42', 'Anguo Shi ');
INSERT INTO `t_s_region` VALUES ('526', '高碑店市', '42', 'Gaobeidian Shi');
INSERT INTO `t_s_region` VALUES ('527', '市辖区', '43', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('528', '桥东区', '43', 'Qiaodong Qu');
INSERT INTO `t_s_region` VALUES ('529', '桥西区', '43', 'Qiaoxi Qu');
INSERT INTO `t_s_region` VALUES ('53', '朔州市', '5', 'Shuozhou Shi ');
INSERT INTO `t_s_region` VALUES ('530', '宣化区', '43', 'Xuanhua Qu');
INSERT INTO `t_s_region` VALUES ('531', '下花园区', '43', 'Xiahuayuan Qu ');
INSERT INTO `t_s_region` VALUES ('532', '宣化县', '43', 'Xuanhua Xian ');
INSERT INTO `t_s_region` VALUES ('533', '张北县', '43', 'Zhangbei Xian ');
INSERT INTO `t_s_region` VALUES ('534', '康保县', '43', 'Kangbao Xian');
INSERT INTO `t_s_region` VALUES ('535', '沽源县', '43', 'Guyuan Xian');
INSERT INTO `t_s_region` VALUES ('536', '尚义县', '43', 'Shangyi Xian');
INSERT INTO `t_s_region` VALUES ('537', '蔚县', '43', 'Yu Xian');
INSERT INTO `t_s_region` VALUES ('538', '阳原县', '43', 'Yangyuan Xian');
INSERT INTO `t_s_region` VALUES ('539', '怀安县', '43', 'Huai,an Xian');
INSERT INTO `t_s_region` VALUES ('54', '晋中市', '5', 'Jinzhong Shi');
INSERT INTO `t_s_region` VALUES ('540', '万全县', '43', 'Wanquan Xian ');
INSERT INTO `t_s_region` VALUES ('541', '怀来县', '43', 'Huailai Xian');
INSERT INTO `t_s_region` VALUES ('542', '涿鹿县', '43', 'Zhuolu Xian ');
INSERT INTO `t_s_region` VALUES ('543', '赤城县', '43', 'Chicheng Xian');
INSERT INTO `t_s_region` VALUES ('544', '崇礼县', '43', 'Chongli Xian');
INSERT INTO `t_s_region` VALUES ('545', '市辖区', '44', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('546', '双桥区', '44', 'Shuangqiao Qu ');
INSERT INTO `t_s_region` VALUES ('547', '双滦区', '44', 'Shuangluan Qu');
INSERT INTO `t_s_region` VALUES ('548', '鹰手营子矿区', '44', 'Yingshouyingzi Kuangqu');
INSERT INTO `t_s_region` VALUES ('549', '承德县', '44', 'Chengde Xian');
INSERT INTO `t_s_region` VALUES ('55', '运城市', '5', 'Yuncheng Shi');
INSERT INTO `t_s_region` VALUES ('550', '兴隆县', '44', 'Xinglong Xian');
INSERT INTO `t_s_region` VALUES ('551', '平泉县', '44', 'Pingquan Xian');
INSERT INTO `t_s_region` VALUES ('552', '滦平县', '44', 'Luanping Xian ');
INSERT INTO `t_s_region` VALUES ('553', '隆化县', '44', 'Longhua Xian');
INSERT INTO `t_s_region` VALUES ('554', '丰宁满族自治县', '44', 'Fengning Manzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('555', '宽城满族自治县', '44', 'Kuancheng Manzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('556', '围场满族蒙古族自治县', '44', 'Weichang Manzu Menggolzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('557', '市辖区', '45', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('558', '新华区', '45', 'Xinhua Qu');
INSERT INTO `t_s_region` VALUES ('559', '运河区', '45', 'Yunhe Qu');
INSERT INTO `t_s_region` VALUES ('56', '忻州市', '5', 'Xinzhou Shi');
INSERT INTO `t_s_region` VALUES ('560', '沧县', '45', 'Cang Xian');
INSERT INTO `t_s_region` VALUES ('561', '青县', '45', 'Qing Xian');
INSERT INTO `t_s_region` VALUES ('562', '东光县', '45', 'Dongguang Xian ');
INSERT INTO `t_s_region` VALUES ('563', '海兴县', '45', 'Haixing Xian');
INSERT INTO `t_s_region` VALUES ('564', '盐山县', '45', 'Yanshan Xian');
INSERT INTO `t_s_region` VALUES ('565', '肃宁县', '45', 'Suning Xian ');
INSERT INTO `t_s_region` VALUES ('566', '南皮县', '45', 'Nanpi Xian');
INSERT INTO `t_s_region` VALUES ('567', '吴桥县', '45', 'Wuqiao Xian ');
INSERT INTO `t_s_region` VALUES ('568', '献县', '45', 'Xian Xian ');
INSERT INTO `t_s_region` VALUES ('569', '孟村回族自治县', '45', 'Mengcun Huizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('57', '临汾市', '5', 'Linfen Shi');
INSERT INTO `t_s_region` VALUES ('570', '泊头市', '45', 'Botou Shi ');
INSERT INTO `t_s_region` VALUES ('571', '任丘市', '45', 'Renqiu Shi');
INSERT INTO `t_s_region` VALUES ('572', '黄骅市', '45', 'Huanghua Shi');
INSERT INTO `t_s_region` VALUES ('573', '河间市', '45', 'Hejian Shi');
INSERT INTO `t_s_region` VALUES ('574', '市辖区', '46', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('575', '安次区', '46', 'Anci Qu');
INSERT INTO `t_s_region` VALUES ('576', '广阳区', '46', 'Guangyang Qu');
INSERT INTO `t_s_region` VALUES ('577', '固安县', '46', 'Gu,an Xian');
INSERT INTO `t_s_region` VALUES ('578', '永清县', '46', 'Yongqing Xian ');
INSERT INTO `t_s_region` VALUES ('579', '香河县', '46', 'Xianghe Xian');
INSERT INTO `t_s_region` VALUES ('58', '吕梁市', '5', 'Lvliang Shi');
INSERT INTO `t_s_region` VALUES ('580', '大城县', '46', 'Dacheng Xian');
INSERT INTO `t_s_region` VALUES ('581', '文安县', '46', 'Wen,an Xian');
INSERT INTO `t_s_region` VALUES ('582', '大厂回族自治县', '46', 'Dachang Huizu Zizhixian');
INSERT INTO `t_s_region` VALUES ('583', '霸州市', '46', 'Bazhou Shi');
INSERT INTO `t_s_region` VALUES ('584', '三河市', '46', 'Sanhe Shi');
INSERT INTO `t_s_region` VALUES ('585', '市辖区', '47', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('586', '桃城区', '47', 'Taocheng Qu');
INSERT INTO `t_s_region` VALUES ('587', '枣强县', '47', 'Zaoqiang Xian ');
INSERT INTO `t_s_region` VALUES ('588', '武邑县', '47', 'Wuyi Xian');
INSERT INTO `t_s_region` VALUES ('589', '武强县', '47', 'Wuqiang Xian ');
INSERT INTO `t_s_region` VALUES ('59', '呼和浩特市', '6', 'Hohhot Shi');
INSERT INTO `t_s_region` VALUES ('590', '饶阳县', '47', 'Raoyang Xian');
INSERT INTO `t_s_region` VALUES ('591', '安平县', '47', 'Anping Xian');
INSERT INTO `t_s_region` VALUES ('592', '故城县', '47', 'Gucheng Xian');
INSERT INTO `t_s_region` VALUES ('593', '景县', '47', 'Jing Xian ');
INSERT INTO `t_s_region` VALUES ('594', '阜城县', '47', 'Fucheng Xian ');
INSERT INTO `t_s_region` VALUES ('595', '冀州市', '47', 'Jizhou Shi ');
INSERT INTO `t_s_region` VALUES ('596', '深州市', '47', 'Shenzhou Shi');
INSERT INTO `t_s_region` VALUES ('597', '市辖区', '48', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('598', '小店区', '48', 'Xiaodian Qu');
INSERT INTO `t_s_region` VALUES ('599', '迎泽区', '48', 'Yingze Qu');
INSERT INTO `t_s_region` VALUES ('6', '内蒙古自治区', '1', 'Nei Mongol Zizhiqu');
INSERT INTO `t_s_region` VALUES ('60', '包头市', '6', 'Baotou Shi ');
INSERT INTO `t_s_region` VALUES ('600', '杏花岭区', '48', 'Xinghualing Qu');
INSERT INTO `t_s_region` VALUES ('601', '尖草坪区', '48', 'Jiancaoping Qu');
INSERT INTO `t_s_region` VALUES ('602', '万柏林区', '48', 'Wanbailin Qu');
INSERT INTO `t_s_region` VALUES ('603', '晋源区', '48', 'Jinyuan Qu');
INSERT INTO `t_s_region` VALUES ('604', '清徐县', '48', 'Qingxu Xian ');
INSERT INTO `t_s_region` VALUES ('605', '阳曲县', '48', 'Yangqu Xian ');
INSERT INTO `t_s_region` VALUES ('606', '娄烦县', '48', 'Loufan Xian');
INSERT INTO `t_s_region` VALUES ('607', '古交市', '48', 'Gujiao Shi');
INSERT INTO `t_s_region` VALUES ('608', '市辖区', '49', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('609', '城区', '49', 'Chengqu');
INSERT INTO `t_s_region` VALUES ('61', '乌海市', '6', 'Wuhai Shi');
INSERT INTO `t_s_region` VALUES ('610', '矿区', '49', 'Kuangqu');
INSERT INTO `t_s_region` VALUES ('611', '南郊区', '49', 'Nanjiao Qu');
INSERT INTO `t_s_region` VALUES ('612', '新荣区', '49', 'Xinrong Qu');
INSERT INTO `t_s_region` VALUES ('613', '阳高县', '49', 'Yanggao Xian ');
INSERT INTO `t_s_region` VALUES ('614', '天镇县', '49', 'Tianzhen Xian ');
INSERT INTO `t_s_region` VALUES ('615', '广灵县', '49', 'Guangling Xian ');
INSERT INTO `t_s_region` VALUES ('616', '灵丘县', '49', 'Lingqiu Xian ');
INSERT INTO `t_s_region` VALUES ('617', '浑源县', '49', 'Hunyuan Xian');
INSERT INTO `t_s_region` VALUES ('618', '左云县', '49', 'Zuoyun Xian');
INSERT INTO `t_s_region` VALUES ('619', '大同县', '49', 'Datong Xian ');
INSERT INTO `t_s_region` VALUES ('62', '赤峰市', '6', 'Chifeng (Ulanhad)Shi');
INSERT INTO `t_s_region` VALUES ('620', '市辖区', '50', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('621', '城区', '50', 'Chengqu');
INSERT INTO `t_s_region` VALUES ('622', '矿区', '50', 'Kuangqu');
INSERT INTO `t_s_region` VALUES ('623', '郊区', '50', 'Jiaoqu');
INSERT INTO `t_s_region` VALUES ('624', '平定县', '50', 'Pingding Xian');
INSERT INTO `t_s_region` VALUES ('625', '盂县', '50', 'Yu Xian');
INSERT INTO `t_s_region` VALUES ('626', '市辖区', '51', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('627', '城区', '51', 'Chengqu ');
INSERT INTO `t_s_region` VALUES ('628', '郊区', '51', 'Jiaoqu');
INSERT INTO `t_s_region` VALUES ('629', '长治县', '51', 'Changzhi Xian');
INSERT INTO `t_s_region` VALUES ('63', '通辽市', '6', 'Tongliao Shi');
INSERT INTO `t_s_region` VALUES ('630', '襄垣县', '51', 'Xiangyuan Xian');
INSERT INTO `t_s_region` VALUES ('631', '屯留县', '51', 'Tunliu Xian');
INSERT INTO `t_s_region` VALUES ('632', '平顺县', '51', 'Pingshun Xian');
INSERT INTO `t_s_region` VALUES ('633', '黎城县', '51', 'Licheng Xian');
INSERT INTO `t_s_region` VALUES ('634', '壶关县', '51', 'Huguan Xian');
INSERT INTO `t_s_region` VALUES ('635', '长子县', '51', 'Zhangzi Xian ');
INSERT INTO `t_s_region` VALUES ('636', '武乡县', '51', 'Wuxiang Xian');
INSERT INTO `t_s_region` VALUES ('637', '沁县', '51', 'Qin Xian');
INSERT INTO `t_s_region` VALUES ('638', '沁源县', '51', 'Qinyuan Xian ');
INSERT INTO `t_s_region` VALUES ('639', '潞城市', '51', 'Lucheng Shi');
INSERT INTO `t_s_region` VALUES ('64', '鄂尔多斯市', '6', 'Eerduosi Shi');
INSERT INTO `t_s_region` VALUES ('640', '市辖区', '52', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('641', '城区', '52', 'Chengqu ');
INSERT INTO `t_s_region` VALUES ('642', '沁水县', '52', 'Qinshui Xian');
INSERT INTO `t_s_region` VALUES ('643', '阳城县', '52', 'Yangcheng Xian ');
INSERT INTO `t_s_region` VALUES ('644', '陵川县', '52', 'Lingchuan Xian');
INSERT INTO `t_s_region` VALUES ('645', '泽州县', '52', 'Zezhou Xian');
INSERT INTO `t_s_region` VALUES ('646', '高平市', '52', 'Gaoping Shi ');
INSERT INTO `t_s_region` VALUES ('647', '市辖区', '53', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('648', '朔城区', '53', 'Shuocheng Qu');
INSERT INTO `t_s_region` VALUES ('649', '平鲁区', '53', 'Pinglu Qu');
INSERT INTO `t_s_region` VALUES ('65', '呼伦贝尔市', '6', 'Hulunbeier Shi ');
INSERT INTO `t_s_region` VALUES ('650', '山阴县', '53', 'Shanyin Xian');
INSERT INTO `t_s_region` VALUES ('651', '应县', '53', 'Ying Xian');
INSERT INTO `t_s_region` VALUES ('652', '右玉县', '53', 'Youyu Xian ');
INSERT INTO `t_s_region` VALUES ('653', '怀仁县', '53', 'Huairen Xian');
INSERT INTO `t_s_region` VALUES ('654', '市辖区', '54', '1');
INSERT INTO `t_s_region` VALUES ('655', '榆次区', '54', 'Yuci Qu');
INSERT INTO `t_s_region` VALUES ('656', '榆社县', '54', 'Yushe Xian');
INSERT INTO `t_s_region` VALUES ('657', '左权县', '54', 'Zuoquan Xian');
INSERT INTO `t_s_region` VALUES ('658', '和顺县', '54', 'Heshun Xian');
INSERT INTO `t_s_region` VALUES ('659', '昔阳县', '54', 'Xiyang Xian');
INSERT INTO `t_s_region` VALUES ('66', '巴彦淖尔市', '6', 'Bayannaoer Shi');
INSERT INTO `t_s_region` VALUES ('660', '寿阳县', '54', 'Shouyang Xian');
INSERT INTO `t_s_region` VALUES ('661', '太谷县', '54', 'Taigu Xian');
INSERT INTO `t_s_region` VALUES ('662', '祁县', '54', 'Qi Xian');
INSERT INTO `t_s_region` VALUES ('663', '平遥县', '54', 'Pingyao Xian');
INSERT INTO `t_s_region` VALUES ('664', '灵石县', '54', 'Lingshi Xian');
INSERT INTO `t_s_region` VALUES ('665', '介休市', '54', 'Jiexiu Shi');
INSERT INTO `t_s_region` VALUES ('666', '市辖区', '55', '1');
INSERT INTO `t_s_region` VALUES ('667', '盐湖区', '55', 'Yanhu Qu');
INSERT INTO `t_s_region` VALUES ('668', '临猗县', '55', 'Linyi Xian');
INSERT INTO `t_s_region` VALUES ('669', '万荣县', '55', 'Wanrong Xian');
INSERT INTO `t_s_region` VALUES ('67', '乌兰察布市', '6', 'Wulanchabu Shi');
INSERT INTO `t_s_region` VALUES ('670', '闻喜县', '55', 'Wenxi Xian');
INSERT INTO `t_s_region` VALUES ('671', '稷山县', '55', 'Jishan Xian');
INSERT INTO `t_s_region` VALUES ('672', '新绛县', '55', 'Xinjiang Xian');
INSERT INTO `t_s_region` VALUES ('673', '绛县', '55', 'Jiang Xian');
INSERT INTO `t_s_region` VALUES ('674', '垣曲县', '55', 'Yuanqu Xian');
INSERT INTO `t_s_region` VALUES ('675', '夏县', '55', 'Xia Xian ');
INSERT INTO `t_s_region` VALUES ('676', '平陆县', '55', 'Pinglu Xian');
INSERT INTO `t_s_region` VALUES ('677', '芮城县', '55', 'Ruicheng Xian');
INSERT INTO `t_s_region` VALUES ('678', '永济市', '55', 'Yongji Shi ');
INSERT INTO `t_s_region` VALUES ('679', '河津市', '55', 'Hejin Shi');
INSERT INTO `t_s_region` VALUES ('68', '兴安盟', '6', 'Hinggan Meng');
INSERT INTO `t_s_region` VALUES ('680', '市辖区', '56', '1');
INSERT INTO `t_s_region` VALUES ('681', '忻府区', '56', 'Xinfu Qu');
INSERT INTO `t_s_region` VALUES ('682', '定襄县', '56', 'Dingxiang Xian');
INSERT INTO `t_s_region` VALUES ('683', '五台县', '56', 'Wutai Xian');
INSERT INTO `t_s_region` VALUES ('684', '代县', '56', 'Dai Xian');
INSERT INTO `t_s_region` VALUES ('685', '繁峙县', '56', 'Fanshi Xian');
INSERT INTO `t_s_region` VALUES ('686', '宁武县', '56', 'Ningwu Xian');
INSERT INTO `t_s_region` VALUES ('687', '静乐县', '56', 'Jingle Xian');
INSERT INTO `t_s_region` VALUES ('688', '神池县', '56', 'Shenchi Xian');
INSERT INTO `t_s_region` VALUES ('689', '五寨县', '56', 'Wuzhai Xian');
INSERT INTO `t_s_region` VALUES ('69', '锡林郭勒盟', '6', 'Xilin Gol Meng');
INSERT INTO `t_s_region` VALUES ('690', '岢岚县', '56', 'Kelan Xian');
INSERT INTO `t_s_region` VALUES ('691', '河曲县', '56', 'Hequ Xian ');
INSERT INTO `t_s_region` VALUES ('692', '保德县', '56', 'Baode Xian');
INSERT INTO `t_s_region` VALUES ('693', '偏关县', '56', 'Pianguan Xian');
INSERT INTO `t_s_region` VALUES ('694', '原平市', '56', 'Yuanping Shi');
INSERT INTO `t_s_region` VALUES ('695', '市辖区', '57', '1');
INSERT INTO `t_s_region` VALUES ('696', '尧都区', '57', 'Yaodu Qu');
INSERT INTO `t_s_region` VALUES ('697', '曲沃县', '57', 'Quwo Xian ');
INSERT INTO `t_s_region` VALUES ('698', '翼城县', '57', 'Yicheng Xian');
INSERT INTO `t_s_region` VALUES ('699', '襄汾县', '57', 'Xiangfen Xian');
INSERT INTO `t_s_region` VALUES ('7', '辽宁省', '1', 'Liaoning Sheng');
INSERT INTO `t_s_region` VALUES ('70', '阿拉善盟', '6', 'Alxa Meng');
INSERT INTO `t_s_region` VALUES ('700', '洪洞县', '57', 'Hongtong Xian');
INSERT INTO `t_s_region` VALUES ('701', '古县', '57', 'Gu Xian');
INSERT INTO `t_s_region` VALUES ('702', '安泽县', '57', 'Anze Xian');
INSERT INTO `t_s_region` VALUES ('703', '浮山县', '57', 'Fushan Xian ');
INSERT INTO `t_s_region` VALUES ('704', '吉县', '57', 'Ji Xian');
INSERT INTO `t_s_region` VALUES ('705', '乡宁县', '57', 'Xiangning Xian');
INSERT INTO `t_s_region` VALUES ('706', '大宁县', '57', 'Daning Xian');
INSERT INTO `t_s_region` VALUES ('707', '隰县', '57', 'Xi Xian');
INSERT INTO `t_s_region` VALUES ('708', '永和县', '57', 'Yonghe Xian');
INSERT INTO `t_s_region` VALUES ('709', '蒲县', '57', 'Pu Xian');
INSERT INTO `t_s_region` VALUES ('71', '沈阳市', '7', 'Shenyang Shi');
INSERT INTO `t_s_region` VALUES ('710', '汾西县', '57', 'Fenxi Xian');
INSERT INTO `t_s_region` VALUES ('711', '侯马市', '57', 'Houma Shi ');
INSERT INTO `t_s_region` VALUES ('712', '霍州市', '57', 'Huozhou Shi ');
INSERT INTO `t_s_region` VALUES ('713', '市辖区', '58', '1');
INSERT INTO `t_s_region` VALUES ('714', '离石区', '58', 'Lishi Qu');
INSERT INTO `t_s_region` VALUES ('715', '文水县', '58', 'Wenshui Xian');
INSERT INTO `t_s_region` VALUES ('716', '交城县', '58', 'Jiaocheng Xian');
INSERT INTO `t_s_region` VALUES ('717', '兴县', '58', 'Xing Xian');
INSERT INTO `t_s_region` VALUES ('718', '临县', '58', 'Lin Xian ');
INSERT INTO `t_s_region` VALUES ('719', '柳林县', '58', 'Liulin Xian');
INSERT INTO `t_s_region` VALUES ('72', '大连市', '7', 'Dalian Shi');
INSERT INTO `t_s_region` VALUES ('720', '石楼县', '58', 'Shilou Xian');
INSERT INTO `t_s_region` VALUES ('721', '岚县', '58', 'Lan Xian');
INSERT INTO `t_s_region` VALUES ('722', '方山县', '58', 'Fangshan Xian');
INSERT INTO `t_s_region` VALUES ('723', '中阳县', '58', 'Zhongyang Xian');
INSERT INTO `t_s_region` VALUES ('724', '交口县', '58', 'Jiaokou Xian');
INSERT INTO `t_s_region` VALUES ('725', '孝义市', '58', 'Xiaoyi Shi');
INSERT INTO `t_s_region` VALUES ('726', '汾阳市', '58', 'Fenyang Shi');
INSERT INTO `t_s_region` VALUES ('727', '市辖区', '59', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('728', '新城区', '59', 'Xincheng Qu');
INSERT INTO `t_s_region` VALUES ('729', '回民区', '59', 'Huimin Qu');
INSERT INTO `t_s_region` VALUES ('73', '鞍山市', '7', 'AnShan Shi');
INSERT INTO `t_s_region` VALUES ('730', '玉泉区', '59', 'Yuquan Qu');
INSERT INTO `t_s_region` VALUES ('731', '赛罕区', '59', 'Saihan Qu');
INSERT INTO `t_s_region` VALUES ('732', '土默特左旗', '59', 'Tumd Zuoqi');
INSERT INTO `t_s_region` VALUES ('733', '托克托县', '59', 'Togtoh Xian');
INSERT INTO `t_s_region` VALUES ('734', '和林格尔县', '59', 'Horinger Xian');
INSERT INTO `t_s_region` VALUES ('735', '清水河县', '59', 'Qingshuihe Xian');
INSERT INTO `t_s_region` VALUES ('736', '武川县', '59', 'Wuchuan Xian');
INSERT INTO `t_s_region` VALUES ('737', '市辖区', '60', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('738', '东河区', '60', 'Donghe Qu');
INSERT INTO `t_s_region` VALUES ('739', '昆都仑区', '60', 'Kundulun Qu');
INSERT INTO `t_s_region` VALUES ('74', '抚顺市', '7', 'Fushun Shi');
INSERT INTO `t_s_region` VALUES ('740', '青山区', '60', 'Qingshan Qu');
INSERT INTO `t_s_region` VALUES ('741', '石拐区', '60', 'Shiguai Qu');
INSERT INTO `t_s_region` VALUES ('742', '白云鄂博矿区', '60', 'Baiyun Kuangqu');
INSERT INTO `t_s_region` VALUES ('743', '九原区', '60', 'Jiuyuan Qu');
INSERT INTO `t_s_region` VALUES ('744', '土默特右旗', '60', 'Tumd Youqi');
INSERT INTO `t_s_region` VALUES ('745', '固阳县', '60', 'Guyang Xian');
INSERT INTO `t_s_region` VALUES ('746', '达尔罕茂明安联合旗', '60', 'Darhan Muminggan Lianheqi');
INSERT INTO `t_s_region` VALUES ('747', '市辖区', '61', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('748', '海勃湾区', '61', 'Haibowan Qu');
INSERT INTO `t_s_region` VALUES ('749', '海南区', '61', 'Hainan Qu');
INSERT INTO `t_s_region` VALUES ('75', '本溪市', '7', 'Benxi Shi');
INSERT INTO `t_s_region` VALUES ('750', '乌达区', '61', 'Ud Qu');
INSERT INTO `t_s_region` VALUES ('751', '市辖区', '62', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('752', '红山区', '62', 'Hongshan Qu');
INSERT INTO `t_s_region` VALUES ('753', '元宝山区', '62', 'Yuanbaoshan Qu');
INSERT INTO `t_s_region` VALUES ('754', '松山区', '62', 'Songshan Qu');
INSERT INTO `t_s_region` VALUES ('755', '阿鲁科尔沁旗', '62', 'Ar Horqin Qi');
INSERT INTO `t_s_region` VALUES ('756', '巴林左旗', '62', 'Bairin Zuoqi');
INSERT INTO `t_s_region` VALUES ('757', '巴林右旗', '62', 'Bairin Youqi');
INSERT INTO `t_s_region` VALUES ('758', '林西县', '62', 'Linxi Xian');
INSERT INTO `t_s_region` VALUES ('759', '克什克腾旗', '62', 'Hexigten Qi');
INSERT INTO `t_s_region` VALUES ('76', '丹东市', '7', 'Dandong Shi');
INSERT INTO `t_s_region` VALUES ('760', '翁牛特旗', '62', 'Ongniud Qi');
INSERT INTO `t_s_region` VALUES ('761', '喀喇沁旗', '62', 'Harqin Qi');
INSERT INTO `t_s_region` VALUES ('762', '宁城县', '62', 'Ningcheng Xian');
INSERT INTO `t_s_region` VALUES ('763', '敖汉旗', '62', 'Aohan Qi');
INSERT INTO `t_s_region` VALUES ('764', '市辖区', '63', '1');
INSERT INTO `t_s_region` VALUES ('765', '科尔沁区', '63', 'Keermi Qu');
INSERT INTO `t_s_region` VALUES ('766', '科尔沁左翼中旗', '63', 'Horqin Zuoyi Zhongqi');
INSERT INTO `t_s_region` VALUES ('767', '科尔沁左翼后旗', '63', 'Horqin Zuoyi Houqi');
INSERT INTO `t_s_region` VALUES ('768', '开鲁县', '63', 'Kailu Xian');
INSERT INTO `t_s_region` VALUES ('769', '库伦旗', '63', 'Hure Qi');
INSERT INTO `t_s_region` VALUES ('77', '锦州市', '7', 'Jinzhou Shi');
INSERT INTO `t_s_region` VALUES ('770', '奈曼旗', '63', 'Naiman Qi');
INSERT INTO `t_s_region` VALUES ('771', '扎鲁特旗', '63', 'Jarud Qi');
INSERT INTO `t_s_region` VALUES ('772', '霍林郭勒市', '63', 'Holingol Shi');
INSERT INTO `t_s_region` VALUES ('773', '东胜区', '64', 'Dongsheng Qu');
INSERT INTO `t_s_region` VALUES ('774', '达拉特旗', '64', 'Dalad Qi');
INSERT INTO `t_s_region` VALUES ('775', '准格尔旗', '64', 'Jungar Qi');
INSERT INTO `t_s_region` VALUES ('776', '鄂托克前旗', '64', 'Otog Qianqi');
INSERT INTO `t_s_region` VALUES ('777', '鄂托克旗', '64', 'Otog Qi');
INSERT INTO `t_s_region` VALUES ('778', '杭锦旗', '64', 'Hanggin Qi');
INSERT INTO `t_s_region` VALUES ('779', '乌审旗', '64', 'Uxin Qi');
INSERT INTO `t_s_region` VALUES ('78', '营口市', '7', 'Yingkou Shi');
INSERT INTO `t_s_region` VALUES ('780', '伊金霍洛旗', '64', 'Ejin Horo Qi');
INSERT INTO `t_s_region` VALUES ('781', '市辖区', '65', '1');
INSERT INTO `t_s_region` VALUES ('782', '海拉尔区', '65', 'Hailaer Qu');
INSERT INTO `t_s_region` VALUES ('783', '阿荣旗', '65', 'Arun Qi');
INSERT INTO `t_s_region` VALUES ('784', '莫力达瓦达斡尔族自治旗', '65', 'Morin Dawa Daurzu Zizhiqi');
INSERT INTO `t_s_region` VALUES ('785', '鄂伦春自治旗', '65', 'Oroqen Zizhiqi');
INSERT INTO `t_s_region` VALUES ('786', '鄂温克族自治旗', '65', 'Ewenkizu Zizhiqi');
INSERT INTO `t_s_region` VALUES ('787', '陈巴尔虎旗', '65', 'Chen Barag Qi');
INSERT INTO `t_s_region` VALUES ('788', '新巴尔虎左旗', '65', 'Xin Barag Zuoqi');
INSERT INTO `t_s_region` VALUES ('789', '新巴尔虎右旗', '65', 'Xin Barag Youqi');
INSERT INTO `t_s_region` VALUES ('79', '阜新市', '7', 'Fuxin Shi');
INSERT INTO `t_s_region` VALUES ('790', '满洲里市', '65', 'Manzhouli Shi');
INSERT INTO `t_s_region` VALUES ('791', '牙克石市', '65', 'Yakeshi Shi');
INSERT INTO `t_s_region` VALUES ('792', '扎兰屯市', '65', 'Zalantun Shi');
INSERT INTO `t_s_region` VALUES ('793', '额尔古纳市', '65', 'Ergun Shi');
INSERT INTO `t_s_region` VALUES ('794', '根河市', '65', 'Genhe Shi');
INSERT INTO `t_s_region` VALUES ('795', '市辖区', '66', '1');
INSERT INTO `t_s_region` VALUES ('796', '临河区', '66', 'Linhe Qu');
INSERT INTO `t_s_region` VALUES ('797', '五原县', '66', 'Wuyuan Xian');
INSERT INTO `t_s_region` VALUES ('798', '磴口县', '66', 'Dengkou Xian');
INSERT INTO `t_s_region` VALUES ('799', '乌拉特前旗', '66', 'Urad Qianqi');
INSERT INTO `t_s_region` VALUES ('8', '吉林省', '1', 'Jilin Sheng');
INSERT INTO `t_s_region` VALUES ('80', '辽阳市', '7', 'Liaoyang Shi');
INSERT INTO `t_s_region` VALUES ('800', '乌拉特中旗', '66', 'Urad Zhongqi');
INSERT INTO `t_s_region` VALUES ('801', '乌拉特后旗', '66', 'Urad Houqi');
INSERT INTO `t_s_region` VALUES ('802', '杭锦后旗', '66', 'Hanggin Houqi');
INSERT INTO `t_s_region` VALUES ('803', '市辖区', '67', '1');
INSERT INTO `t_s_region` VALUES ('804', '集宁区', '67', 'Jining Qu');
INSERT INTO `t_s_region` VALUES ('805', '卓资县', '67', 'Zhuozi Xian');
INSERT INTO `t_s_region` VALUES ('806', '化德县', '67', 'Huade Xian');
INSERT INTO `t_s_region` VALUES ('807', '商都县', '67', 'Shangdu Xian');
INSERT INTO `t_s_region` VALUES ('808', '兴和县', '67', 'Xinghe Xian');
INSERT INTO `t_s_region` VALUES ('809', '凉城县', '67', 'Liangcheng Xian');
INSERT INTO `t_s_region` VALUES ('81', '盘锦市', '7', 'Panjin Shi');
INSERT INTO `t_s_region` VALUES ('810', '察哈尔右翼前旗', '67', 'Qahar Youyi Qianqi');
INSERT INTO `t_s_region` VALUES ('811', '察哈尔右翼中旗', '67', 'Qahar Youyi Zhongqi');
INSERT INTO `t_s_region` VALUES ('812', '察哈尔右翼后旗', '67', 'Qahar Youyi Houqi');
INSERT INTO `t_s_region` VALUES ('813', '四子王旗', '67', 'Dorbod Qi');
INSERT INTO `t_s_region` VALUES ('814', '丰镇市', '67', 'Fengzhen Shi');
INSERT INTO `t_s_region` VALUES ('815', '乌兰浩特市', '68', 'Ulan Hot Shi');
INSERT INTO `t_s_region` VALUES ('816', '阿尔山市', '68', 'Arxan Shi');
INSERT INTO `t_s_region` VALUES ('817', '科尔沁右翼前旗', '68', 'Horqin Youyi Qianqi');
INSERT INTO `t_s_region` VALUES ('818', '科尔沁右翼中旗', '68', 'Horqin Youyi Zhongqi');
INSERT INTO `t_s_region` VALUES ('819', '扎赉特旗', '68', 'Jalaid Qi');
INSERT INTO `t_s_region` VALUES ('82', '铁岭市', '7', 'Tieling Shi');
INSERT INTO `t_s_region` VALUES ('820', '突泉县', '68', 'Tuquan Xian');
INSERT INTO `t_s_region` VALUES ('821', '二连浩特市', '69', 'Erenhot Shi');
INSERT INTO `t_s_region` VALUES ('822', '锡林浩特市', '69', 'Xilinhot Shi');
INSERT INTO `t_s_region` VALUES ('823', '阿巴嘎旗', '69', 'Abag Qi');
INSERT INTO `t_s_region` VALUES ('824', '苏尼特左旗', '69', 'Sonid Zuoqi');
INSERT INTO `t_s_region` VALUES ('825', '苏尼特右旗', '69', 'Sonid Youqi');
INSERT INTO `t_s_region` VALUES ('826', '东乌珠穆沁旗', '69', 'Dong Ujimqin Qi');
INSERT INTO `t_s_region` VALUES ('827', '西乌珠穆沁旗', '69', 'Xi Ujimqin Qi');
INSERT INTO `t_s_region` VALUES ('828', '太仆寺旗', '69', 'Taibus Qi');
INSERT INTO `t_s_region` VALUES ('829', '镶黄旗', '69', 'Xianghuang(Hobot Xar) Qi');
INSERT INTO `t_s_region` VALUES ('83', '朝阳市', '7', 'Chaoyang Shi');
INSERT INTO `t_s_region` VALUES ('830', '正镶白旗', '69', 'Zhengxiangbai(Xulun Hobot Qagan)Qi');
INSERT INTO `t_s_region` VALUES ('831', '正蓝旗', '69', 'Zhenglan(Xulun Hoh)Qi');
INSERT INTO `t_s_region` VALUES ('832', '多伦县', '69', 'Duolun (Dolonnur)Xian');
INSERT INTO `t_s_region` VALUES ('833', '阿拉善左旗', '70', 'Alxa Zuoqi');
INSERT INTO `t_s_region` VALUES ('834', '阿拉善右旗', '70', 'Alxa Youqi');
INSERT INTO `t_s_region` VALUES ('835', '额济纳旗', '70', 'Ejin Qi');
INSERT INTO `t_s_region` VALUES ('836', '市辖区', '71', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('837', '和平区', '71', 'Heping Qu');
INSERT INTO `t_s_region` VALUES ('838', '沈河区', '71', 'Shenhe Qu ');
INSERT INTO `t_s_region` VALUES ('839', '大东区', '71', 'Dadong Qu ');
INSERT INTO `t_s_region` VALUES ('84', '葫芦岛市', '7', 'Huludao Shi');
INSERT INTO `t_s_region` VALUES ('840', '皇姑区', '71', 'Huanggu Qu');
INSERT INTO `t_s_region` VALUES ('841', '铁西区', '71', 'Tiexi Qu');
INSERT INTO `t_s_region` VALUES ('842', '苏家屯区', '71', 'Sujiatun Qu');
INSERT INTO `t_s_region` VALUES ('843', '东陵区', '71', 'Dongling Qu ');
INSERT INTO `t_s_region` VALUES ('844', '沈北新区', '71', 'Xinchengzi Qu');
INSERT INTO `t_s_region` VALUES ('845', '于洪区', '71', 'Yuhong Qu ');
INSERT INTO `t_s_region` VALUES ('846', '辽中县', '71', 'Liaozhong Xian');
INSERT INTO `t_s_region` VALUES ('847', '康平县', '71', 'Kangping Xian');
INSERT INTO `t_s_region` VALUES ('848', '法库县', '71', 'Faku Xian');
INSERT INTO `t_s_region` VALUES ('849', '新民市', '71', 'Xinmin Shi');
INSERT INTO `t_s_region` VALUES ('85', '长春市', '8', 'Changchun Shi ');
INSERT INTO `t_s_region` VALUES ('850', '市辖区', '72', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('851', '中山区', '72', 'Zhongshan Qu');
INSERT INTO `t_s_region` VALUES ('852', '西岗区', '72', 'Xigang Qu');
INSERT INTO `t_s_region` VALUES ('853', '沙河口区', '72', 'Shahekou Qu');
INSERT INTO `t_s_region` VALUES ('854', '甘井子区', '72', 'Ganjingzi Qu');
INSERT INTO `t_s_region` VALUES ('855', '旅顺口区', '72', 'Lvshunkou Qu ');
INSERT INTO `t_s_region` VALUES ('856', '金州区', '72', 'Jinzhou Qu');
INSERT INTO `t_s_region` VALUES ('857', '长海县', '72', 'Changhai Xian');
INSERT INTO `t_s_region` VALUES ('858', '瓦房店市', '72', 'Wafangdian Shi');
INSERT INTO `t_s_region` VALUES ('859', '普兰店市', '72', 'Pulandian Shi');
INSERT INTO `t_s_region` VALUES ('86', '吉林市', '8', 'Jilin Shi ');
INSERT INTO `t_s_region` VALUES ('860', '庄河市', '72', 'Zhuanghe Shi');
INSERT INTO `t_s_region` VALUES ('861', '市辖区', '73', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('862', '铁东区', '73', 'Tiedong Qu ');
INSERT INTO `t_s_region` VALUES ('863', '铁西区', '73', 'Tiexi Qu');
INSERT INTO `t_s_region` VALUES ('864', '立山区', '73', 'Lishan Qu');
INSERT INTO `t_s_region` VALUES ('865', '千山区', '73', 'Qianshan Qu ');
INSERT INTO `t_s_region` VALUES ('866', '台安县', '73', 'Tai,an Xian');
INSERT INTO `t_s_region` VALUES ('867', '岫岩满族自治县', '73', 'Xiuyan Manzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('868', '海城市', '73', 'Haicheng Shi');
INSERT INTO `t_s_region` VALUES ('869', '市辖区', '74', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('87', '四平市', '8', 'Siping Shi');
INSERT INTO `t_s_region` VALUES ('870', '新抚区', '74', 'Xinfu Qu');
INSERT INTO `t_s_region` VALUES ('871', '东洲区', '74', 'Dongzhou Qu');
INSERT INTO `t_s_region` VALUES ('872', '望花区', '74', 'Wanghua Qu');
INSERT INTO `t_s_region` VALUES ('873', '顺城区', '74', 'Shuncheng Qu');
INSERT INTO `t_s_region` VALUES ('874', '抚顺县', '74', 'Fushun Xian');
INSERT INTO `t_s_region` VALUES ('875', '新宾满族自治县', '74', 'Xinbinmanzuzizhi Xian');
INSERT INTO `t_s_region` VALUES ('876', '清原满族自治县', '74', 'Qingyuanmanzuzizhi Xian');
INSERT INTO `t_s_region` VALUES ('877', '市辖区', '75', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('878', '平山区', '75', 'Pingshan Qu');
INSERT INTO `t_s_region` VALUES ('879', '溪湖区', '75', 'Xihu Qu ');
INSERT INTO `t_s_region` VALUES ('88', '辽源市', '8', 'Liaoyuan Shi');
INSERT INTO `t_s_region` VALUES ('880', '明山区', '75', 'Mingshan Qu');
INSERT INTO `t_s_region` VALUES ('881', '南芬区', '75', 'Nanfen Qu');
INSERT INTO `t_s_region` VALUES ('882', '本溪满族自治县', '75', 'Benxi Manzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('883', '桓仁满族自治县', '75', 'Huanren Manzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('884', '市辖区', '76', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('885', '元宝区', '76', 'Yuanbao Qu');
INSERT INTO `t_s_region` VALUES ('886', '振兴区', '76', 'Zhenxing Qu ');
INSERT INTO `t_s_region` VALUES ('887', '振安区', '76', 'Zhen,an Qu');
INSERT INTO `t_s_region` VALUES ('888', '宽甸满族自治县', '76', 'Kuandian Manzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('889', '东港市', '76', 'Donggang Shi');
INSERT INTO `t_s_region` VALUES ('89', '通化市', '8', 'Tonghua Shi');
INSERT INTO `t_s_region` VALUES ('890', '凤城市', '76', 'Fengcheng Shi');
INSERT INTO `t_s_region` VALUES ('891', '市辖区', '77', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('892', '古塔区', '77', 'Guta Qu');
INSERT INTO `t_s_region` VALUES ('893', '凌河区', '77', 'Linghe Qu');
INSERT INTO `t_s_region` VALUES ('894', '太和区', '77', 'Taihe Qu');
INSERT INTO `t_s_region` VALUES ('895', '黑山县', '77', 'Heishan Xian');
INSERT INTO `t_s_region` VALUES ('896', '义县', '77', 'Yi Xian');
INSERT INTO `t_s_region` VALUES ('897', '凌海市', '77', 'Linghai Shi ');
INSERT INTO `t_s_region` VALUES ('898', '北镇市', '77', 'Beining Shi');
INSERT INTO `t_s_region` VALUES ('899', '市辖区', '78', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('9', '黑龙江省', '1', 'Heilongjiang Sheng');
INSERT INTO `t_s_region` VALUES ('90', '白山市', '8', 'Baishan Shi');
INSERT INTO `t_s_region` VALUES ('900', '站前区', '78', 'Zhanqian Qu');
INSERT INTO `t_s_region` VALUES ('901', '西市区', '78', 'Xishi Qu');
INSERT INTO `t_s_region` VALUES ('902', '鲅鱼圈区', '78', 'Bayuquan Qu');
INSERT INTO `t_s_region` VALUES ('903', '老边区', '78', 'Laobian Qu');
INSERT INTO `t_s_region` VALUES ('904', '盖州市', '78', 'Gaizhou Shi');
INSERT INTO `t_s_region` VALUES ('905', '大石桥市', '78', 'Dashiqiao Shi');
INSERT INTO `t_s_region` VALUES ('906', '市辖区', '79', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('907', '海州区', '79', 'Haizhou Qu');
INSERT INTO `t_s_region` VALUES ('908', '新邱区', '79', 'Xinqiu Qu');
INSERT INTO `t_s_region` VALUES ('909', '太平区', '79', 'Taiping Qu');
INSERT INTO `t_s_region` VALUES ('91', '松原市', '8', 'Songyuan Shi');
INSERT INTO `t_s_region` VALUES ('910', '清河门区', '79', 'Qinghemen Qu');
INSERT INTO `t_s_region` VALUES ('911', '细河区', '79', 'Xihe Qu');
INSERT INTO `t_s_region` VALUES ('912', '阜新蒙古族自治县', '79', 'Fuxin Mongolzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('913', '彰武县', '79', 'Zhangwu Xian');
INSERT INTO `t_s_region` VALUES ('914', '市辖区', '80', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('915', '白塔区', '80', 'Baita Qu');
INSERT INTO `t_s_region` VALUES ('916', '文圣区', '80', 'Wensheng Qu');
INSERT INTO `t_s_region` VALUES ('917', '宏伟区', '80', 'Hongwei Qu');
INSERT INTO `t_s_region` VALUES ('918', '弓长岭区', '80', 'Gongchangling Qu');
INSERT INTO `t_s_region` VALUES ('919', '太子河区', '80', 'Taizihe Qu');
INSERT INTO `t_s_region` VALUES ('92', '白城市', '8', 'Baicheng Shi');
INSERT INTO `t_s_region` VALUES ('920', '辽阳县', '80', 'Liaoyang Xian');
INSERT INTO `t_s_region` VALUES ('921', '灯塔市', '80', 'Dengta Shi');
INSERT INTO `t_s_region` VALUES ('922', '市辖区', '81', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('923', '双台子区', '81', 'Shuangtaizi Qu');
INSERT INTO `t_s_region` VALUES ('924', '兴隆台区', '81', 'Xinglongtai Qu');
INSERT INTO `t_s_region` VALUES ('925', '大洼县', '81', 'Dawa Xian');
INSERT INTO `t_s_region` VALUES ('926', '盘山县', '81', 'Panshan Xian');
INSERT INTO `t_s_region` VALUES ('927', '市辖区', '82', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('928', '银州区', '82', 'Yinzhou Qu');
INSERT INTO `t_s_region` VALUES ('929', '清河区', '82', 'Qinghe Qu');
INSERT INTO `t_s_region` VALUES ('93', '延边朝鲜族自治州', '8', 'Yanbian Chosenzu Zizhizhou');
INSERT INTO `t_s_region` VALUES ('930', '铁岭县', '82', 'Tieling Xian');
INSERT INTO `t_s_region` VALUES ('931', '西丰县', '82', 'Xifeng Xian');
INSERT INTO `t_s_region` VALUES ('932', '昌图县', '82', 'Changtu Xian');
INSERT INTO `t_s_region` VALUES ('933', '调兵山市', '82', 'Diaobingshan Shi');
INSERT INTO `t_s_region` VALUES ('934', '开原市', '82', 'Kaiyuan Shi');
INSERT INTO `t_s_region` VALUES ('935', '市辖区', '83', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('936', '双塔区', '83', 'Shuangta Qu');
INSERT INTO `t_s_region` VALUES ('937', '龙城区', '83', 'Longcheng Qu');
INSERT INTO `t_s_region` VALUES ('938', '朝阳县', '83', 'Chaoyang Xian');
INSERT INTO `t_s_region` VALUES ('939', '建平县', '83', 'Jianping Xian');
INSERT INTO `t_s_region` VALUES ('94', '哈尔滨市', '9', 'Harbin Shi');
INSERT INTO `t_s_region` VALUES ('940', '喀喇沁左翼蒙古族自治县', '83', 'Harqin Zuoyi Mongolzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('941', '北票市', '83', 'Beipiao Shi');
INSERT INTO `t_s_region` VALUES ('942', '凌源市', '83', 'Lingyuan Shi');
INSERT INTO `t_s_region` VALUES ('943', '市辖区', '84', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('944', '连山区', '84', 'Lianshan Qu');
INSERT INTO `t_s_region` VALUES ('945', '龙港区', '84', 'Longgang Qu');
INSERT INTO `t_s_region` VALUES ('946', '南票区', '84', 'Nanpiao Qu');
INSERT INTO `t_s_region` VALUES ('947', '绥中县', '84', 'Suizhong Xian');
INSERT INTO `t_s_region` VALUES ('948', '建昌县', '84', 'Jianchang Xian');
INSERT INTO `t_s_region` VALUES ('949', '兴城市', '84', 'Xingcheng Shi');
INSERT INTO `t_s_region` VALUES ('95', '齐齐哈尔市', '9', 'Qiqihar Shi');
INSERT INTO `t_s_region` VALUES ('950', '市辖区', '85', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('951', '南关区', '85', 'Nanguan Qu');
INSERT INTO `t_s_region` VALUES ('952', '宽城区', '85', 'Kuancheng Qu');
INSERT INTO `t_s_region` VALUES ('953', '朝阳区', '85', 'Chaoyang Qu ');
INSERT INTO `t_s_region` VALUES ('954', '二道区', '85', 'Erdao Qu');
INSERT INTO `t_s_region` VALUES ('955', '绿园区', '85', 'Lvyuan Qu');
INSERT INTO `t_s_region` VALUES ('956', '双阳区', '85', 'Shuangyang Qu');
INSERT INTO `t_s_region` VALUES ('957', '农安县', '85', 'Nong,an Xian ');
INSERT INTO `t_s_region` VALUES ('958', '九台市', '85', 'Jiutai Shi');
INSERT INTO `t_s_region` VALUES ('959', '榆树市', '85', 'Yushu Shi');
INSERT INTO `t_s_region` VALUES ('96', '鸡西市', '9', 'Jixi Shi');
INSERT INTO `t_s_region` VALUES ('960', '德惠市', '85', 'Dehui Shi');
INSERT INTO `t_s_region` VALUES ('961', '市辖区', '86', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('962', '昌邑区', '86', 'Changyi Qu');
INSERT INTO `t_s_region` VALUES ('963', '龙潭区', '86', 'Longtan Qu');
INSERT INTO `t_s_region` VALUES ('964', '船营区', '86', 'Chuanying Qu');
INSERT INTO `t_s_region` VALUES ('965', '丰满区', '86', 'Fengman Qu');
INSERT INTO `t_s_region` VALUES ('966', '永吉县', '86', 'Yongji Xian');
INSERT INTO `t_s_region` VALUES ('967', '蛟河市', '86', 'Jiaohe Shi');
INSERT INTO `t_s_region` VALUES ('968', '桦甸市', '86', 'Huadian Shi');
INSERT INTO `t_s_region` VALUES ('969', '舒兰市', '86', 'Shulan Shi');
INSERT INTO `t_s_region` VALUES ('97', '鹤岗市', '9', 'Hegang Shi');
INSERT INTO `t_s_region` VALUES ('970', '磐石市', '86', 'Panshi Shi');
INSERT INTO `t_s_region` VALUES ('971', '市辖区', '87', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('972', '铁西区', '87', 'Tiexi Qu');
INSERT INTO `t_s_region` VALUES ('973', '铁东区', '87', 'Tiedong Qu ');
INSERT INTO `t_s_region` VALUES ('974', '梨树县', '87', 'Lishu Xian');
INSERT INTO `t_s_region` VALUES ('975', '伊通满族自治县', '87', 'Yitong Manzu Zizhixian');
INSERT INTO `t_s_region` VALUES ('976', '公主岭市', '87', 'Gongzhuling Shi');
INSERT INTO `t_s_region` VALUES ('977', '双辽市', '87', 'Shuangliao Shi');
INSERT INTO `t_s_region` VALUES ('978', '市辖区', '88', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('979', '龙山区', '88', 'Longshan Qu');
INSERT INTO `t_s_region` VALUES ('98', '双鸭山市', '9', 'Shuangyashan Shi');
INSERT INTO `t_s_region` VALUES ('980', '西安区', '88', 'Xi,an Qu');
INSERT INTO `t_s_region` VALUES ('981', '东丰县', '88', 'Dongfeng Xian');
INSERT INTO `t_s_region` VALUES ('982', '东辽县', '88', 'Dongliao Xian ');
INSERT INTO `t_s_region` VALUES ('983', '市辖区', '89', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('984', '东昌区', '89', 'Dongchang Qu');
INSERT INTO `t_s_region` VALUES ('985', '二道江区', '89', 'Erdaojiang Qu');
INSERT INTO `t_s_region` VALUES ('986', '通化县', '89', 'Tonghua Xian ');
INSERT INTO `t_s_region` VALUES ('987', '辉南县', '89', 'Huinan Xian ');
INSERT INTO `t_s_region` VALUES ('988', '柳河县', '89', 'Liuhe Xian ');
INSERT INTO `t_s_region` VALUES ('989', '梅河口市', '89', 'Meihekou Shi');
INSERT INTO `t_s_region` VALUES ('99', '大庆市', '9', 'Daqing Shi');
INSERT INTO `t_s_region` VALUES ('990', '集安市', '89', 'Ji,an Shi');
INSERT INTO `t_s_region` VALUES ('991', '市辖区', '90', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('992', '八道江区', '90', 'Badaojiang Qu');
INSERT INTO `t_s_region` VALUES ('993', '抚松县', '90', 'Fusong Xian');
INSERT INTO `t_s_region` VALUES ('994', '靖宇县', '90', 'Jingyu Xian');
INSERT INTO `t_s_region` VALUES ('995', '长白朝鲜族自治县', '90', 'Changbaichaoxianzuzizhi Xian');
INSERT INTO `t_s_region` VALUES ('996', '江源区', '90', 'Jiangyuan Xian');
INSERT INTO `t_s_region` VALUES ('997', '临江市', '90', 'Linjiang Shi');
INSERT INTO `t_s_region` VALUES ('998', '市辖区', '91', 'Shixiaqu');
INSERT INTO `t_s_region` VALUES ('999', '宁江区', '91', 'Ningjiang Qu');

-- ----------------------------
-- Table structure for t_s_role
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role`;
CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `rolecode` varchar(10) DEFAULT NULL COMMENT '角色编码',
  `rolename` varchar(100) NOT NULL COMMENT '角色名字',
  `depart_ag_id` varchar(32) DEFAULT NULL COMMENT '部门权限组ID',
  `role_type` varchar(2) DEFAULT NULL COMMENT '类型1部门角色/0系统角色',
  `update_name` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id',
  `create_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role
-- ----------------------------
INSERT INTO `t_s_role` VALUES ('402880e74d75c4dd014d75d3c5f40001', 'demo', 'demo', null, '0', '管理员', '2017-03-01 21:54:06', 'admin', null, null, null);
INSERT INTO `t_s_role` VALUES ('402881875b19f141015b19fb1d490019', 'dep_jingli', '经理角色', null, '0', null, null, null, '管理员', '2017-03-29 20:12:19', 'admin');
INSERT INTO `t_s_role` VALUES ('402881f36381446901638178a8af0042', '222', '国炬研发', '402881f4609299ad0160929bd4ac000c', '1', '张代浩', '2018-07-05 13:26:15', 'scott', null, null, null);
INSERT INTO `t_s_role` VALUES ('402881f3641ccf5601641cd30fa60055', 'sale2', '销售经理角色2', '402881f3641ccf5601641cd174e2002a', '1', null, null, null, '管理员', '2018-06-20 18:52:31', 'admin');
INSERT INTO `t_s_role` VALUES ('402881f36468e19e016468e7f12a0003', 'gj_cw', '国炬财务部', '402881f4609299ad0160929bd4ac000c', '1', null, null, null, '张代浩', '2018-07-05 13:26:28', 'scott');
INSERT INTO `t_s_role` VALUES ('8a8ab0b246dc81120146dc8181870050', 'admin', '管理员', null, '0', '管理员', '2018-03-14 17:15:57', 'admin', null, null, null);
INSERT INTO `t_s_role` VALUES ('8a8ab0b246dc81120146dc81818b0051', 'manager', '普通用户', null, '0', '管理员', '2016-05-29 17:42:19', 'admin', null, null, null);

-- ----------------------------
-- Table structure for t_s_role_function
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_function`;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `operation` varchar(1000) DEFAULT NULL COMMENT '页面控件权限编码',
  `functionid` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `roleid` varchar(32) DEFAULT NULL COMMENT '角色ID',
  `datarule` varchar(1000) DEFAULT NULL COMMENT '数据权限规则ID',
  PRIMARY KEY (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_function
-- ----------------------------
INSERT INTO `t_s_role_function` VALUES ('40283181614231d40161423538320006', null, '40283181614231d401614232cd1c0001', '402880e74d75c4dd014d75d3c5f40001', '40283181614231d401614234fe670003,');
INSERT INTO `t_s_role_function` VALUES ('40283181614231d40161423561340007', null, '8a8ab0b246dc81120146dc818109002e', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('40283181614231d40161423561370008', null, '2c90ac564c9d1734014c9d6f4e370024', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('40283181614231d40161424756b0001e', null, '40287d81522a428401522a44aafb0002', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('4028318161424e73016142501c930006', null, '4028318161424e730161424f61510002', '402880e74d75c4dd014d75d3c5f40001', '4028318161424e730161424fca6f0004,');
INSERT INTO `t_s_role_function` VALUES ('4028318163342ab60163342ce743000a', null, '4028ef8155fd32e40155fd33c6670001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a49af90163a4c5310c0003', null, '4028948150f5ba6a0150f5d0b0200004', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a49af90163a4c531200004', null, '4028ef815373fb53015373ff521d0005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a49af90163a4c531200005', null, '4028ef81535fff5101536001bb8d0005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a49af90163a4c531200007', null, '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a49af90163a4c531200008', null, '4028ef815373fb53015373fef1c50003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a49af90163a4c531210009', null, '4028ef815378741f0153787764cc0004', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a49af90163a4c53121000a', null, '402880e74d76e784014d76f5cc2e0014', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a49af90163a4c53121000b', null, '4028948150f5ba6a0150f5d34aca000a', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028318163a6865d0163a68ac9250002', null, '402881f463a591710163a5e59a830010', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('40284a815bb75d7b015bb760d9130003', null, '40284a815bb75d7b015bb7607ba00001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('40286081649c000301649c02b1730006', null, '40286081648332f8016483352acf0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028608164fda2230164fdadc4d40001', null, '40289181647d9d4a01647daaa4ce0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028608164fda2230164fdadc4dc0002', null, '4028f68164cfec7b0164d07373540002', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028608164fda2230164fdadc4dd0003', null, '4028ef815378741f01537879315e0009', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028608164fda2230164fdadc4dd0004', null, '402881fa64a1ca500164a1d549e40001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028608164fda2230164fdadc4dd0005', null, '4028810a64e8d94d0164e9033a580005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028608164fda2230164fdadc4dd0006', null, '4028f68164caf6520164cb5d79670004', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028608164fda2230164fdadc4dd0007', null, '4028f68164caf6520164cb5ecade0006', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('40288018605416db01605421917c0003', null, '40288018605416db0160542132600001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880e55bcd2bfb015bcd3cb49f0003', null, '402881ea5bc9abd3015bc9b2ebe10001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5cbe667c015cbe67bcc50006', null, '4028ef8155fd32e40155fd344cddd3', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5cc39343015cc3ac24dd0003', null, '8a8ab0b246dc81120146dc8180df001f', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5ddec439015ddf6d0f1d0028', null, '4028f6815af6de95015af6e078420001', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5ddfdd26015ddfdff408000c', null, '402880ec5cc40078015cc43430e80061', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5ddfdd26015ddfdff40b000d', null, '4028ab775dca0d1b015dca3fccb60016', '402880e74d75c4dd014d75d3c5f40001', '4028ab775dca0d1b015dca4183530018,402880ec5ddfdd26015ddfe3e0570011,');
INSERT INTO `t_s_role_function` VALUES ('402880ec5de46aa9015de46b71d80001', null, '297e7ae15de05304015de07b35de0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5e092173015e092345e90003', null, '402881ef5e087320015e087a17570001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ec5e0e655a015e0e6653ff0001', null, '402880e95e07dd00015e07e93bb60001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff44230f0003', null, '8a8ab0b246dc81120146dc81811d0032', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423120004', null, '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423120005', null, '8a8ab0b246dc81120146dc8181100030', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423120006', null, '8a8ab0b246dc81120146dc818109002e', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423120007', null, '40287d81522a428401522a44aafb0002', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423120009', null, '8a8ab0b246dc81120146dc8180df001f', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442312000b', null, '402882b54df53718014df538fc100001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442313000c', null, '8a8ab0b246dc81120146dc8181250034', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442313000d', null, '8a8ab0b246dc81120146dc8180e70023', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442313000e', null, '8a8ab0b246dc81120146dc8180ee0025', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff442313000f', null, '402885814e3d2d09014e3d2e77800001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423130010', null, '8a8ab0b246dc81120146dc818106002d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423130011', null, '8a8ab0b246dc81120146dc8180f60028', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423130012', null, '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423130013', null, '4028bc934869765001486977f0980001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423130014', null, '4028f6815af3ce54015af3d1ad610001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423140016', null, '402881c746de1ea60146de207d770001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff3ede015aff4423140017', null, '2c90ac564c9d1734014c9d6f4e370024', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff7f22015aff7f927b0001', null, '4028f6815af3ce54015af3d1f52c0003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff7f22015aff7f927e0002', null, '4028f6815af750eb015af755e1ca0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff7f22015aff7f927e0003', null, '4028f6815af9fb56015af9fc51d30001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff7f22015aff7f927e0004', null, '4028f6815af5ca04015af5cbf9300001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff7f22015aff7f927e0005', null, '4028f6815af6de95015af6e078420001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff7f22015aff7f927f0006', null, '4028f6815afa8964015afa8a63e20001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5aff7f22015aff7f927f0007', '402881875b1a8040015b1a84fd800001,', '4028f6815af5e479015af5f08dc4001a', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5affc86b015affda56680007', null, '4028ef8155fd32e40155fd344cdd0003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5affc86b015affda566b0009', null, '402881875992e76c015992eb2a3b0009', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5affc86b015affda566b000a', null, '4028ef8155fd32e40155fd348df80005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5affc86b015affda566b000c', null, '4028ef8155fd32e40155fd3564520008', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332a0005', null, '4028ef815378be7c015378e1395d0008', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332c0006', null, '4028ef815378be7c015378e3e6530013', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332c0007', null, '4028ef815378be7c015378e30f760010', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332c0008', null, '4028ef815378be7c015378e207cf000c', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332c0009', null, '4028ef815378be7c015378e27ae5000e', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332d000a', null, '4028ef815378be7c015378e19969000a', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332d000b', null, '4028ef815378be7c015378ddc2380001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332d000c', null, '4028ef815378be7c015378e0d39d0006', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880ef5b002b87015b004d332d000d', null, '4028ef815378be7c015378e019750003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b0da07e015b0da46ac30009', null, '4028f6815b0b1017015b0b1265cf0002', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b137015015b1370c1ff000c', null, '402880e448a28b750148a290c0e50001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b182dcf015b1839b06f0007', null, '8a8ab0b246dc81120146dc8180ce0019', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b182dcf015b1839b0730008', '', '8a8ab0b246dc81120146dc818106002d', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b182dcf015b185e0a9c0028', null, '4028f6815af3ce54015af3d1ad610001', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b182dcf015b18611d570031', '402880f25b182dcf015b1860f334002f,402880f25b182dcf015b18632e970036,402880f25b182dcf015b187b464a004b,', '4028f6815af5ca04015af5cbf9300001', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b18e3ab015b1902224b0004', '402880f25a980e2a015a981e9e460008,402881855ab8c48a015ab8c945a70008,', '402880f25a980e2a015a981dc8de0005', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b18e3ab015b1902224e0005', null, '402889fb486e848101486e8de3d60005', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b18e3ab015b191afdaa000c', '402880f25a9833f5015a9844ed14000f,402881855ab8c48a015ab8caa347000a,', '402880f25a9833f5015a9843218f000c', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b18e3ab015b196f88ff0023', null, '8a8ab0b246dc81120146dc8180d2001a', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b19976c015b19a09e280009', '', '4028f6815af5e479015af5f08dc4001a', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b19976c015b19a1d6510013', null, '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d71e5a90004', null, '402881855ab8c48a015ab8d133050018', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d71e5ab0005', '402881855ab8c48a015ab8d331b1001e,', '402881855ab8c48a015ab8d1f96f001b', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d747dfe000d', null, '402880e74d76e784014d76f5505a0012', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d74a94b000e', '', '402880e74d76e784014d76f5cc2e0014', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1d781ada0017', '402880f25b1d5a3a015b1d77ff6a0015,', '402880f25b1d5a3a015b1d772c2b0013', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1db9fee60058', null, '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1db9fee60059', null, '402880e74d76e784014d76f5505a0012', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b1d5a3a015b1db9fee6005a', null, '8a8ab0b246dc81120146dc818106002d', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402880f25b23a635015b23abbf770008', '402880f25b23a635015b23ab94b60006,402880f25b23a635015b23ad152f000d,', '402880f25b23a635015b23a992f10003', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402880f35b6686ba015b6693c3e90001', null, '8a8ab0b246dc81120146dc8180f30027', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880f35c4407e4015c440fdbbc0005', null, '4028fbc65c3ab6e3015c3ab7ba690003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880f95e54d7aa015e54ddac040018', null, '8a8ab0b246dc81120146dc8180d2001a', '402881875b19f141015b19fb1d490019', null);
INSERT INTO `t_s_role_function` VALUES ('402880f95e56755d015e567876ed000c', null, '402880e74d76e784014d76f5505a0012', '402881875b19f141015b19fb1d490019', null);
INSERT INTO `t_s_role_function` VALUES ('4028810260a209160160a209d57a0001', null, '402881fc60a07a350160a07da5720005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028810260a209160160a209d57d0002', null, '402881fc60a07a350160a07cf68e0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028810260a209160160a209d57d0003', null, '402881fc60a07a350160a07d4f860003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028810260c422c30160c423823d0001', null, '297e7ae160baa7ec0160baa977980001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028810260c620400160c62536540001', null, '402881fc60c0d2d50160c0d860b00001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028810962cc5dd80162cc6371cd0001', null, '402881f462bcd9fe0162bcdd0e4c0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028810962e12f590162e134e7960001', null, '297e7ae162b925a20162b9271b300001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855afb59f7015afc6123c7000e', null, '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855afbcdf7015afc6123c7000e', null, '8a8ab0b246dc81120146dc8180e30021', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380a0003', null, '4028808848845c0f014884649488000c', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380e0004', null, '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380e0005', null, '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380e0006', null, '402880e74d76e784014d76fd1bd60030', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380e0007', null, '402880e74d76e784014d76fa7e970024', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380e0008', null, '4028808848845c0f01488462658f0006', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380e0009', null, '4028808848845c0f01488463aa210009', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380f000a', null, '8a8ab0b246dc81120146dc8180fe002b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b04244f015b0426380f000b', null, '4028808848845c0f01488461b3ac0004', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855b05d2c4015b05f2ae6a0004', null, '402880ea53303a060153304a9ad50001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855bdd0712015bdd0822c20003', null, '402881ea5bcd7fd0015bcd8b5eae0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855c0190fa015c019363070005', null, '402881855c0190fa015c019342b20003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881855c1c1c38015c1c2096780005', null, '40284a815c1bac76015c1bc02abe0003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881865b4cf7aa015b4cfa85d90006', null, '40284a815b48b411015b48b56fd80001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881865c5eec5e015c5eed38820002', null, '4028fbc65c56ece6015c56f508300002', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881875b19f141015b19fbb1ae001f', null, '4028f6815af3ce54015af3d1ad610001', '402881875b19f141015b19fb1d490019', null);
INSERT INTO `t_s_role_function` VALUES ('402881875b19f141015b19fbb1af0020', null, '402889fb486e848101486e8de3d60005', '402881875b19f141015b19fb1d490019', null);
INSERT INTO `t_s_role_function` VALUES ('402881875b19f141015b19fbb1af0021', null, '4028f6815af5e479015af5f08dc4001a', '402881875b19f141015b19fb1d490019', null);
INSERT INTO `t_s_role_function` VALUES ('402881875b246b3f015b246ce6d70003', null, '8a8ab0b246dc81120146dc8180e70023', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402881e45e5bc4e3015e5bc767790010', null, '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461d010210161d06da9d50002', null, '4028b88161cdb43d0161cdb5ebc90001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a30001', null, '4028810061e642f90161e64423280001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a80002', null, '4028810061e642f90161e6472d80000b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a80003', null, '4028810061e642f90161e646cf6d0009', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a90004', null, '4028810061f41d790161f4221297000b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a90005', null, '4028810061e642f90161e6496fc50013', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a90006', null, '4028810061f3d1b70161f41676110001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a90007', null, '4028810061e642f90161e648ba7f0011', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a90008', null, '4028810061f41d790161f4e293140015', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a90009', null, '4028810061f3d1b70161f417b8d60007', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a9000a', null, '4028810061e642f90161e647ac07000d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a9000b', null, '4028810061e65b1c0161e65d64db0005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06a9000c', null, '4028810061f3d1b70161f4186787000c', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa000d', null, '4028810061f41d790161f42018990004', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa000e', null, '4028810061e65b1c0161e65c0aa30001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa000f', null, '4028810061f41d790161f4e3e901001a', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa0010', null, '4028810061f3d1b70161f417de080009', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa0011', null, '4028810061f41d790161f41ed05f0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa0012', null, '4028810061e634380161e635df420001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa0013', null, '4028810061f41d790161f420c3340007', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa0014', null, '4028810061f41d790161f4e374890018', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06aa0015', null, '4028810061f3d1b70161f4176b780005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06ab0016', null, '4028810061e65b1c0161e65d04920003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06ab0017', null, '4028810061e642f90161e646299b0007', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06ab0018', null, '4028810061e5f4680161e5f60ac70001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06ab0019', null, '4028810061f3d1b70161f417147a0003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06ab001a', null, '4028810061e642f90161e64823e9000f', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e461ff575f0161ff5c06ab001b', null, '4028810061f41d790161f42104c90009', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e55de5aead015de64419c50006', null, '402881e55de5aead015de643eaed0004', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e5626a5ec701626a6892ab0001', null, '402881ff6265de9b016266eb26380035', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e5626a911e01626a9205ad0001', null, '402881f66260fc8e016260ffdde70001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881e960439a240160439b572b0001', null, '297edb626033bbcb016033fd0a190001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f15e6f6706015e6f6858710001', null, '402881e45e6b867a015e6c539b8a000d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f15e848376015e848480f20001', null, '297e7ae15e7e8929015e7e9bb4910002', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f15e896251015e89871a4f0008', null, '297e7ae15e84b2cd015e84b4a1a00001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f15e92d744015e92da72aa0002', null, '297e7ae15e84b2cd015e84b4a1a00451', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f263dd1d8f0163de0660e70069', null, '402881f263dd1d8f0163de06421c0067', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3630647fc016306492eff0001', null, '402881f462fa6ee90162fa78deba0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3632f3e9f01632f4093a00003', null, '4028f681630b600701630bc1eee30030', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3632f3e9f01632f4093a60004', null, '402860816329336901632a527c4d0028', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3636423d20163642500250001', null, '402860816361f06a016361f1be0d0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f363b5ea020163b5eae7b50001', null, '402881f463b56b950163b5aefcdb0002', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f363b610230163b611682d0002', null, '402881f463b4e5d20163b4f9a81b0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f363ecae1e0163ecb316980002', null, '4028810061f41d790161f4221297000b', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402881f363ecae1e0163ecb316a20003', null, '8a8ab0b246dc81120146dc8180d4001b', '402880e74d75c4dd014d75d3c5f40001', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36403297f0164032a1d3f0001', null, '4028f6816402785c0164027969d20001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3641ccf5601641cd091060027', null, '8a8ab0b246dc81120146dc8180d4001b', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3641ccf5601641cd091090028', null, '4028810061f41d790161f42018990004', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3641ccf5601641cd091090029', null, '4028810061f41d790161f41ed05f0001', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3641ccf5601641cd8b292005a', null, '297e7ae160909a6f016090a112a50007', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3641ccf5601641cd8b295005b', null, '297e7ae160909a6f016090a0d3c80005', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3641ccf5601641cd8b296005d', null, '402881f4609299ad0160929ab2e00001', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402881f3643ff24a01643ff391700001', null, '4028f681643b2e6401643b3aeba50001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e8279d0004', null, '4028810061e65b1c0161e65d64db0005', '402881f36468e19e016468e7f12a0003', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e827a00005', null, '8a8ab0b246dc81120146dc8180d4001b', '402881f36468e19e016468e7f12a0003', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e827a00006', null, '4028810061e65b1c0161e65c0aa30001', '402881f36468e19e016468e7f12a0003', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e827a00007', null, '4028810061e65b1c0161e65d04920003', '402881f36468e19e016468e7f12a0003', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e83ce70008', null, '402880e74d76e784014d76fa7e970024', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e83ced0009', null, '402880e74d76e784014d76fd1bd60030', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e83cee000a', null, '4028810061f41d790161f4e293140015', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e83cee000b', null, '8a8ab0b246dc81120146dc8180fe002b', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e83cef000c', null, '4028810061f41d790161f4e3e901001a', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e83cef000d', null, '4028f6815b0b1017015b0b1265cf0002', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e83cef000e', null, '297e7ae1612b322b01612b56abc00002', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f36468e19e016468e83cef000f', null, '402881855c0190fa015c019342b20003', '402881f36381446901638178a8af0042', null);
INSERT INTO `t_s_role_function` VALUES ('402881f4609299ad0160929b92410006', null, '297e7ae160909a6f016090a05e590003', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f4609299ad0160929b92450007', null, '297e7ae160909a6f016090a112a50007', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f4609299ad0160929b92450008', null, '297e7ae160909a6f016090a0d3c80005', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f4609299ad0160929b92450009', null, '402881f4609299ad0160929ab2e00001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402881f66131d68d016131d76e240001', null, '297e7ae1612b322b01612b56abc00002', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028b29a5d86c6e5015d871225700009', null, '4028b29a5d86c6e5015d8711a0000007', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('ff8080815ffd3b5d015ffd3f36800003', null, 'ff8080815ffd3b5d015ffd3e74b40001', '8a8ab0b246dc81120146dc8181870050', null);

-- ----------------------------
-- Table structure for t_s_role_org
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_org`;
CREATE TABLE `t_s_role_org` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `org_id` varchar(32) DEFAULT NULL COMMENT '机构ID',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_org
-- ----------------------------

-- ----------------------------
-- Table structure for t_s_role_user
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_user`;
CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `roleid` varchar(32) DEFAULT NULL COMMENT '角色ID',
  `userid` varchar(32) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_user
-- ----------------------------
INSERT INTO `t_s_role_user` VALUES ('4028608164fda2230164fddaa4c10018', '8a8ab0b246dc81120146dc81818b0051', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_role_user` VALUES ('4028608164fda2230164fddad4e6001a', '8a8ab0b246dc81120146dc81818b0051', '8a8c82a35de421ab015de4228d400003');
INSERT INTO `t_s_role_user` VALUES ('4028608164fda2230164fddb199b001b', '8a8ab0b246dc81120146dc81818b0051', '402880e74d75c4dd014d75d44af30005');
INSERT INTO `t_s_role_user` VALUES ('4028608164fda2230164fddb9f4c001c', '8a8ab0b246dc81120146dc8181870050', '8a8c82a35de421ab015de4228d400003');
INSERT INTO `t_s_role_user` VALUES ('402881875988e889015988ec36940003', '402880e74d75c4dd014d75d3c5f40001', '402881875988e889015988ec36770001');
INSERT INTO `t_s_role_user` VALUES ('402881f363ca92820163ca930f300002', '402880e74d75c4dd014d75d3c5f40001', '402880e74d75c4dd014d75d44af30005');
INSERT INTO `t_s_role_user` VALUES ('402881f363f397740163f398abef0005', '8a8ab0b246dc81120146dc8181870050', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_role_user` VALUES ('402881f3641ccf5601641cd9e1450064', '402880e74d75c4dd014d75d3c5f40001', '8a8ab0b246dc81120146dc8181a60055');
INSERT INTO `t_s_role_user` VALUES ('402881f3641ccf5601641cda7eff0068', '402881f3641ccf5601641cd30fa60055', '8a8ab0b246dc81120146dc8181a60055');
INSERT INTO `t_s_role_user` VALUES ('402881f36469407401646940ec1f0002', '402881875b19f141015b19fb1d490019', '4028ef81538330cd01538333b7bc0001');
INSERT INTO `t_s_role_user` VALUES ('402881f3646940740164694417a6000c', '402880e74d75c4dd014d75d3c5f40001', '402881f36468e19e016468e950350012');
INSERT INTO `t_s_role_user` VALUES ('4028838d5f352254015f35267ba6000a', '402881875b19f141015b19fb1d490019', '8a8c82a35de421ab015de4228d400003');
INSERT INTO `t_s_role_user` VALUES ('4028ef815500fa15015500fbc3c50002', '8a8ab0b246dc81120146dc8181870050', '8a8ab0b246dc81120146dc8181a10054');
INSERT INTO `t_s_role_user` VALUES ('4028ef81563ae5be01563ae92de10004', '402880e74d75c4dd014d75d3c5f40001', '4028ef81563ae5be01563ae92d7f0002');

-- ----------------------------
-- Table structure for t_s_sms_template_sql
-- ----------------------------
DROP TABLE IF EXISTS `t_s_sms_template_sql`;
CREATE TABLE `t_s_sms_template_sql` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `code` varchar(32) DEFAULT NULL COMMENT '配置CODE',
  `name` varchar(32) DEFAULT NULL COMMENT '配置名称',
  `sql_id` varchar(32) DEFAULT NULL COMMENT '业务SQLID',
  `template_id` varchar(32) DEFAULT NULL COMMENT '消息模本ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_sms_template_sql
-- ----------------------------
INSERT INTO `t_s_sms_template_sql` VALUES ('8a71b40e4a386269014a3871f5ee0008', 'CZTX', '充值提醒配置', '8a71b40e4a386269014a3865f9a90001', '8a71b40e4a386269014a38701cff0005', '2014-12-11 16:23:20', '4028d881436d514601436d5215ac0043', 'admin', null, '', '');

-- ----------------------------
-- Table structure for t_s_timetask
-- ----------------------------
DROP TABLE IF EXISTS `t_s_timetask`;
CREATE TABLE `t_s_timetask` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_NAME` varchar(32) DEFAULT NULL COMMENT '创建人名字',
  `CRON_EXPRESSION` varchar(100) NOT NULL COMMENT 'cron表达式',
  `IS_EFFECT` varchar(1) NOT NULL COMMENT '是否生效 0/未生效,1/生效',
  `IS_START` varchar(1) NOT NULL COMMENT '是否运行0停止,1运行',
  `TASK_DESCRIBE` varchar(50) NOT NULL COMMENT '任务描述',
  `TASK_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `CLASS_NAME` varchar(300) NOT NULL COMMENT '任务类名',
  `RUN_SERVER_IP` varchar(15) NOT NULL DEFAULT '本地' COMMENT '任务运行服务器IP',
  `RUN_SERVER` varchar(300) NOT NULL DEFAULT '本地' COMMENT '远程主机（域名/IP+项目路径）',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATE_NAME` varchar(32) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_timetask
-- ----------------------------
INSERT INTO `t_s_timetask` VALUES ('402880e74c79dd47014c79de88f70001', 'admin', '2015-04-02 19:22:49', '管理员', '0 0/1 * * * ?', '1', '0', '消息中间件定时任务', 'smsSendTaskCronTrigger', 'org.jeecgframework.web.system.sms.util.task.SmsSendTask', '127.0.0.1', '127.0.0.1:8080/jeecg', 'admin', '2018-06-09 00:44:07', '管理员');

-- ----------------------------
-- Table structure for t_s_type
-- ----------------------------
DROP TABLE IF EXISTS `t_s_type`;
CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `typecode` varchar(50) DEFAULT NULL COMMENT '字典编码',
  `typename` varchar(50) DEFAULT NULL COMMENT '字典名称',
  `typepid` varchar(32) DEFAULT NULL COMMENT '无用字段',
  `typegroupid` varchar(32) DEFAULT NULL COMMENT '字典组ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_name` varchar(36) DEFAULT NULL COMMENT '创建用户',
  `order_num` int(3) DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_type
-- ----------------------------
INSERT INTO `t_s_type` VALUES ('297e201047e95ee30147e9baab5c000b', '1', 'common.company', null, '297e201047e95ee30147e9ba56ce0009', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297e201047e95ee30147e9baef97000d', '2', 'common.department', null, '297e201047e95ee30147e9ba56ce0009', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297e201047e95ee30147e9bb1210000f', '3', 'common.position', null, '297e201047e95ee30147e9ba56ce0009', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297e7ae160c514780160c52ac2160007', '1', '系统用户', null, '297e7ae160c514780160c52a7d960005', '2018-01-05 15:13:22', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297e7ae160c514780160c52ae0f40009', '2', '接口用户', null, '297e7ae160c514780160c52a7d960005', null, null, null);
INSERT INTO `t_s_type` VALUES ('297e7ae160c5883b0160c5908885000b', '1', '高级工程师', null, '297e7ae160c536500160c57da86d0002', '2018-01-05 17:04:32', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297e7ae160c5883b0160c590a927000d', '2', '中级工程师', null, '297e7ae160c536500160c57da86d0002', '2018-01-05 17:04:40', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297e7ae160c5883b0160c590c8fe000f', '3', '初级工程师', null, '297e7ae160c536500160c57da86d0002', '2018-01-05 17:04:48', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020dc42730055', 'M', '主子表', null, '297edb626020600f016020db76e20053', '2017-12-04 17:29:54', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020dc7fb70057', 'S', '单表', null, '297edb626020600f016020db76e20053', null, null, null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020e28459005c', 'Y', '是', null, '297edb626020600f016020e214df005a', null, null, '1');
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020e2ea8f005e', 'N', '否', null, '297edb626020600f016020e214df005a', null, null, '2');
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020e6d8970063', 'n', 'int类型', null, '297edb626020600f016020e673be0061', '2017-12-04 17:41:28', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020e72aa30065', 'c', '字符串类型', null, '297edb626020600f016020e673be0061', '2017-12-04 17:41:49', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020e796f70067', 'd', '时间类型', null, '297edb626020600f016020e673be0061', '2017-12-04 17:42:17', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020e9df39006b', 'select', '下拉框', null, '297edb626020600f016020e9561e0069', '2017-12-04 17:44:46', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020ea2196006d', 'input', '输入框', null, '297edb626020600f016020e9561e0069', '2017-12-04 17:45:03', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020eab7e0006f', 'popup', '弹出框', null, '297edb626020600f016020e9561e0069', '2017-12-04 17:45:42', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020ec39a90071', 'date', '日期', null, '297edb626020600f016020e9561e0069', '2017-12-04 17:47:20', '管理员', null);
INSERT INTO `t_s_type` VALUES ('297edb626020600f016020edb8bc0073', 'datetime', '时间', null, '297edb626020600f016020e9561e0069', '2017-12-04 17:48:58', '管理员', null);
INSERT INTO `t_s_type` VALUES ('2c90ac564c9d1734014c9db1e025002d', 'Y', '是', null, '2c90ac564c9d1734014c9db1a167002b', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('2c90ac564c9d1734014c9db20b0d002f', 'N', '否', null, '2c90ac564c9d1734014c9db1a167002b', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('40284a815c1c18f7015c1c270f2b000c', '1', '是', null, '40284a815c1c18f7015c1c26c0bc000a', '2017-05-18 23:22:21', '管理员', null);
INSERT INTO `t_s_type` VALUES ('40284a815c1c18f7015c1c272ecf000e', '0', '否', null, '40284a815c1c18f7015c1c26c0bc000a', '2017-05-18 23:22:29', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028608164691b00016469289a040001', '3', '系统提醒模板', null, '8a71b40e4a38319b014a3858fca40018', '2018-07-05 14:37:05', '管理员', '3');
INSERT INTO `t_s_type` VALUES ('402880884883eff4014884180bf80029', '1', '蔷薇七村', null, '402880884883eff401488415cbb60027', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402880cd4dbd4baa014dbd9c184f0003', 'WXTP', '图片', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402880ec5cc40078015cc41b28ce0005', 'bdfl_include', '导入表单', null, '402881e54dcb624a014dcbf4912b000e', '2017-06-20 14:05:33', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028810260a209160160a21064a5000d', '2', '接口用户', null, '402881ee5f9ed537015f9edb53b90003', '2017-12-29 19:37:51', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881a151f1af7c0151f1bb1b520004', 'cigong', '辞工', null, '402881a151f1af7c0151f1b9d7f50002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881a151f1af7c0151f1bc55b10006', 'jicigong', '急辞工', null, '402881a151f1af7c0151f1b9d7f50002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881a151f1af7c0151f1bca0680008', 'citui', '辞退', null, '402881a151f1af7c0151f1b9d7f50002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881a151f1af7c0151f1bcbf62000a', 'kaichu', '开除', null, '402881a151f1af7c0151f1b9d7f50002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881a151f1af7c0151f1bce839000c', 'zidonglizhi', '自动离职', null, '402881a151f1af7c0151f1b9d7f50002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e44df713f5014df73ef09a003d', 'table', 'form.db.type.table', null, '402881e44df713f5014df738349c002f', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e44df713f5014df73f1436003f', 'sql', 'form.db.type.sql', null, '402881e44df713f5014df738349c002f', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e44df713f5014df73f3f830041', 'clazz', 'form.db.type.clazz', null, '402881e44df713f5014df738349c002f', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e54dcb624a014dcbf65e5a0010', 'bdfl_ptbd', '普通表单', null, '402881e54dcb624a014dcbf4912b000e', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e54dcb624a014dcbf6a4620012', 'bdfl_fzbd', '复杂表单', null, '402881e54dcb624a014dcbf4912b000e', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e54dce16ba014dce17990c0001', 'bdfl_vipbd', 'VIP表单', null, '402881e54dcb624a014dcbf4912b000e', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e55af64f07015af683bd930006', 'text', '单行文本输入框', null, '402881e55af64f07015af68356550004', '2017-03-22 22:55:13', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e55af64f07015af683f8910008', 'textarea', '多行文本输入框', null, '402881e55af64f07015af68356550004', '2017-03-22 22:55:28', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e55af64f07015af6866f2f000a', 'select', '下拉菜单', null, '402881e55af64f07015af68356550004', '2017-03-22 22:58:10', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e55af64f07015af686a8ca000c', 'radios', '单选框', null, '402881e55af64f07015af68356550004', '2017-03-22 22:58:25', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e55af64f07015af686eb55000e', 'checkboxs', '复选框', null, '402881e55af64f07015af68356550004', '2017-03-22 22:58:42', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e55af64f07015af689cf09001a', 'button', 'Button按钮控件', null, '402881e55af64f07015af68356550004', '2017-03-22 23:01:51', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e55b05c578015b060cbe480009', 'timeText', '时间控件精确秒', null, '402881e55af64f07015af68356550004', '2017-03-25 23:19:10', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e55b05c578015b060d087f000b', 'dateText', '时间控件精确天', null, '402881e55af64f07015af68356550004', '2017-03-25 23:19:29', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e64ca6fd1b014ca7052d930006', 'spline', '曲线图', null, '402881e64ca6fd1b014ca7044c370004', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e64ca6fd1b014ca705b2b40008', 'column', '柱状图', null, '402881e64ca6fd1b014ca7044c370004', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e64ca6fd1b014ca7061fb7000a', 'pie', '饼图', null, '402881e64ca6fd1b014ca7044c370004', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e946e71f5f0146e736c4e80008', 'en', 'common.english', null, '402881e946e71f5f0146e73619bb0002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881e946e71f5f0146e740dcad0012', 'zh-cn', 'common.chinese', null, '402881e946e71f5f0146e73619bb0002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881ee60dea94b0160def83a810001', 'only', '唯一校验', null, '4028838850c35b6a0150c37251e00002', '2018-01-10 15:28:18', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402881f364410ef3016441223d6f0004', '11', '111', null, null, '2018-06-27 20:05:20', '管理员', '11');
INSERT INTO `t_s_type` VALUES ('402881fc60a11e1e0160a1275ae80001', '1', '系统用户', null, '402881ee5f9ed537015f9edb53b90003', '2017-12-29 15:23:19', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850c35b6a0150c372e3b10005', '*', '非空', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850c35b6a0150c3abef800019', 'n', '数字', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850c35b6a0150c3ac17f9001b', 's', '字母', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850d2666a0150d267a61e0001', 'p', '邮政编码', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850d2666a0150d267d5c10003', 'm', '手机号码', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850d2666a0150d26812d40005', 'e', '电子邮件', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850d2666a0150d26850210007', 'url', '网址', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850d2666a0150d268ae510009', '*6-16', '6到16位任意字符', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850d2666a0150d268e229000b', 'n6-16', '6到16位数字', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028838850d2666a0150d26912e2000d', 's6-18', '6到18位字符串', null, '4028838850c35b6a0150c37251e00002', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402889f647f797e30147f79ec3760005', '1', '待提交', null, '402889f647f797e30147f79e7ca60003', '2017-02-23 15:17:53', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402889f647f797e30147f79f28de0007', '2', '处理中', null, '402889f647f797e30147f79e7ca60003', '2017-02-23 15:17:53', '管理员', null);
INSERT INTO `t_s_type` VALUES ('402889f647f797e30147f79fa724000b', '3', '已完成', null, '402889f647f797e30147f79e7ca60003', '2017-02-23 15:17:53', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028a9815c8cf888015c8d00af2b0002', 'd', '金额', null, '4028838850c35b6a0150c37251e00002', '2017-06-09 21:17:31', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028b881533ac16a01533adf65370003', 'Pie2D', '2D饼图', null, '4028b881533ac16a01533adb50460001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028b881533ac16a01533ae0363d0005', 'Pie3D', '3D饼图', null, '4028b881533ac16a01533adb50460001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028b881533ac16a01533ae2d2a50007', 'Column2D', '2D柱状图', null, '4028b881533ac16a01533adb50460001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028b881533ac16a01533ae305340009', 'Column3D', '3D柱状图', null, '4028b881533ac16a01533adb50460001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028b881533ac16a01533ae45759000b', 'Bar2D', '条状图', null, '4028b881533ac16a01533adb50460001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028b881533ac16a01533ae4c6de000d', 'Area2D', '面积图', null, '4028b881533ac16a01533adb50460001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028b881533ac16a01533ae50a67000f', 'LineBasic2D', '折线图', null, '4028b881533ac16a01533adb50460001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028ef8154753f2601547546bb620007', '1', '单选', null, '4028ef8154753f2601547546249f0005', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028ef8154753f2601547546d3d60009', '2', '多选', null, '4028ef8154753f2601547546249f0005', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('4028f6815dcbc85f015dcbd4ea110001', 'USE_SQL_RULES', '自定义SQL表达式', null, 'f852d85d47ed64a40147ed70894c0003', '2017-08-10 19:08:34', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a1c7ee54e3e2ca9014e3e520bdc0010', 'spring', 'java.enhance.type.spring', null, '8a1c7ee54e3e2ca9014e3e4b78f90009', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a1c7ee54e3e2ca9014e3e524b560012', 'class', 'java.enhance.type.class', null, '8a1c7ee54e3e2ca9014e3e4b78f90009', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a71b40e4a38319b014a3859a2c1001a', '1', 'common.smsAlertsModel', null, '8a71b40e4a38319b014a3858fca40018', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a71b40e4a38319b014a385a01d1001c', '2', 'common.emailAlertsModel', null, '8a71b40e4a38319b014a3858fca40018', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a71b40e4a38319b014a385d30300020', '1', 'common.smsAlerts', null, '8a71b40e4a38319b014a385cb115001e', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a71b40e4a38319b014a385d86c30022', '2', 'common.emailAlerts', null, '8a71b40e4a38319b014a385cb115001e', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a71b40e4a38319b014a385dc1370024', '3', 'common.sysAlerts', null, '8a71b40e4a38319b014a385cb115001e', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a71b40e4a38319b014a3860603f0028', '1', 'common.didNotSend', null, '8a71b40e4a38319b014a386022bd0026', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a71b40e4a38319b014a38608d98002a', '2', 'common.sendSuccess', null, '8a71b40e4a38319b014a386022bd0026', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a71b40e4a38319b014a3860b181002c', '3', 'common.failToSend', null, '8a71b40e4a38319b014a386022bd0026', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8181f30060', '2', 'menu.icon', null, '8a8ab0b246dc81120146dc8181aa0056', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8181f70061', '1', 'system.icon', null, '8a8ab0b246dc81120146dc8181aa0056', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8181fa0062', 'files', 'common.attachment', null, '8a8ab0b246dc81120146dc8181ca005e', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8181fe0063', '1', 'lang.excellent.order', null, '8a8ab0b246dc81120146dc8181b10057', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182010064', '2', 'lang.normal.order', null, '8a8ab0b246dc81120146dc8181b10057', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182050065', '1', 'lang.contract.customer', null, '8a8ab0b246dc81120146dc8181b50058', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182080066', '2', 'lang.normal.customer', null, '8a8ab0b246dc81120146dc8181b50058', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81820b0067', '1', 'lang.special.servcie', null, '8a8ab0b246dc81120146dc8181b90059', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182100068', '2', 'lang.normal.service', null, '8a8ab0b246dc81120146dc8181b90059', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182130069', 'single', 'common.single.condition.query', null, '8a8ab0b246dc81120146dc8181bc005a', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc818216006a', 'group', 'common.scope.query', null, '8a8ab0b246dc81120146dc8181bc005a', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81821a006b', 'Y', 'common.yes', null, '8a8ab0b246dc81120146dc8181c0005b', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81821d006c', 'N', 'common.no', null, '8a8ab0b246dc81120146dc8181c0005b', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc818221006d', 'Integer', 'common.db.integer', null, '8a8ab0b246dc81120146dc8181c3005c', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc818224006e', 'Date', 'common.db.date', null, '8a8ab0b246dc81120146dc8181c3005c', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc818227006f', 'String', 'common.db.string', null, '8a8ab0b246dc81120146dc8181c3005c', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81822b0070', 'Long', 'common.db.long', null, '8a8ab0b246dc81120146dc8181c3005c', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81822f0071', 'act', 'common.workflow.engine.table', null, '8a8ab0b246dc81120146dc8181c6005d', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182320072', 't_s', 'common.system.table', null, '8a8ab0b246dc81120146dc8181c6005d', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182350073', 't_b', 'common.business.table', null, '8a8ab0b246dc81120146dc8181c6005d', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182390074', 't_p', 'common.customer.engine.table', null, '8a8ab0b246dc81120146dc8181c6005d', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81823c0075', 'news', 'common.news', null, '8a8ab0b246dc81120146dc8181ca005e', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182400076', '0', 'common.male', null, '8a8ab0b246dc81120146dc8181cd005f', null, null, '2');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182430077', '1', 'common.female', null, '8a8ab0b246dc81120146dc8181cd005f', null, null, '1');
INSERT INTO `t_s_type` VALUES ('8a8ab0ba487c527201487c7863ec001b', 'oracle', 'common.oracle', null, '8a8ab0ba487c527201487c7732790019', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0ba487c527201487c78aefc001d', 'sqlserver2008', 'common.sqlserver2008', null, '8a8ab0ba487c527201487c7732790019', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('8a8ab0ba487c527201487c78fbb5001f', 'mysql', 'common.mysql', null, '8a8ab0ba487c527201487c7732790019', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed71f6b40005', '>', '大于', null, 'f852d85d47ed64a40147ed70894c0003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed72a9dc0007', '>=', '大于等于', null, 'f852d85d47ed64a40147ed70894c0003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed750e1c0009', '<', '小于', null, 'f852d85d47ed64a40147ed70894c0003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed753b6f000b', '<=', '小于等于', null, 'f852d85d47ed64a40147ed70894c0003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed75afe5000d', '=', '等于', null, 'f852d85d47ed64a40147ed70894c0003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed75ed62000f', 'IN', '包含', null, 'f852d85d47ed64a40147ed70894c0003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed7638b20011', 'LIKE', '模糊', null, 'f852d85d47ed64a40147ed70894c0003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed767c240013', '!=', '不等于', null, 'f852d85d47ed64a40147ed70894c0003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('ff80808151399d0d015139b0e0b80003', 'hour', '小时', null, '4028ab8c5134f1ed0151350f08d90003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('ff80808151399d0d015139b1609d0006', 'day', '天', null, '4028ab8c5134f1ed0151350f08d90003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('ff80808151399d0d015139b283a10008', 'perday', '天/人', null, '4028ab8c5134f1ed0151350f08d90003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('ff80808151399d0d015139b29550000a', 'permoney', '元/人', null, '4028ab8c5134f1ed0151350f08d90003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('ff80808151399d0d015139b2a6e5000c', 'money', '元', null, '4028ab8c5134f1ed0151350f08d90003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('ff80808151399d0d015139b2bab4000e', 'age', '岁', null, '4028ab8c5134f1ed0151350f08d90003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('ff80808151399d0d015139b2c9ce0010', 'class', '课时', null, '4028ab8c5134f1ed0151350f08d90003', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('jglongjbtstype201506041030000001', 'WXGZYD', '关注引导', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('jglongjbtstype201506041030000002', 'WXNRQ', '内容区', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('jglongjbtstype201506041030000003', 'WXYWYD', '原文引导', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('jglongjbtstype201506041030000004', 'WXBT', '标题', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('jglongjbtstype201506041030000005', 'WXFGX', '分隔线', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('jglongjbtstype201506041030000006', 'WXHTZH', '互推账号', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('jglongjbtstype201506041030000007', 'WXQT', '其他', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);
INSERT INTO `t_s_type` VALUES ('jglongjbtstype201506041030000008', 'WXWDYS', '我的样式', null, 'jglongjbtstypegourp2015060400001', '2016-09-04 22:19:12', '管理员', null);

-- ----------------------------
-- Table structure for t_s_typegroup
-- ----------------------------
DROP TABLE IF EXISTS `t_s_typegroup`;
CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `typegroupcode` varchar(50) DEFAULT NULL COMMENT '字典分组编码',
  `typegroupname` varchar(50) DEFAULT NULL COMMENT '字典分组名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_name` varchar(36) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`ID`),
  KEY `index_typegroupcode` (`typegroupcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_typegroup
-- ----------------------------
INSERT INTO `t_s_typegroup` VALUES ('297e201047e95ee30147e9ba56ce0009', 'orgtype', 'common.org.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('297e7ae160c514780160c52a7d960005', 'user_type', '用户类型', '2018-01-05 15:13:04', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('297e7ae160c536500160c57da86d0002', 'job_level', '职务级别', '2018-01-05 16:43:55', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('297edb626020600f016020db76e20053', 'sel_type', '查询类型', '2017-12-04 17:29:02', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('297edb626020600f016020e214df005a', 'is_main', '是否主表', null, null);
INSERT INTO `t_s_typegroup` VALUES ('297edb626020600f016020e673be0061', 'field_type', '字段类型', '2017-12-04 17:41:02', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('297edb626020600f016020e9561e0069', 's_type', '控件类型', '2017-12-04 17:44:11', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('2c90ac564c9d1734014c9db1a167002b', 'sf_yn', '是否YN', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('40284a815c1c18f7015c1c26c0bc000a', 'dev_flag', '开发权限', '2017-05-18 23:22:01', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402880884883eff401488415cbb60027', 'smsTplType', '模板类型', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402881a151f1af7c0151f1b9d7f50002', 'outType', '离职方式', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402881e44df713f5014df738349c002f', 'formDbType', 'form.db.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402881e54dcb624a014dcbf4912b000e', 'bdfl', '表单分类', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402881e55af64f07015af68356550004', 'widgetType', '控件类型', '2017-03-22 22:54:47', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402881e64ca6fd1b014ca7044c370004', 'tblx', '图表类型', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402881e946e71f5f0146e73619bb0002', 'lang', 'common.mutilang', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402881ee5f9ed537015f9edb53b90003', 'pms_usertype', '用户类型', null, null);
INSERT INTO `t_s_typegroup` VALUES ('4028838850c35b6a0150c37251e00002', 'dataType', '校验规则', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('402889f647f797e30147f79e7ca60003', 'bpm_status', '业务BPM流转状态', '2017-02-23 15:17:53', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('4028ab8c5134f1ed0151350f08d90003', 'units', '常用单位', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('4028b881533ac16a01533adb50460001', 'graphType', '动态图表类型', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('4028ef8154753f2601547546249f0005', 'pop_retype', 'POP返回类型', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('4028efa25219c9f0015219d1d2720004', 'leaveType', '请假类别', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a1c7ee54e3e2ca9014e3e4b78f90009', 'enhanceType', 'java.enhance.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a71b40e4a38319b014a3858fca40018', 'msgTplType', '消息模板分类', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a71b40e4a38319b014a385cb115001e', 'msgType', '消息类别', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a71b40e4a38319b014a386022bd0026', 'msgStatus', '消息发送状态', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181aa0056', 'icontype', 'common.icon.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181b10057', 'order', 'lang.order.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181b50058', 'custom', 'lang.customer.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181b90059', 'service', 'lang.service.item.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181bc005a', 'searchmode', 'common.query.module', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181c0005b', 'yesorno', 'common.logic.condition', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181c3005c', 'fieldtype', 'field.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181c6005d', 'database', 'common.data.table', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181ca005e', 'fieltype', 'common.document.category', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181cd005f', 'sex', 'common.sex.type', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0ba487c527201487c7732790019', 'dbtype', 'common.dbtype', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('f852d85d47ed64a40147ed70894c0003', 'rulecon', '规则条件', '2016-09-04 22:19:12', '管理员');
INSERT INTO `t_s_typegroup` VALUES ('jglongjbtstypegourp2015060400001', 'weixin', '微信模板类型', '2016-09-04 22:19:12', '管理员');

-- ----------------------------
-- Table structure for t_s_user
-- ----------------------------
DROP TABLE IF EXISTS `t_s_user`;
CREATE TABLE `t_s_user` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `mobilePhone` varchar(30) DEFAULT NULL COMMENT '手机号',
  `officePhone` varchar(20) DEFAULT NULL COMMENT '办公座机',
  `signatureFile` varchar(100) DEFAULT NULL COMMENT '签名文件',
  `update_name` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id',
  `create_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `portrait` varchar(100) DEFAULT NULL,
  `imsign` varchar(255) DEFAULT NULL,
  `dev_flag` varchar(2) NOT NULL DEFAULT '0' COMMENT '开发权限标志',
  `user_type` varchar(2) DEFAULT NULL COMMENT '用户类型',
  `person_type` varchar(2) DEFAULT NULL COMMENT '人员类型',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `emp_no` varchar(36) DEFAULT NULL COMMENT '工号',
  `citizen_no` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `fax` varchar(50) DEFAULT NULL COMMENT '传真',
  `address` varchar(1000) DEFAULT NULL COMMENT '联系地址',
  `post` varchar(10) DEFAULT NULL COMMENT '邮编',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  KEY `index_dev_flag` (`dev_flag`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_user
-- ----------------------------
INSERT INTO `t_s_user` VALUES ('4028318163a6865d0163a68bef49000a', null, '', null, null, '管理员', '2018-06-27 19:18:42', 'admin', '管理员', '2018-05-28 19:39:38', 'admin', null, null, '0', '2', null, null, null, null, null, null, null, '');
INSERT INTO `t_s_user` VALUES ('402880e74d75c4dd014d75d44af30005', '1273869000@qq.com', '', '', null, '管理员', '2018-01-29 21:58:28', 'admin', '管理员', '2015-05-21 17:35:56', 'admin', '20170502\\4afbfbedab64034f9015f1bca8c379310b551dab.jpg', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('402881875988e889015988ec36770001', '', '', '', null, '管理员', '2017-01-10 23:08:33', 'admin', '管理员', '2017-01-10 23:08:18', 'admin', null, null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('402881e75f159dc3015f15a76fa80004', null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('402881e75f15a91c015f15a9bd550000', null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('402881e75f15a91c015f15aa5bb50001', null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('402881f3639157630163915af2100006', null, '', null, null, '管理员', '2018-05-28 19:39:27', 'admin', '管理员', '2018-05-24 16:54:06', 'admin', null, null, '0', '2', null, null, null, null, null, null, null, '');
INSERT INTO `t_s_user` VALUES ('402881f36468e19e016468e950350012', '11@qq.com', '', '', null, '管理员', '2018-07-05 15:07:07', 'admin', '管理员', '2018-07-05 13:27:58', 'admin', null, null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('402881fc60a1cbe40160a1f080620011', '13552579746@163.com', '13552579746', '', null, null, null, null, '管理员', '2017-12-29 19:03:01', 'admin', null, null, '0', '2', '1', '0', '', '', '', '', '', '');
INSERT INTO `t_s_user` VALUES ('4028ef81538330cd01538333b7bc0001', 'lisi@163.com', '13426432329', '991', null, '管理员', '2018-05-15 16:49:08', 'admin', '管理员', '2016-03-17 14:11:58', 'admin', null, null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('4028ef81563ae5be01563ae92d7f0002', '', '', '', null, '管理员', '2016-07-30 16:26:20', 'admin', '管理员', '2016-07-30 16:26:15', 'admin', null, null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('8a8ab0b246dc81120146dc8181950052', '445654970@qq.com', '', '', 'images/renfang/qm/licf.gif', '管理员', '2018-07-15 11:39:38', 'admin', null, '2016-07-20 16:26:15', null, 'upload\\files\\20180715\\qq_1531625977907.jpg', '这家伙很你好66', '1', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('8a8ab0b246dc81120146dc81819d0053', 'zhangdaiscott@163.com', '13426430000', '74966612', null, '管理员', '2018-08-03 11:35:22', 'admin', null, '2016-03-17 14:11:58', null, null, null, '1', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('8a8ab0b246dc81120146dc8181a10054', '', '', '', null, '管理员', '2016-06-01 15:07:57', 'admin', null, '2016-07-10 16:26:15', null, null, null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('8a8ab0b246dc81120146dc8181a60055', '1@1.com', '', '', null, '管理员', '2018-06-20 18:59:58', 'admin', null, '2016-09-30 16:26:15', null, null, null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_s_user` VALUES ('8a8c82a35de421ab015de4228d400003', '418799587@qq.com', '', '', null, '管理员', '2018-02-26 10:26:18', 'admin', '管理员', '2017-08-15 12:24:15', 'admin', null, null, '0', '1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_s_user_org
-- ----------------------------
DROP TABLE IF EXISTS `t_s_user_org`;
CREATE TABLE `t_s_user_org` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `org_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`),
  KEY `index_user_id` (`user_id`),
  KEY `index_org_id` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_user_org
-- ----------------------------
INSERT INTO `t_s_user_org` VALUES ('4028608164fda2230164fddaa4b50017', '8a8ab0b246dc81120146dc81819d0053', '402880e6487e661a01487e6b504e0001');
INSERT INTO `t_s_user_org` VALUES ('402881875988e889015988ec36880002', '402881875988e889015988ec36770001', '8a8ab0b246dc81120146dc8180ba0017');
INSERT INTO `t_s_user_org` VALUES ('402881875988e889015988ec64590005', '402881875988e889015988ec36770001', '8a8ab0b246dc81120146dc8180a20016');
INSERT INTO `t_s_user_org` VALUES ('402881f363ca92820163ca930f290001', '402880e74d75c4dd014d75d44af30005', '402880f15986303c0159864816180002');
INSERT INTO `t_s_user_org` VALUES ('402881f363f397740163f398abeb0004', '8a8ab0b246dc81120146dc8181950052', '8a8ab0b246dc81120146dc8180ba0017');
INSERT INTO `t_s_user_org` VALUES ('402881f3641ccf5601641cd9e1370062', '8a8ab0b246dc81120146dc8181a60055', '402880e447e9a9570147e9b6a3be0005');
INSERT INTO `t_s_user_org` VALUES ('402881f3641ccf5601641cd9e1420063', '8a8ab0b246dc81120146dc8181a60055', '8a8ab0b246dc81120146dc8180a20016');
INSERT INTO `t_s_user_org` VALUES ('402881f36469407401646940ec180001', '4028ef81538330cd01538333b7bc0001', '402880e447e9a9570147e9b762e30009');
INSERT INTO `t_s_user_org` VALUES ('402881f36469407401646944179a000b', '402881f36468e19e016468e950350012', '402880e6487e661a01487e6b504e0001');
INSERT INTO `t_s_user_org` VALUES ('4028838d5f352254015f35267b920009', '8a8c82a35de421ab015de4228d400003', '8a8ab0b246dc81120146dc8180ba0017');
INSERT INTO `t_s_user_org` VALUES ('4028ef815500fa15015500fbc3290001', '8a8ab0b246dc81120146dc8181a10054', '8a8ab0b246dc81120146dc8180a20016');
INSERT INTO `t_s_user_org` VALUES ('4028ef81563ae5be01563ae92dc20003', '4028ef81563ae5be01563ae92d7f0002', '8a8ab0b246dc81120146dc8180a20016');



-- ----------------------------
-- Procedure structure for formDataList
-- ----------------------------
DROP PROCEDURE IF EXISTS `formDataList`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `formDataList`(tableName varchar(50),dbFields varchar(500),whereSql varchar(1000))
BEGIN
	declare exe_sql varchar(2000);
	SET exe_sql = CONCAT("select ",dbFields," from ",tableName,whereSql);
	set @v_sql=exe_sql;   
	prepare stmt from @v_sql; 
	EXECUTE stmt;     
	deallocate prepare stmt; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for replaceOrgCode
-- ----------------------------
DROP PROCEDURE IF EXISTS `replaceOrgCode`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `replaceOrgCode`()
BEGIN
DECLARE code_length int DEFAULT 0 ;
DECLARE new_code VARCHAR(500);
DECLARE org_id VARCHAR(500);
DECLARE old_code VARCHAR(500);
DECLARE code_length_index int DEFAULT 1;
DECLARE b int default 0;
DECLARE pro CURSOR for select id,org_code,LENGTH(org_code) from t_s_depart;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET b = 1;
OPEN pro;
FETCH pro into org_id,old_code,code_length;
 while b<>1 do
   set code_length_index=1;
	 set new_code='';
	 while code_length_index<code_length do
     set new_code=CONCAT(new_code,'A',SUBSTR(old_code,code_length_index,2));
     set code_length_index=code_length_index+2;
   end while;
    update t_s_depart set org_code=new_code where id=org_id;
  FETCH pro into org_id,old_code,code_length;
end while;
close pro;
end
;;
DELIMITER ;
