/*
Navicat MySQL Data Transfer

Source Server         : lzp
Source Server Version : 80012
Source Host           : 127.0.0.1:3306
Source Database       : git_1

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-10-25 16:20:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新建联系人表',
  `con_unit` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户单位',
  `con_ceo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人职位',
  `con_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `con_sex` int(1) DEFAULT NULL COMMENT '性别',
  `con_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生日',
  `con_hobby` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '爱好',
  `con_tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系方式',
  `con_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '家庭邮编',
  `con_add` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '家庭住址',
  `con_office` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作电话',
  `family_office` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '家庭电话',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT 'email',
  `con_qq` varchar(15) DEFAULT NULL COMMENT 'qq',
  `msn` varchar(50) DEFAULT NULL COMMENT 'MSN',
  `remark1` text COMMENT '备注',
  `remark2` text COMMENT '备注',
  PRIMARY KEY (`con_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `ser_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户服务表',
  `ser_cate` int(3) DEFAULT NULL COMMENT '服务类型',
  `ser_date` int(11) DEFAULT NULL COMMENT '服务日期',
  `user_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '客户名称',
  `con_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `ser_price` decimal(10,0) DEFAULT NULL COMMENT '服务预估成本',
  `date` int(11) DEFAULT NULL COMMENT '服务预估时间',
  `ser_desc` text COLLATE utf8_bin COMMENT '服务描述',
  `user_back` text COLLATE utf8_bin COMMENT '客户反馈',
  `satisfy` int(1) DEFAULT NULL COMMENT '客户满意度： 包含 很满意 比较满意 不满意 很不满意',
  `user_opinion` text COLLATE utf8_bin COMMENT '客户反馈意见：',
  `desc` text COLLATE utf8_bin COMMENT '描述',
  `remark1` text COLLATE utf8_bin COMMENT '备注1',
  `remark2` text COLLATE utf8_bin,
  PRIMARY KEY (`ser_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of service
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录账号',
  `user_sharing` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '共享范围',
  `user_ent_title` char(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '企业名称',
  `user_num` int(30) DEFAULT NULL COMMENT '用户编号',
  `user_tel` bigint(11) DEFAULT NULL COMMENT '电话',
  `user_fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传真',
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电子邮件',
  `user_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址',
  `user_postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮政编码',
  `user_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详细地址',
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户类型',
  `user_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户来源',
  `user_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
