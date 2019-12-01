/*
 Navicat Premium Data Transfer

 Source Server         : 本地环境
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : myblog-2

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 01/12/2019 20:50:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '博主id，对应用户id',
  `blog_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '博客描述',
  `recommend` bit(1) NOT NULL COMMENT '是否推荐',
  `share_flag` bit(1) NOT NULL COMMENT '转载声明是否开启',
  `type_id` bigint(20) DEFAULT NULL COMMENT '博客类型',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `first_picture_addr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '首图地址',
  `published` bit(1) NOT NULL,
  `blog_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '博客标题',
  `blog_content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '博客内容',
  `blog_views` int(11) NOT NULL COMMENT '博客浏览次数',
  `appreciation_flag` bit(1) NOT NULL COMMENT '是否开启赞赏',
  `commentabled` bit(1) NOT NULL COMMENT '是否开启评论',
  `blog_comments` int(11) NOT NULL COMMENT '博客评论次数',
  PRIMARY KEY (`blog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (1, 1, '1', b'1', b'1', 1, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title1', '111', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (2, 1, '1', b'1', b'1', 2, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title2', '222', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (3, 1, '1', b'1', b'1', 3, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title3', '333', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (4, 1, '1', b'1', b'1', 4, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title4', '444', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (5, 1, '1', b'1', b'1', 4, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title5', '555', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (6, 1, '1', b'1', b'1', 4, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title6', '666', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (7, 1, '1', b'1', b'1', 1, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title7', '777', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (8, 1, '1', b'1', b'1', 2, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title8', '888', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (9, 1, '1', b'1', b'1', 2, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'title9', '999', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (10, 1, '1', b'1', b'1', 2, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'titlea', 'aaa', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (11, 1, '1', b'1', b'1', 2, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'titleb', 'bbb', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (12, 1, '1', b'1', b'1', 2, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'titlec', 'ccc', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (13, 1, '1', b'1', b'1', 2, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'titled', 'ddd', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (14, 1, '1', b'1', b'1', 1, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'titlee', 'eee', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (15, 1, '1', b'1', b'1', 3, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'titlef', 'fff', 1, b'1', b'1', 1);
INSERT INTO `t_blog` VALUES (16, 1, '1', b'1', b'1', 3, '2019-12-01 10:15:21', '2019-12-01 10:15:25', '1', b'1', 'titleg', 'ggg', 1, b'1', b'1', 1);

-- ----------------------------
-- Table structure for t_blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tag`;
CREATE TABLE `t_blog_tag`  (
  `blog_id` int(11) NOT NULL COMMENT '博客id',
  `tag_id` int(11) NOT NULL COMMENT '标签id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog_tag
-- ----------------------------
INSERT INTO `t_blog_tag` VALUES (1, 1);
INSERT INTO `t_blog_tag` VALUES (1, 2);
INSERT INTO `t_blog_tag` VALUES (2, 1);
INSERT INTO `t_blog_tag` VALUES (2, 3);
INSERT INTO `t_blog_tag` VALUES (2, 4);
INSERT INTO `t_blog_tag` VALUES (2, 5);
INSERT INTO `t_blog_tag` VALUES (2, 3);
INSERT INTO `t_blog_tag` VALUES (3, 5);
INSERT INTO `t_blog_tag` VALUES (3, 4);
INSERT INTO `t_blog_tag` VALUES (4, 2);
INSERT INTO `t_blog_tag` VALUES (1, 3);
INSERT INTO `t_blog_tag` VALUES (1, 4);
INSERT INTO `t_blog_tag` VALUES (2, 4);
INSERT INTO `t_blog_tag` VALUES (4, 4);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '评论内容',
  `user_id` int(11) NOT NULL COMMENT '评论用户id',
  `blog_id` bigint(20) NOT NULL COMMENT '评论的博客id',
  `comment_time` datetime(0) NOT NULL COMMENT '评论时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `del_flag` bit(1) NOT NULL COMMENT '删除标识',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `message_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '游客保存为IP地址，用户保存为用户编号',
  `message_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '留言内容',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply`  (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `reply_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '回复内容',
  `user_id` int(11) NOT NULL COMMENT '回复的用户id',
  `reply_time` datetime(0) NOT NULL COMMENT '回复时间',
  `replied_user_id` int(11) DEFAULT NULL COMMENT '被回复的用户id',
  PRIMARY KEY (`reply_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tag_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '标签名',
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (1, '1111');
INSERT INTO `t_tag` VALUES (2, '2222');
INSERT INTO `t_tag` VALUES (3, '3333');
INSERT INTO `t_tag` VALUES (4, '4444');
INSERT INTO `t_tag` VALUES (5, '5555');
INSERT INTO `t_tag` VALUES (6, '6666');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '类型名',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '1111');
INSERT INTO `t_type` VALUES (2, '2222');
INSERT INTO `t_type` VALUES (3, '3333');
INSERT INTO `t_type` VALUES (4, '4444');
INSERT INTO `t_type` VALUES (5, '5555');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户登录名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '昵称',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录密码',
  `user_role` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色类型：1-超级管理员；2-普通管理员；3-VIP用户；4-普通用户',
  `user_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户状态：0-封禁；1-正常',
  `telephone` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '联系方式',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `head_portrait` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户头像',
  `register_time` datetime(0) NOT NULL COMMENT '注册时间',
  `last_login_time` datetime(0) NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '最后登录ip',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '删除标识',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (2, 'xianzilei', '贤子磊', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '17854212902', '282991723@qq.com', '/images/avatar.png', '2019-12-01 18:35:40', '2019-12-01 18:35:40', '0:0:0:0:0:0:0:1', '2019-12-01 18:35:40', '2019-12-01 18:35:40', '0');
INSERT INTO `t_user` VALUES (3, 'xianzilei', '贤子磊', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '17854212902', '282991723@qq.com', '/images/avatar.png', '2019-12-01 18:36:46', '2019-12-01 18:36:46', '0:0:0:0:0:0:0:1', '2019-12-01 18:36:46', '2019-12-01 18:36:46', '0');
INSERT INTO `t_user` VALUES (4, 'xianzilei11', '贤子磊11', '5aacb803e626ef128c0dc23c52e829d8', '4', '1', '17854212902', '282991723@qq.com', '/images/avatar.png', '2019-12-01 18:38:23', '2019-12-01 18:38:23', '0:0:0:0:0:0:0:1', '2019-12-01 18:38:23', '2019-12-01 18:38:23', '0');
INSERT INTO `t_user` VALUES (5, 'xianzilei22', '贤子磊22', '9dd1cbdaec89487b1ba9583f8aa26198', '4', '1', '17854212902', '282991723@qq.com', '/images/avatar.png', '2019-12-01 18:41:37', '2019-12-01 18:41:37', '0:0:0:0:0:0:0:1', '2019-12-01 18:41:37', '2019-12-01 18:41:37', '0');
INSERT INTO `t_user` VALUES (6, 'jichunlei', '贤子磊23132', '052a1a3c0142ad636571f88ea2506eac', '4', '1', '17854212902', '282991723@qq.com', '/images/avatar.png', '2019-12-01 18:45:27', '2019-12-01 18:45:27', '0:0:0:0:0:0:0:1', '2019-12-01 18:45:27', '2019-12-01 18:45:27', '0');

SET FOREIGN_KEY_CHECKS = 1;
