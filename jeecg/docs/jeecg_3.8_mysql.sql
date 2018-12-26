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
