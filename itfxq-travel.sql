/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : order20220221-travel

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2022-03-05 17:44:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint(20) unsigned NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(220) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `type` char(1) DEFAULT '' COMMENT '菜单类型0 目录 1 组建 2.外部链接 3按钮',
  `target` varchar(100) DEFAULT '' COMMENT '目标',
  `icon` varchar(100) DEFAULT '' COMMENT '图标',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否在菜单中显示(1 显示 0 隐藏)',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` bigint(20) unsigned NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(20) unsigned DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注信息',
  `del_flag` tinyint(1) unsigned DEFAULT '0' COMMENT '删除标记',
  `tenant_id` int(11) DEFAULT '0' COMMENT '租户id',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '系统设置', '900', '0', '', 'fa fa-gear', '1', null, '1', '2022-01-01 08:00:00', '1', '2022-01-24 21:24:51', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '菜单管理', '100', '1', '/menu/index', 'fa fa-tachometer', '1', '', '1', '2022-01-01 08:00:00', '1', '2022-01-24 21:29:53', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '添加菜单', '30', '3', null, 'bug', '0', 'admin_sysmenu_add', '1', '2022-01-06 22:42:36', '1', '2022-01-06 22:48:19', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('4', '2', '0,1,2,', '修改菜单', '30', '3', null, 'bug', '0', 'admin_sysmenu_edit', '1', '2022-01-06 22:43:11', '1', '2022-01-06 22:48:30', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('5', '2', '0,1,2,', '删除菜单', '30', '3', null, 'bug', '0', 'admin_sysmenu_del', '1', '2022-01-06 22:43:35', '1', '2022-01-06 22:47:57', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('6', '2', '0,1,2,', '查询菜单', '30', '3', null, 'bug', '0', 'admin_sysmenu_view', '1', '2022-01-06 22:45:17', '1', '2022-01-06 22:48:08', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('7', '1', '0,1,', '用户管理', '30', '1', '/user/index', 'fa fa-group', '1', null, '1', '2022-01-06 22:46:59', '1', '2022-01-24 21:28:04', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,7,', '添加用户', '30', '3', '', 'bug', '0', 'admin_sysuser_add', '1', '2022-01-06 22:47:37', '1', '2022-01-26 23:41:00', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,7,', '修改用户', '30', '3', null, 'bug', '0', 'admin_sysuser_edit', '1', '2022-01-06 22:49:33', '1', '2022-01-06 22:49:33', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('10', '7', '0,1,7,', '删除用户', '30', '3', null, 'bug', '0', 'admin_sysuser_del', '1', '2022-01-06 22:50:00', '1', '2022-01-06 22:50:17', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('11', '7', '0,1,7,', '查询用户', '30', '3', null, 'bug', '0', 'admin_sysuser_view', '1', '2022-01-06 22:50:40', '1', '2022-01-06 22:50:40', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('14', '1', '0,1,', '角色管理', '30', '1', '/role/index', 'fa fa-user-circle', '1', null, '1', '2022-01-10 16:05:11', '1', '2022-01-24 21:27:45', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('18', '1', '0,1,', '租户管理', '30', '1', '/admin/index', 'fa fa-cloud', '1', '', '1', '2022-01-25 13:51:42', '1', '2022-01-25 13:51:42', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('19', '0', '0,', '订单管理', '800', '0', null, 'fa fa-sticky-note', '1', null, '9', '2022-01-17 13:27:16', null, null, null, '0', '0');
INSERT INTO `sys_menu` VALUES ('20', '19', '0,19,', '订单列表', '30', '1', '/order/list', 'fa fa-address-book-o', '1', null, '9', '2022-01-17 15:10:01', '9', '2022-01-17 15:10:01', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('23', '20', '0,20,', '新增订单', '30', '3', null, 'fa fa-turkish-lira', '1', 'admin_order_add', '9', '2022-01-17 16:30:48', '9', '2022-01-17 16:30:48', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('24', '0', '0,', '支付管理', '600', '0', null, 'fa fa-file-image-o', '1', null, '13', '2022-01-18 23:50:01', '13', '2022-01-18 23:50:01', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('25', '24', '0,24,', '支付列表', '30', '1', '/pay/index', 'fa fa-th-list', '1', null, '13', '2022-01-18 23:50:26', '13', '2022-01-18 23:50:26', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('26', '25', '0,25,', '新增支付', '30', '3', null, 'fa fa-shopping-basket', '1', 'admin_pay_add', '13', '2022-01-18 23:50:56', '13', '2022-01-18 23:50:56', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('27', '0', '0,', 'test1', '555', '0', null, 'fa fa-meh-o', '1', null, '9', '2022-01-22 15:24:36', '9', '2022-01-22 15:24:36', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,27,', 'test11', '30', '1', '/test/index', 'fa fa-pie-chart', '1', null, '9', '2022-01-22 15:24:55', '9', '2022-01-22 15:24:55', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,28,', '新增测试', '30', '3', null, 'fa fa-skype', '0', 'test_admin_add', '9', '2022-01-22 15:25:20', '9', '2022-01-22 15:25:20', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,28,', '删除测试', '31', '3', null, 'fa fa-cutlery', '0', 'test_admin_del', '13', '2022-01-22 15:41:54', '13', '2022-01-22 15:41:54', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('31', '0', '0,', '景区管理', '288', '0', null, 'el-icon-s-ticket', '1', null, '9', '2022-01-27 16:35:31', '9', '2022-01-27 16:35:31', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('32', '31', '0,31,', '景区列表', '30', '1', '/spots/list', 'fa fa-reorder', '1', null, '9', '2022-01-27 16:36:27', '9', '2022-01-27 16:36:27', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('33', '32', '0,32,', '新增景区', '30', '3', null, 'el-icon-document-add', '0', 'admin_product_add', '9', '2022-01-27 16:37:22', '9', '2022-01-27 16:37:22', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('34', '31', '0,31,', '发布景区', '30', '1', '/spots/add', 'fa fa-reorder', '1', null, '9', '2022-01-01 23:09:50', '9', '2022-01-01 23:09:57', '', '0', '0');
INSERT INTO `sys_menu` VALUES ('35', '0', '0,', '酒店管理', '288', '0', null, 'el-icon-school', '1', null, '9', '2022-01-27 16:35:31', '9', '2022-01-27 16:35:31', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('36', '35', '0,35,', '酒店列表', '30', '1', '/hotel/list', 'fa fa-reorder', '1', null, '9', '2022-01-27 16:36:27', '9', '2022-01-27 16:36:27', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('37', '36', '0,36,', '新增酒店', '30', '3', null, 'el-icon-document-add', '0', 'admin_hotel_add', '9', '2022-01-27 16:37:22', '9', '2022-01-27 16:37:22', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('38', '0', '0,', '评论管理', '288', '0', null, 'el-icon-s-comment', '1', null, '9', '2022-01-27 16:35:31', '9', '2022-01-27 16:35:31', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('39', '38', '0,38,', '评论列表', '30', '1', '/comments/list', 'fa fa-reorder', '1', null, '9', '2022-01-27 16:36:27', '9', '2022-01-27 16:36:27', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('40', '0', '0,', '游记管理', '288', '0', null, 'fa fa-list-ol', '1', null, '9', '2022-01-27 16:35:31', '9', '2022-01-27 16:35:31', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('41', '40', '0,41,', '游记列表', '30', '1', '/notes/list', 'fa fa-reorder', '1', null, '9', '2022-01-27 16:36:27', '9', '2022-01-27 16:36:27', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('42', '0', '0,', '客户管理', '288', '0', null, 'el-icon-s-custom', '1', null, '9', '2022-01-27 16:35:31', '9', '2022-01-27 16:35:31', null, '0', '0');
INSERT INTO `sys_menu` VALUES ('43', '42', '0,42,', '客户列表', '30', '1', '/custorm/list', 'fa fa-reorder', '1', null, '9', '2022-01-27 16:36:27', '9', '2022-01-27 16:36:27', null, '0', '0');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` tinyint(1) DEFAULT NULL COMMENT '角色类型',
  `data_scope` tinyint(1) DEFAULT NULL COMMENT '数据范围',
  `create_by` bigint(20) unsigned NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(20) unsigned NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '备注信息',
  `del_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除标记',
  `tenant_id` int(11) DEFAULT '0' COMMENT '租户id',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('2', '普通管理员', 'hr', '1', '2', '1', '2022-01-24 21:34:04', '1', '2022-01-24 21:34:04', ' ', '0', '0');
INSERT INTO `sys_role` VALUES ('7', '测试用户', 'csyh', '1', '1', '9', '2022-01-18 11:51:33', '9', '2022-01-18 11:51:33', '', '0', '0');
INSERT INTO `sys_role` VALUES ('10', '普通用户', 'd', '1', '1', '9', '2022-01-19 00:02:38', '9', '2022-01-19 00:02:38', '', '0', '0');
INSERT INTO `sys_role` VALUES ('14', 'test角色', 'testjs', '1', '1', '9', '2022-01-22 15:42:33', '9', '2022-01-22 15:42:33', '', '0', '0');
INSERT INTO `sys_role` VALUES ('17', '系统管理员', 'dept', '1', '1', '9', '2022-01-01 23:11:42', '9', '2022-01-01 23:11:42', '', '0', '0');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) unsigned NOT NULL COMMENT '角色编号',
  `menu_id` bigint(20) unsigned NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('7', '1');
INSERT INTO `sys_role_menu` VALUES ('7', '7');
INSERT INTO `sys_role_menu` VALUES ('7', '8');
INSERT INTO `sys_role_menu` VALUES ('7', '9');
INSERT INTO `sys_role_menu` VALUES ('7', '10');
INSERT INTO `sys_role_menu` VALUES ('7', '11');
INSERT INTO `sys_role_menu` VALUES ('7', '19');
INSERT INTO `sys_role_menu` VALUES ('7', '20');
INSERT INTO `sys_role_menu` VALUES ('10', '1');
INSERT INTO `sys_role_menu` VALUES ('10', '2');
INSERT INTO `sys_role_menu` VALUES ('10', '3');
INSERT INTO `sys_role_menu` VALUES ('10', '4');
INSERT INTO `sys_role_menu` VALUES ('10', '5');
INSERT INTO `sys_role_menu` VALUES ('10', '6');
INSERT INTO `sys_role_menu` VALUES ('10', '7');
INSERT INTO `sys_role_menu` VALUES ('10', '8');
INSERT INTO `sys_role_menu` VALUES ('10', '9');
INSERT INTO `sys_role_menu` VALUES ('10', '10');
INSERT INTO `sys_role_menu` VALUES ('10', '11');
INSERT INTO `sys_role_menu` VALUES ('10', '12');
INSERT INTO `sys_role_menu` VALUES ('10', '13');
INSERT INTO `sys_role_menu` VALUES ('10', '14');
INSERT INTO `sys_role_menu` VALUES ('10', '15');
INSERT INTO `sys_role_menu` VALUES ('10', '16');
INSERT INTO `sys_role_menu` VALUES ('10', '17');
INSERT INTO `sys_role_menu` VALUES ('10', '18');
INSERT INTO `sys_role_menu` VALUES ('10', '19');
INSERT INTO `sys_role_menu` VALUES ('10', '20');
INSERT INTO `sys_role_menu` VALUES ('10', '23');
INSERT INTO `sys_role_menu` VALUES ('10', '24');
INSERT INTO `sys_role_menu` VALUES ('10', '25');
INSERT INTO `sys_role_menu` VALUES ('10', '26');
INSERT INTO `sys_role_menu` VALUES ('14', '1');
INSERT INTO `sys_role_menu` VALUES ('14', '2');
INSERT INTO `sys_role_menu` VALUES ('14', '3');
INSERT INTO `sys_role_menu` VALUES ('14', '5');
INSERT INTO `sys_role_menu` VALUES ('14', '6');
INSERT INTO `sys_role_menu` VALUES ('14', '7');
INSERT INTO `sys_role_menu` VALUES ('14', '8');
INSERT INTO `sys_role_menu` VALUES ('14', '9');
INSERT INTO `sys_role_menu` VALUES ('14', '10');
INSERT INTO `sys_role_menu` VALUES ('14', '11');
INSERT INTO `sys_role_menu` VALUES ('14', '27');
INSERT INTO `sys_role_menu` VALUES ('14', '28');
INSERT INTO `sys_role_menu` VALUES ('14', '29');
INSERT INTO `sys_role_menu` VALUES ('14', '30');
INSERT INTO `sys_role_menu` VALUES ('17', '1');
INSERT INTO `sys_role_menu` VALUES ('17', '2');
INSERT INTO `sys_role_menu` VALUES ('17', '3');
INSERT INTO `sys_role_menu` VALUES ('17', '4');
INSERT INTO `sys_role_menu` VALUES ('17', '5');
INSERT INTO `sys_role_menu` VALUES ('17', '6');
INSERT INTO `sys_role_menu` VALUES ('17', '7');
INSERT INTO `sys_role_menu` VALUES ('17', '8');
INSERT INTO `sys_role_menu` VALUES ('17', '9');
INSERT INTO `sys_role_menu` VALUES ('17', '10');
INSERT INTO `sys_role_menu` VALUES ('17', '11');
INSERT INTO `sys_role_menu` VALUES ('17', '12');
INSERT INTO `sys_role_menu` VALUES ('17', '13');
INSERT INTO `sys_role_menu` VALUES ('17', '14');
INSERT INTO `sys_role_menu` VALUES ('17', '15');
INSERT INTO `sys_role_menu` VALUES ('17', '19');
INSERT INTO `sys_role_menu` VALUES ('17', '20');
INSERT INTO `sys_role_menu` VALUES ('17', '31');
INSERT INTO `sys_role_menu` VALUES ('17', '32');
INSERT INTO `sys_role_menu` VALUES ('17', '33');
INSERT INTO `sys_role_menu` VALUES ('17', '34');
INSERT INTO `sys_role_menu` VALUES ('17', '35');
INSERT INTO `sys_role_menu` VALUES ('17', '36');
INSERT INTO `sys_role_menu` VALUES ('17', '37');
INSERT INTO `sys_role_menu` VALUES ('17', '38');
INSERT INTO `sys_role_menu` VALUES ('17', '39');
INSERT INTO `sys_role_menu` VALUES ('17', '40');
INSERT INTO `sys_role_menu` VALUES ('17', '41');
INSERT INTO `sys_role_menu` VALUES ('17', '42');
INSERT INTO `sys_role_menu` VALUES ('17', '43');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('9', 'admin', '$2a$10$YNUV/BtCel2orbhgrxyPJeljdKVty6yTAL.Cj4v3XhwHWXBkgyPYW', '88af30ca-4de4-4aa6-9f8b-93acdbb2cfa5.jpg', 'oo222@qq.com', '系统管理员', null, '2022-01-10 08:32:30', '2022-01-11 08:32:34', '1');
INSERT INTO `sys_user` VALUES ('11', 'zs', '$2a$10$kfTyVxjH6Jf2RjGZqP/WQ.RU9SRe4/0wPYqC/PXMBHgbY6LfL/3B6', '45aab0f7-f1ce-4611-9a89-10aebc51f0b9.jpg', 'ls1@qq.com', '张三1231', null, '2022-01-17 18:56:23', null, '1');
INSERT INTO `sys_user` VALUES ('14', 'ls', '$2a$10$YNUV/BtCel2orbhgrxyPJeljdKVty6yTAL.Cj4v3XhwHWXBkgyPYW', '8b212192-6f2a-4947-81b6-0d654d096d77.jpg', 'test@qq.com', 'test111', null, '2022-01-22 15:58:42', null, '1');
INSERT INTO `sys_user` VALUES ('16', 'yy', '$2a$10$YNUV/BtCel2orbhgrxyPJeljdKVty6yTAL.Cj4v3XhwHWXBkgyPYW', 'c275de51-92f5-4c26-8f82-2082db2eb1a5.jpg', '123@qq.com', '123', null, '2022-01-18 11:48:45', null, '1');
INSERT INTO `sys_user` VALUES ('17', 'summer', '$2a$10$MLHV/hn0ZTbkGLY37BWOxO2h3hWn8m5.qQG0xiMtpKDmuUecM8/bq', 'b66dc26d-6c16-47b4-80e8-ecc23026ce18.jpg', 'xx2@qq.com', 'summer', null, '2022-01-28 16:52:19', null, '1');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户编号',
  `role_id` bigint(20) unsigned NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('9', '17');
INSERT INTO `sys_user_role` VALUES ('11', '7');
INSERT INTO `sys_user_role` VALUES ('12', '2');
INSERT INTO `sys_user_role` VALUES ('13', '14');
INSERT INTO `sys_user_role` VALUES ('14', '14');

-- ----------------------------
-- Table structure for `t_city`
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentid` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES ('1', '成都市', '0');
INSERT INTO `t_city` VALUES ('2', '自贡市', '0');
INSERT INTO `t_city` VALUES ('3', '攀枝花市', '0');
INSERT INTO `t_city` VALUES ('4', '泸州市', '0');
INSERT INTO `t_city` VALUES ('5', '德阳市', '0');
INSERT INTO `t_city` VALUES ('6', '绵阳市', '0');
INSERT INTO `t_city` VALUES ('7', '广元市', '0');
INSERT INTO `t_city` VALUES ('8', '遂宁市', '0');
INSERT INTO `t_city` VALUES ('9', '内江市', '0');
INSERT INTO `t_city` VALUES ('10', '乐山市', '0');
INSERT INTO `t_city` VALUES ('11', '南充市', '0');
INSERT INTO `t_city` VALUES ('12', '宜宾市', '0');
INSERT INTO `t_city` VALUES ('13', '广安市', '0');
INSERT INTO `t_city` VALUES ('14', '达州市', '0');
INSERT INTO `t_city` VALUES ('15', '眉山市', '0');
INSERT INTO `t_city` VALUES ('16', '雅安市', '0');
INSERT INTO `t_city` VALUES ('17', '巴中市', '0');
INSERT INTO `t_city` VALUES ('18', '资阳市', '0');
INSERT INTO `t_city` VALUES ('19', '阿坝州', '0');
INSERT INTO `t_city` VALUES ('20', '甘孜州', '0');
INSERT INTO `t_city` VALUES ('21', '凉山州', '0');

-- ----------------------------
-- Table structure for `t_comments`
-- ----------------------------
DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `orderid` bigint(2) DEFAULT NULL,
  `spotsid` bigint(2) DEFAULT NULL,
  `transportsfeel` varchar(255) DEFAULT NULL,
  `hotelfeel` varchar(255) DEFAULT NULL,
  `playfeel` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `userid` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comments
-- ----------------------------
INSERT INTO `t_comments` VALUES ('6', '16', '26', '2', '5', '5', '很好完的地方', '2022-01-30 12:40:56', '22');

-- ----------------------------
-- Table structure for `t_custorm`
-- ----------------------------
DROP TABLE IF EXISTS `t_custorm`;
CREATE TABLE `t_custorm` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `totalpoints` bigint(2) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `headImg` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_username` (`username`),
  UNIQUE KEY `uk_tel` (`tel`),
  UNIQUE KEY `uk_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_custorm
-- ----------------------------
INSERT INTO `t_custorm` VALUES ('22', 'zhangsan', '377666888@qq.com', '18880018002', '0', '123', '2a65f963-a8cf-4d16-b198-5e62db93a81f.jpg', '2022-01-29 00:00:00');
INSERT INTO `t_custorm` VALUES ('23', 'summer', '87123xxd@qq.com', '18899229977', '0', '123', '55e271ee-30ab-4edf-9a73-6976b8cf9e7c.jpg', '2022-02-22 00:00:00');
INSERT INTO `t_custorm` VALUES ('24', 'summer1', '87126xxd@qq.com', '18899229978', '0', '123', '74aca001-49b5-4506-a7ec-1052e4ee09f9.jpg', '2022-02-22 14:33:10');
INSERT INTO `t_custorm` VALUES ('25', 'summer2', '87123xxg@qq.com', '18899229979', '0', '123', '16073eed-cbf8-428d-af93-b8189fdab9c5.jpg', '2022-02-22 00:00:00');
INSERT INTO `t_custorm` VALUES ('26', 'summer3', '87123xfg@qq.com', '18899229980', '0', '123', '3331cbbe-9bbe-4755-9751-05df24e406a8.jpg', '2022-02-22 00:00:00');
INSERT INTO `t_custorm` VALUES ('27', 'xxx', '871233123@qq.com', '18899229933', '0', '123', 'ee621c19-b7d1-429e-90a8-808f848c9591.jpg', '2022-03-05 00:00:00');

-- ----------------------------
-- Table structure for `t_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel`;
CREATE TABLE `t_hotel` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `hotelname` varchar(255) DEFAULT NULL,
  `hotelprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_hotel
-- ----------------------------
INSERT INTO `t_hotel` VALUES ('20', '峨嵋山雷洞坪酒店', '339.00');
INSERT INTO `t_hotel` VALUES ('21', '九寨沟龙洲大酒店', '128.00');
INSERT INTO `t_hotel` VALUES ('22', '稻城亚丁天堂酒店', '196.00');

-- ----------------------------
-- Table structure for `t_level`
-- ----------------------------
DROP TABLE IF EXISTS `t_level`;
CREATE TABLE `t_level` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `levelname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_level
-- ----------------------------
INSERT INTO `t_level` VALUES ('1', 'A');
INSERT INTO `t_level` VALUES ('2', 'AA');
INSERT INTO `t_level` VALUES ('3', 'AAA');
INSERT INTO `t_level` VALUES ('4', 'AAAA');
INSERT INTO `t_level` VALUES ('5', 'AAAAA');

-- ----------------------------
-- Table structure for `t_notes`
-- ----------------------------
DROP TABLE IF EXISTS `t_notes`;
CREATE TABLE `t_notes` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `departureTime` date DEFAULT NULL,
  `traveldays` bigint(2) DEFAULT NULL,
  `precost` varchar(255) DEFAULT NULL,
  `content` longtext,
  `createtime` datetime DEFAULT NULL,
  `viewnum` bigint(2) DEFAULT NULL,
  `creatorid` bigint(2) DEFAULT NULL,
  `fmUrl` varchar(255) DEFAULT NULL,
  `travelnums` bigint(20) DEFAULT NULL,
  `hotelname` varchar(255) DEFAULT NULL,
  `notesdesc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notes
-- ----------------------------
INSERT INTO `t_notes` VALUES ('1', '稻城亚丁，一生必去一次', '2022-01-01', '8', '8000RMB', '<h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2><p><br></p><h2>身体在地狱，眼睛在天堂？</h2><p class=\"ql-align-justify\">经常听到有人说这样一句话：身体在地狱，眼睛在天堂！</p><p class=\"ql-align-justify\">一直无法真正体会的我们，这次在&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10061.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">稻城</a>&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10091.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">亚丁</a>&nbsp;算是切身体悟，且对这句话有了新的认识：当身体在地狱的时候，相信我，你好！难！看！见！天堂……</p><p class=\"ql-align-justify\">丑话说在前面——</p><p class=\"ql-align-justify\">一行四个女子，我不敢说我们身体有多好，但至少，一个长期跳舞，一个在&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/12700.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">西藏</a>&nbsp;待过半年时间，两个有长期健身的习惯！但我们四个，自从进入高原，高反的折磨就与日随行，头疼24小时相伴左右，哪怕出发前8天就开始吃红景天，在目的地一直坚持吃高原安也无济于事。在高原的4-5天时间里，我们几乎把半年止疼药的quota都用完了！</p><p class=\"ql-align-justify\">后来经分析，可能是因为我们身体“好”，所以耗氧量大，不过这也不足以安慰我们那不堪回首的痛苦的旅程~</p><p class=\"ql-align-justify\">景！是真的美！</p><p class=\"ql-align-justify\">高反！是真的辛苦！</p><p class=\"ql-align-justify\">所以开篇我必须说，去&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10061.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">稻城</a>&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10091.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">亚丁</a>&nbsp;前，请务必做好&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/175904.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">万全</a>&nbsp;准备，从身体到心理，当然，还有那些救命（头疼）药，后面干货我会列清楚的。同时在路上有哪些注意事项，也会在游记中穿插说明~</p><p class=\"ql-align-justify\">先来一波图，并没有很美，因为大多是在高反的情况下拍的，所以只能说，图片对美景的还原不过50%+，毕竟，眼睛看镜头的刹那，我都觉得自己脑子要爆掉了~</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">折多山：</p><p class=\"ql-align-justify\"><br></p><p><span style=\"color: rgb(68, 68, 68);\">折多山，海拔4298米，这相当于我们的第一站，当时高反反应还不大，上到山顶有点嘚瑟！</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(68, 68, 68);\">站在山顶，放眼观景，雪山就在眼前，如果不是五彩经幡，这一刹那，我会以为自己身处&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10169.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">瑞士</a><span style=\"color: rgb(68, 68, 68);\">&nbsp;！</span></p><p class=\"ql-align-justify\"><br></p><p><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10061.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">稻城</a><span style=\"color: rgb(68, 68, 68);\">&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10091.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">亚丁</a><span style=\"color: rgb(68, 68, 68);\">&nbsp;，五色海海拔4600，牛奶海海拔4500（也有说五色海海拔4700，牛奶海海拔4600，无所谓了，反正没差，都是头疼惹……），一路上山。其实山不算高，路不算长，问题就在于海拔太高，来回10公里+，我们用时7小时……</span></p><p><span style=\"color: rgb(68, 68, 68);\">一路上多少人败下阵来，一路上听人说“头疼”的，进而是吐得稀里哗啦的，再来就是拿着氧气瓶像吸毒一样吸着氧的~</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(68, 68, 68);\">我只想说，每一个登顶的，都是好汉！</span></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10061.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">稻城</a><span style=\"color: rgb(68, 68, 68);\">&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10091.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">亚丁</a><span style=\"color: rgb(68, 68, 68);\">&nbsp;，最美的风景其实在路上！每一个拐弯，都可以让我们瞬间醉入仙境！</span></p><p class=\"ql-align-justify\"><br></p><p><a href=\"http://www.mafengwo.cn/poi/3457.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">稻城亚丁</a></p><p class=\"ql-align-justify\">青杨林，红草湿地，白塔，大自然的色彩如此妖娆，人类的雕琢，也只是为了距离神更近一些~</p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_17267407/872447323.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s15/M00/0D/6D/CoUBGV2b9auAcCU-ABF9Prmq_5I454.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/3457.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">稻城亚丁</a></p><p class=\"ql-align-justify\">每一个落脚点，都有它自己的特色，五彩经幡笼罩大地，蓝天白云下是巍峨雪山，黄色的草地意味着秋的临近，烤牦牛串儿的人们正热火朝天地吆喝着买卖</p><p class=\"ql-align-justify\">这里，就是我们心心念念的川藏~</p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_17267407/872447324.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s13/M00/6B/2D/wKgEaV2b9ayATdSrABRrmQIa3d0261.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/3457.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">稻城亚丁</a></p><p class=\"ql-align-justify\">牛儿自在逍遥，总是霸占马路挡住了游人的去路。不！这里是你们的家，我们才是过客~应该让路！</p><p class=\"ql-align-justify\">藏香猪自由溜走，旁边的朋友大喊：藏香猪烤着吃最好！&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/14674.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">广东</a>&nbsp;人本性暴露无遗……</p><p class=\"ql-align-justify\">格桑花开满了山野，春还在，秋就已经在窥探，准备占领大地</p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_17267407/872447330.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 138, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s13/M00/6B/38/wKgEaV2b9bKAFdqgABIdsCdFx5o359.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\"><br></p><p><br></p><h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2>', '2022-01-10 09:21:36', '18891', '22', '78c3e780-57b6-490c-8bd5-f1227af6a1f9.jpeg', '10', '稻城景区酒店', '蒙1片（下图） 但1旦阳光出现照射水面，马上光彩四射，随着阳光的移动，湖水变换着颜色，蓝色、紫...不过这个套餐性价比很低，里面的配料少之又');
INSERT INTO `t_notes` VALUES ('2', '享受成都慢生活，跟本地土著逛吃逛吃看人文成都', '2022-01-12', '3', '900RMB', '<h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2><p><br></p><p class=\"ql-align-justify\">如果你没去过&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;，那么你一定要去一次。如果你已经去过了&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;，那么我相信你会去第二次、第三次、第很多次……&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;这个城市我已经去过不下数次，但每次只是当个匆匆过客。大都把它当作川藏线或者去&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11942.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">川西</a>&nbsp;藏区的集结点。虽然也去过一些诸如春熙路、锦里、宽窄巷子、熊猫基地等一般游客初次来&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;喜欢去的景点，却没留下什么深刻印象。甚至可以说好多老外都比我更了解&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">好像忽然一夜春风，赵雷的《&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;》让这座城市又火了起来。但他描述的似乎不是我所见的&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;，事实上&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/12682.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">玉林</a>&nbsp;路的尽头并不有小酒馆。于是我在微博中问，你们心目中的&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;到底是什么样的？收到最多的回复是：火锅、惬意、适合养老，还有一些带有自己小情结的想法。&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;是一座来了就不想走的城市，以前听过一句老话叫“少不入川，老不出蜀。”大概意思是，年少的时候来到这里安逸的生活会让你失去了斗志，老的时候习惯这里舒服生活的你会离不开这里。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">这次又是去&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11942.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">川西</a>&nbsp;，又一个&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11942.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">川西</a>&nbsp;环线拍完了彩林和初雪。多次给我开车做向导的小张师傅早就和我成为了好朋友，这次是他邀请我在&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;好好玩几天，好带我感受一下&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;人平时的生活。我看最近正好也有空闲，便答应下来了。于是一趟关于&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;的逛吃逛吃的休闲之旅便开始了。</p><h2>第一章 逛</h2><h2>1.1 人民公园</h2><p class=\"ql-align-justify\">第一站是人民公园，问了几个&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;都朋友，都说如果想拍人文一定要去人民公园。很多歪果仁都喜欢去这里感受&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;文化，那我也抱着好奇的心去一探究竟。之所以第一站选择人民公园，也因为正好是周末，哪里都不少人，而拍人文正好不怕人多，于是选择了最多人的公园去拍。看看&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;人周末都在干嘛。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567326.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/34/wKgED1vwFXSAHgxPABUoAlRG_PY79.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">从人民公园地铁站出来抬头便见公园内高耸的辛亥秋保路死事纪念碑。这里是个有故事的地方。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567345.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s12/M00/AA/76/wKgED1vwFbGAJ_CFABMJLRVKzYc38.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">辛亥秋保路死事纪念碑由川汉铁路公司筹款修建，为砖石结构，由碑台、碑座、碑身、碑首四部分组成。纪念碑碑台仿照铁路月台修建，呈圆柱形。碑座与碑身为方锥形，其中碑座四面分别是铁轨、火车头、信号灯、转辙器和自动联接器的浮雕图案。而碑身四面嵌有长条青石，四面都刻有“辛亥秋保路死事纪念碑”字样，由当时&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/12703.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">四川</a>&nbsp;书法家张夔阶（东）、颜楷（西）、吴之英（南）、赵熙（北）分别用楷、草、行、隶4种字体书写。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567327.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/3A/wKgED1vwFXmAb62DABwsUTIrHj019.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">向前不远经过一座凉亭，亭内有一块石碑，正面以草书阴刻着金水溪三个大字，背面是金水溪记。原来旁边这条便是昔日&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;的护城河金水溪。我感觉自己来对了地方。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567329.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/42/wKgED1vwFX-AHTcQAAvKZ-BOUBg48.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">进门不远便见一群唱红歌的老人家。为首的红衣老都精神抖擞，指挥动作有力激昂。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567330.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/46/wKgED1vwFYSAUmAmABgJDEd3q7Q27.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">随着红衣老者的手势，两边的公公婆婆默契地演绎着二重唱。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567332.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s12/M00/AA/4B/wKgED1vwFYmAISSQAAaYeWUlum434.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">走近看，原来他们手里都有一本厚厚的歌谱。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567334.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/50/wKgED1vwFY-AEtPdAAgVH1g869A60.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">人群内还有数位老者演奏着乐器为大众伴奏。我发现每个城市叫人民公园的地方都一群这样的红歌爱好者。身处他们之中，很容易就被他们激昂的歌声带动，情不自禁地热血澎湃起来。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567335.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/54/wKgED1vwFZOAHliDABWXJDySWos63.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">但离他们不远的地方，就有人不为所动，悠悠闲的独自发呆，偶尔吸一口手上的香烟，然后慢悠悠地味出阵阵烟雾。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567337.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/58/wKgED1vwFZmALMC0ABFe56rWsgM69.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">另一边厢，是一群耍太极的人。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567339.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s12/M00/AA/5F/wKgED1vwFZ6AOF-lABAYThPwMyg47.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">而且不乏年轻人，从他们专注的神情和身体姿态可以看出已经进入一个忘我的境界。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567340.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s12/M00/AA/64/wKgED1vwFaGAQWraAAxuBjM6CQE33.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">公园真是个汇聚了人间百态的地方，小时候最喜欢光顾的路边摊，这里还是一样。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567341.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/65/wKgED1vwFaOASg2zAAqp0bYnJKc43.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">油炸食品、臭豆腐味道秀刺激，但很受小朋友们欢迎。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567342.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/69/wKgED1vwFaaAMMSyAAzLjOntY5U98.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">周末了，老俩口带着放假的小孙子逛公园是多么惬意。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567336.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/55/wKgED1vwFZWAf4X7AAmkjJX-5FU40.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">这个周末人民公园正好有菊花展。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567344.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/70/wKgED1vwFa2AXu5nABFXC5irmDs57.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">长焦镜头加独脚架拍花的老法师乐在其中，骄傲地向围观的大妈展示自己刚才的作品。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567343.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/6B/wKgED1vwFamAHFlLAA8PeOZo1Kc44.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">如果说刚才那些你都特别熟悉，没什么新意。那下面这这位用茶壶作武器来练功的老人家绝对会让人眼前一亮，不约而同的赞同这很&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;啊？</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567347.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/7E/wKgED1vwFbqAMzqRABYmTreZp2o06.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">如果说有什么是&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;人的标配，除了火锅、麻将，就是喝茶了。朋友推荐我们要在人民公园的茶馆内好好休憩，喝一杯盖碗茶，看看周围的人。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567351.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/90/wKgED1vwFciAcTGiAAp8eGgYvJs07.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">麻将大都在居民楼里，火锅大都在街上或商场里，而公园最常见的就是茶馆了。它甚至成为午后老&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>人的标配，一种惬意的符号。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567352.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/92/wKgED1vwFcyAaDOSAA6--Qvmo5Q81.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567357.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s12/M00/AA/A3/wKgED1vwFdqATWJaAAs1O3jdpGg30.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">一碗盖碗茶，独自一人，或三五老友，聊天聊地聊人生。这样的场景似曾相识，和我们&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/14674.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">广东</a>&nbsp;的茶楼有着异曲同工之妙。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567355.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/9D/wKgED1vwFdWAQ4IvAAy1lQC98As73.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567356.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/A0/wKgED1vwFdiAZE5qAA-1Rn-qg4s54.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">我们找个角落的位置，每人点了一杯茶，加上一包花生瓜子，休闲的唱茶时光便开始了。服务员给我们两个盆子，老&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;告诉我们，一个用来装零食，另一个是用来装拨出来的花生壳之类的垃圾。每桌一个热水壶，喝完杯中茶，便可以自己添水再泡。这么我们东南沿海喝的工夫茶有点不同，少了诸多讲究，但这种自斟自饮更显惬意，我反而很喜欢，对于我来说，喝茶除了喝茶的本事，更多是喝的是一份自在心情。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567353.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s12/M00/AA/96/wKgED1vwFc-AZRQ_ABAJrNrNebw08.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">采耳这项&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;茶馆独有的服务，把惬意发挥到极致。茶馆里捶背、采耳的民间手艺人肩上挎着一个小箱子，里面是他们的家伙器具，通常这样的师傅都是采耳、捶背一起做，当然也可以分开。采耳的过程感觉很轻巧，采耳师傅小心翼翼，原本让人很紧张的事，没想到客人在采耳的时候居然打起了呼噜。</p><p class=\"ql-align-justify\">难道采耳真有那么舒服吗？</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567361.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s12/M00/AA/B4/wKgED1vwFeeAOWPmABmp12pzs_Q16.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400567365.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s12/M00/AA/CC/wKgED1vwFfaAQv31AApKCAG9LOc67.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">如果想看看老&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;人是怎么生活的，人民公园可以一逛。据说这里的广场舞是&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;最权威的，别的公园的大妈都会来这里观摩学习。我去的时间没对上，没看到。想必也是&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;的一朵奇葩。</p><h2>1.2 东郊记忆</h2><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664985.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://n2-q.mafengwo.net/s12/M00/FC/C7/wKgED1vwx5iAEkHSABPL4pAJ_Gc47.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">创意园对于年轻人，就像公园于老人。真的是无时无刻，创意园里都很多年轻人。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664989.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://p2-q.mafengwo.net/s12/M00/FC/D3/wKgED1vwx6SAVM81AA16NMKYGdI39.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\"><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;的东郊记忆，可以说是&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;最有名的创意园了。这里前身是始建于20世纪50年代的&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;国营红光电子管厂（代号773厂）。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664986.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://b1-q.mafengwo.net/s12/M00/FC/CB/wKgED1vwx5uAGiw7ABP00y9eT3E00.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">2009年，&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;市利用东郊老工业区中的原&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;红光电子管厂旧址，将部分工业特色鲜明的厂区作为工业文明遗址予以保留，欲与文化创意产业结合，打造成音乐产业基地。但始终不愠不火。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664987.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://p3-q.mafengwo.net/s12/M00/FC/CD/wKgED1vwx56AWD6SABTNE44i2h484.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">2010年底，东郊记忆再度开始改造，为完整保留计划经济时代工业建筑的特色，同时把各种构造复杂的厂房改造为商业用建筑，项目聘请了国内知名设计师刘家琨做项目总设计师，并汇集了国内知名建筑师对园区内部分单体建筑进行专项设计。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664988.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://b1-q.mafengwo.net/s12/M00/FC/D0/wKgED1vwx6GAWjlqABZXRPZGgWI39.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">现在的东郊记忆成为集合音乐、美术、戏剧、摄影等文化形态的多元文化园区。成为&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;网红的新聚集地。甚至很多外地朋友也特地要来此打卡。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664990.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://n1-q.mafengwo.net/s12/M00/FC/D4/wKgED1vwx6iAUl92ABaTJmccKdY62.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">我也慕名而来，但我这次不是来这里拍模特的。只是到处逛逛，看看&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;人的生活。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664996.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://n1-q.mafengwo.net/s12/M00/FC/E5/wKgED1vwx76AEVOlABBfYzDvgvE02.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">旧厂房的外墙被画上时尚的巨幅涂鸦。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664993.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://p4-q.mafengwo.net/s12/M00/FC/DB/wKgED1vwx7SAaP_DABS3NwDa5rc19.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664997.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://b2-q.mafengwo.net/s12/M00/FC/E8/wKgED1vwx8KAJjN_ABNoOOEwIOM66.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">旧时代的高大烟囱依然被保留。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664998.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://n3-q.mafengwo.net/s12/M00/FC/EB/wKgED1vwx8aAC8o0ABT2uxY5ij055.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">也许是因为内部还在装修，原本生产车间的操作台被移到了户外摆放。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400664999.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://p4-q.mafengwo.net/s12/M00/FC/EF/wKgED1vwx8qAE1g7ABYOVpr-9gE70.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">这里有很多怀旧元素，很多影视、摄影团队喜欢来这里拍摄。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400665000.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://b3-q.mafengwo.net/s12/M00/FC/F1/wKgED1vwx82AB0bTAAyPwO8QURo63.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">当然还有很多淘宝、微商等拍产品的。走在里面，到处都能看到正在拍照的人。无论是商业，或是自娱自乐。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400665003.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://b4-q.mafengwo.net/s12/M00/FC/F8/wKgED1vwx9eARdzMABjGHTosM4I54.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">整个东郊记忆的区域很大，但还不是完全都开放的。我也只是随便逛逛，并没有特别细地逛齐每一条街。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400665006.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://p1-q.mafengwo.net/s12/M00/FC/FC/wKgED1vwx-GAOtT_ABWo7g4mkCw31.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">这里很多怀旧的元素，修旧如旧，很有感觉。例如这生锈的报亭、旁边旧款的电车。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400665001.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://p2-q.mafengwo.net/s12/M00/FC/F4/wKgED1vwx9CAFbF1AA88XTeOca065.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">这里既然是音乐公园，自然也少不了音乐。一边是弹着吉它拍抖音玩直播的年轻人，一边是一群自娱自乐的老人家。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400665004.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://b3-q.mafengwo.net/s12/M00/FC/FA/wKgED1vwx9uASggtABFF1Sgjumo74.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400665002.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://b1-q.mafengwo.net/s12/M00/FC/F5/wKgED1vwx9OAJT0lABHI1oWmeB454.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">我更倾向于拍拍这群退休老人的生活，或许他们年轻时就在这个地方奋斗工作，年老后还能在这片土地上弹弹琴唱唱小曲，这何尝不是一种幸福生活？</p><h2>1.3 文殊院</h2><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400666531.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://p3-q.mafengwo.net/s12/M00/FD/79/wKgED1vwyKOAE6rKABcp23CbGzc54.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">文殊院真是个要重点推荐的地方。它的名气没有武候祠、杜甫草堂、宽窄巷子这类地方那么大，正因如此，没有大批旅游团来此，反倒是个可以拍点好照片的地方。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400666534.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://n2-q.mafengwo.net/s12/M00/FD/84/wKgED1vwyKyAV4ZiAA3gPakRnCQ01.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">武候祠的红墙竹影很有名，但我在文殊院找到的红墙树影却也别有韵昧。</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400666536.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://p4-q.mafengwo.net/s12/M00/FD/89/wKgED1vwyLKARWYvAA3jE_txpnk73.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">也许下午来这里特别合适，斜阳的角度把古树、石雕的影子投射在文殊院古朴的红墙上.</p><p><a href=\"http://www.mafengwo.cn/photo/10035/scenery_11288178/400666535.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 138, 0); background-color: rgb(252, 242, 220);\"><img src=\"https://n1-q.mafengwo.net/s12/M00/FD/87/wKgED1vwyLCAdoa-AA-5_qcROW420.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">如此有东方韵味的地方，无怪乎文殊院成为&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10035.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">成都</a>&nbsp;本地汉服爱好者约拍的一个有名的地方。</p><p class=\"ql-align-justify\"><br></p><h2><br></h2><h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2>', '2022-01-17 09:30:37', '311213', '22', '3da8d9f7-7cc5-4fd7-923d-cea9e6af7e73.jpeg', '8', '成都希尔顿酒店', '拉面哥看不过眼，亲自出手示范。果然大师1出手就技惊四座。 招牌的妖娆笑容? 对面不远有梨园，可...六种口味的蘸碟摆在面前，分别是经典传统泰式');
INSERT INTO `t_notes` VALUES ('3', '在四姑娘的长毕穿，邂逅一整个青春。', '2022-01-09', '5', '3000RMB', '<h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2><p><br></p><p class=\"ql-align-justify\">测试游记55555。。。。。。。。。。。</p><h2><br></h2><h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2>', '2022-01-19 09:33:20', '231234', '22', 'a7602127-3e29-4760-8ffd-cdc96c1858ec.jpeg', '8', '成都速八酒店', '千江有水， 千山 有雪；从长坪沟穿越到 毕棚沟 ~\r\n回想 成功 穿越的四姑娘之行，最大的感触就是~');
INSERT INTO `t_notes` VALUES ('4', '川行千里路，乌云与金边', '2022-01-09', '10', '5000RMB', '<h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2><p><br></p><p><br></p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_8068632/275100887.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s10/M00/7F/FF/wKgBZ1o5Nt6AGNeAALp3tpcdXiQ668.gif?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">2017年秋天，首入&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11942.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">川西</a>&nbsp;，自驾九日，饱览殊胜。细数披星戴月的日夜，尽是难忘的瞬间。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">扛着两机三镜三脚架十瓶水五瓶氧气，暴走十个小时，淋了三场雨，假的是五色海，真的是同路人。</p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_8068632/272034989.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s10/M00/80/CE/wKgBZ1op1HaAXCtEAAgG8nBtOSY42.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/3457.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">稻城亚丁</a></p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_8068632/272035074.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s10/M00/80/E8/wKgBZ1op1RqACB-dABANB2AyL5I50.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/15212.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">五色海</a></p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_8068632/273023163.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s10/M00/98/1A/wKgBZ1ouzRaAbwAhAA3JH2qHUCg73.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/15293.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">冲古草坪</a></p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_8068632/272033048.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s10/M00/7B/1C/wKgBZ1opwiiAGcujAAdLPeoHu5g25.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/3457.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">稻城亚丁</a></p><p class=\"ql-align-justify\">翡绿欲滴，云影波光，翠林如屏，雪迹璀白。阳光赏赐我真的珍&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10269.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">珠海</a>&nbsp;，真的仙乃日。</p><p><a href=\"http://www.mafengwo.cn/photo/10061/scenery_8068632/273023171.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s10/M00/98/62/wKgBZ1ouzUiAcqC1AA3BfEc3aWE30.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/3510.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">珍珠海</a></p><p class=\"ql-align-justify\">火烧云里的夏诺多吉，静默无言的海子山，翻山越岭，与亿万流年的时光雕刻狭路相逢，有生之年，何其有幸。</p><p class=\"ql-align-justify\"><br></p><h2><br></h2><h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2>', '2022-01-22 09:35:49', '34123', '22', '70bee3e8-0fb6-499e-ba79-321623444f57.jpeg', '8', '汉庭酒店', '2017年秋天，首入 川西 ，自驾九日，饱览殊胜。细数披星戴月的日夜，尽是难忘的瞬间。\r\n\r\n扛着两机三镜三脚架十瓶水五瓶氧气，暴走十个小时，淋了三场雨，假的是五色海，真的是同路人。');
INSERT INTO `t_notes` VALUES ('5', '张家界旅游记录', '2022-01-10', '3', '800', '<p>测试数据，图片来源网络，如果侵权，联系删除!</p>', '2022-01-20 11:00:35', '8634', '22', 'ec288fd4-1353-483e-b82e-efd7a44a4a27.jpg', '6', '景区酒店', '2018年国庆节有了七天假期。来到了张家界，张家界很美，感受了自然风光');
INSERT INTO `t_notes` VALUES ('6', '雀儿山 | 在6000m之上看最美的云海，感受最纯粹的自由', '2022-01-31', '10', '7000RMB', '<h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2><p><br></p><p class=\"ql-align-justify\">接触户外快一年了</p><p class=\"ql-align-justify\">这一年也是我大学过得最有意义的一年</p><p class=\"ql-align-justify\">从害怕孤独到享受一个人的旅行</p><p class=\"ql-align-justify\">从马拉松到越野跑</p><p class=\"ql-align-justify\">从攀岩到攀冰</p><p class=\"ql-align-justify\">从4000m雪山徒步到5000m、6000m技术雪山的攀登</p><p class=\"ql-align-justify\">我好像解锁了一个不同于我之前人生的另一个世界</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">这一年里</p><p class=\"ql-align-justify\">因为尝到了在山上饿到极致的感受</p><p class=\"ql-align-justify\">所以会在生活中更加珍惜一切</p><p class=\"ql-align-justify\">因为不想掉队给队友添麻烦</p><p class=\"ql-align-justify\">所以做了更多锻炼</p><p class=\"ql-align-justify\">因为找到了喜欢的东西</p><p class=\"ql-align-justify\">所以不再自卑</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">这一年里</p><p class=\"ql-align-justify\">我反复在思考未来人生的方向</p><p class=\"ql-align-justify\">甚至考虑到了生死的问题</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">为什么户外这么累还那么喜欢</p><p class=\"ql-align-justify\">因为自由是会上瘾的</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">——————在大本营仰望银河——————</p><p class=\"ql-align-justify\"><br></p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857695095.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s9/M00/4F/D1/wKgBs118fU-AY6zvAAqfeZEMcyw35.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">（图/龙行）</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">——————在C1惊叹漫天彩霞的美——————</p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857648523.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s9/M00/34/BD/wKgBs118W1yAS-YbAAPmb7PW3gk441.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857649259.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s10/M00/DD/67/wKgBZ118XHSAMSklAAPpKkcHDUk001.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">——————踏过千沟万壑的冰川——————</p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857649157.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s10/M00/DC/F8/wKgBZ118XECAfW99AA23H2nNTWU553.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857649158.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s10/M00/DD/02/wKgBZ118XESAevSRAA6w_CuL3fw977.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">——————爬上令人绝望的大冰壁——————</p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857651628.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s10/M00/DE/4E/wKgBZ118XayAVsTwAAmlkTnI910950.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857651718.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s14/M00/F8/D4/wKgE2l18XheAEAqCABBPEIerRW4178.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">——————在C3坐看远处白云绕山、彩虹相缀——————</p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857651969.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s9/M00/37/7E/wKgBs118XlyAaQetAAXuoJyTGv8328.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857651970.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s9/M00/37/81/wKgBs118Xl2Aaw9XAAQ_rYrjWdc816.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">——————在风雪交加的黑夜艰难前行——————</p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857652189.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s10/M00/DE/BC/wKgBZ118XpuAGKVNAAN-XabfsRs245.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857652190.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s10/M00/DE/BE/wKgBZ118XpyAGu4ZAAXsuADiIKc342.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">——————在顶峰云层之间感受天地的壮阔——————</p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857652445.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s14/M00/F8/F9/wKgE2l18XwSAG7SrAAUSVhBm1uQ755.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857652446.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s10/M00/DF/8C/wKgBZ118XwSALlkMAAM6RwFfGWU292.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">——————在山下遇上天真淳朴的藏族孩童——————</p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857678930.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s14/M00/0C/3E/wKgE2l18ekaAKaKuABIePHb6t4A083.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/photo/10236/scenery_17064712/857676068.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 138, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s10/M00/F0/AB/wKgBZ118d-KANY8SAApMllhQgSc243.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><h2><br></h2><h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2>', '2022-02-14 09:24:49', '28981', '22', '89af72ed-27ff-43b0-be8e-aedd15f91ecb.jpg', '8', '雪山景区酒店', '往往最感动的，能记住很久的都是1些小细节 我们四个状态都恢复了，想到今天是冲顶前的最后1天，心...好在C1住1晚 其他人冒雨下山了，还有小白');
INSERT INTO `t_notes` VALUES ('7', '10月国庆格聂南线穿越行记', '2022-01-02', '5', '5000RMB', '<h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2><p><br></p><p class=\"ql-align-justify\">作为&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/21536.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">中国</a>&nbsp;7大顶级越野线路之一，&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;南线蕴藏着极致诱惑的原始美景: 雪山、冰川、草甸、森林、海子、溪流、温泉、峡谷、藏寨、牛羊......还有淳朴的民风。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889249406.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s15/M00/84/C4/CoUBGV2p7ImAf1NGAA3skTzCAGg63.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/6005625.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">冷古寺</a></p><p class=\"ql-align-justify\">随着&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;神山管理筹备组的成立，“&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;南线”将与“丙察察”一样，成为越野里最后的“&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;南线”这一说法又日渐喧嚣尘上。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889275889.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s15/M00/B0/5C/CoUBGV2qewWACxMKAB8kGuXTgj461.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/6005625.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">冷古寺</a></p><p class=\"ql-align-justify\">为了赶在景区完全开发前一饱眼福，我和鱼两人开着小吉踏上了穿越&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;南线的旅程，走咧，去高原上撒欢。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889239365.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s15/M00/8C/28/CoUBGV2qcCCAJOa1ABDU9Cyx1As95.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/6706453.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">铁匠山垭口</a></p><p><a href=\"http://www.mafengwo.cn/poi/6005625.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(71, 71, 71);\">冷古寺</a></p><p class=\"ql-align-justify\">出发前准备</p><p class=\"ql-align-justify\">一、基本情况</p><p class=\"ql-align-justify\"><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;神山: 位于&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/12703.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">四川</a>&nbsp;省&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10236.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">甘孜</a>&nbsp;州&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10509.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">理塘</a>&nbsp;县西南部、&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11719.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">巴塘</a>&nbsp;县东部。藏语名为呷玛日巴，是我国藏传佛教24座神山中的第13女神，也是胜乐金刚的八大金刚妙语圣地之一。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889157200.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s15/M00/66/68/CoUBGV2qZJiAFruJAA4KVgv9Er805.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/74288916.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">格聂之眼</a></p><p class=\"ql-align-justify\"><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;山区群峰林立，5000米以上的高峰多达数十座。山顶终年积雪，坡壁峥嵘陡峭，山麓一片片高原森林，下面的草甸构成辽阔的高原牧场。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889157716.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s15/M00/69/53/CoUBGV2qZaOABJkLABFcXqMHcig57.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">其中尤推海拔5807米的肖扎神山、海拔5780米的克麦隆神山，和海拔6204米的&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;主峰最受尊崇，<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;主峰号称&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/12703.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">四川</a>&nbsp;第三高峰、康区第一高峰。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/885378363.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s15/M00/DF/10/CoUBGV2nU3qAdwNmABX8RDiyPVo34.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/6414754.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">格聂神山</a></p><p class=\"ql-align-justify\"><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;南线: 是从&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10509.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">理塘</a>&nbsp;县出发，沿着&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;神山的南侧穿行，终点到&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11719.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">巴塘</a>&nbsp;县的一条线路，全长230公里，行程约1~2天。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889250632.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://n1-q.mafengwo.net/s15/M00/98/29/CoUBGV2qc-6AVnFbABNxMLjDzmk31.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/15409.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">理塘草原</a></p><p class=\"ql-align-justify\">这条线路全程在平均海拔4000米以上的高原行驶，全线几乎没有手机信号，仅在路过为数不多的几个乡村时，车外有缥缈的信号渗进来，立马一把抓住发个圈，证明我还好好的。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889246512.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s15/M00/92/4E/CoUBGV2qcf-ARnGlAA06O9DAb3A03.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">路况：冷达之前的90公里是铺装路面，其余是简易的碎石路、土路、悬崖路，路面凹凸布满炮弹坑。坡陡弯急，路窄时会车困难；全程无加油站，一定要在&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10509.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">理塘</a>&nbsp;加满油后再行进，加油时要提供行驶证、驾驶证、身份证以供查验；沿途几乎没有路牌，找路全靠问，多与往来车辆交流路况及路线，避免走错路；与藏族同胞沟通有障碍时，连说带划的肢体语言是最好的交流工具。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889240169.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s15/M00/8D/22/CoUBGV2qcGaAO2swAAvk5acKaHA51.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/6414814.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">毛垭大草原</a></p><p class=\"ql-align-justify\">在&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11719.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">巴塘</a>&nbsp;县城，听当地老司机说，三年以后这条路的路面改造将会完成，届时轿车穿行应该也不成问题。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889157442.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://b1-q.mafengwo.net/s15/M00/67/A7/CoUBGV2qZQSAZJfCAAeQQdkDA2c32.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p class=\"ql-align-justify\">马年是&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;的本命年，届时会有很多朝圣者从各地前往&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;转山。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">二、关注了微信公众号“&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;神山旅游”和“&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10236.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">甘孜</a>&nbsp;交警”，查询到&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;神山管理处电话：0836-5324111、<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10236.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">甘孜</a>&nbsp;州公安局交通警察支队的咨询电话0836-2822963，随时关注实时问询，以便第一时间了解到天气变化和最新路况，避免错过因故封路的即时信息。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889252232.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s15/M00/9A/EE/CoUBGV2qdNWAat07ABmyLkZ2dQA25.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/2434672.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">剪子弯山</a></p><p class=\"ql-align-justify\">根据&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;神山的公众号内容推荐，大致确定了行程线路：&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10509.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">理塘</a>&nbsp;县城—铁匠山—喇嘛垭乡—依&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/147435.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">拉卡</a>&nbsp;垭口—热日卡露天温泉—乃干拉托&nbsp;<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10374.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">格聂</a>&nbsp;之眼—乃干多村—冷达—虎皮坝—冷古寺—热梯河谷—格木村—<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11719.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(77, 77, 77);\">巴塘</a>&nbsp;县城。</p><p><a href=\"http://www.mafengwo.cn/photo/10374/scenery_17448130/889252482.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(255, 157, 0); background-color: rgb(252, 242, 220);\"><img src=\"http://p1-q.mafengwo.net/s15/M00/9B/F5/CoUBGV2qdR-AIMFTABko4a1W5PM42.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"></a></p><p><a href=\"http://www.mafengwo.cn/poi/6414754.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: rgb(153, 153, 153);\">格聂神山</a></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p><h2><br></h2><h2>（备注:内容来源网络-如果侵犯您的权利,联系删除）</h2>', '2022-01-10 09:27:39', '19915', '22', '10cd4d38-89ae-40b6-8d36-d76b8d894552.jpeg', '6', '温泉酒店', '终于平安抵达海拔2850米的巴塘，这是从4川进入西藏前的最后1个县城。 直到离巴塘约3公...前行不足5公里的道路左侧，有个丁字路口，立');
INSERT INTO `t_notes` VALUES ('11', '稻城之美的体验', '2022-01-08', '5', '5000RMB', '<p>很美 ，你这么美 这么美</p>', '2022-01-19 11:23:38', '888', '22', 'c0c7c85a-41ad-4046-a72c-72cd3247978b.jpg', '6', '亚丁酒店', '稻城真的很美，美的让你窒息，这里的山，这里的水，这里的人都是那么的美丽，是一个让你去了，就想留下的地方。');
INSERT INTO `t_notes` VALUES ('12', '成都市区春熙路之旅', '2022-01-08', '1', '800', '<p>成都是你一个来了不想回去的地方。这里值的您来的地方。</p>', '2022-01-12 11:27:12', '6792', '22', 'ac30df76-c6fa-451c-8807-40209beb23d7.jpg', '10', '寝室之家', '成都市的繁华，成都市的慢生活，成都市的建筑，成都市的现代化，从一个春熙路，你就可以看的出来。来来往往的人群，体现了都市的繁华。体现了人们生活的提高。');

-- ----------------------------
-- Table structure for `t_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_order_detail`;
CREATE TABLE `t_order_detail` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `orderid` bigint(2) NOT NULL,
  `travelerName` varchar(255) DEFAULT NULL,
  `cardNum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_detail
-- ----------------------------
INSERT INTO `t_order_detail` VALUES ('35', '16', 'zs1', '511522199001030406');
INSERT INTO `t_order_detail` VALUES ('36', '16', 'zs2', '511522199001030407');
INSERT INTO `t_order_detail` VALUES ('37', '17', 'zs1', '510521189800102123');
INSERT INTO `t_order_detail` VALUES ('38', '17', 'zs2', '510521189800102345');
INSERT INTO `t_order_detail` VALUES ('39', '18', 'zs1', '500500199502034565');
INSERT INTO `t_order_detail` VALUES ('40', '18', 'zs2', '511500199502034565');

-- ----------------------------
-- Table structure for `t_order_main`
-- ----------------------------
DROP TABLE IF EXISTS `t_order_main`;
CREATE TABLE `t_order_main` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `ordernum` varchar(255) NOT NULL,
  `spotsid` bigint(2) DEFAULT NULL,
  `spotsname` varchar(255) DEFAULT NULL,
  `traveltime` date DEFAULT NULL,
  `spotstel` varchar(255) DEFAULT NULL,
  `adultsnum` bigint(2) DEFAULT NULL,
  `childnum` bigint(2) DEFAULT NULL,
  `linkname` varchar(255) DEFAULT NULL,
  `linktel` varchar(255) DEFAULT NULL,
  `linkemail` varchar(255) DEFAULT NULL,
  `hotelid` bigint(255) DEFAULT NULL,
  `hotelnum` bigint(2) DEFAULT NULL,
  `hotellinktel` varchar(255) DEFAULT NULL,
  `hotelprice` decimal(16,2) DEFAULT NULL,
  `totalprice` decimal(16,2) DEFAULT NULL,
  `orderstatus` varchar(2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `creatorid` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_main
-- ----------------------------
INSERT INTO `t_order_main` VALUES ('16', '2022013012403485594722663', '26', '海螺沟', '2022-10-31', '0836-3268893', '2', '0', 'zhangsan', '188999019002', 'zhangsan@163.com', '21', '2', '18801020304', '128.00', '576.00', '1', '2022-01-30 12:40:35', '22');
INSERT INTO `t_order_main` VALUES ('17', '2022013017422049232014477', '25', '中国彩灯博物馆', '2022-10-29', ' 0813-2304003,0813-2303934,0813-2305061', '2', '0', 'zzz1', '18890019002', '12376123@qq.com', '21', '1', '18900100212', '128.00', '228.00', '1', '2022-01-30 17:42:20', '22');
INSERT INTO `t_order_main` VALUES ('18', '2022013017435698183833600', '22', '成都大熊猫繁育研究基地', '2022-10-31', '028-83510033', '2', '0', 'zzz1', '18890010223', '12313@qq.com', '22', '2', '99880102', '196.00', '496.00', '1', '2022-01-30 17:43:57', '22');

-- ----------------------------
-- Table structure for `t_price`
-- ----------------------------
DROP TABLE IF EXISTS `t_price`;
CREATE TABLE `t_price` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `pricefw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_price
-- ----------------------------
INSERT INTO `t_price` VALUES ('1', '0-99');
INSERT INTO `t_price` VALUES ('2', '100-199');
INSERT INTO `t_price` VALUES ('3', '200-299');
INSERT INTO `t_price` VALUES ('4', '300-399');
INSERT INTO `t_price` VALUES ('5', '400-499');
INSERT INTO `t_price` VALUES ('6', '500以上');

-- ----------------------------
-- Table structure for `t_spots`
-- ----------------------------
DROP TABLE IF EXISTS `t_spots`;
CREATE TABLE `t_spots` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `opentime` varchar(255) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `spotsDesc` varchar(255) DEFAULT NULL,
  `info` longtext,
  `purchaseinfo` longtext,
  `features` longtext,
  `spotsid` bigint(2) DEFAULT NULL,
  `levelid` bigint(2) DEFAULT NULL,
  `themeid` bigint(2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `salenum` bigint(2) DEFAULT NULL,
  `creatorid` bigint(2) DEFAULT NULL,
  `fmurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_spots
-- ----------------------------
INSERT INTO `t_spots` VALUES ('17', '峨眉山', '乐山市峨眉山市名山南路41号峨眉山（西南门）附近', '06:00开放', '160.00', ' 400-8196-333,0833-5090114', '峨眉山是中国佛教四大名山之一，也是普贤菩萨的道场，山中有众多的寺院，让这里充满了神奇的气息。山中的景色也非常优美，四季都各有特色。也许是沾了灵气的缘故，山中的猴群是出了名的顽皮，它们不怕人，还会主动向游客讨要食物。', '<p>峨眉山是中国佛教四大名山之一，也是普贤菩萨的道场，山中有众多的寺院，让这里充满了神奇的气息。山中的景色也非常优美，四季都各有特色。也许是沾了灵气的缘故，山中的猴群是出了名的顽皮，它们不怕人，还会主动向游客讨要食物。</p><p>景区随海拔不同，分为低中高三个区。清音阁以下为低山区，植被茂密，气候与平原无异；清音阁至洗象池为中山区；洗象池以上为高山区，由于地势较高，到处是参天古树，所以这里气温较低。山中主要有报国寺、伏虎寺、清音阁等庙宇，及洪椿坪、九十九道拐、金顶等景点。</p><p>游玩峨眉山，主要有两种方式：徒步、乘车。全程徒步的话，约需2-3天；乘车比较轻松，不想错过经典风光，可以游玩2天。</p>', '<p>儿童：身高1.2米（含）以下，免费；6周岁（含）以下，凭有效期内居民身份证、护照、学生证、少先队员证，免费；身高：1.2米（不含）~1.5米（含），半价；年龄：18周岁（不含）以下 身高：1.5米（不含）以上，半价</p><p>老人：65周岁（含）以上老人持本人有效身份证，免费；60周岁（含）-65周岁（不含）之间老人持本人有效身份证或护照【法定节假日除外】，免费；60周岁（含）-65周岁（不含）之间老人在【法定节假日期间】持本人有效身份证或护照，半价</p><p>学生：年龄：18周岁以上 持有效学生证（不含成人教育、研究生、短期培训生、交流生、自考生、党校生、电大生），半价</p><p>军人：持有效期内《士兵证》、2016新版 《军官证》、武警《警官证》．《义务兵证》的现役军入和现役伤残军人、军队离休．退休千部和退休士官，免费</p><p>伤残军人/警察：持民政部印发《伤残民兵民工证》、 芯片版《残疾军人证》并加盖省直辖市民政厅局优抚专用章的非 现役伤残军人；持公安部人民警察伤残抚恤证》、 民政部《伤残人民警察证》、《伤残国家机关工作人员证》者，免费</p><p>残疾人：持残联第二代《中华人民共和国残疾人证》和第三代智能化残疾证者实行免费政策；其中一级和二级盲人、肢体残疾、智力残疾、精神残疾者可携带1名同行陪护人员 ，免费</p><p>记者：持新闻出版广电总局《新闻记者证》 并有效年审的中国内地记者、中华全国新闻工作者协会《港澳记者采访证》及《港澳新闻机构常驻内地记者证》的港澳记者、各级政府台湾事务办公室《采访证》的台湾记者、我国驻外使馆颁发J-1或J-2有效签证的外国记者 ，免费</p><p>教职工：教师节当天持《教师资格证》，免费</p><p>离退休干部：持离退休干部相关证件，免费</p><p>劳动模范：省部级以上劳动模范、凭相关证件，免费</p><p>英雄模范：省部级以上英雄模范、凭相关证件，免费</p><p>全国级道德模范：凭相关证件，免费</p><p>全国医护工作者：从2020年3月22日起至2021年3月22日止，全国医护工作者免峨眉山景区门票。对援鄂医护工作者免峨眉山景区门票、免景区观光车和索道。，免费</p>', '<p><strong>停车场</strong>：【黄湾停车场】参考价格：¥20/次；地址：黄湾停车场；库位：600</p><p><strong>园内交通</strong>：观光车和索道，携程均有售，详情见产品列表</p><p><strong>卫生间</strong>：景区内设有多个卫生间，游客中心及主干道上标有醒目的指示牌。</p><p><strong>便利店</strong>：爬山沿途设有多个便利店</p>', '10', '5', '3', '2022-01-29 00:00:00', null, '9', 'e2037ea9-e9bd-4641-8300-a65a7eb6ddea.png');
INSERT INTO `t_spots` VALUES ('18', '九寨沟风景区', '阿坝藏族羌族自治州九寨沟县漳扎镇九寨沟沟口301省道旁边', '07:30开放', '290.00', '400-088-6969', '寨沟位于阿坝州九寨沟县境内，沟中雪峰林立，林木茂密，水池浅滩五彩斑斓，晶莹的溪水穿行于森林和浅滩之间，加上藏家木楼、经幡和藏羌民族独特的传统习俗，称为“美丽的童话世界”。', '<p><strong>2019年9月27日起，景区部分景观恢复对外开放。</strong></p><p>寨沟位于阿坝州九寨沟县境内，沟中雪峰林立，林木茂密，水池浅滩五彩斑斓，晶莹的溪水穿行于森林和浅滩之间，加上藏家木楼、经幡和藏羌民族独特的传统习俗，称为“美丽的童话世界”。</p><p>九寨沟主体呈“Y”字形，由树正沟、日则沟和则查洼沟三条沟组成，总长50余公里，景区内有环保观光车穿梭行驶，招手即停，一般是乘坐环保车一个个景点玩下来。&nbsp;如果细细品味的话，一天的时间是严重不够的。景区推出的淡季二次进沟是不错的选择</p>', '<p>全国医务工作者：自景区恢复营业之日起至2020年12月31日，全国医务工作者凭有效证件（本人医师资格证、护士资格证）及身份证原件，可享受1次免费开放优惠政策，免费项目指免付景区门票，在售票处办理相关手续即可入园。（备注：国庆节10.1-10.8日不享受此政策）​，免费</p><p>儿童：6周岁（含6周岁）以下或身高1.2米（含1.2米）以下的享受门票和观光车免票，优惠票</p><p>老人：65岁以上，免费；60-64岁老年人（非节假日）门票，免费；60-64岁老年人（节假日）门票，半价</p><p>学生：年龄：6周岁（不含）~18周岁（含）补充说明：未成年人、全日制大学本科及以下学历学生、持《港澳居民来往内地通行证》、《台湾居民来往大陆通行证》或学生证等有效证件的香港、澳门、台湾入境游青少年，优惠票</p><p>军人：现役军人、伤残军人，优惠票</p><p>补充说明：以上信息仅供参考，具体信息请以景区当天披露为准。</p><p><br></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">1. 景区属于高原气候，早晚温差很大，无论何时都要记得携带保暖衣物。这里阳光紫外线很强，需注意防晒。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">2. 景区海拔较高，部分游客可能会发生高原反应。景区内有多处吸氧点，一般的高反症状吸氧后即可恢复。吸氧免费，但吸氧工具需要购买。</span></p>', '<p><strong>停车场</strong>：【九寨沟蓝天停车场】参考价格：¥5/小时；地址：九寨沟蓝天停车场；库位：800</p><p><strong>园内交通</strong>：观光车：位于景区门口，费用含在门票内，景区的观光车为站点循环运行</p><p><strong>卫生间</strong>：景区内设有多个卫生间，游客中心及主干道上标有醒目的指示牌。</p><p><strong>便利店</strong>：沿途主干道设有多个便利店</p>', '19', '5', '3', '2022-01-29 00:00:00', null, '9', '0f5cca56-dffc-42ad-9131-af9a5dc43369.png');
INSERT INTO `t_spots` VALUES ('19', '稻城亚丁', '甘孜藏族自治州稻城县', '07:00开放', '548.00', ' 0836-6966022,0836-5725215', '稻城亚丁，即亚丁自然保护区，也称亚丁景区，位于甘孜州稻城县南部，主要由“仙乃日、央迈勇、夏诺多吉”三座神山和周围的河流、湖泊和高山草甸组成，是中国保存较为完整的一处自然生态系统。', '<p>稻城亚丁，即亚丁自然保护区，也称亚丁景区，位于甘孜州稻城县南部，主要由“仙乃日、央迈勇、夏诺多吉”三座神山和周围的河流、湖泊和高山草甸组成，是中国保存较为完整的一处自然生态系统。</p><p>因其独特的地貌和原生态的自然风光，有人称其为蓝色星球上的仅存的一片净土。</p><p>景区内不仅有壮丽神圣的雪山，还有辽阔的草甸、五彩斑斓的森林和碧蓝通透的海子，雪域高原美丽的一切几乎都汇聚于此，这一切的一切都让人流连忘返。如当地虔诚的藏民一样，徒步转山是感受亚丁风光的好方式。不过由于亚丁保护区海拔较高，全程徒步还是需要相当的体力。</p>', '<p>儿童：景区门票：对身高1.2米（含1.2米）以下儿童凭身份证、户口薄等有效证件的6周岁（含6周岁）以下儿童，免费；景区门票：6周岁（不含）-18周岁（含）未成年人【景区现场购买】，优惠门票；景区观光大巴车票：1.1米以下，免费；景区观光大巴车票：1.1米-1.3米，半价；景区观光大巴车票：1.3米以上购买全价票，全价</p><p>军人：景区门票：持有效证件的现役军人、残疾军人、及军队离休、退休干部和退休士官，免费</p><p>老人：景区门票：60周岁（含）以上，在非国家法定节假日凭身份证或者老年证等有效的老年人 ，免费；景区门票：60周岁（含）-65周岁（不含）老年人在国家法定节假日实行门票半价优惠【景区现场购买】，优惠门票</p><p>残疾人：景区门票：持有效证件的残疾人（对盲人和重度肢体、智力、精神残疾人，允许一名陪护人员免费进入），免费</p><p>学生：景区门票：持有效证件的全日制大学本科及以下学历的在读大学生【景区现场购买】，优惠门票</p><p>全国各大医学院师生：开园后-2020年12月31日全国各大医学院师生免票游览（含门票、车票），免费</p><p>医护人员：1.向在新冠肺炎疫情阻击战中英勇殉职医务人员的父母、配偶、子女实行终身免票游览（含门票、车票）； ，免费；2.向全国医务人员（含港澳台、海外侨胞）本人及其父母、配偶、子女予以2020年至2021年两年内免票游览（含门票、车票）；，免费；3.向在新冠肺炎疫情阻击战中表现特别优秀，受到省级及以上表彰人员（包括医疗人员、公安干警、干部职工和社会各界人士等）本人及其父母、配偶、子女予以2020年至2021年两年内免票游览（含门票、车票）；，免费</p>', '<p><strong>停车场</strong>：【稻城亚丁停车场】：￥20/次；null：亚丁游客中心正对面；null：400</p><p><strong>行李寄存</strong>：景区提供免费行李寄存服务</p><p><strong>园内交通</strong>：观光车：位于景区门口，运行约60分钟，费用含在门票内</p><p><strong>卫生间</strong>：景区内设有多个卫生间，游客中心及主干道上标有醒目的指示牌。</p><p><strong>便利店</strong>：设有多个便利店，在冲古寺附近。</p>', '20', '5', '3', '2022-01-29 00:00:00', null, '9', '3c5e5914-8e37-4c6f-81fb-6e911848a646.png');
INSERT INTO `t_spots` VALUES ('20', '牛奶海', '甘孜藏族自治州稻城县亚丁景区内央迈勇神山山坳处', '8:00-14:30', '200.00', '0836-6966022', '牛奶海，又叫洛绒措，位于央迈勇神山脚下的山坳里，是一个面积不大状如水滴的古冰川湖。四周雪山环绕，湖水清莹碧蓝，湖畔则是一圈乳白色环绕，故称牛奶海。', '<p>牛奶海，又叫洛绒措，位于<a href=\"https://you.ctrip.com/sight/daocheng342/18703.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51); background-color: transparent;\">央迈勇</a>神山脚下的山坳里，是一个面积不大状如水滴的古冰川湖。四周雪山环绕，湖水清莹碧蓝，湖畔则是一圈乳白色环绕，故称牛奶海。</p><p>牛奶海是亚丁地区的圣湖之一，位于央迈勇神山下，海拔4600米。牛奶海湖水深浅不一，近岸由于湖底远久植物的沉淀而略显黑色，往里面一些则是浅绿色的一带，再深处则是碧绿色的水面，蓝得透亮。阳光照耀在静静的湖面上，水面如宝石般熠熠闪光。</p><p>从<a href=\"https://you.ctrip.com/sight/daocheng342/18745.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51); background-color: transparent;\">洛绒牛场</a>到牛奶海约4.5公里，之间没有景区电瓶车，只能徒步或者在洛绒牛场马帮处租马。骑马往返约2-3小时，费用约300元。徒步稍慢，约需3-4小时。由于海拔较高，请根据个人身体状况，自行斟酌。</p>', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">4月1日-11月30日8:00-14:30，14:30停止进入；12月1日-次年3月31日牛奶海进入寒冬暂停开放。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">﻿1. 从洛绒牛场通往牛奶海的路较为崎岖，且中途部分路段需游客下马徒步，对游客体力具有较高的要求，建议轻装简行，备好必须的干粮和水。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">2. 牛奶海海拔约为4600米，气温较低，且山风较大，需要做好保暖准备。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">3. 从牛奶海再往上行半小时左右就能到达五色海，建议体力够的话一定要去看看。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">4. 山间没有垃圾桶，游客要备好垃圾袋，保护好景区环境。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">5. 牛奶海附近海拔约4600米，注意不要剧烈运动，以防发生高原反应！</span></p>', '<p>好玩 有停车场</p>', '20', '5', '3', '2022-01-29 00:00:00', null, '9', '057ad431-6bbd-4460-9c79-bf6dcd024a4a.png');
INSERT INTO `t_spots` VALUES ('21', '塔公寺', '甘孜藏族自治州康定县塔公乡', '08:00开放', '10.00', '未知', '塔公寺位于甘孜州康定县塔公乡，全名“一见如意解脱寺”，是藏传佛教萨迦派著名寺庙，距今已有一千多年的历史，更是康巴地区藏民朝拜的圣地之一。寺内保存有一尊与拉萨大昭寺相同的释迦牟尼像。', '<p>塔公寺位于甘孜州康定县塔公乡，全名“一见如意解脱寺”，是藏传佛教萨迦派著名寺庙，距今已有一千多年的历史，更是康巴地区藏民朝拜的圣地之一。寺内保存有一尊与拉萨大昭寺相同的释迦牟尼像。传说是文成公主入藏路经此地，模拟携往拉萨释迦牟尼像造一尊留供寺中。二者之间具有极其特殊的奇特因缘，所以塔公寺又有“小大昭寺”之称。</p><p>塔公寺由大雄宝殿、舍利宝殿、释迦殿、护法殿、观音殿、成就塔殿、莲花殿、塔林、僧舍及绕寺一周的“转经轮”所组成。</p><p>大雄宝殿是全寺僧人念经修法的主要场所，大殿四周保留着许多壁画，是珍贵的佛教文物。释迦殿供奉着文成公主当年塑的释迦牟尼佛像，还有元朝国师八思巴法王到塔公寺用神通在石头上留下的足印，以及一尊高约一米的千手观音圣像，这尊观音圣像是当年文成公主为利益众生而塑造的，塑造圣像用的原料是当时汉藏地区的神山神水和大量的珠宝，据称圣像具有超乎寻常的灵异神力。</p><p><br></p><p>观音殿供奉着全藏最高的千手千眼观音鎏金铜像，建成于1997年。成就塔，记传是大成就者哄钦嘎然用法力建造而成，供奉着印度高僧“哄钦嘎然”的手杖以及圣物。莲花殿供奉着莲花生大师、莲师八号、文殊三身等。寺内还珍藏有“桑吉曲巴”（迦叶古佛）的佛牙，十二世纪印度大成就者“那若巴大师”用过的法铃，元朝国师大宝法王八思巴赠给该寺的鎏金铜佛，此外，寺内还保存着许多珍贵的佛教文物以及萨迦派的法典，都是平日难得一见的珍贵宝物。</p><p>每年藏历6月中下旬，寺庙会举行盛大的佛事和跳神活动，场面隆重盛大。7月中旬到8月初，塔公草原上则会举行一年一度的耍坝子活动，其间会有民间赛马活动和歌舞等节目，草原上一片五颜六色的帐篷，热闹非凡。</p>', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">塔公寺每年都有多场法会，具体时间安排可见官网</span></p><p><a href=\"http://www.tagongsi.com/newsInfo.asp?id=388\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">http://www.tagongsi.com/newsInfo.asp?id=388</a></p>', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">塔公寺是甘孜州著名的萨迦派（花教）寺庙。距今有一千多年的历史，是康巴地区藏民朝拜的一个重要圣地。在甘孜州，塔公寺与亚青寺、喇荣寺（色达佛学院）是著名的大寺庙。</span></p>', '20', '3', '4', '2022-01-29 00:00:00', null, '9', '4b554109-7a2c-42bf-98ce-9b7276267354.png');
INSERT INTO `t_spots` VALUES ('22', '成都大熊猫繁育研究基地', '成都市成华区外北熊猫大道1375号', '07:30开放', '52.00', '028-83510033', '基地内有很多萌萌的大熊猫，你可以近距离的去观赏这些萌哒哒的国宝们。基地位于成都市北郊，距市区约10公里，建设完全模拟大熊猫野外生活环境，建有湖泊、溪流、竹林、草坪等。', '<p>基地内有很多萌萌的大熊猫，你可以近距离的去观赏这些萌哒哒的国宝们。基地位于成都市北郊，距市区约10公里，建设完全模拟大熊猫野外生活环境，建有湖泊、溪流、竹林、草坪等。</p><p>基地设有众多“熊猫别墅”就是熊猫的封闭休闲场所。内有露天园子和室内休息室，天气凉爽时大熊猫会在园子内玩耍，游人可以隔着栏杆观赏萌萌的大熊猫；天气炎热时，大熊猫就躲在开着空调的休息室内，这时候只能隔着玻璃观看了。</p>', '<p>儿童：6周岁（含）以下或身高1.3米以下（含）儿童，凭本人身份证/户口簿原件；港、澳居民出示来往内地通行证；台湾居民出示来往大陆通行证。，免费；7周岁(含7周岁)-18周岁(含18周岁)未成年人，须出示身份证/户口薄原件购买儿童优惠票，港、澳居民出示来往内地通行证；台湾居民出示来往大陆通行证。，半价</p><p>老人：60岁（含）-65岁（不含）的老年人免费（国家法定节假日除外）出示身份证/老年证，港、澳居民出示来往内地通行证；台湾居民出示来往大陆通行证。，免费；65周岁（含）以上的老年人（包括港、澳、台老年人）出示身份证/老年证等有效证件免费；港、澳居民出示来往内地通行证；台湾居民出示来往大陆通行证。，免费；60周岁以上(含60周岁)-65周岁(不含65周岁)的老年人在国家法定节假日期间购买半票，凭身份证/户口薄原件购买老人票优惠票，港、澳居民出示来往内地通行证；台湾居民出示来往大陆通行证。，半价</p><p>学生：7周岁（含）-18周岁（含）未成年人、全日制大学本科及以下学历学生（凭未成年人需出示身份证/户口簿原件；学生需出示有效学生证原件）享门票半票优惠政策。港、澳居民出示来往内地通行证；台湾居民出示来往大陆通行证。，半价</p><p>残疾人：凭残疾证和本人有效证件（身份证；户口簿原件；港、澳居民出示来往内地通行证；台湾居民出示来往大陆通行证。），免费</p><p>军人：凭军人证（含残疾军人），免费</p>', '<p><strong>停车场</strong>：【成都大熊猫繁育研究基地-停车场】参考价格：¥10-20元/次；地址：成都市成华区外北三环熊猫大道1375号成都大熊猫繁育研究基地内；库位：200</p><p><strong>行李寄存</strong>：游客中心提供免费行李寄存服务，工作时间09:00-17:00</p><p><strong>景区讲解</strong>：成都大熊猫繁育研究基地讲解服务站提供人工讲解服务，费用50-100元不等，具体费用请在景区官网查看或询问工作人员。</p><p><strong>园内交通</strong>：观光车：新博物馆旁，工作时间07:30-18:00，往返10元/人，可使用支付宝微信支付，服务范围为新博物馆至月亮产房，儿童需成人陪同。</p><p><strong>卫生间</strong>：景区内设有多个卫生间，游客中心及主干道上标有醒目的指示牌。</p><p><strong>便利店</strong>：有便利店，位于景区入口处</p>', '1', '4', '3', '2022-01-29 00:00:00', null, '9', '0014539f-9462-423a-8264-1d52f193f0dc.png');
INSERT INTO `t_spots` VALUES ('23', '西岭雪山', ' 成都市大邑县西岭镇西岭雪山风景区', '09:00', '60.00', '400-028-9695,028-88309080,028-88302036', '一座距离成都市区非常近的雪山，山中景色，一年四季各有特色。主峰庙基岭海拔5000多米，是成都第一高峰，山顶终年积雪，秀美壮观。山上除开设滑雪场外，还有雪地摩托、狗拉雪橇等诸多的冰雪游乐项目。', '<p>一座距离成都市区非常近的雪山，山中景色，一年四季各有特色。主峰庙基岭海拔5000多米，是成都第一高峰，山顶终年积雪，秀美壮观。山上除开设滑雪场外，还有雪地摩托、狗拉雪橇等诸多的冰雪游乐项目。</p><p>西岭雪山的春季，漫山遍野的杜鹃花盛开，仿佛一片花的海洋；因林木葱郁，这里是夏季避暑的好地方；冬季积雪期为11月底至次年3月底，此时的西岭雪山，是冰雪游乐的好地方。</p><p><strong>游览雪山</strong></p><p>西岭雪山分前山和后山，前山为大飞水景区，是纯徒步观光景区，后山为滑雪场景区，冬季可以滑雪，其他季节则是观光和滑草。山上建有两段索道：交通索道（又称鸳鸯池索道）和观景索道。从景区大门进入后，乘坐交通索道，可直达半山腰的鸳鸯池接待中心，这是一片相对平缓的广场。夏季，在映雪湖玩水嬉闹，湖东侧可以玩滑草。冬季，滑草区变成滑雪者的天堂。</p><p>在鸳鸯池接待中心乘坐接驳车，抵达映雪湖畔的索道站，乘坐观景索道可抵达3200多米的日月坪。沿着山间步道前行，赏玩山顶风光的同时，游玩野牛道、红石堡、红石尖、白沙岗和阴阳界。其中最神奇的是阴阳界，山岭的两侧完全不同的风光：一边是阳光明媚，一边则是云雾迷茫。此外，日月坪也是观赏西岭雪山云海的最佳地点。</p><p><strong>餐饮与住宿</strong></p><p>映雪湖附近有多家酒店和接待中心，提供住宿和餐饮服务，所以，无论玩多久都无需担心。成都市区常有人拖家带口来这里休假度周末，吃吃映雪酒店的雪山特色菜，玩玩水看看风景，惬意之极。</p>', '<p>60周岁至65周岁老年人：60周岁至65周岁的老年人,在国家法定节假日实行景区门票执行价五折优惠。，半价；60周岁至65周岁的老年人,在非国家法定节假日免收景区门票。，免费</p><p>65周岁以上老年人：针对65周岁以上的老年人免收景区门票；取票时需出示居民身份证或老年证。，免费</p><p>儿童：６周岁（含６周岁）以下或身高1.2米（含1.2米）以下的儿童，取票时需出示身份证或户口簿。免收景区门票和交通索道票和观景索道票。，免费；6周岁（不含６周岁）～18周岁（含18周岁）未成年人，取票时需出示身份证或户口簿。，半价</p><p>现役军人、人民警察、消防员、残疾军人：取票时需出示有效证件。，免费</p><p>记者：持中华人民共和国新闻出版总署签发的记者证。，免费</p><p>特级教师、特级校长：特级教师与特级校长持有效证件，免收景区门票和交通索道票。，免费</p><p>残疾人、盲人、双下肢残疾人和其他重度残疾人：残疾人、盲人、双下肢残疾人和其他重度残疾人其陪同人员（限1名）；取票时需出示有效证件。，免费</p><p>导游、旅行社经理：持全国导游证、旅行社经理资格证。免收景区门票和交通索道票。，免费</p><p>香港、澳门、台湾等入境游18岁以下未成年人：香港、澳门、台湾等入境游18岁以下未成年人，取票时需出示《港澳居民来往内地通行证》、《台湾居民来往大陆通行证》等有效身份证明。，半价</p><p>学生：对全日制统招本专科及职校生, 需持有效期内且每学年加盖注册章学生证。，半价</p><p>人民警察：人民警察持有效证件，免收景区门票和交通索道票。，免费</p><p>补充说明：以上信息仅供参考，具体信息请以景区当天披露为准。</p>', '<p><strong>停车场</strong>：【西岭雪山停车场】参考价格：¥20/次；地址：西岭雪山景区内；库位：200</p><p><strong>园内交通</strong>：索道</p><p><strong>卫生间</strong>：景区标识处均有卫生间，具体以景区为准。</p>', '1', '4', '6', '2022-01-29 00:00:00', null, '9', 'baf46c83-fdeb-4685-83f6-474a46f6cdc5.png');
INSERT INTO `t_spots` VALUES ('24', '九皇山', '绵阳市北川羌族自治县桂溪乡', '08:00', '129.00', '0816-4732666,0816-4732888', '相传羌人先祖古羌王阿巴白构生了九个儿子，个个彪悍骁勇善赞，羌王阿巴白构给他的九个儿子各分封属地，第九子尔国基的分封属地就在今平通河两岸的区域，尔国基带领其属 下羌民在此建立了美好的家园，民间称此地为“九皇山”。', '<p>相传羌人先祖古羌王阿巴白构生了九个儿子，个个彪悍骁勇善赞，羌王阿巴白构给他的九个儿子各分封属地，第九子尔国基的分封属地就在今平通河两岸的区域，尔国基带领其属&nbsp;下羌民在此建立了美好的家园，民间称此地为“九皇山”。</p><p>九皇山位于四川省绵阳市北川羌族自治县，羌族，是中国西部的一个古老民族，是中华民族的起源民族之一。由于羌族聚居村寨海拔通常较高，云雾笼罩，故又称为“云朵上的民族”</p><p>云中羌寨，秘境九皇，景区以神秘的西羌文化为主线，完整地保留了古老的西羌文化遗迹与生活习俗，以浓郁的羌族风情、奇险的自然风光吸引着中外游客。</p><p>春天的九皇山，藏着一处秘境——花溪景，是观赏辛夷花的好去处。辛夷花开，每朵都是九枚花瓣，所有的花瓣都直直向上挺立着，显示出她的骄傲矜持；这里的几千株辛夷花树，便齐落落地肆意开放了，粉白的、紫色的花朵绚烂芬芳，屋前院后、道路两旁、岩壁上下、漫山遍野都被这盛开的辛夷花染上了颜色。建议游玩3-5月。</p><p>每年夏季，采摘高山蔬菜、田间播种、搭灶野炊、给小动物喂食、与小动物互动、搭帐篷、享用农场休闲娱乐设施；远眺风起云涌，羌山云海，俯瞰连天碧木，村落人家，挣脱城市牢笼，乐享高山田园生活。建议7月-10月游玩，夏季可星空露营，观云海日出，风景上佳！</p><p>金秋十月，当叶不再甘心沦为花的陪衬，藏匿于其中的红枫在山间举起炽烈的火把，一路绵延而下，九皇山属于四川盆地，虽被襁褓似的群山包围，很难被冷空气影响，却依然挡不住红叶的步伐，时至深秋，依然有似锦若霞的红枫，遍栖于山间。建议10月-11月观赏。</p><p>凛冽的冬季，厚厚的积雪，道路两旁的雾凇，若隐若现的被雪覆盖的彩绸，让九皇山后山成了冰雪童话世界，滑雪场占地面积达2万多平方米，设备先进，功能完善。配备了雪地摩托、雪上飞碟、雪上飞船、雪撬等娱乐设施。建议12月-2月游玩。</p><p>游览攻略简介：</p><p>山下游客中心取票乘坐云中羌寨索道大约15分钟到达前山西羌酒店后，可自行选择乘坐高空滑道或步行前往险山平台。滑道上行代步可缓解您的爬山劳累，下行惊险刺激。</p><p>出滑道后步行约10分钟到达洞口索道乘车处，约3分钟可到达猿王洞情人桥，猿王洞是西南地区罕见的高山溶洞，大约形成于300-500万年前。猿王洞处在一道平台的悬崖峭壁之下，洞内全长5.8公里，可通行的游程2.2公里。洞内冬暖夏凉，猿王洞经过大自然数百万年来的精心雕琢已独具特色；伴随着全程语音导游的轻柔解说，亦真亦幻的洞中世界让人陶醉。</p><p>远远望去，情人桥横跨两座大山，连接两座如情侣般遥相呼应的羌碉，桥下是不见底的深渊，高山峡谷。传说在执手走过“情人桥”的情侣都会忠贞不渝，长长久久。</p><p>如果你喜欢惊险刺激的感觉，“丧心病狂”的悬崖秋千一定要来体验一次，让你恨不得贴上三层纸尿裤。感受过的人表示：大风呼呼拍在脸上，真痛！是的，你没看错，坐在近千米高的悬崖边的秋千上。然后 ~ 荡出去 ~</p><p>云中漫步你一定要去打卡，这个项目能刺激到让你双腿发软，一步一云天，一步一风景，桥面长到让你望不到尽头，在悬崖边高空跳跃腾挪，脚下就是万丈深渊，站在桥上一览众山小，无论俯视、仰视、远眺都能带来与地面观赏不同的强烈的感官刺激。</p><p>羌族交通工具溜索，不仅能够体验羌族人民出行的方式，还能感受在山与山之间穿梭的快感。坐在上面，乘风穿越，比过山车刺激，比海盗船惊险，更比蹦极还过瘾，但，你敢在半空中张开双臂尽情放松吗？</p><p>百米高的玻璃桥，就像是立在半空中，惊险又刺激！很多人站上去是ok的，至于能不能走就不一定了。行走在玻璃桥上如同悬空于万丈深渊之上，犹如漫步云端，悬空而行，可谓步步惊心！</p><p>大家听说过风靡的飞拉达攀岩吗？无需远赴外地，也无需长久计划，在九皇山就可以体验。飞拉达线路既保留了野外攀岩的惊险刺激，也达到锻炼体能和意志的目的，在安全有充分保障的前提下，让普通人也能驰骋悬崖。</p><p>还有超适合大朋友的极限挑战项目超级大秋千，一荡便让你入身森林的怀抱，能够更加近距离的感受到森林的美丽，和自然来一场亲密接触，让夏天的风吹过你的头发，感受“冷汗直流”。</p><p>游览完前山景点和挑战项目咱们乘坐羌情园索道到达后山，索道左手方可乘坐滑草场观光车前往滑草场滑草、观看猕猴狗熊飞车等表演。夏季滑草免费，依山而下的草坡绒绿如毯，从高处一泻而下，浑然天成，耳边是呼啸的风声和飞驰而过的满眼醉人的绿色，青青草上飞，风在身后追。</p><p>返回到羌情园索道往右手方走可经过玻璃栈道到达羌情园，位于后山海拔1800米的山崖上，在这里，不再被城市的钢筋水泥包围，脚下是山、眼前是云，一伸手仿佛可以触摸到天，放眼望去，群山叠翠、绵延无际。透明玻璃下是深不见底的峡谷，令人震撼异常。</p><p>寨门、天梯、石屋、吊脚楼、磨房……仿佛穿越历史回到了古时的羌寨！羊皮鼓声响，篝火跳锅庄，郎骑骏马来，红衣新嫁娘，羌情园每天中午12点，都会举行古老的羌族婚礼！您可以亲身体验羌族人民的传统婚俗文化。</p><p>在羌情园处乘坐农场观光车到达农场，可体验采摘蔬菜、搭灶做饭、儿童趣味项目和一些网红打卡点，亲子夏季避暑，森系康养，增进家人之间的感情，感受高山深处的神秘部落，体验羌家风土人情（夏季7-8月）。</p>', '<p>儿童：1.3米（含）以下，免费</p><p>老人：65周岁（含）以上凭老年证或身份证，免费</p><p>残疾人：凭残疾证，免费</p><p>学生：凭学生证或学校介绍信（全日制大中小学生不含成人教育研究生），优惠</p><p>医护人员：医生护士凭执照验证预约，其余相关医护须线下单独验证，免费</p><p>补充说明：60周岁以上老人及1.3米（含）以下儿童需成人陪同</p>', '<p><strong>停车场</strong>：【九皇山景区停车场1】参考价格：15分钟-12小时：10元；12小时-24小时：20元；；地址：九皇山景区售票处对面约800米处，步行大约3分钟；库位：500；【九皇山景区停车场2】参考价格：15分钟-12小时：10元；12小时-24小时：20元；；地址：位于九皇山景区停车场1对面，间隔一条马路；库位：100个</p><p><strong>园内交通</strong>：乘坐上山索道后到达洞口索道徒步还需要30分钟，可乘坐高空滑车，20元/人</p><p><strong>卫生间</strong>：前山卫生间4个，分别位于步行道入口、后山索道入口处、洞口索道售票处、猿王洞；后山卫生间4个，分别位于观光车乘车处、滑草场、天神殿、徒手逮猎场；</p><p><strong>ATM机</strong>：前山索道到达后西羌酒店门口处有四川省农村信用社ATM机；</p><p><strong>餐厅</strong>：九皇山前山洞口索道售票处有古羌餐厅，可容纳100人左右，风景较好，人均60左右</p>', '6', '4', '2', '2022-01-29 00:00:00', null, '9', '3dc1314d-edec-4e1b-b30c-aef4e1685c71.png');
INSERT INTO `t_spots` VALUES ('25', '中国彩灯博物馆', ' 自贡市自流井区中华路公园路6号', '12月1日恢复营业', '50.00', ' 0813-2304003,0813-2303934,0813-2305061', '中国彩灯博物馆位于彩灯公园内，是中国彩灯收藏、保护、研究和展示的专门机构。', '<p>中国彩灯博物馆位于彩灯公园内，是中国彩灯收藏、保护、研究和展示的专门机构。整体建筑以灯为主题，远看仿佛一组大型宫灯，此起彼伏，流光溢彩。</p><p>春节的时候这里会举办灯会，很多游客和当地人都会来参观，灯光绚丽，非常漂亮。展馆内分四大部分，分别是序厅、中国彩灯历史厅、中外彩灯风情厅、自贡彩灯精品厅。展示的灯具从远古时期的陶灯到运用现代声光电技术制作的彩灯，一应俱全。</p>', '<p>儿童：6周岁（含6周岁）以下身高1.2（含1.2米）以下的儿童免收门票（需监护人陪同，监护人需购票） ，免费</p><p>老人：年满65（含）周岁以上的老年人，取票时须出示本人有效身份证 ，免费</p><p>军人：军人、警察、消防员凭本人有效证件 ，免费</p><p>残疾人：凭本人有效证件 ，免费</p><p>记者：凭本人有效证件 ，免费</p><p>全国医护工作者：凭本人相关证件 ，免费</p><p>补充说明：以上信息仅供参考，具体以景区当天披露为准</p>', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">自贡有四宝：盐业，恐龙，美食，还有就是灯会。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">作为全国第一个彩灯博物馆，里面的产品给我们呈现了灯的发展、各地彩灯的特点、自贡灯会的发展和技术。</span></p>', '2', '2', '5', '2022-01-29 00:00:00', null, '9', '3308acdc-5bd8-477e-87d5-0201be5d9628.png');
INSERT INTO `t_spots` VALUES ('26', '海螺沟', '甘孜藏族自治州东南部贡嘎山东坡', '07:00', '160.00', '0836-3268893', '海螺沟位于甘孜藏族自治州东南部，游玩海螺沟的主要目的有两个：泡温泉、看冰川。', '<p>海螺沟位于甘孜藏族自治州东南部，游玩海螺沟的主要目的有两个：泡温泉、看冰川。温泉主要集中在二号营地，这里有许多大小不同、形态各异的泡池，依山而建，层层叠叠。看冰川的话则要去三号营地，这里处在原始森林和雪山的怀抱之中，是观看日照金山的好地方。</p><p>景区入口设在磨西镇，购票进入后，便可乘坐观光车前行。经过杉树坪、斑竹林到达一号营地，一号营地景观以大片的红豆杉林为主。一号营地前行8公里，便到了热水沟畔的二号营地。远远望去，烟雾蒙蒙，这是海螺沟内名气较大的热水沟沸泉，泉水终年不断。二号营地建有10余个大小不等的露天温泉池和一个露天温泉游泳池。池边不远就是茂密的原始森林，风景优美，在这里边泡温泉边欣赏美景，惬意之极。如果遇上降雪，就能在雾气腾腾的露天温泉里欣赏雪花漫天飘飞的奇景，是一种难得的体验。</p><p>再往前行，就是三号营地了，这是一个梦幻般的冰雪世界，郁郁葱葱的原始森林，拥抱着银光闪耀的冰川巨流，形成了举世罕见的冰川森林温泉共存的自然绝景。在这里还可以遥望巍巍蜀山之巅——贡嘎雪山，是观看日照金山的好地方。当清晨一缕阳光刺破长空，灿烂的霞光洒落在神圣的贡嘎雪山上，翻腾的云雾萦绕在山间，让人不禁以为误闯了仙境。</p>', '<p>儿童：身高1.2米（含）以下的儿童，门票免费；身高1.2米（不含）-1.4米（含）以上的儿童（须由监护人同行），优惠门票</p><p>老人：65周岁（含）以上老年人携本人居民身份证或者老年人优待证等有效证件享受免收门票政策。 60（含）-64（含））周岁的老年人，在非国家法定节假日免收门票，门票免费；60（含）-64（含））周岁的老年人，在国家法定节假日实行门票半价优惠，老年游客朋友携本人居民身份证或者老年人优待证等有效证件享受相应优惠，优惠门票</p><p>军人：持有中华人民共和国《军官证》、《士官证》、《士兵证》的现役军人享受景区门票免票，门票免费</p><p>伤残军人：非现役伤残军人需持国家民政部《中华人民共和国残疾军人证》，现役伤残军人需同时出示现役证件，享受景区门票免票，门票免费</p><p>残疾人：持有民政部《中华人民共和国残疾人证》的残疾人游客，肢体残疾人员可以不出示证件，享受景区门票免票，门票免费</p><p>学生：全日制大中小学生凭学生证享受景区门票60元/人的优惠政策，优惠门票</p><p>一线医护人员：对参加湖北一线战“疫”的医护人员本人和在新冠肺炎疫情阻击战中英勇殉职医务人员的父母、配偶、子女在景区恢复营业后凭相关证件证明终身免门票、观光车票、索道票和电瓶车票，免费</p><p>全国医护人员：全国医护人员在景区恢复营业后至2020年12月31日凭相关证件享受入园大门票免费，（观光车票、索道票和电瓶车票）半价优惠，免费</p><p>青少年：6周岁（不含）-18周岁（含）凭身份证或户口本，优惠门票</p><p>高层次人才：凭“天府英才卡”A卡和有效身份证本人免费，其家庭子女老人享受，优惠门票</p><p>补充说明：以上免票须缴纳门票成本和保险费每人10元。以上信息仅供参考，具体信息请以景区当天披露为准。</p>', '<p><strong>1.</strong>&nbsp;景区观光车虽然无强制必买，但是整个行程几十公里的距离，不坐观光车基本是不可能的。观光车发车时间7:30-13:00，12:50停止售票。为坐满一车发一班，未坐满一车时，最大间隔不超过40分钟发车。</p><p><strong>2.</strong>&nbsp;游览海螺沟最好在冬春季节，夏秋季冰川会因为温度缘故有一定回缩。且夏秋季阴雨天较多，不便于观看日照金山景观。</p><p><strong>3.</strong>&nbsp;各营地海拔及间距：磨西镇（海拔1600米）-15公里-—号营地（海拔1940米）-8公里-二号营地（海拔2660米）-7.5公里-三号营地（海拔2980米）-3.5公里-索道站-四号营地（海拔3600米）</p><p>【高端服务信息】海螺沟含贡嘎神汤私人泡池，尊享隐蔽</p>', '20', '5', '1', '2022-01-29 00:00:00', null, '9', '3918b03d-2f2b-4e8b-8028-ee0704f67024.png');

-- ----------------------------
-- Table structure for `t_theme`
-- ----------------------------
DROP TABLE IF EXISTS `t_theme`;
CREATE TABLE `t_theme` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `themename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_theme
-- ----------------------------
INSERT INTO `t_theme` VALUES ('1', '温泉游');
INSERT INTO `t_theme` VALUES ('2', '爬山游');
INSERT INTO `t_theme` VALUES ('3', '自然风光');
INSERT INTO `t_theme` VALUES ('4', '拜佛游');
INSERT INTO `t_theme` VALUES ('5', '玩水嬉戏');
INSERT INTO `t_theme` VALUES ('6', '滑雪游');
