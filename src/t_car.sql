/*
Navicat MySQL Data Transfer

Source Server         : cms
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : 1710d

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-06 20:13:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `trademark` varchar(30) DEFAULT NULL,
  `rent` decimal(10,0) DEFAULT NULL,
  `car_type` varchar(2) DEFAULT NULL,
  `pic_url` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_car
-- ----------------------------
INSERT INTO `t_car` VALUES ('1', '奥迪A6 2019 款豪华致雅款', '奥迪', '600', 'C2', '图片1.png', '2019-11-20 08:57:28');
INSERT INTO `t_car` VALUES ('2', '卡罗拉1.8L E-CVT先锋版', '丰田', '200', 'C1', '图片2.png', '2018-02-14 09:00:26');
INSERT INTO `t_car` VALUES ('3', '朗逸1.5L 手动风尚版', '大众', '160', 'C1', '图片3.png', '2019-10-29 09:01:08');
INSERT INTO `t_car` VALUES ('4', '帕萨特2019款 280TSI 商务版', '大众', '300', 'C2', '图片4.png', '2019-10-29 09:01:36');
INSERT INTO `t_car` VALUES ('5', '丰田考斯特15座首长版', '丰田', '1200', 'B1', '图片5.png', '2019-10-28 09:02:01');
INSERT INTO `t_car` VALUES ('6', '宇通客车45座', '宇通', '4000', 'A1', '图片6.png', '2019-11-05 09:02:28');
INSERT INTO `t_car` VALUES ('7', '本田梦翼摩托', '本田', '200', 'E', '图片7.png', '2019-11-18 09:03:07');
INSERT INTO `t_car` VALUES ('8', '福克斯2019款1.5L 手动锋跃型', '福特', '120', 'C1', '图片8.png', '2019-11-12 09:03:33');
INSERT INTO `t_car` VALUES ('9', '陆地巡洋舰', '丰田', '800', 'C1', '图片9.png', '2019-11-12 09:03:57');
INSERT INTO `t_car` VALUES ('10', '传祺GA4', '广汽', '100', 'C2', '图片10.png', '2019-10-01 09:04:23');
INSERT INTO `t_car` VALUES ('16', '小黄车', '自行车', '5', 'F', '4116ca57-1b86-42c9-9fbf-91d425ff08c0.jpg', '2020-04-06 16:23:59');
INSERT INTO `t_car` VALUES ('17', '小绿车', '自行车', '5', 'C4', '2ebada15-7b8b-4ef9-9b74-b7a5c19230fe.png', '2020-04-06 16:36:15');

-- ----------------------------
-- Table structure for t_driver
-- ----------------------------
DROP TABLE IF EXISTS `t_driver`;
CREATE TABLE `t_driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `driver_license` varchar(20) DEFAULT NULL,
  `drive_type` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_driver
-- ----------------------------
INSERT INTO `t_driver` VALUES ('8', '张三', '111', '111', '111', 'A1', '2020-04-29 16:22:42');

-- ----------------------------
-- Table structure for t_driver_type
-- ----------------------------
DROP TABLE IF EXISTS `t_driver_type`;
CREATE TABLE `t_driver_type` (
  `code` varchar(2) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `include` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_driver_type
-- ----------------------------
INSERT INTO `t_driver_type` VALUES ('A1', '大型载客汽车', 'A3,B1,B2,C1,C2,C3,C4,M');
INSERT INTO `t_driver_type` VALUES ('A2', '牵引车', 'B1,B2,C1,C2,C3,C4,M');
INSERT INTO `t_driver_type` VALUES ('A3', '城市公交车', 'C1,C2,C3,C4');
INSERT INTO `t_driver_type` VALUES ('B1', '中型客车', 'C1,C2,C3,C4,M');
INSERT INTO `t_driver_type` VALUES ('B2', '大型货车', 'C1,C2,C3,C4,M');
INSERT INTO `t_driver_type` VALUES ('C1', '小型汽车', 'C2,C3,C4');
INSERT INTO `t_driver_type` VALUES ('C2', '小型自动挡汽车', null);
INSERT INTO `t_driver_type` VALUES ('C3', '低速载货汽车', 'C4');
INSERT INTO `t_driver_type` VALUES ('C4', '三轮汽车', null);
INSERT INTO `t_driver_type` VALUES ('D', '普通三轮摩托车', 'E,F');
INSERT INTO `t_driver_type` VALUES ('E', '普通二轮摩托车', 'F');
INSERT INTO `t_driver_type` VALUES ('F', '轻便摩托车', null);
