/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : comp

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-03-18 13:49:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `attendance`
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `adsence` int(11) DEFAULT NULL COMMENT '0:缺勤',
  `clockin` int(11) DEFAULT NULL COMMENT '1:打卡',
  `leave` int(11) DEFAULT NULL COMMENT '2:请假',
  `late` int(11) DEFAULT NULL COMMENT '3:迟到',
  `early` int(11) DEFAULT NULL COMMENT '4:早退',
  `one` varchar(255) DEFAULT NULL,
  `two` varchar(255) DEFAULT NULL,
  `three` varchar(255) DEFAULT NULL,
  `four` varchar(255) DEFAULT NULL,
  `five` varchar(255) DEFAULT NULL,
  `six` varchar(255) DEFAULT NULL,
  `seven` varchar(255) DEFAULT NULL,
  `eight` varchar(255) DEFAULT NULL,
  `nine` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `eleven` varchar(255) DEFAULT NULL,
  `twelve` varchar(255) DEFAULT NULL,
  `thirteen` varchar(255) DEFAULT NULL,
  `fourteen` varchar(255) DEFAULT NULL,
  `fifteen` varchar(255) DEFAULT NULL,
  `sixteen` varchar(255) DEFAULT NULL,
  `seventeen` varchar(255) DEFAULT NULL,
  `eighteen` varchar(255) DEFAULT NULL,
  `nineteen` varchar(255) DEFAULT NULL,
  `twenty` varchar(255) DEFAULT NULL,
  `twentyo` varchar(255) DEFAULT NULL,
  `twentyt` varchar(255) DEFAULT NULL,
  `twentyth` varchar(255) DEFAULT NULL,
  `twentyf` varchar(255) DEFAULT NULL,
  `twentyfi` varchar(255) DEFAULT NULL,
  `twentys` varchar(255) DEFAULT NULL,
  `twentyse` varchar(255) DEFAULT NULL,
  `twentye` varchar(255) DEFAULT NULL,
  `twentyn` varchar(255) DEFAULT NULL,
  `thirty` varchar(255) DEFAULT NULL,
  `thirtyo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO attendance VALUES ('1', '190101', '张三', '1901', '0', '23', '0', '0', '0', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1');
INSERT INTO attendance VALUES ('2', '190101', '张三', '1902', '0', '23', '0', '0', '0', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1');
INSERT INTO attendance VALUES ('3', '190102', '李思', '1901', '0', '23', '0', '0', '0', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1', '1', '1', '5', '5', '1', '1', '1');

-- ----------------------------
-- Table structure for `dimissionapply`
-- ----------------------------
DROP TABLE IF EXISTS `dimissionapply`;
CREATE TABLE `dimissionapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL COMMENT '0：不通过  1：已通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dimissionapply
-- ----------------------------
INSERT INTO dimissionapply VALUES ('1', '190101', '张三', '设计部', '设计', '家里有事', '不通过');
INSERT INTO dimissionapply VALUES ('2', '190102', '李思', '财务部', '经理', '离家太远', '审核中');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL COMMENT '1:男 0:女',
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL COMMENT '0:员工  1:经理  2:总经理',
  `school` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `enterdate` date DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL COMMENT '0:离职 1:在职',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312 COMMENT='\r\n';

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO employee VALUES ('1', '190101', '张三', '190101', '男', '设计', '设计部', '0', '广东美术学院', '设计', '123@qq.com', '1234567891', '广东珠海', '2019-11-12', '在职');
INSERT INTO employee VALUES ('2', '190102', '李思', '190102', '女', '经理', '财务部', '1', '广东财经大学', '会计', '456@qq.com', '1457825486', '广东广州', '2019-11-12', '在职');
INSERT INTO employee VALUES ('3', '190103', '吴会', '190103', '男', '设计', '设计部', '0', '中山大学', '设计', '456@45.cn', '1347256593', '广东深圳', '2020-02-08', '在职');
INSERT INTO employee VALUES ('4', '190104', '刘桂', '190104', '女', '会计', '财务部', '0', '中山大学', '会计', '4566@45.cn', '1347256593', '广东广州', '2020-02-10', '离职');

-- ----------------------------
-- Table structure for `injury`
-- ----------------------------
DROP TABLE IF EXISTS `injury`;
CREATE TABLE `injury` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `injury` varchar(255) DEFAULT NULL,
  `accident` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of injury
-- ----------------------------
INSERT INTO injury VALUES ('1', '190101', '张三', '2019-02-20', '腿部骨折', '车祸');
INSERT INTO injury VALUES ('4', '190102', '李思', '2020-02-04', '轻度脑震荡', '车祸');

-- ----------------------------
-- Table structure for `leaveapply`
-- ----------------------------
DROP TABLE IF EXISTS `leaveapply`;
CREATE TABLE `leaveapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `s_d` varchar(255) DEFAULT NULL,
  `e_d` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL COMMENT '0：不通过   1：通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of leaveapply
-- ----------------------------
INSERT INTO leaveapply VALUES ('2', '190102', '李思', '生病', '2020-02-06', '2020-02-07', '1', '不通过');
INSERT INTO leaveapply VALUES ('3', '190102', '李思', '有事', '2020-02-06', '2020-02-07', '1', '审核中');
INSERT INTO leaveapply VALUES ('4', '190101', '张三', '有事', '2020-02-05', '2020-02-07', '1', '通过');
INSERT INTO leaveapply VALUES ('5', '190101', '张三', '生病', '2020-02-06', '2020-02-07', '1', '审核中');

-- ----------------------------
-- Table structure for `salary`
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `ppdate` date DEFAULT NULL,
  `prize` varchar(255) DEFAULT NULL,
  `prizereason` varchar(255) DEFAULT NULL,
  `penalty` varchar(255) DEFAULT NULL,
  `penaltyreason` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `payday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO salary VALUES ('1', '190101', '张三', '5000', '2020-02-12', '500', '赢了比赛', '否', '否', '5500', '2020-02-12');
INSERT INTO salary VALUES ('2', '190102', '李思', '9000', '2020-02-12', '否', '否', '500', '输了比赛', '8500', '2020-02-12');

-- ----------------------------
-- Table structure for `transfer`
-- ----------------------------
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `department_old` varchar(255) DEFAULT NULL,
  `position_old` varchar(255) DEFAULT NULL,
  `department_new` varchar(255) DEFAULT NULL,
  `position_new` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL COMMENT '0:不通过 1:已通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of transfer
-- ----------------------------
INSERT INTO transfer VALUES ('1', '190101', '张三', '2020-02-12', '设计部', '设计', '财务部', '会计', '审核中');
INSERT INTO transfer VALUES ('2', '190102', '李思', '2020-02-08', '财务部', '经理', '设计部', '设计', '审核中');
