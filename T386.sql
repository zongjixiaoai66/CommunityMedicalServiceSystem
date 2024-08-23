/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t386`;
CREATE DATABASE IF NOT EXISTS `t386` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t386`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'zhinan_types', '指南类型', 1, '指南类型1', NULL, NULL, '2023-04-07 07:22:55'),
	(2, 'zhinan_types', '指南类型', 2, '指南类型2', NULL, NULL, '2023-04-07 07:22:55'),
	(3, 'zhinan_types', '指南类型', 3, '指南类型3', NULL, NULL, '2023-04-07 07:22:55'),
	(4, 'zhinan_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-07 07:22:55'),
	(5, 'zhinan_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-07 07:22:55'),
	(6, 'zhinan_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-07 07:22:55'),
	(7, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-07 07:22:55'),
	(8, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-07 07:22:55'),
	(9, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-04-07 07:22:55'),
	(10, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-07 07:22:55'),
	(11, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-07 07:22:55'),
	(12, 'yisheng_types', '科室', 1, '科室1', NULL, NULL, '2023-04-07 07:22:55'),
	(13, 'yisheng_types', '科室', 2, '科室2', NULL, NULL, '2023-04-07 07:22:55'),
	(14, 'zhiwei_types', '职位', 1, '职位1', NULL, NULL, '2023-04-07 07:22:55'),
	(15, 'zhiwei_types', '职位', 2, '职位2', NULL, NULL, '2023-04-07 07:22:55'),
	(16, 'yisheng_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-07 07:22:56'),
	(17, 'yisheng_chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-04-07 07:22:56'),
	(18, 'yisheng_chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-04-07 07:22:56'),
	(19, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-04-07 07:22:56'),
	(20, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-04-07 07:22:56'),
	(21, 'yisheng_yuyue_types', '挂号状态', 101, '已挂号', NULL, NULL, '2023-04-07 07:22:56'),
	(22, 'yisheng_yuyue_types', '挂号状态', 102, '已取消', NULL, NULL, '2023-04-07 07:22:56'),
	(23, 'yisheng_yuyue_types', '挂号状态', 103, '已完成', NULL, NULL, '2023-04-07 07:22:56'),
	(24, 'yisheng_yuyue_types', '挂号状态', 105, '已评论', NULL, NULL, '2023-04-07 07:22:56'),
	(25, 'time_types', '挂号状态', 1, '09:00-11:30', NULL, NULL, '2023-04-07 07:22:56'),
	(26, 'time_types', '挂号状态', 2, '01:00-03:00', NULL, NULL, '2023-04-07 07:22:56'),
	(27, 'time_types', '挂号状态', 3, '03:00-06:00', NULL, NULL, '2023-04-07 07:22:56'),
	(28, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-07 07:22:56'),
	(29, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-07 07:22:56');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `yisheng_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, NULL, '发布内容1', 292, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', 321, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(3, '帖子标题3', 3, NULL, NULL, '发布内容3', 139, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(4, '帖子标题4', 1, NULL, NULL, '发布内容4', 231, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(5, '帖子标题5', 2, NULL, NULL, '发布内容5', 406, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(6, '帖子标题6', 1, NULL, NULL, '发布内容6', 430, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(8, '帖子标题8', 3, NULL, NULL, '发布内容8', 7, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(9, '帖子标题9', 2, NULL, NULL, '发布内容9', 7, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(10, '帖子标题10', 3, NULL, NULL, '发布内容10', 413, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(11, '帖子标题11', 2, NULL, NULL, '发布内容11', 30, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(13, '帖子标题13', 3, NULL, NULL, '发布内容13', 110, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(14, '帖子标题14', 2, NULL, NULL, '发布内容14', 355, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(16, NULL, 1, NULL, NULL, '可以删除自己发布的贴子 和评论', 14, 2, '2023-04-07 08:03:34', NULL, '2023-04-07 08:03:34'),
	(17, NULL, NULL, 1, NULL, '2222222', 14, 2, '2023-04-07 08:06:00', NULL, '2023-04-07 08:06:00'),
	(18, NULL, NULL, NULL, 1, '3333333', 14, 2, '2023-04-07 08:08:03', NULL, '2023-04-07 08:08:03'),
	(19, NULL, 1, NULL, NULL, '666', 14, 2, '2024-08-13 06:36:22', NULL, '2024-08-13 06:36:22');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '2023-04-07 07:29:15', '回复信息1', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(2, 1, '留言标题2', '留言内容2', '2023-04-07 07:29:15', '回复信息2', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(3, 2, '留言标题3', '留言内容3', '2023-04-07 07:29:15', '回复信息3', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(4, 1, '留言标题4', '留言内容4', '2023-04-07 07:29:15', '回复信息4', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(5, 3, '留言标题5', '留言内容5', '2023-04-07 07:29:15', '回复信息5', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(6, 3, '留言标题6', '留言内容6', '2023-04-07 07:29:15', '回复信息6', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(7, 2, '留言标题7', '留言内容7', '2023-04-07 07:29:15', '回复信息7', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(8, 2, '留言标题8', '留言内容8', '2023-04-07 07:29:15', '回复信息8', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(9, 2, '留言标题9', '留言内容9', '2023-04-07 07:29:15', '回复信息9', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(10, 1, '留言标题10', '留言内容10', '2023-04-07 07:29:15', '回复信息10', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(11, 3, '留言标题11', '留言内容11', '2023-04-07 07:29:15', '回复信息11', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(12, 2, '留言标题12', '留言内容12', '2023-04-07 07:29:15', '回复信息12', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(13, 3, '留言标题13', '留言内容13', '2023-04-07 07:29:15', '回复信息13', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(14, 1, '留言标题14', '留言内容14', '2023-04-07 07:29:15', '回复信息14', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(15, 1, '123', '123', '2023-04-07 08:03:04', '2222222222', '2023-04-07 08:08:11', '2023-04-07 08:03:04'),
	(16, 1, '666', '6666', '2024-08-13 06:36:27', NULL, NULL, '2024-08-13 06:36:27');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='社区公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'upload/news1.jpg', '2023-04-07 07:29:15', '公告详情1', '2023-04-07 07:29:15'),
	(2, '公告标题2', 1, 'upload/news2.jpg', '2023-04-07 07:29:15', '公告详情2', '2023-04-07 07:29:15'),
	(3, '公告标题3', 3, 'upload/news3.jpg', '2023-04-07 07:29:15', '公告详情3', '2023-04-07 07:29:15'),
	(4, '公告标题4', 3, 'upload/news4.jpg', '2023-04-07 07:29:15', '公告详情4', '2023-04-07 07:29:15'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-04-07 07:29:15', '公告详情5', '2023-04-07 07:29:15'),
	(6, '公告标题6', 2, 'upload/news6.jpg', '2023-04-07 07:29:15', '公告详情6', '2023-04-07 07:29:15'),
	(7, '公告标题7', 1, 'upload/news7.jpg', '2023-04-07 07:29:15', '公告详情7', '2023-04-07 07:29:15'),
	(8, '公告标题8', 3, 'upload/news8.jpg', '2023-04-07 07:29:15', '公告详情8', '2023-04-07 07:29:15'),
	(9, '公告标题9', 1, 'upload/news9.jpg', '2023-04-07 07:29:15', '公告详情9', '2023-04-07 07:29:15'),
	(10, '公告标题10', 2, 'upload/news10.jpg', '2023-04-07 07:29:15', '公告详情10', '2023-04-07 07:29:15'),
	(11, '公告标题11', 1, 'upload/news11.jpg', '2023-04-07 07:29:15', '公告详情11', '2023-04-07 07:29:15'),
	(12, '公告标题12', 1, 'upload/news12.jpg', '2023-04-07 07:29:15', '公告详情12', '2023-04-07 07:29:15'),
	(13, '公告标题13', 2, 'upload/news13.jpg', '2023-04-07 07:29:15', '公告详情13', '2023-04-07 07:29:15'),
	(14, '公告标题14', 3, 'upload/news14.jpg', '2023-04-07 07:29:15', '公告详情14', '2023-04-07 07:29:15');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '2093nn20ruvu3alh8p1sg39av2tn6zs8', '2023-04-07 07:42:02', '2024-08-13 07:34:49'),
	(2, 1, 'a1', 'yonghu', '用户', 'tr1dfciay1t1dhegb9dz201kl9gdbpcx', '2023-04-07 07:43:35', '2024-08-13 07:36:09'),
	(3, 1, 'a1', 'yisheng', '医生', 'pf19fdsnncdkymny2efq14qjyuhsef20', '2023-04-07 08:03:52', '2023-04-07 09:03:52');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-07 07:22:55');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生名称 Search111',
  `yisheng_types` int DEFAULT NULL COMMENT '科室 Search111',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111',
  `yisheng_zhichneg` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_yisheng_yuyue` varchar(200) DEFAULT NULL COMMENT '挂号须知',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yisheng_new_money` decimal(10,2) DEFAULT NULL COMMENT '挂号价格',
  `yisheng_content` longtext COMMENT '履历介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `yisheng_uuid_number`, `username`, `password`, `yisheng_name`, `yisheng_types`, `zhiwei_types`, `yisheng_zhichneg`, `yisheng_photo`, `yisheng_phone`, `yisheng_yisheng_yuyue`, `yisheng_email`, `yisheng_new_money`, `yisheng_content`, `create_time`) VALUES
	(1, '1680852556003', '医生1', '123456', '医生名称1', 2, 2, '职称1', 'upload/yisheng1.jpg', '17703786901', '挂号须知1', '1@qq.com', 65.13, '履历介绍1', '2023-04-07 07:29:15'),
	(2, '1680852556097', '医生2', '123456', '医生名称2', 2, 1, '职称2', 'upload/yisheng2.jpg', '17703786902', '挂号须知2', '2@qq.com', 430.90, '履历介绍2', '2023-04-07 07:29:15'),
	(3, '1680852556059', '医生3', '123456', '医生名称3', 2, 2, '职称3', 'upload/yisheng3.jpg', '17703786903', '挂号须知3', '3@qq.com', 167.40, '履历介绍3', '2023-04-07 07:29:15');

DROP TABLE IF EXISTS `yisheng_chat`;
CREATE TABLE IF NOT EXISTS `yisheng_chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问人',
  `yisheng_id` int DEFAULT NULL COMMENT '回答人',
  `yisheng_chat_issue_text` longtext COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `yisheng_chat_reply_text` longtext COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `yisheng_chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='用户咨询';

DELETE FROM `yisheng_chat`;
INSERT INTO `yisheng_chat` (`id`, `yonghu_id`, `yisheng_id`, `yisheng_chat_issue_text`, `issue_time`, `yisheng_chat_reply_text`, `reply_time`, `zhuangtai_types`, `yisheng_chat_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '问题1', '2023-04-07 07:29:15', '回复1', '2023-04-07 07:29:15', 2, 2, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(2, 3, 1, '问题2', '2023-04-07 07:29:15', '回复2', '2023-04-07 07:29:15', 1, 2, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(3, 2, 2, '问题3', '2023-04-07 07:29:15', '回复3', '2023-04-07 07:29:15', 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(4, 3, 1, '问题4', '2023-04-07 07:29:15', '回复4', '2023-04-07 07:29:15', 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(5, 2, 1, '问题5', '2023-04-07 07:29:15', '回复5', '2023-04-07 07:29:15', 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(6, 3, 1, '问题6', '2023-04-07 07:29:15', '回复6', '2023-04-07 07:29:15', 1, 2, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(7, 2, 1, '问题7', '2023-04-07 07:29:15', '回复7', '2023-04-07 07:29:15', 1, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(8, 2, 1, '问题8', '2023-04-07 07:29:15', '回复8', '2023-04-07 07:29:15', 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(9, 3, 2, '问题9', '2023-04-07 07:29:15', '回复9', '2023-04-07 07:29:15', 2, 2, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(10, 3, 3, '问题10', '2023-04-07 07:29:15', '回复10', '2023-04-07 07:29:15', 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(11, 3, 2, '问题11', '2023-04-07 07:29:15', '回复11', '2023-04-07 07:29:15', 1, 2, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(12, 2, 2, '问题12', '2023-04-07 07:29:15', '回复12', '2023-04-07 07:29:15', 1, 2, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(13, 1, 3, '问题13', '2023-04-07 07:29:15', '回复13', '2023-04-07 07:29:15', 1, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(14, 2, 1, '问题14', '2023-04-07 07:29:15', '回复14', '2023-04-07 07:29:15', 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(16, 1, 1, '询问问题', '2023-04-07 08:02:37', NULL, NULL, 2, 1, '2023-04-07 08:02:37', '2023-04-07 08:02:37'),
	(17, 1, 1, NULL, NULL, '123', '2023-04-07 08:04:02', NULL, 2, '2023-04-07 08:04:02', '2023-04-07 08:04:02'),
	(18, 2, 1, NULL, NULL, '111', '2023-04-07 08:04:08', NULL, 2, '2023-04-07 08:04:08', '2023-04-07 08:04:08');

DROP TABLE IF EXISTS `yisheng_collection`;
CREATE TABLE IF NOT EXISTS `yisheng_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='医生收藏';

DELETE FROM `yisheng_collection`;
INSERT INTO `yisheng_collection` (`id`, `yisheng_id`, `yonghu_id`, `yisheng_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 2, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(5, 1, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(6, 1, 1, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(7, 2, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(8, 2, 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(10, 2, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(11, 2, 1, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(13, 3, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(14, 2, 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(16, 3, 1, 1, '2024-08-13 06:36:39', '2024-08-13 06:36:39');

DROP TABLE IF EXISTS `yisheng_commentback`;
CREATE TABLE IF NOT EXISTS `yisheng_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='医生评价';

DELETE FROM `yisheng_commentback`;
INSERT INTO `yisheng_commentback` (`id`, `yisheng_id`, `yonghu_id`, `yisheng_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2023-04-07 07:29:15', '回复信息1', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(2, 3, 2, '评价内容2', '2023-04-07 07:29:15', '回复信息2', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(3, 3, 1, '评价内容3', '2023-04-07 07:29:15', '回复信息3', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(4, 2, 3, '评价内容4', '2023-04-07 07:29:15', '回复信息4', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(5, 3, 1, '评价内容5', '2023-04-07 07:29:15', '回复信息5', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(6, 3, 1, '评价内容6', '2023-04-07 07:29:15', '回复信息6', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(7, 3, 1, '评价内容7', '2023-04-07 07:29:15', '回复信息7', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(8, 1, 3, '评价内容8', '2023-04-07 07:29:15', '回复信息8', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(9, 2, 3, '评价内容9', '2023-04-07 07:29:15', '回复信息9', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(10, 3, 2, '评价内容10', '2023-04-07 07:29:15', '回复信息10', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(11, 3, 2, '评价内容11', '2023-04-07 07:29:15', '回复信息11', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(13, 3, 2, '评价内容13', '2023-04-07 07:29:15', '回复信息13', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(14, 1, 3, '评价内容14', '2023-04-07 07:29:15', '回复信息14', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(15, 1, 1, '12312', '2023-04-07 08:05:46', '123123', '2023-04-07 08:06:13', '2023-04-07 08:05:46');

DROP TABLE IF EXISTS `yisheng_yuyue`;
CREATE TABLE IF NOT EXISTS `yisheng_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '就诊识别码',
  `yisheng_yuyue_time` date DEFAULT NULL COMMENT '挂号时间 Search111',
  `time_types` int DEFAULT NULL COMMENT '时间类型 Search111',
  `yisheng_yuyue_types` int DEFAULT NULL COMMENT '挂号状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='挂号';

DELETE FROM `yisheng_yuyue`;
INSERT INTO `yisheng_yuyue` (`id`, `yisheng_id`, `yonghu_id`, `yisheng_yuyue_uuid_number`, `yisheng_yuyue_time`, `time_types`, `yisheng_yuyue_types`, `create_time`) VALUES
	(1, 2, 3, '1680852556093', '2023-04-07', 1, 105, '2023-04-07 07:29:15'),
	(2, 1, 3, '1680852556022', '2023-04-07', 2, 101, '2023-04-07 07:29:15'),
	(3, 2, 1, '1680852556055', '2023-04-07', 1, 102, '2023-04-07 07:29:15'),
	(4, 3, 3, '1680852556087', '2023-04-07', 3, 103, '2023-04-07 07:29:15'),
	(5, 3, 2, '1680852556031', '2023-04-07', 3, 102, '2023-04-07 07:29:15'),
	(6, 2, 3, '1680852556080', '2023-04-07', 3, 105, '2023-04-07 07:29:15'),
	(7, 1, 2, '1680852556071', '2023-04-07', 1, 102, '2023-04-07 07:29:15'),
	(8, 2, 2, '1680852556072', '2023-04-07', 3, 105, '2023-04-07 07:29:15'),
	(9, 3, 3, '1680852556022', '2023-04-07', 2, 105, '2023-04-07 07:29:15'),
	(10, 3, 2, '1680852556031', '2023-04-07', 1, 105, '2023-04-07 07:29:15'),
	(11, 2, 2, '1680852556090', '2023-04-07', 2, 101, '2023-04-07 07:29:15'),
	(12, 3, 2, '1680852556049', '2023-04-07', 2, 105, '2023-04-07 07:29:15'),
	(13, 1, 3, '1680852556100', '2023-04-07', 1, 105, '2023-04-07 07:29:15'),
	(14, 1, 2, '1680852556019', '2023-04-07', 2, 105, '2023-04-07 07:29:15'),
	(19, 1, 1, '1680854563431', '2023-04-07', 1, 105, '2023-04-07 08:02:43'),
	(20, 3, 1, '1723531004849', '2024-08-13', 3, 101, '2024-08-13 06:36:45');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 374.68, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(2, '用户2', '123456', '用户名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', 813.34, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(3, '用户3', '123456', '用户名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 902.41, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15');

DROP TABLE IF EXISTS `zhinan`;
CREATE TABLE IF NOT EXISTS `zhinan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhinan_uuid_number` varchar(200) DEFAULT NULL COMMENT '指南编号',
  `zhinan_name` varchar(200) DEFAULT NULL COMMENT '指南标题  Search111 ',
  `zhinan_photo` varchar(200) DEFAULT NULL COMMENT '指南图片',
  `zhinan_video` varchar(200) DEFAULT NULL COMMENT '指南视频',
  `zhinan_types` int DEFAULT NULL COMMENT '指南类型 Search111',
  `zhinan_clicknum` int DEFAULT NULL COMMENT '指南热度',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `zhinan_content` longtext COMMENT '指南介绍 ',
  `zhinan_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='防范指南';

DELETE FROM `zhinan`;
INSERT INTO `zhinan` (`id`, `zhinan_uuid_number`, `zhinan_name`, `zhinan_photo`, `zhinan_video`, `zhinan_types`, `zhinan_clicknum`, `zan_number`, `cai_number`, `zhinan_content`, `zhinan_delete`, `insert_time`, `create_time`) VALUES
	(1, '1680852556113', '指南标题1', 'upload/zhinan1.jpg', 'upload/video.mp4', 1, 143, 48, 273, '指南介绍1', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(2, '1680852556049', '指南标题2', 'upload/zhinan2.jpg', 'upload/video.mp4', 3, 130, 391, 158, '指南介绍2', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(3, '1680852556096', '指南标题3', 'upload/zhinan3.jpg', 'upload/video.mp4', 3, 239, 204, 65, '指南介绍3', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(4, '1680852556026', '指南标题4', 'upload/zhinan4.jpg', 'upload/video.mp4', 2, 120, 423, 225, '指南介绍4', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(5, '1680852556030', '指南标题5', 'upload/zhinan5.jpg', 'upload/video.mp4', 2, 112, 248, 33, '指南介绍5', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(6, '1680852556061', '指南标题6', 'upload/zhinan6.jpg', 'upload/video.mp4', 3, 188, 470, 339, '指南介绍6', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(7, '1680852556077', '指南标题7', 'upload/zhinan7.jpg', 'upload/video.mp4', 3, 34, 9, 258, '指南介绍7', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(8, '1680852556023', '指南标题8', 'upload/zhinan1.jpg', 'upload/video.mp4', 1, 337, 402, 182, '指南介绍8', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(9, '1680852556103', '指南标题9', 'upload/zhinan2.jpg', 'upload/video.mp4', 1, 327, 180, 285, '指南介绍9', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(10, '1680852556027', '指南标题10', 'upload/zhinan3.jpg', 'upload/video.mp4', 2, 260, 160, 328, '指南介绍10', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(11, '1680852556109', '指南标题11', 'upload/zhinan4.jpg', 'upload/video.mp4', 1, 434, 114, 235, '指南介绍11', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(12, '1680852556036', '指南标题12', 'upload/zhinan5.jpg', 'upload/video.mp4', 2, 392, 292, 97, '指南介绍12', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(13, '1680852556044', '指南标题13', 'upload/zhinan6.jpg', 'upload/video.mp4', 1, 23, 268, 245, '指南介绍13', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(14, '1680852556079', '指南标题14', 'upload/zhinan7.jpg', 'upload/video.mp4', 1, 333, 417, 193, '指南介绍14', 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15');

DROP TABLE IF EXISTS `zhinan_collection`;
CREATE TABLE IF NOT EXISTS `zhinan_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhinan_id` int DEFAULT NULL COMMENT '指南',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhinan_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='指南收藏';

DELETE FROM `zhinan_collection`;
INSERT INTO `zhinan_collection` (`id`, `zhinan_id`, `yonghu_id`, `zhinan_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(2, 2, 1, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(4, 4, 1, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(5, 5, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(6, 6, 1, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(7, 7, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(8, 8, 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(9, 9, 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(10, 10, 2, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(11, 11, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(13, 13, 3, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(14, 14, 1, 1, '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(15, 5, 1, 2, '2023-04-07 08:01:30', '2023-04-07 08:01:30'),
	(16, 5, 1, 1, '2023-04-07 08:01:47', '2023-04-07 08:01:47'),
	(17, 11, 1, 1, '2024-08-13 06:36:52', '2024-08-13 06:36:52');

DROP TABLE IF EXISTS `zhinan_liuyan`;
CREATE TABLE IF NOT EXISTS `zhinan_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhinan_id` int DEFAULT NULL COMMENT '指南',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhinan_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='指南留言';

DELETE FROM `zhinan_liuyan`;
INSERT INTO `zhinan_liuyan` (`id`, `zhinan_id`, `yonghu_id`, `zhinan_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-04-07 07:29:15', '回复信息1', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(2, 2, 2, '留言内容2', '2023-04-07 07:29:15', '回复信息2', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(3, 3, 1, '留言内容3', '2023-04-07 07:29:15', '回复信息3', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(4, 4, 1, '留言内容4', '2023-04-07 07:29:15', '回复信息4', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(5, 5, 1, '留言内容5', '2023-04-07 07:29:15', '回复信息5', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(6, 6, 2, '留言内容6', '2023-04-07 07:29:15', '回复信息6', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(7, 7, 2, '留言内容7', '2023-04-07 07:29:15', '回复信息7', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(8, 8, 3, '留言内容8', '2023-04-07 07:29:15', '回复信息8', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(9, 9, 3, '留言内容9', '2023-04-07 07:29:15', '回复信息9', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(10, 10, 2, '留言内容10', '2023-04-07 07:29:15', '回复信息10', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(11, 11, 3, '留言内容11', '2023-04-07 07:29:15', '回复信息11', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(12, 12, 2, '留言内容12', '2023-04-07 07:29:15', '回复信息12', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(13, 13, 2, '留言内容13', '2023-04-07 07:29:15', '回复信息13', '2023-04-07 07:29:15', '2023-04-07 07:29:15'),
	(14, 14, 2, '留言内容14', '2023-04-07 07:29:15', '回复信息14', '2023-04-07 07:29:15', '2023-04-07 07:29:15');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
