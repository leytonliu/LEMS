/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lems

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-17 23:50:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'lld', 'lld');
INSERT INTO `admin` VALUES ('2', 'mxg', 'mxg');
INSERT INTO `admin` VALUES ('3', 'xsk', 'xsk');
INSERT INTO `admin` VALUES ('4', 'tyx', 'tyx');
INSERT INTO `admin` VALUES ('8', '2131', '3123');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `car_name` varchar(255) DEFAULT NULL,
  `car_phone` varchar(255) DEFAULT NULL,
  `car_busy` bit(1) DEFAULT b'0',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', 'lld', '15651817091', '\0');
INSERT INTO `car` VALUES ('2', 'mxg', '15601586796', '\0');
INSERT INTO `car` VALUES ('3', 'tyx', '15651814771', '\0');
INSERT INTO `car` VALUES ('4', 'xsk', '15605157842', '\0');
INSERT INTO `car` VALUES ('5', 'lhy', '15652188321', '\0');
INSERT INTO `car` VALUES ('6', ' wqe', '123125211', '\0');
INSERT INTO `car` VALUES ('7', 'ada', '1234544244', '\0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_rname` varchar(255) DEFAULT NULL,
  `orders_rphone` varchar(255) DEFAULT NULL,
  `orders_raddress` varchar(255) DEFAULT NULL,
  `orders_sname` varchar(255) DEFAULT NULL,
  `orders_sphone` varchar(255) DEFAULT NULL,
  `orders_saddress` varchar(255) DEFAULT NULL,
  `orders_completed` bit(1) DEFAULT b'0',
  `admin_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'lld', '15651817011', '南师大', 'mxg', '15658769798', '南师大', '', '1', '4');
INSERT INTO `orders` VALUES ('2', 'mxg', '15651817091', '俺的打算', 'lld', '15565153188', '来打卡', '', '0', '0');
INSERT INTO `orders` VALUES ('3', 'daf', '15651817091', '北京', '的卡', '15601585796', '南京', '', null, null);
INSERT INTO `orders` VALUES ('4', 'ddw', 'dsa', 'das', null, 'das', 'd', '\0', null, null);
