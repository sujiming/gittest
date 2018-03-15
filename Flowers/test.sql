/*
Navicat MySQL Data Transfer

Source Server         : hualei
Source Server Version : 50556
Source Host           : 192.168.50.106:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2017-09-05 09:07:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for caproduct
-- ----------------------------
DROP TABLE IF EXISTS `caproduct`;
CREATE TABLE `caproduct` (
  `caID` int(10) NOT NULL,
  `caName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `caExplanation` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`caID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of caproduct
-- ----------------------------
INSERT INTO `caproduct` VALUES ('1', '鲜花玫瑰', '鲜花玫瑰系列');
INSERT INTO `caproduct` VALUES ('2', '永生玫瑰', '永生玫瑰系列');
INSERT INTO `caproduct` VALUES ('3', '玫瑰珠宝', '玫瑰珠宝系列');
INSERT INTO `caproduct` VALUES ('4', '玫瑰首饰', '玫瑰首饰系列');

-- ----------------------------
-- Table structure for pagepicture
-- ----------------------------
DROP TABLE IF EXISTS `pagepicture`;
CREATE TABLE `pagepicture` (
  `pictureID` int(10) NOT NULL,
  `path` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `productID` int(10) DEFAULT NULL,
  PRIMARY KEY (`pictureID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pagepicture
-- ----------------------------

-- ----------------------------
-- Table structure for table_admin
-- ----------------------------
DROP TABLE IF EXISTS `table_admin`;
CREATE TABLE `table_admin` (
  `adminID` int(10) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `adminPwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table_admin
-- ----------------------------
INSERT INTO `table_admin` VALUES ('1', 'liyueyue', '666666', '女', '18885674422', '北京');
INSERT INTO `table_admin` VALUES ('2', 'hualei', '888888', '男', '18885674530', '北京');
INSERT INTO `table_admin` VALUES ('3', 'dong', '222222', '男', '18856899630', '北京');

-- ----------------------------
-- Table structure for table_car
-- ----------------------------
DROP TABLE IF EXISTS `table_car`;
CREATE TABLE `table_car` (
  `carID` int(10) NOT NULL AUTO_INCREMENT,
  `productID` varchar(50) DEFAULT NULL,
  `memberID` int(20) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `ordersID` int(20) DEFAULT NULL,
  `statu` char(30) DEFAULT NULL,
  PRIMARY KEY (`carID`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_car
-- ----------------------------
INSERT INTO `table_car` VALUES ('151', '74', '1', '4', null, '已提交');
INSERT INTO `table_car` VALUES ('107', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('108', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('105', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('114', '3', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('115', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('116', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('117', '50', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('118', '50', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('119', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('120', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('121', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('122', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('109', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('123', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('124', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('125', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('126', '112', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('127', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('61', '2', '2', '1', null, '未支付');
INSERT INTO `table_car` VALUES ('62', '51', '2', '5', null, '未支付');
INSERT INTO `table_car` VALUES ('110', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('111', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('112', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('113', '113', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('52', '121', '2', '3', null, '未支付');
INSERT INTO `table_car` VALUES ('53', '59', '2', '1', null, '未支付');
INSERT INTO `table_car` VALUES ('128', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('106', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('56', '49', '22', '5', null, '未支付');
INSERT INTO `table_car` VALUES ('181', '81', '1', '-1', null, '弃用');
INSERT INTO `table_car` VALUES ('182', '81', '24', '1', null, '未支付');
INSERT INTO `table_car` VALUES ('129', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('130', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('131', '2', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('132', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('133', '6', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('134', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('135', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('136', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('137', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('138', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('139', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('140', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('141', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('142', '50', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('143', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('144', '50', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('145', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('146', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('147', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('148', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('149', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('150', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('171', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('172', '50', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('170', '49', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('176', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('177', '2', '1', '4', null, '已提交');
INSERT INTO `table_car` VALUES ('173', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('174', '81', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('175', '74', '1', '1', null, '已提交');
INSERT INTO `table_car` VALUES ('183', '49', '24', '1', null, '未支付');
INSERT INTO `table_car` VALUES ('184', '4', '24', '1', null, '未支付');

-- ----------------------------
-- Table structure for table_member
-- ----------------------------
DROP TABLE IF EXISTS `table_member`;
CREATE TABLE `table_member` (
  `memberID` int(11) NOT NULL AUTO_INCREMENT,
  `memberName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `memberPwd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `sex` char(10) CHARACTER SET utf8 DEFAULT '',
  `email` varchar(30) CHARACTER SET utf8 DEFAULT '',
  `telephone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `qq` varchar(20) CHARACTER SET utf8 DEFAULT '',
  `address` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `realname` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `headerphoto` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`memberID`),
  UNIQUE KEY `memberName` (`memberName`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table_member
-- ----------------------------
INSERT INTO `table_member` VALUES ('1', 'Liyueyue', '212121', '男', '2322123@qq.com', '18884435332', '98777889', '安徽省安庆市太湖县', 'Liyueyue', '/Flowers/static/images/1504432877720.png');
INSERT INTO `table_member` VALUES ('2', 'Wangge', '121212', '男', '343222@qq.com', '12323122322', '58468548', '北京', null, null);
INSERT INTO `table_member` VALUES ('3', 'Json', '123456', '男', '3242233@qq.com', '13243342433', '34453333', '北京', null, null);
INSERT INTO `table_member` VALUES ('4', 'Maek', '234455', '女', '4rteeet433@qq.com', '18884435332', '543543543', '安徽', null, null);
INSERT INTO `table_member` VALUES ('5', 'Kangkang', '222222', '男', '654644433@qq.com', '18544435332', '34534532', '海南', null, null);
INSERT INTO `table_member` VALUES ('6', 'Jane', '333333', '女', 'tttot433@qq.com', '18438844353', '67576556', '甘肃', null, null);
INSERT INTO `table_member` VALUES ('7', 'Jack', '444444', '男', 'wwer4433@qq.com', '15684435332', '66666', '吉林', null, null);
INSERT INTO `table_member` VALUES ('8', 'Hua', '666666', '男', '4erew4433@qq.com', '14884435332', '6785544', '福建', null, null);
INSERT INTO `table_member` VALUES ('9', 'Dab', '888888', '男', 'eerrewtw@qq.com', '13344522434', '433333', '安徽', null, null);
INSERT INTO `table_member` VALUES ('10', 'Da', '434343', '男', 'erwwrw@qq.com', '12322233333', '345555', '湖南', null, null);
INSERT INTO `table_member` VALUES ('11', 'ew', '342242', '女', '324232@qq.com', '13143535532', '544566', '山西', null, null);
INSERT INTO `table_member` VALUES ('23', '9', '9', '男', '9', '9999999999', '9', ' 6', null, null);
INSERT INTO `table_member` VALUES ('24', 'hua787', '2222222', null, null, '18226262183', null, null, null, '/Flowers/static/images/1504433810986.jpg');

-- ----------------------------
-- Table structure for table_orders
-- ----------------------------
DROP TABLE IF EXISTS `table_orders`;
CREATE TABLE `table_orders` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ordersID` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `productID` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `memberID` int(20) DEFAULT NULL,
  `debitName` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `debitPhone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `debitAddress` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `consigneeName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `consigneePhone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `consigneeAddress` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `venrity` char(20) CHARACTER SET utf8 DEFAULT NULL,
  `orderMoney` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `adminID` int(10) DEFAULT NULL,
  `leaveWord` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ordersTime` datetime DEFAULT NULL,
  `carID` int(11) DEFAULT NULL,
  `payment` char(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table_orders
-- ----------------------------
INSERT INTO `table_orders` VALUES ('1', '52013141', '81', '1', 'Liyueyue', '18884435332', '北京', 'Wangge', '12323122322', '北京', '已审核', '89999.0', '3', '跟他说：你好帅！我很喜欢你！', '2017-08-31 10:57:20', null, null);
INSERT INTO `table_orders` VALUES ('36', '52913142', '80', '3', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-01 16:52:53', null, null);
INSERT INTO `table_orders` VALUES ('37', '52913143', '80', '3', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-01 16:52:53', null, null);
INSERT INTO `table_orders` VALUES ('40', '52913144', '2', '2', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-02 14:45:36', null, null);
INSERT INTO `table_orders` VALUES ('41', '52913145', '80', '3', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-01 16:52:53', null, null);
INSERT INTO `table_orders` VALUES ('42', '52913146', '2', '2', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-02 14:44:43', null, null);
INSERT INTO `table_orders` VALUES ('43', '52913147', '80', '3', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-01 16:52:53', null, null);
INSERT INTO `table_orders` VALUES ('44', '52913148', '80', '3', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-01 16:52:53', null, null);
INSERT INTO `table_orders` VALUES ('45', '52913149', '2', '2', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-02 14:39:36', null, null);
INSERT INTO `table_orders` VALUES ('48', '52913150', '80', '3', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-01 16:52:53', null, null);
INSERT INTO `table_orders` VALUES ('50', '52913151', '80', '3', 'Json', '13243342433', '北京', 'Liyueyue', '18884435332', '北京', '审核中', '6999.0', '1', '贼喜欢', '2017-09-01 16:52:53', null, null);
INSERT INTO `table_orders` VALUES ('51', '52913152', '80', '3', 'Json', '13243342433', '北京', '1', '1', '1', '审核中', '6999.0', '1', '1', '2017-09-01 16:52:53', null, null);

-- ----------------------------
-- Table structure for table_product
-- ----------------------------
DROP TABLE IF EXISTS `table_product`;
CREATE TABLE `table_product` (
  `productID` int(10) NOT NULL AUTO_INCREMENT,
  `caName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `productName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `picture` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `talkTo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `originalprice` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `festival` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `recmmend` char(16) CHARACTER SET utf8 DEFAULT NULL,
  `miaoshu` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table_product
-- ----------------------------
INSERT INTO `table_product` VALUES ('1', '鲜花玫瑰-经典永续系列', '经典朱砂 19支 80cm长形', '1.png', '一眼万年', '1999.0', '情人节', '是', '、玫瑰花虽然多姿多彩，红的胜火，粉的似霞，白的洁白淡雅……但是她并不像牡丹那样雍容富贵;不像桂花那样十里飘香;也不像菊花那样傲然屹立;更不像梅花那样有姿有态，她，是平凡无奇的，只因为人们把她和神圣的爱情联系在一起，才让她赋予了一层神秘的色彩，才会被迁徙出众香国里，孤独地独置一隅，寂寞地妍放着。');
INSERT INTO `table_product` VALUES ('2', '鲜花玫瑰-恒久真爱系列', '恒久line朱砂 19支 40cm长形', '2.png', '生生世世爱', '1999.0', '520表白日', '是', '玫瑰，是每个女人心中炽热的梦。它在女人的梦里悄悄地绽放，甜蜜又浪漫;它的魅惑和美丽在女人看来恐怕再无他物所能及。玫瑰的魅力在女人的心中经久不衰，甚至缠绕一生一世，成为女人的一种情结。玫瑰，它不是爱情的试金石，但它的确是爱情的催化剂和调味剂。如果一个女人，在她40周岁生日之际，还能收到老公为她精心准备的九十九朵玫瑰，谁能告诉我，这是一种怎样的惊喜?如果说是旷世的惊喜，算不算过?');
INSERT INTO `table_product` VALUES ('3', '鲜花玫瑰-恒久真爱系列', '恒久line朱砂 11支 40cm长形', '3.png', '爱你一生一世', '1520.0', '情人节', '是', '是啊，这九十九朵玫瑰，盛开的是中年夫妻相濡以沫，风雨同舟的花朵，它散发出来的是岁月的芳香。是从锅碗瓢盆里磕碰出来的;是从柴米油盐里薰蒸出来的，是从起起伏伏的炎凉红尘中走出来的。它远远超过了新婚燕尔年轻的冲动和激情，它经过了千锤百炼，这样的花朵，它讲永远绽放，永不凋零。');
INSERT INTO `table_product` VALUES ('4', '鲜花玫瑰-经典永续系列', '经典情动 19支 80cm长形', '4.png', '最后的温柔', '1999.0', '情人节', '是', '玫瑰花未开的时候，花蕾穿着一层绿色的外衣。又过了几天，花蕾顶破了外衣，露出了花瓣。一开始，由最外层的花瓣向外伸展，而里边的几层花瓣还紧紧地合拢在一起，渐渐地，花蕾继续脱了绿色的外衣，整朵玫瑰终于绽开了。这朵花是粉红色，像一个穿着粉红色衣裙的少女，可爱中又带着羞涩，美丽极了。');
INSERT INTO `table_product` VALUES ('5', '鲜花玫瑰-经典永续系列', '经典初心 19支 80cm长形', '5.png', '老鼠爱大米', '1999.0', '情人节', '是', '玫瑰花未开的时候，花蕾穿着一层绿色的外衣。又过了几天，花蕾顶破了外衣，露出了花瓣。一开始，由最外层的花瓣向外伸展，而里边的几层花瓣还紧紧地合拢在一起，渐渐地，花蕾继续脱了绿色的外衣，整朵玫瑰终于绽开了。这朵花是粉红色，像一个穿着粉红色衣裙的少女，可爱中又带着羞涩，美丽极了。');
INSERT INTO `table_product` VALUES ('6', '鲜花玫瑰-经典永续系列', '恒久朱砂 19支 40cm长形', '6.png', '玫瑰花的深情', '1999.0', '情人节', '是', '玫瑰花未开的时候，花蕾穿着一层绿色的外衣。又过了几天，花蕾顶破了外衣，露出了花瓣。一开始，由最外层的花瓣向外伸展，而里边的几层花瓣还紧紧地合拢在一起，渐渐地，花蕾继续脱了绿色的外衣，整朵玫瑰终于绽开了。这朵花是粉红色，像一个穿着粉红色衣裙的少女，可爱中又带着羞涩，美丽极了。');
INSERT INTO `table_product` VALUES ('7', '鲜花玫瑰-恒久真爱系列', '恒久情动 19支 40cm长形', '7.png', '玫瑰花的深情', '1520.0', '情人节', '是', '玫瑰花迎着三月和煦的春风徐徐摆动。它长着一根细长而坚固的主茎，茎上长满利剑似的刺，让人望而生畏。它的茎上长着一片片叶子，这些叶子有的肥厚浓绿，有的娇嫩青翠的像翡翠般。叶子边沿像锯齿一般，中间有一条细细的小沟，上面还长着一条条细花纹。');
INSERT INTO `table_product` VALUES ('8', '鲜花玫瑰-恒久真爱系列', '恒久初心 19支 40cm长形', '8.png', '此生不换', '1520.0', '情人节', '是', '玫瑰花在春天的时候开得十分艳丽夺目，形态各异，千姿百态。你看，玫瑰花有的只开了个花骨朵，想有一个拇指姑娘在里面熟睡呢!有的努力在长大，像是在比美似的;有的长了一半，像一个小姑娘刚刚醒来，在伸个懒腰呢!一阵雨过后，玫瑰花的香味引来了蝴蝶和蜜蜂在翩翩起舞呢!');
INSERT INTO `table_product` VALUES ('9', '鲜花玫瑰-恒久真爱系列', '小经典朱砂 19支 80cm长形', '9.png', '比翼双飞', '1999.0', '情人节', '是', '玫瑰有红、黄、白、蓝和粉红色的，这里那么多种的颜色我都喜欢。因为红玫瑰是代表爱恋;黄玫瑰代表高贵;白玫瑰代表纯洁;蓝玫瑰代表浪漫;粉红色代表淡雅……这些花语都蛮不错的。');
INSERT INTO `table_product` VALUES ('10', '鲜花玫瑰-经典永续系列', '小经典初心 19支 80cm长形', '10.png', '玫瑰花的深情', '1999.0', '情人节', '是', '玫瑰园里的玫瑰花多极了，瑰丽无比：白的，红的，黄的，粉红的，娇艳欲滴，多不胜数远远看去就像一个花花世界，美丽极了。叶子密密层层的，把泥土遮住了;花朵的花瓣一片又一片，层层叠叠，像在给花芯盖被子似的;花杆上有一条又一条的刺儿，这应该是为了自己不被别人摘下来吧。刚长出来的叶子颜色淡淡的，让人看起来很舒服。');
INSERT INTO `table_product` VALUES ('11', '鲜花玫瑰-恒久真爱系列', '经典朱砂 19支 80cm长形', '11.png', '玫瑰花的深情', '1999.0', '情人节', '是', '那朵朵玫瑰绽放着各种不同的形态。有的害羞待放，像一位害羞的小姑娘;有的刚刚绽放，散发出一阵又一阵淡雅的清香;有的绽放出甜美的笑脸，花朵就像是几只玲珑剔透的小花盘，金黄色的花蕊就像是托着的一盘诱人的奶黄蛋卷，蛋卷旁有着几滴晶莹剔透的小水珠;那先前热热闹闹开过的玫瑰花呢，鲜红的花瓣凋落了，墨绿色的枝干弯曲，花朵低垂着头，像一位弯腰驼背、垂头丧气的老公公……');
INSERT INTO `table_product` VALUES ('12', '鲜花玫瑰-恒久真爱系列', '经典初心 19支 80cm长形', '12.png', '比翼双飞', '1520.0', '情人节', '是', '你看，玫瑰花有的只是花骨朵，里面像是有拇指姑娘在睡懒觉呢!有的在努力生长，好像在比美!有的长了一半，像一个小姑娘刚刚醒来，在伸个懒腰呢!这时，一阵风吹来，吹出玫瑰那淡淡的又迷人的幽香，那香味使人心旷神怡!也招来了许多蝴蝶和蜜蜂在这翩翩起舞，犹如仙境一般，让人陶醉!');
INSERT INTO `table_product` VALUES ('13', '鲜花玫瑰-经典永续系列', '经典情动 19支 80cm长形', '13.png', '比翼双飞', '1520.0', '情人节', '是', '我把鼻子靠近花朵，就闻到了一股扑鼻的清香。玫瑰新长出来的叶子是嫩红的，是锯齿形的，摸起来不扎手，可是长大了的叶子很扎手。其实它的茎上也有刺。所以人们常说“带刺的玫瑰”');
INSERT INTO `table_product` VALUES ('14', '鲜花玫瑰-经典永续系列', '经典朱砂 19支 80cm长形', '14.png', '比翼双飞', '1520.0', '情人节', '是', '现在正是玫瑰盛开的季节，远远望去，深绿色的枝叶间增添了几朵粉红色的花朵。走进一看，一片片花瓣层层叠叠。阵阵清香扑鼻而来，沁人肺腑，使人陶醉。花香引来了蜜蜂和蝴蝶，热闹极了!');
INSERT INTO `table_product` VALUES ('15', '鲜花玫瑰-经典永续系列', '经典初心 19支 80cm长形', '15.png', '傻傻的爱你', '1999.0', '情人节', '是', '每天清早，我一起床，总是会跑到阳台，看看那红玫瑰，那清香扑鼻而来，早上你就会精神焕发。你看那玫瑰千姿百态，有的像小少女似的，遮遮掩掩，躲躲藏藏。有的像是在和太阳公公打招呼，绽开笑脸望着天空。有的在微风中欢快的舞蹈。真是各色各样,美不胜收呀!');
INSERT INTO `table_product` VALUES ('16', '鲜花玫瑰-经典永续系列', '经典朱砂 19支 80cm长形', '16.png', '比翼双飞', '5999.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，个性倔强，不怕风雨，不怕艰苦，妈妈不希望你做温室里的百合。你要有个性，自己能面对生活考验，要做生活的强者，能独立克服困难，长大以后你才能像一朵真正的玫瑰花一样绽放。请原谅妈妈的离开!');
INSERT INTO `table_product` VALUES ('17', '鲜花玫瑰-恒久真爱系列', '经典初心 19支 80cm长形', '17.png', '玫瑰花的深情', '1999.0', '情人节', '是', '一朵朵灼灼如火的玫瑰花的花瓣挨挨挤挤、层层叠叠就像一个个红通通的玛瑙，美丽极了。有的才展开两三片花瓣儿，有的花瓣花儿全都绽放开来。露出粉红色的花蕊，热烈奔放。有的含苞欲放犹如一个害羞的小姑娘。');
INSERT INTO `table_product` VALUES ('18', '鲜花玫瑰-恒久真爱系列', '恒久朱砂 19支 40cm长形', '18.png', '玫瑰花的深情', '1999.0', '情人节', '是', '一朵朵灼灼如火的玫瑰花的花瓣挨挨挤挤、层层叠叠就像一个个红通通的玛瑙，美丽极了。有的才展开两三片花瓣儿，有的花瓣花儿全都绽放开来。露出粉红色的花蕊，热烈奔放。有的含苞欲放犹如一个害羞的小姑娘。');
INSERT INTO `table_product` VALUES ('19', '鲜花玫瑰-恒久真爱系列', '恒久朱砂 19支 40cm长形', '19.png', '玫瑰花的深情', '1999.0', '520表白日', '是', '一朵朵灼灼如火的玫瑰花的花瓣挨挨挤挤、层层叠叠就像一个个红通通的玛瑙，美丽极了。有的才展开两三片花瓣儿，有的花瓣花儿全都绽放开来。露出粉红色的花蕊，热烈奔放。有的含苞欲放犹如一个害羞的小姑娘。');
INSERT INTO `table_product` VALUES ('20', '鲜花玫瑰-经典永续系列', '恒久朱砂 19支 40cm长形', '20.png', '玫瑰花的深情', '1999.0', '情人节', '是', '一朵朵灼灼如火的玫瑰花的花瓣挨挨挤挤、层层叠叠就像一个个红通通的玛瑙，美丽极了。有的才展开两三片花瓣儿，有的花瓣花儿全都绽放开来。露出粉红色的花蕊，热烈奔放。有的含苞欲放犹如一个害羞的小姑娘。');
INSERT INTO `table_product` VALUES ('21', '鲜花玫瑰-恒久真爱系列', '恒久朱砂 19支 40cm长形', '21.png', '玫瑰花的深情', '1999.0', '情人节', '是', '春天，正是百花齐放的季节，玫瑰花用它独特的魅力吸引着人们。早晨，露珠出现在玫瑰花的身上，当清晨第一缕阳光照在玫瑰花身上时，露珠散发出耀眼的光芒，让玫瑰花显得娇嫩而又不失高贵优雅的气质。');
INSERT INTO `table_product` VALUES ('22', '鲜花玫瑰-恒久真爱系列', '恒久line朱砂 11支 40cm长形', '22.png', '玫瑰花的深情', '1520.0', '情人节', '是', '一朵朵灼灼如火的玫瑰花的花瓣挨挨挤挤、层层叠叠就像一个个红通通的玛瑙，美丽极了。有的才展开两三片花瓣儿，有的花瓣花儿全都绽放开来。露出粉红色的花蕊，热烈奔放。有的含苞欲放犹如一个害羞的小姑娘。');
INSERT INTO `table_product` VALUES ('23', '鲜花玫瑰-经典永续系列', '恒久line初心 19支 40cm长形', '23.png', '玫瑰花的深情', '1520.0', '情人节', '是', '一朵朵灼灼如火的玫瑰花的花瓣挨挨挤挤、层层叠叠就像一个个红通通的玛瑙，美丽极了。有的才展开两三片花瓣儿，有的花瓣花儿全都绽放开来。露出粉红色的花蕊，热烈奔放。有的含苞欲放犹如一个害羞的小姑娘。');
INSERT INTO `table_product` VALUES ('24', '鲜花玫瑰-恒久真爱系列', '恒久line朱砂 11支 40cm长形', '24.png', '玫瑰花的深情', '1520.0', '520表白日', '是', '春天，正是百花齐放的季节，玫瑰花用它独特的魅力吸引着人们。早晨，露珠出现在玫瑰花的身上，当清晨第一缕阳光照在玫瑰花身上时，露珠散发出耀眼的光芒，让玫瑰花显得娇嫩而又不失高贵优雅的气质。');
INSERT INTO `table_product` VALUES ('25', '鲜花玫瑰-恒久真爱系列', '恒久line朱砂 11支 40cm长形', '25.png', '玫瑰花的深情', '1520.0', '情人节', '是', '春天，正是百花齐放的季节，玫瑰花用它独特的魅力吸引着人们。早晨，露珠出现在玫瑰花的身上，当清晨第一缕阳光照在玫瑰花身上时，露珠散发出耀眼的光芒，让玫瑰花显得娇嫩而又不失高贵优雅的气质。');
INSERT INTO `table_product` VALUES ('26', '鲜花玫瑰-经典永续系列', '经典情动 19支 80cm长形', '26.png', '玫瑰花的深情', '1520.0', '情人节', '是', '春天，正是百花齐放的季节，玫瑰花用它独特的魅力吸引着人们。早晨，露珠出现在玫瑰花的身上，当清晨第一缕阳光照在玫瑰花身上时，露珠散发出耀眼的光芒，让玫瑰花显得娇嫩而又不失高贵优雅的气质。');
INSERT INTO `table_product` VALUES ('27', '鲜花玫瑰-恒久真爱系列', '经典情动 19支 80cm长形', '27.png', '玫瑰花的深情', '1520.0', '情人节', '是', '当他走到我的面前把花给递我时，玫瑰花在我手是，他却已在我的心中。他那深情的眼睛望着我，我的回眸也是千万的情深，看着他的英俊萧洒，任由我将缱绻的目光将他拥抱，他的眼神，他的笑容，令我难忘。雨点落在他的风衣，他的头发，却溅到了我的心里，那缱绻的目光也带我回到那记忆的深处。');
INSERT INTO `table_product` VALUES ('28', '鲜花玫瑰-经典永续系列', '经典初心 19支 80cm长形', '28.png', '玫瑰花的深情', '1999.0', '情人节', '是', '当他走到我的面前把花给递我时，玫瑰花在我手是，他却已在我的心中。他那深情的眼睛望着我，我的回眸也是千万的情深，看着他的英俊萧洒，任由我将缱绻的目光将他拥抱，他的眼神，他的笑容，令我难忘。雨点落在他的风衣，他的头发，却溅到了我的心里，那缱绻的目光也带我回到那记忆的深处。');
INSERT INTO `table_product` VALUES ('29', '鲜花玫瑰-恒久真爱系列', '经典朱砂 19支 80cm长形', '29.png', '比翼双飞', '1999.0', '情人节', '是', '当他走到我的面前把花给递我时，玫瑰花在我手是，他却已在我的心中。他那深情的眼睛望着我，我的回眸也是千万的情深，看着他的英俊萧洒，任由我将缱绻的目光将他拥抱，他的眼神，他的笑容，令我难忘。雨点落在他的风衣，他的头发，却溅到了我的心里，那缱绻的目光也带我回到那记忆的深处。');
INSERT INTO `table_product` VALUES ('30', '鲜花玫瑰-恒久真爱系列', '经典情动 19支 80cm长形', '30.png', '比翼双飞', '1999.0', '情人节', '是', '当他走到我的面前把花给递我时，玫瑰花在我手是，他却已在我的心中。他那深情的眼睛望着我，我的回眸也是千万的情深，看着他的英俊萧洒，任由我将缱绻的目光将他拥抱，他的眼神，他的笑容，令我难忘。雨点落在他的风衣，他的头发，却溅到了我的心里，那缱绻的目光也带我回到那记忆的深处。');
INSERT INTO `table_product` VALUES ('31', '鲜花玫瑰-恒久真爱系列', '经典情动 19支 80cm长形', '31.png', '傻傻的爱你', '1520.0', '情人节', '是', '说起玫瑰，人们自然会想到爱情，的确玫瑰代表爱情。古希腊神话中的玫瑰，集爱与美于一身，既是美神的化身，又溶进了爱神的血液。由此看出，在全世界，玫瑰都被公认是用来表达爱情的通用语言。');
INSERT INTO `table_product` VALUES ('32', '鲜花玫瑰-经典永续系列', '经典情动 19支 80cm长形', '32.png', '傻傻的爱你', '1520.0', '情人节', '是', '手持玫瑰，花瓣在空中凋谢时落英缤纷，仍有些恋恋不舍。残留的几片在我们争执中无助的落下，化为乌有。淡淡的花梗折了。被丢弃在路边，它的美丽早已被遗忘，静静的躺在泥土中等待死神的召唤。一天天的腐败，一天天的折磨。无人看到它的忧伤。玫瑰也是蕴含着感情会哭泣，也会伤心。只不过我们从未问津，没有认真聆听而已。');
INSERT INTO `table_product` VALUES ('33', '鲜花玫瑰-恒久真爱系列', '经典初心 19支 80cm长形', '33.png', '傻傻的爱你', '1999.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('34', '鲜花玫瑰-恒久真爱系列', '经典初心 19支 80cm长形', '34.png', '傻傻的爱你', '1999.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('35', '鲜花玫瑰-经典永续系列', '经典初心 19支 80cm长形', '35.png', '傻傻的爱你', '1999.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('36', '鲜花玫瑰-恒久真爱系列', '经典初心 19支 80cm长形', '36.png', '傻傻的爱你', '1520.0', '520表白日', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('37', '鲜花玫瑰-恒久真爱系列', '经典朱砂 19支 80cm长形', '37.png', '傻傻的爱你', '1999.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('38', '鲜花玫瑰-恒久真爱系列', '经典朱砂 19支 80cm长形', '38.png', '傻傻的爱你', '1999.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('39', '鲜花玫瑰-经典永续系列', '经典朱砂 19支 80cm长形', '39.png', '傻傻的爱你', '1520.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('40', '鲜花玫瑰-恒久真爱系列', '经典朱砂 19支 80cm长形', '40.png', '傻傻的爱你', '1999.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('41', '鲜花玫瑰-经典永续系列', '恒久朱砂 19支 40cm长形', '41.png', '傻傻的爱你', '1520.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('42', '鲜花玫瑰-恒久真爱系列', '恒久朱砂 19支 40cm长形', '42.png', '傻傻的爱你', '1999.0', '520表白日', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('43', '鲜花玫瑰-恒久真爱系列', '恒久朱砂 19支 40cm长形', '43.png', '傻傻的爱你', '1999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('44', '鲜花玫瑰-恒久真爱系列', '恒久朱砂 19支 40cm长形', '44.png', '傻傻的爱你', '1999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('45', '鲜花玫瑰-经典永续系列', '经典情动 19支 80cm长形', '45.png', '傻傻的爱你', '1999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('46', '鲜花玫瑰-恒久真爱系列', '经典情动 19支 80cm长形', '46.png', '傻傻的爱你', '1999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('47', '鲜花玫瑰-恒久真爱系列', '经典情动 19支 80cm长形', '47.png', '傻傻的爱你', '1999.0', '520表白日', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('48', '鲜花玫瑰-恒久真爱系列', '经典情动 19支 80cm长形', '48.png', '傻傻的爱你', '1999.0', '情人节', '是', '玫瑰花的姿态各异，成千上万，十分美丽。还没开的的花骨朵儿饱胀得像要破裂似的，呈现出勃勃生机。才开两三片花瓣的玫瑰花有的像女孩子头上的蝴蝶结;有的像少女那害羞的粉色笑靥。全开的玫瑰花像青春的少女那样傲嫩和美丽。一阵微风吹过，玫瑰花就翩翩起舞，像是在炫耀自己的爱。');
INSERT INTO `table_product` VALUES ('49', '永生玫瑰-经典永续系列', '经典许愿 单朵 大型音乐球', 'y1.png', '甜甜蜜蜜爱', '1520.0', '情人节', '是', '玫瑰花的姿态各异，成千上万，十分美丽。还没开的的花骨朵儿饱胀得像要破裂似的，呈现出勃勃生机。才开两三片花瓣的玫瑰花有的像女孩子头上的蝴蝶结;有的像少女那害羞的粉色笑靥。全开的玫瑰花像青春的少女那样傲嫩和美丽。一阵微风吹过，玫瑰花就翩翩起舞，像是在炫耀自己的爱。');
INSERT INTO `table_product` VALUES ('50', '永生玫瑰-经典永续系列', '甜蜜心动嫣红 簇拥版 小型圆桶', 'y2.png', '甜甜蜜蜜爱', '1520.0', '情人节', '是', '玫瑰花的姿态各异，成千上万，十分美丽。还没开的的花骨朵儿饱胀得像要破裂似的，呈现出勃勃生机。才开两三片花瓣的玫瑰花有的像女孩子头上的蝴蝶结;有的像少女那害羞的粉色笑靥。全开的玫瑰花像青春的少女那样傲嫩和美丽。一阵微风吹过，玫瑰花就翩翩起舞，像是在炫耀自己的爱。');
INSERT INTO `table_product` VALUES ('51', '永生玫瑰-经典永续系列', '甜蜜心动红粉 簇拥版 小型圆桶', 'y3.png', '甜甜蜜蜜爱', '1520.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('52', '永生玫瑰-经典永续系列', '甜蜜心动天蓝 簇拥版 小型圆桶', 'y4.png', '甜甜蜜蜜爱', '1520.0', '520表白日', '是', '玫瑰花的姿态各异，成千上万，十分美丽。还没开的的花骨朵儿饱胀得像要破裂似的，呈现出勃勃生机。才开两三片花瓣的玫瑰花有的像女孩子头上的蝴蝶结;有的像少女那害羞的粉色笑靥。全开的玫瑰花像青春的少女那样傲嫩和美丽。一阵微风吹过，玫瑰花就翩翩起舞，像是在炫耀自己的爱。');
INSERT INTO `table_product` VALUES ('53', '永生玫瑰-星座经典系列', '处女座处女守护色 单朵 中型方形', 'y5.png', '甜甜蜜蜜爱', '1520.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('54', '永生玫瑰-星座经典系列', '处女座', 'y6.png', '傻傻的爱你', '1520.0', '情人节', '是', '玫瑰花的姿态各异，成千上万，十分美丽。还没开的的花骨朵儿饱胀得像要破裂似的，呈现出勃勃生机。才开两三片花瓣的玫瑰花有的像女孩子头上的蝴蝶结;有的像少女那害羞的粉色笑靥。全开的玫瑰花像青春的少女那样傲嫩和美丽。一阵微风吹过，玫瑰花就翩翩起舞，像是在炫耀自己的爱。');
INSERT INTO `table_product` VALUES ('55', '永生玫瑰-玫瑰熊系列', '甜心熊天蓝 植绒 大型方形', 'y7.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '玫瑰花的姿态各异，成千上万，十分美丽。还没开的的花骨朵儿饱胀得像要破裂似的，呈现出勃勃生机。才开两三片花瓣的玫瑰花有的像女孩子头上的蝴蝶结;有的像少女那害羞的粉色笑靥。全开的玫瑰花像青春的少女那样傲嫩和美丽。一阵微风吹过，玫瑰花就翩翩起舞，像是在炫耀自己的爱。');
INSERT INTO `table_product` VALUES ('56', '永生玫瑰-玫瑰熊系列', '甜心熊嫣红 植绒 大型方形', 'y8.png', '傻傻的爱你', ' 1314.0', '520表白日', '是', '玫瑰花的姿态各异，成千上万，十分美丽。还没开的的花骨朵儿饱胀得像要破裂似的，呈现出勃勃生机。才开两三片花瓣的玫瑰花有的像女孩子头上的蝴蝶结;有的像少女那害羞的粉色笑靥。全开的玫瑰花像青春的少女那样傲嫩和美丽。一阵微风吹过，玫瑰花就翩翩起舞，像是在炫耀自己的爱。');
INSERT INTO `table_product` VALUES ('57', '永生玫瑰-全世爱系列', 'linefriends-经典嫣红 簇拥 中型圆形形', 'y9.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '玫瑰花的姿态各异，成千上万，十分美丽。还没开的的花骨朵儿饱胀得像要破裂似的，呈现出勃勃生机。才开两三片花瓣的玫瑰花有的像女孩子头上的蝴蝶结;有的像少女那害羞的粉色笑靥。全开的玫瑰花像青春的少女那样傲嫩和美丽。一阵微风吹过，玫瑰花就翩翩起舞，像是在炫耀自己的爱。');
INSERT INTO `table_product` VALUES ('58', '永生玫瑰-全世爱系列', 'linefriends-经典嫣红 簇拥 中型心形', 'y10.png', '傻傻的爱你', '1520.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('59', '永生玫瑰-全世爱系列', '经典嫣红 盛开版 中型心形', 'y11.png', '此生不换', '1520.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('60', '永生玫瑰-全世爱系列', '经典嫣红 盛开版 中型心形', 'y12.png', '此生不换', '1520.0', '520表白日', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('61', '永生玫瑰-全世爱系列', '经典嫣红 盛开版 中型圆形', 'y13.png', '此生不换', '1520.0', '情人节', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('62', '永生玫瑰-全世爱系列', '经典嫣红 盛开版 中型心形', 'y14.png', '此生不换', '1520.0', '520表白日', '是', '一场绚烂的玫瑰花事。衍生了错节的眷恋。那些刻在心里的烟花变成诗。为你写了很多文字，也许你都不会看见。当初你送我带锁的日记本要我写的时候，我一个字也没有写给你。现在写了，我却知道，已经迟了。而且，我也不会告诉你了。');
INSERT INTO `table_product` VALUES ('63', '永生玫瑰-经典永续系列', '永恒嫣红 九朵 小型方形', 'y15.png', '此生不换', '999.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('64', '永生玫瑰-全世爱系列', '经典红粉 盛开版 中型圆形', 'y16.png', '此生不换', '4999.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('65', '永生玫瑰-一生一世系列', '一生一世嫣红 盛开版 中型方形', 'y17.png', '此生不换', '5999.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('66', '永生玫瑰-经典永续系列', '经典嫣红 单朵 大型音乐球', 'y18.png', '此生不换', ' 1314.0', '520表白日', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('67', '永生玫瑰-星座经典系列', '处女座 单朵 Min音乐球', 'y19.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('68', '永生玫瑰-星座经典系列', '天枰座 单朵 Min音乐球', 'y20.png', '傻傻的爱你', '4999.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('69', '永生玫瑰-全世爱系列', '经典嫣红 盛开版 大型圆形', 'y21.png', '傻傻的爱你', '4999.0', '情人节', '是', '婷婷，你是一朵人人羡慕的玫瑰花。玫瑰花是带刺的，充满个性，不怕风雨，妈妈不希望你做温室里的百合。你只有学会坚强地面对生活的考验，长大以后你才能像一朵真正的玫瑰花一样绽放。');
INSERT INTO `table_product` VALUES ('70', '永生玫瑰-全世爱系列', '经典红粉 盛开版 大型圆形', 'y22.png', '傻傻的爱你', '2999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('71', '永生玫瑰-全世爱系列', '经典嫣红 簇拥版 中型圆形', 'y23.png', '傻傻的爱你', '4999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('72', '永生玫瑰-全世爱系列', '经典天蓝 盛开版 中型圆形', 'y24.png', '此生不换', '6999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('73', '永生玫瑰-全世爱系列', '经典嫣红 盛开版 巨型圆形', 'y25.png', '此生不换', '6999.0', '520表白日', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('74', '永生玫瑰-全世爱系列', '经典天蓝 盛开版 巨型圆形', 'y26.png', '此生不换', '6999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('75', '永生玫瑰-全世爱系列', '经典粉红 盛开版 巨型圆形', 'y27.png', '傻傻的爱你', '6999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('76', '永生玫瑰-全世爱系列', '珍藏兰紫 繁华版 矩形方形', 'y28.png', '傻傻的爱你', '6999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('77', '永生玫瑰-全世爱系列', '经典嫣红 盛开版 巨型方形', 'y29.png', '傻傻的爱你', '6999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('78', '永生玫瑰-全世爱系列', '经典天蓝 盛开版 巨型方形', 'y30.png', '傻傻的爱你', '6999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('79', '永生玫瑰-全世爱系列', '经典粉红 盛开版 巨型方形', 'y31.png', '甜甜蜜蜜爱', '6999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('80', '永生玫瑰-全世爱系列', '经典嫣红 簇拥版 中型方形形', 'y32.png', '甜甜蜜蜜爱', '6999.0', '情人节', '是', '夏天，玫瑰花绽开着艳丽的花朵。它含苞待放时，上面露出一点小花苞，像一个小樱桃。它盛开时，像小皮球上面有几片又小又漂亮的叶子一样，圆圆的。');
INSERT INTO `table_product` VALUES ('81', '永生玫瑰-玫瑰熊系列', '玫瑰熊嫣红 定制版 120cm方形', 'y33.png', '甜甜蜜蜜爱', '89999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('82', '玫瑰饰品-时光之吻系列', ' 时光之吻 贝珠 中型手镯', 's1.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('83', '玫瑰饰品-情有独钟系列', '钟情 锁扣 中型项链', 's2.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('84', '玫瑰饰品-时光之吻系列', '时光之吻 贝珠 中型项链', 's3.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('86', '玫瑰饰品-全心全意系列', '心心念念 红珐琅 中型手链', 's4.png', '生生世世爱', '  999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('87', ' 玫瑰饰品-情有独钟系列', ' 钟情 锁扣 中型手链', 's5.png', '生生世世爱', '  1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('88', ' 玫瑰饰品-全心全意系列', '心心相念 粉珐琅 中型耳饰', 's6.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('89', ' 玫瑰饰品-全心全意系列', ' 心心相念 粉珐琅 中型项链', 's7.png', '生生世世爱', ' 999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('90', ' 玫瑰饰品-全心全意系列', '心心相念 红珐琅 中型项饰', 's8.png', '生生世世爱', ' 999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('91', ' 玫瑰饰品-全心全意系列', ' 心心相念 黑珐琅 中型项链', 's9.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('92', ' 玫瑰饰品-全心全意系列', ' 心心相念 紫珐琅 中型项链', 's10.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('93', ' 玫瑰饰品-全心全意系列', ' 心心相念 黑珐琅 中型手链', 's11.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('94', ' 玫瑰饰品-全心全意系列', '  心心相念 粉珐琅 中型手链', 's12.png', '生生世世爱', '999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('95', ' 玫瑰饰品-全心全意系列', '  心心相念 紫珐琅 中型手链', 's13.png', '生生世世爱', '999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('96', ' 玫瑰饰品-玫瑰经典系列', '  爱之礼赞 粉珐琅 中型项链', 's14.png', '生生世世爱', '1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('97', '  玫瑰饰品-玫瑰经典系列', '爱之礼赞 红珐琅 中型项链', 's15.png', '生生世世爱', ' 1314.0', '520表白日', ' 是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('98', '  玫瑰饰品-玫瑰经典系列', '  爱之礼赞 蓝珐琅 中型项链', 's16.png', '生生世世爱', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('99', ' 玫瑰饰品-玫瑰经典系列', ' 爱之礼赞 粉珐琅 中型手链', 's17.png', '生生世世爱', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('100', ' 玫瑰饰品-玫瑰经典系列', ' 爱之礼赞 蓝珐琅  中型手链', 's18.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('101', '玫瑰饰品-玫瑰经典系列', ' 爱之礼赞 红珐琅  中型手链', 's19.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('102', '玫瑰饰品-玫瑰经典系列', '爱之礼赞 蓝珐琅 中型耳饰', 's20.png', '生生世世爱', ' 999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('103', '玫瑰饰品-情有独钟系列', '钟情 锁扣 中型戒指', 's21.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('104', '玫瑰饰品-幸运精灵系列', '巳蛇 生肖 中型项链', 's22.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('105', '玫瑰饰品-幸运精灵系列', '卯兔 生肖 中型项链', 's23.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('106', '玫瑰饰品-幸运精灵系列', '午马 生肖 中型项链', 's24.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('107', '玫瑰饰品-幸运精灵系列', '丑牛 生肖 中型项链', 's25.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('108', '玫瑰饰品-星座经典系列', '金牛座 珍珠 中型手链', 's26.png', '生生世世爱', '999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('109', '玫瑰饰品-星座经典系列', '狮子座 珍珠 中型手链', 's27.png', '生生世世爱', '999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('110', '玫瑰饰品-星座经典系列', '狮子座 珍珠 中型手链', 's28.png', '生生世世爱', '999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('111', '玫瑰珠宝-经典永续系列', '永恒 蝴蝶结 中型项链', 'z1.png', '生生世世爱', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('112', '玫瑰珠宝-玫瑰经典系列', '玫瑰 几何 中型项链', 'z2.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('113', '玫瑰珠宝-玫瑰经典系列', '玫瑰 几何 中型手链', 'z3.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('114', '玫瑰珠宝-玫瑰经典系列', '玫瑰 盘扣 中型手链', 'z4.png', '生生世世爱', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('115', '玫瑰珠宝-生辰石系列', '处女座 镂空玫瑰 中型项链', 'z5.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('116', '玫瑰珠宝-生辰石系列', '处女座 镂空玫瑰 中型项链', 'z6.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('117', '玫瑰珠宝-星座经典系列', '水星-星环 处女，双子座守护星-中型项链', 'z7.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('118', '玫瑰珠宝-星座经典系列', '水星-星环 处女，双子座守护星-中型手镯', 'z8.png', '生生世世爱', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('119', '玫瑰珠宝-星座经典系列', '处女座 具象 中型手链', 'z9.png', '生生世世爱', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('120', '玫瑰珠宝-生辰石系列', '处女座 镂空玫瑰 中型耳饰', 'z10.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('121', '玫瑰珠宝-星座经典系列', '处女座 具象 中型项链', 'z11.png', '生生世世爱', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('122', '玫瑰珠宝-星座经典系列', '处女座 线性 中型项链', 'z12.png', '你就是我的一切', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('123', '玫瑰珠宝-星座经典系列', '处女座 线性 中型项链', 'z13.png', '你就是毒药，把我毒死', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('124', '玫瑰珠宝-玫瑰经典系列', '玫瑰 盘扣 小型项链', 'z14.png', '没有你，不能活', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('125', '玫瑰珠宝-玫瑰经典系列', '玫瑰 盘扣 小型项链', 'z15.png', '全世界宣布爱你', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('126', '玫瑰珠宝-经典永续系列', '永恒 蝴蝶结 中型耳饰', 'z16.png', '傻傻的爱你', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('127', '玫瑰珠宝-生辰石系列', '狮子座 镂空玫瑰 中型耳饰', 'z17.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('128', '玫瑰珠宝-玫瑰经典系列', '玫瑰 几何 中型项链', 'z18.png', '傻傻的爱你', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('129', '玫瑰珠宝-玫瑰熊系列', '玫瑰熊 3D 中型项链', 'z19.png', '傻傻的爱你', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('130', '玫瑰珠宝-玫瑰经典系列', '花支 花枝 中型手链', 'z20.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('131', '玫瑰珠宝-幸运精灵系列', '戊（狗） 生肖 中型项链', 'z21.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('132', '玫瑰珠宝-幸运精灵系列', '亥（猪） 生肖 中型项链', 'z22.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('133', '玫瑰珠宝-幸运精灵系列', '酉（鸡） 生肖 中型项链', 'z23.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('134', '玫瑰珠宝-玫瑰经典系列', '玫瑰 盘扣 小型手链', 'z24.png', '傻傻的爱你', ' 1314.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('135', '玫瑰珠宝-玫瑰经典系列', '玫瑰 盘扣 小型耳饰', 'z25.png', '傻傻的爱你', ' 1314.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('136', '玫瑰珠宝-玫瑰经典系列', '玫瑰 盘扣 中型耳饰', 'z26.png', '想你的夜', '3999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('137', '玫瑰珠宝-玫瑰经典系列', '玫瑰 盘扣 中型耳饰', 'z27.png', '全世界宣布爱你', '8999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('138', '玫瑰珠宝-玫瑰经典系列', '玫瑰 盘扣 中型耳饰', 'z28.png', '全世界宣布爱你', '3999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('139', '玫瑰珠宝-生辰石系列', '射手座 镂空玫瑰 中型耳饰', 'z29.png', '全世界宣布爱你', '3999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('140', '玫瑰珠宝-生辰石系列', '摩羯座 镂空玫瑰 中型耳饰', 'z30.png', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('141', '玫瑰珠宝-生辰石系列', '水瓶座 镂空玫瑰 中型耳饰', 'z31.png', '全世界宣布爱你', '3999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('142', '玫瑰珠宝-经典永续系列', '加冕 六爪镶  50分钻戒', 'z32.png', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('143', '玫瑰珠宝-星座经典系列', '太阳-星环 狮子座守护星 中型手镯', 'z33.png', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('144', '玫瑰珠宝-星座经典系列', '金星-星环 金牛，天秤座守护星 中型手镯', 'z34.png', '全世界宣布爱你', '3999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('145', '玫瑰珠宝-星座经典系列', '冥王星-星环 天蝎座守护星 中型手镯', 'z35.png', '没有你，不能活', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('146', '玫瑰珠宝-星座经典系列', '木星-星环 射手座守护星 中型手镯', 'z36.png', '没有你，不能活', '3999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('147', '玫瑰珠宝-星座经典系列', '处女座 具象 大型吊坠', 'z37.png', '没有你，不能活', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('148', '玫瑰珠宝-经典永续系列', '时光无恒 214 中型项链', 'z38.png', '没有你，不能活', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('149', '玫瑰珠宝-经典永续系列', '时光无恒 365 中型项链', 'z39.png', '没有你，不能活', '3999.0', '520表白日', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('151', '玫瑰珠宝-经典永续系列', '永恒 四爪边镶 30分钻戒 ', 'z41.png', '全世界宣布爱你', '29999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('152', '玫瑰珠宝-经典永续系列', '永恒 四爪镶 50分钻戒 ', 'z42.png', '全世界宣布爱你', '39999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('153', '玫瑰珠宝-经典永续系列', '铭刻 女款镶钻 中型对戒', 'z43.png', '全世界宣布爱你', '39999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('154', '玫瑰珠宝-经典永续系列', '辛福的眼泪 玫瑰切工 30分钻戒', 'z44.png', '全世界宣布爱你', '21999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('157', '野兽派', '小熊的童真', 'p1.jpg', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('158', '野兽派', '小熊的童真', 'p2.gif', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('159', '野兽派', '小熊的童真', 'p3.jpg', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('160', '野兽派', '小熊的童真', 'p4.jpg', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('161', '野兽派', '小熊的童真', 'p5.jpg', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('162', '野兽派', '小熊的童真', 'p6.jpg', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('163', '野兽派', '小熊的童真', 'p7.jpg', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
INSERT INTO `table_product` VALUES ('164', '野兽派', '小熊的童真', 'p8.jpg', '全世界宣布爱你', '3999.0', '情人节', '是', '爱她就给她最好的！');
