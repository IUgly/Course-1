SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '0 问题 >0 属于哪一个问题',
  `author_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发表者学号',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '如果是问题 问题标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '问题或者回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '发表时间',
  `pic_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '原图名字 用\\r\\n分割',
  `pic_thumb` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '压缩图片名',
  `status` int(2) NULL DEFAULT 1,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题标签id 用,分割',
  `is_accepted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '是否采纳',
  `is_scholar` tinyint(1) NULL DEFAULT NULL COMMENT '是否学霸',
  `like_count` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '点赞数',
  `reply_count` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '回复数',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '问题动态时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '问题与回复' ROW_FORMAT = Compact;


-- ----------------------------
-- Table structure for junior
-- ----------------------------
DROP TABLE IF EXISTS `junior`;
CREATE TABLE `junior`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `class_num` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `college` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `head_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '微信昵称',
  `openId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`Id`, `stu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2740 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '小鲜肉' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for senior
-- ----------------------------
DROP TABLE IF EXISTS `senior`;
CREATE TABLE `senior`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `nation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `college` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `speciality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现任职务',
  `head_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片名字',
  `rank` int(11) NULL DEFAULT NULL COMMENT '成绩排名',
  `resit` int(11) NULL DEFAULT NULL COMMENT '补考重修数',
  `talent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '特长',
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '辅导员',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'E-mail',
  `biography` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人介绍',
  `openId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `term` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`Id`, `stu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 776 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学长学姐' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for upvote
-- ----------------------------
DROP TABLE IF EXISTS `upvote`;
CREATE TABLE `upvote`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL COMMENT 'discuss id',
  `aid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'author id',
  `is_like` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`, `did`, `aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 638 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
