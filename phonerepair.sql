/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : phonerepair

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 08/03/2018 14:57:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `cityId` int(11) NOT NULL,
  `provinceId` int(11) DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`cityId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, 1, '东城区');
INSERT INTO `city` VALUES (2, 1, '西城区');
INSERT INTO `city` VALUES (3, 1, '宣武区');
INSERT INTO `city` VALUES (4, 1, '崇文区');
INSERT INTO `city` VALUES (5, 1, '朝阳区');
INSERT INTO `city` VALUES (6, 1, '海淀区');
INSERT INTO `city` VALUES (7, 1, '丰台区');
INSERT INTO `city` VALUES (8, 1, '石景山区');
INSERT INTO `city` VALUES (9, 1, '门头沟区');
INSERT INTO `city` VALUES (10, 1, '昌平区');
INSERT INTO `city` VALUES (11, 1, '大兴区');
INSERT INTO `city` VALUES (12, 1, '怀柔区');
INSERT INTO `city` VALUES (13, 1, '密云县');
INSERT INTO `city` VALUES (14, 1, '平谷区');
INSERT INTO `city` VALUES (15, 1, '顺义区');
INSERT INTO `city` VALUES (16, 1, '通州区');
INSERT INTO `city` VALUES (17, 1, '延庆县');
INSERT INTO `city` VALUES (18, 2, '黄浦区');
INSERT INTO `city` VALUES (20, 2, '卢湾区');
INSERT INTO `city` VALUES (21, 2, '徐汇区');
INSERT INTO `city` VALUES (22, 2, '长宁区');
INSERT INTO `city` VALUES (23, 2, '静安区');
INSERT INTO `city` VALUES (24, 2, '普陀区');
INSERT INTO `city` VALUES (25, 2, '金山区');
INSERT INTO `city` VALUES (26, 2, '闸北区');
INSERT INTO `city` VALUES (27, 2, '虹口区');
INSERT INTO `city` VALUES (28, 2, '杨浦区');
INSERT INTO `city` VALUES (29, 2, '宝山区');
INSERT INTO `city` VALUES (30, 2, '闵行区');
INSERT INTO `city` VALUES (31, 2, '嘉定区');
INSERT INTO `city` VALUES (32, 2, '松江区');
INSERT INTO `city` VALUES (33, 2, '浦东新区');
INSERT INTO `city` VALUES (34, 2, '青浦县');
INSERT INTO `city` VALUES (35, 2, '奉贤县');
INSERT INTO `city` VALUES (36, 2, '南汇县');
INSERT INTO `city` VALUES (37, 2, '崇明县');
INSERT INTO `city` VALUES (38, 3, '和平区');
INSERT INTO `city` VALUES (39, 3, '河东区');
INSERT INTO `city` VALUES (40, 3, '河西区');
INSERT INTO `city` VALUES (41, 3, '河北区');
INSERT INTO `city` VALUES (42, 3, '南开区');
INSERT INTO `city` VALUES (43, 3, '红桥区');
INSERT INTO `city` VALUES (44, 3, '塘沽区');
INSERT INTO `city` VALUES (45, 3, '汉沽区');
INSERT INTO `city` VALUES (46, 4, '永川市');
INSERT INTO `city` VALUES (47, 4, '黔江区');
INSERT INTO `city` VALUES (48, 4, '涪陵区');
INSERT INTO `city` VALUES (49, 4, '万洲区');
INSERT INTO `city` VALUES (50, 5, '哈尔滨');
INSERT INTO `city` VALUES (51, 5, '齐齐哈尔');
INSERT INTO `city` VALUES (52, 5, '牡丹江');
INSERT INTO `city` VALUES (53, 6, '长春');
INSERT INTO `city` VALUES (54, 6, '吉林');
INSERT INTO `city` VALUES (55, 7, '沈阳');
INSERT INTO `city` VALUES (56, 7, '大连');
INSERT INTO `city` VALUES (57, 7, '锦州');
INSERT INTO `city` VALUES (58, 8, '呼和浩特');
INSERT INTO `city` VALUES (59, 8, '包头');
INSERT INTO `city` VALUES (60, 9, '银川');
INSERT INTO `city` VALUES (61, 10, '乌鲁木齐');
INSERT INTO `city` VALUES (62, 11, '西宁');
INSERT INTO `city` VALUES (63, 12, '兰州');
INSERT INTO `city` VALUES (64, 12, '天水');
INSERT INTO `city` VALUES (65, 13, '西安');
INSERT INTO `city` VALUES (66, 13, '宝鸡');
INSERT INTO `city` VALUES (67, 13, '延安');
INSERT INTO `city` VALUES (68, 14, '石家庄');
INSERT INTO `city` VALUES (69, 14, '保定');
INSERT INTO `city` VALUES (70, 15, '郑州');
INSERT INTO `city` VALUES (71, 15, '洛阳');
INSERT INTO `city` VALUES (72, 16, '济南');
INSERT INTO `city` VALUES (73, 16, '青岛');
INSERT INTO `city` VALUES (74, 16, '烟台');
INSERT INTO `city` VALUES (75, 17, '太原');
INSERT INTO `city` VALUES (76, 17, '大同');
INSERT INTO `city` VALUES (77, 18, '武汉');
INSERT INTO `city` VALUES (78, 19, '长沙');
INSERT INTO `city` VALUES (79, 20, '合肥');
INSERT INTO `city` VALUES (80, 20, '芜湖');
INSERT INTO `city` VALUES (81, 21, '南京');
INSERT INTO `city` VALUES (82, 22, '杭州');
INSERT INTO `city` VALUES (83, 23, '南昌');
INSERT INTO `city` VALUES (84, 24, '广州');
INSERT INTO `city` VALUES (85, 24, '深圳');
INSERT INTO `city` VALUES (86, 25, '南宁');
INSERT INTO `city` VALUES (87, 26, '福州');
INSERT INTO `city` VALUES (88, 26, '厦门');
INSERT INTO `city` VALUES (89, 27, '成都');
INSERT INTO `city` VALUES (90, 28, '昆明');
INSERT INTO `city` VALUES (91, 29, '贵阳');
INSERT INTO `city` VALUES (92, 30, '拉萨');
INSERT INTO `city` VALUES (93, 31, '海口');
INSERT INTO `city` VALUES (94, 31, '三亚');
INSERT INTO `city` VALUES (95, 32, '香港');
INSERT INTO `city` VALUES (96, 33, '澳门');
INSERT INTO `city` VALUES (97, 34, '台北');
INSERT INTO `city` VALUES (98, 34, '高雄');
INSERT INTO `city` VALUES (99, 34, '台中');
INSERT INTO `city` VALUES (100, 34, '台南');
INSERT INTO `city` VALUES (101, 34, '基隆');
INSERT INTO `city` VALUES (102, 34, '新竹');
INSERT INTO `city` VALUES (103, 1, '房山区');
INSERT INTO `city` VALUES (105, 3, '大港区');
INSERT INTO `city` VALUES (106, 3, '东丽区');
INSERT INTO `city` VALUES (107, 3, '西青区');
INSERT INTO `city` VALUES (108, 3, '津南区');
INSERT INTO `city` VALUES (109, 3, '北辰区');
INSERT INTO `city` VALUES (110, 3, '武清区');
INSERT INTO `city` VALUES (111, 3, '宝坻区');
INSERT INTO `city` VALUES (112, 3, '蓟 县');
INSERT INTO `city` VALUES (113, 3, '宁河县');
INSERT INTO `city` VALUES (114, 3, '静海县');
INSERT INTO `city` VALUES (115, 4, '渝中区');
INSERT INTO `city` VALUES (116, 4, '大渡口区');
INSERT INTO `city` VALUES (117, 4, '江北区');
INSERT INTO `city` VALUES (118, 4, '沙坪坝区');
INSERT INTO `city` VALUES (119, 4, '九龙坡区');
INSERT INTO `city` VALUES (120, 4, '南岸区');
INSERT INTO `city` VALUES (121, 4, '北碚区');
INSERT INTO `city` VALUES (122, 4, '万盛区');
INSERT INTO `city` VALUES (123, 4, '双桥区');
INSERT INTO `city` VALUES (124, 4, '渝北区');
INSERT INTO `city` VALUES (125, 4, '巴南区');
INSERT INTO `city` VALUES (126, 4, '长寿区');
INSERT INTO `city` VALUES (127, 5, '鹤岗');
INSERT INTO `city` VALUES (128, 5, '双鸭山');
INSERT INTO `city` VALUES (129, 5, '鸡西');
INSERT INTO `city` VALUES (130, 5, '大庆');
INSERT INTO `city` VALUES (131, 5, '伊春');
INSERT INTO `city` VALUES (132, 5, '佳木斯');
INSERT INTO `city` VALUES (133, 5, '七台河');
INSERT INTO `city` VALUES (134, 5, '黑河');
INSERT INTO `city` VALUES (135, 5, '绥化');
INSERT INTO `city` VALUES (136, 5, '大兴安岭地区');
INSERT INTO `city` VALUES (137, 6, '四平');
INSERT INTO `city` VALUES (138, 6, '辽源');
INSERT INTO `city` VALUES (139, 6, '通化');
INSERT INTO `city` VALUES (140, 6, '白山');
INSERT INTO `city` VALUES (141, 6, '松原');
INSERT INTO `city` VALUES (142, 6, '白城');
INSERT INTO `city` VALUES (143, 6, '延边朝鲜族自治州');
INSERT INTO `city` VALUES (144, 7, '鞍山');
INSERT INTO `city` VALUES (145, 7, '抚顺');
INSERT INTO `city` VALUES (146, 7, '本溪');
INSERT INTO `city` VALUES (147, 7, '丹东');
INSERT INTO `city` VALUES (148, 7, '葫芦岛');
INSERT INTO `city` VALUES (149, 7, '营口');
INSERT INTO `city` VALUES (150, 7, '盘锦');
INSERT INTO `city` VALUES (151, 7, '阜新');
INSERT INTO `city` VALUES (152, 7, '辽阳');
INSERT INTO `city` VALUES (153, 7, '铁岭');
INSERT INTO `city` VALUES (154, 7, '朝阳');
INSERT INTO `city` VALUES (155, 8, '乌海');
INSERT INTO `city` VALUES (156, 8, '赤峰');
INSERT INTO `city` VALUES (157, 8, '通辽');
INSERT INTO `city` VALUES (158, 8, '鄂尔多斯');
INSERT INTO `city` VALUES (160, 8, '乌兰察布盟');
INSERT INTO `city` VALUES (161, 8, '锡林郭勒盟');
INSERT INTO `city` VALUES (162, 8, '巴彦淖尔盟');
INSERT INTO `city` VALUES (163, 8, '阿拉善盟');
INSERT INTO `city` VALUES (164, 8, '兴安盟');
INSERT INTO `city` VALUES (165, 9, '石嘴山');
INSERT INTO `city` VALUES (166, 9, '吴忠');
INSERT INTO `city` VALUES (167, 9, '固原');
INSERT INTO `city` VALUES (168, 10, '克拉玛依');
INSERT INTO `city` VALUES (169, 10, '吐鲁番地区');
INSERT INTO `city` VALUES (170, 10, '哈密地区');
INSERT INTO `city` VALUES (171, 10, '和田地区');
INSERT INTO `city` VALUES (172, 10, '阿克苏地区');
INSERT INTO `city` VALUES (173, 10, '喀什地区');
INSERT INTO `city` VALUES (174, 10, '克孜勒苏柯尔克孜自治州');
INSERT INTO `city` VALUES (175, 10, '巴音郭楞蒙古自治州');
INSERT INTO `city` VALUES (176, 10, '昌吉回族自治州');
INSERT INTO `city` VALUES (177, 10, '博尔塔拉蒙古自治州');
INSERT INTO `city` VALUES (178, 10, '伊犁哈萨克自治州');
INSERT INTO `city` VALUES (179, 11, '海东地区');
INSERT INTO `city` VALUES (180, 11, '海北藏族自治州');
INSERT INTO `city` VALUES (181, 11, '黄南藏族自治州');
INSERT INTO `city` VALUES (182, 11, '海南藏族自治州');
INSERT INTO `city` VALUES (183, 11, '果洛藏族自治州');
INSERT INTO `city` VALUES (184, 11, '玉树藏族自治州');
INSERT INTO `city` VALUES (185, 11, '海西蒙古族藏族自治州');
INSERT INTO `city` VALUES (186, 12, '金昌');
INSERT INTO `city` VALUES (187, 12, '白银');
INSERT INTO `city` VALUES (188, 12, '嘉峪关');
INSERT INTO `city` VALUES (189, 12, '武 威 ');
INSERT INTO `city` VALUES (190, 12, '张掖');
INSERT INTO `city` VALUES (191, 12, '平凉');
INSERT INTO `city` VALUES (192, 12, '酒泉');
INSERT INTO `city` VALUES (193, 12, '庆阳');
INSERT INTO `city` VALUES (194, 12, '定西地区');
INSERT INTO `city` VALUES (195, 12, '陇南地区');
INSERT INTO `city` VALUES (196, 12, '甘南藏族自治州');
INSERT INTO `city` VALUES (197, 12, '临夏回族自治州');
INSERT INTO `city` VALUES (198, 13, '铜川');
INSERT INTO `city` VALUES (199, 13, '咸阳');
INSERT INTO `city` VALUES (200, 13, '渭南');
INSERT INTO `city` VALUES (201, 13, '汉中');
INSERT INTO `city` VALUES (202, 13, '榆林');
INSERT INTO `city` VALUES (203, 13, '安康');
INSERT INTO `city` VALUES (204, 13, '商洛');
INSERT INTO `city` VALUES (205, 14, '唐山');
INSERT INTO `city` VALUES (206, 14, '秦皇岛');
INSERT INTO `city` VALUES (207, 14, '邯郸');
INSERT INTO `city` VALUES (208, 14, '邢台');
INSERT INTO `city` VALUES (209, 14, '张家口');
INSERT INTO `city` VALUES (210, 14, '承德');
INSERT INTO `city` VALUES (211, 14, '沧州');
INSERT INTO `city` VALUES (212, 14, '廊坊');
INSERT INTO `city` VALUES (213, 14, '衡水');
INSERT INTO `city` VALUES (214, 15, '开封');
INSERT INTO `city` VALUES (215, 15, '平顶山');
INSERT INTO `city` VALUES (216, 15, '焦作');
INSERT INTO `city` VALUES (217, 15, '鹤壁');
INSERT INTO `city` VALUES (218, 15, '新乡');
INSERT INTO `city` VALUES (219, 15, '安阳');
INSERT INTO `city` VALUES (220, 15, '濮阳');
INSERT INTO `city` VALUES (221, 15, '许昌');
INSERT INTO `city` VALUES (222, 15, '漯河');
INSERT INTO `city` VALUES (223, 15, '三门峡');
INSERT INTO `city` VALUES (224, 15, '南阳');
INSERT INTO `city` VALUES (225, 15, '商丘');
INSERT INTO `city` VALUES (226, 15, '信阳');
INSERT INTO `city` VALUES (227, 15, '周口');
INSERT INTO `city` VALUES (228, 15, '驻马店');
INSERT INTO `city` VALUES (229, 16, '淄博');
INSERT INTO `city` VALUES (230, 16, '枣庄');
INSERT INTO `city` VALUES (231, 16, '东营');
INSERT INTO `city` VALUES (232, 16, '潍坊');
INSERT INTO `city` VALUES (233, 16, '威海');
INSERT INTO `city` VALUES (234, 16, '济宁');
INSERT INTO `city` VALUES (235, 16, '泰安');
INSERT INTO `city` VALUES (236, 16, '日照');
INSERT INTO `city` VALUES (237, 16, '莱芜');
INSERT INTO `city` VALUES (238, 16, '德州');
INSERT INTO `city` VALUES (239, 16, '临沂');
INSERT INTO `city` VALUES (240, 16, '聊城');
INSERT INTO `city` VALUES (241, 16, '滨州');
INSERT INTO `city` VALUES (242, 16, '菏泽');
INSERT INTO `city` VALUES (243, 17, '朔州');
INSERT INTO `city` VALUES (244, 17, '阳泉');
INSERT INTO `city` VALUES (245, 17, '长治');
INSERT INTO `city` VALUES (246, 17, '晋城');
INSERT INTO `city` VALUES (247, 17, '忻州');
INSERT INTO `city` VALUES (248, 17, '晋中');
INSERT INTO `city` VALUES (249, 17, '临汾');
INSERT INTO `city` VALUES (250, 17, '运城');
INSERT INTO `city` VALUES (251, 17, '吕梁地区');
INSERT INTO `city` VALUES (252, 18, '黄石');
INSERT INTO `city` VALUES (253, 18, '襄樊');
INSERT INTO `city` VALUES (254, 18, '十堰');
INSERT INTO `city` VALUES (255, 18, '荆州');
INSERT INTO `city` VALUES (256, 18, '宜昌');
INSERT INTO `city` VALUES (257, 18, '荆门');
INSERT INTO `city` VALUES (258, 18, '鄂州');
INSERT INTO `city` VALUES (259, 18, '孝感');
INSERT INTO `city` VALUES (260, 18, '黄冈');
INSERT INTO `city` VALUES (261, 18, '咸宁');
INSERT INTO `city` VALUES (262, 18, '随州');
INSERT INTO `city` VALUES (263, 18, '恩施土家族苗族自治州');
INSERT INTO `city` VALUES (264, 19, '株洲');
INSERT INTO `city` VALUES (265, 19, '湘潭');
INSERT INTO `city` VALUES (266, 19, '衡阳');
INSERT INTO `city` VALUES (267, 19, '邵阳');
INSERT INTO `city` VALUES (268, 19, '岳阳');
INSERT INTO `city` VALUES (269, 19, '常德');
INSERT INTO `city` VALUES (270, 19, '张家界');
INSERT INTO `city` VALUES (271, 19, '益阳');
INSERT INTO `city` VALUES (272, 19, '郴州');
INSERT INTO `city` VALUES (273, 19, '永州');
INSERT INTO `city` VALUES (274, 19, '怀化');
INSERT INTO `city` VALUES (275, 19, '娄底');
INSERT INTO `city` VALUES (276, 19, '湘西土家族苗族自治州');
INSERT INTO `city` VALUES (277, 20, '蚌埠');
INSERT INTO `city` VALUES (278, 20, '淮南');
INSERT INTO `city` VALUES (279, 20, '马鞍山');
INSERT INTO `city` VALUES (280, 20, '淮北');
INSERT INTO `city` VALUES (281, 20, '铜陵');
INSERT INTO `city` VALUES (282, 20, '安庆');
INSERT INTO `city` VALUES (283, 20, '黄山');
INSERT INTO `city` VALUES (284, 20, '滁州');
INSERT INTO `city` VALUES (285, 20, '阜阳');
INSERT INTO `city` VALUES (286, 20, '宿州');
INSERT INTO `city` VALUES (287, 20, '巢湖');
INSERT INTO `city` VALUES (288, 20, '六安');
INSERT INTO `city` VALUES (289, 20, '亳州');
INSERT INTO `city` VALUES (290, 20, '池州');
INSERT INTO `city` VALUES (291, 20, '宣城');
INSERT INTO `city` VALUES (292, 21, '徐州');
INSERT INTO `city` VALUES (293, 21, '连云港');
INSERT INTO `city` VALUES (294, 21, '淮安');
INSERT INTO `city` VALUES (295, 21, '宿迁');
INSERT INTO `city` VALUES (296, 21, '盐城');
INSERT INTO `city` VALUES (297, 21, '扬州');
INSERT INTO `city` VALUES (298, 21, '泰州');
INSERT INTO `city` VALUES (299, 21, '南通');
INSERT INTO `city` VALUES (300, 21, '镇江');
INSERT INTO `city` VALUES (301, 21, '常州');
INSERT INTO `city` VALUES (302, 21, '无锡');
INSERT INTO `city` VALUES (303, 21, '苏州');
INSERT INTO `city` VALUES (304, 22, '宁波');
INSERT INTO `city` VALUES (305, 22, '温州');
INSERT INTO `city` VALUES (306, 22, '嘉兴');
INSERT INTO `city` VALUES (307, 22, '湖州');
INSERT INTO `city` VALUES (308, 22, '绍兴');
INSERT INTO `city` VALUES (309, 22, '金华');
INSERT INTO `city` VALUES (310, 22, '衢州');
INSERT INTO `city` VALUES (311, 22, '舟山');
INSERT INTO `city` VALUES (312, 22, '台州');
INSERT INTO `city` VALUES (313, 22, '丽水');
INSERT INTO `city` VALUES (314, 23, '景德镇');
INSERT INTO `city` VALUES (315, 23, '萍乡');
INSERT INTO `city` VALUES (316, 23, '新余');
INSERT INTO `city` VALUES (317, 23, '九江');
INSERT INTO `city` VALUES (318, 23, '鹰潭');
INSERT INTO `city` VALUES (319, 23, '赣州');
INSERT INTO `city` VALUES (320, 23, '吉安');
INSERT INTO `city` VALUES (321, 23, '宜春');
INSERT INTO `city` VALUES (322, 23, '抚州');
INSERT INTO `city` VALUES (323, 23, '上饶');
INSERT INTO `city` VALUES (324, 24, '珠海');
INSERT INTO `city` VALUES (325, 24, '汕头');
INSERT INTO `city` VALUES (326, 24, '韶关');
INSERT INTO `city` VALUES (327, 24, '河源');
INSERT INTO `city` VALUES (328, 24, '梅州');
INSERT INTO `city` VALUES (329, 24, '惠州');
INSERT INTO `city` VALUES (330, 24, '汕尾');
INSERT INTO `city` VALUES (331, 24, '东莞');
INSERT INTO `city` VALUES (332, 24, '中山');
INSERT INTO `city` VALUES (333, 24, '江门');
INSERT INTO `city` VALUES (334, 24, '佛山');
INSERT INTO `city` VALUES (335, 24, '阳江');
INSERT INTO `city` VALUES (336, 24, '湛江');
INSERT INTO `city` VALUES (337, 24, '茂名');
INSERT INTO `city` VALUES (338, 24, '肇庆');
INSERT INTO `city` VALUES (339, 24, '清远');
INSERT INTO `city` VALUES (340, 24, '潮州');
INSERT INTO `city` VALUES (341, 24, '揭阳');
INSERT INTO `city` VALUES (342, 24, '云浮');
INSERT INTO `city` VALUES (343, 25, '柳州');
INSERT INTO `city` VALUES (344, 25, '桂林');
INSERT INTO `city` VALUES (345, 25, '梧州');
INSERT INTO `city` VALUES (346, 25, '北海');
INSERT INTO `city` VALUES (347, 25, '防城港');
INSERT INTO `city` VALUES (348, 25, '钦州');
INSERT INTO `city` VALUES (349, 25, '贵港');
INSERT INTO `city` VALUES (350, 25, '玉林');
INSERT INTO `city` VALUES (351, 25, '百色');
INSERT INTO `city` VALUES (352, 25, '贺州');
INSERT INTO `city` VALUES (353, 25, '河池');
INSERT INTO `city` VALUES (354, 25, '来宾');
INSERT INTO `city` VALUES (355, 25, '崇左');
INSERT INTO `city` VALUES (356, 26, '三明');
INSERT INTO `city` VALUES (357, 26, '莆田');
INSERT INTO `city` VALUES (358, 26, '泉州');
INSERT INTO `city` VALUES (359, 26, '漳州');
INSERT INTO `city` VALUES (360, 26, '南平');
INSERT INTO `city` VALUES (361, 26, '龙岩');
INSERT INTO `city` VALUES (362, 26, '宁德');
INSERT INTO `city` VALUES (363, 27, '自贡');
INSERT INTO `city` VALUES (364, 27, '攀枝花');
INSERT INTO `city` VALUES (365, 27, '泸州');
INSERT INTO `city` VALUES (366, 27, '德阳');
INSERT INTO `city` VALUES (367, 27, '绵阳');
INSERT INTO `city` VALUES (368, 27, '广元');
INSERT INTO `city` VALUES (369, 27, '遂宁');
INSERT INTO `city` VALUES (370, 27, '内江');
INSERT INTO `city` VALUES (371, 27, '乐山');
INSERT INTO `city` VALUES (372, 27, '南充');
INSERT INTO `city` VALUES (373, 27, '宜宾');
INSERT INTO `city` VALUES (374, 27, '广安');
INSERT INTO `city` VALUES (375, 27, '达州');
INSERT INTO `city` VALUES (376, 27, '巴中');
INSERT INTO `city` VALUES (377, 27, '雅安');
INSERT INTO `city` VALUES (378, 27, '眉山');
INSERT INTO `city` VALUES (379, 27, '资阳');
INSERT INTO `city` VALUES (380, 27, '阿坝藏族羌族自治州');
INSERT INTO `city` VALUES (381, 27, '甘孜藏族自治州');
INSERT INTO `city` VALUES (382, 27, '凉山彝族自治州');
INSERT INTO `city` VALUES (383, 28, '曲靖');
INSERT INTO `city` VALUES (384, 28, '玉溪');
INSERT INTO `city` VALUES (385, 28, '保山');
INSERT INTO `city` VALUES (386, 28, '昭通');
INSERT INTO `city` VALUES (387, 28, '思茅地区');
INSERT INTO `city` VALUES (388, 28, '临沧地区');
INSERT INTO `city` VALUES (389, 28, '丽江');
INSERT INTO `city` VALUES (390, 28, '文山壮族苗族自治州');
INSERT INTO `city` VALUES (391, 28, '红河哈尼族彝族自治州');
INSERT INTO `city` VALUES (392, 28, '西双版纳傣族自治州');
INSERT INTO `city` VALUES (393, 28, '楚雄彝族自治州');
INSERT INTO `city` VALUES (394, 28, '大理白族自治州');
INSERT INTO `city` VALUES (395, 28, '德宏傣族景颇族自治州');
INSERT INTO `city` VALUES (396, 28, '怒江傈傈族自治州');
INSERT INTO `city` VALUES (397, 28, '迪庆藏族自治州');
INSERT INTO `city` VALUES (398, 29, '六盘水');
INSERT INTO `city` VALUES (399, 29, '遵义');
INSERT INTO `city` VALUES (400, 29, '安顺');
INSERT INTO `city` VALUES (401, 29, '铜仁地区');
INSERT INTO `city` VALUES (402, 29, '毕节地区');
INSERT INTO `city` VALUES (403, 29, '黔西南布依族苗族自治州');
INSERT INTO `city` VALUES (404, 29, '黔东南苗族侗族自治州');
INSERT INTO `city` VALUES (405, 29, '黔南布依族苗族自治州');
INSERT INTO `city` VALUES (406, 30, '那曲地区');
INSERT INTO `city` VALUES (407, 30, '昌都地区');
INSERT INTO `city` VALUES (408, 30, '山南地区');
INSERT INTO `city` VALUES (409, 30, '日喀则地区');
INSERT INTO `city` VALUES (410, 30, '阿里地区');
INSERT INTO `city` VALUES (411, 30, '林芝地区');
INSERT INTO `city` VALUES (412, 20, '蒙城');
INSERT INTO `city` VALUES (413, 20, '宁国');
INSERT INTO `city` VALUES (414, 20, '桐城');
INSERT INTO `city` VALUES (415, 26, '福清');
INSERT INTO `city` VALUES (416, 26, '建瓯');
INSERT INTO `city` VALUES (417, 26, '晋江');
INSERT INTO `city` VALUES (418, 26, '南安');
INSERT INTO `city` VALUES (419, 26, '邵武');
INSERT INTO `city` VALUES (420, 26, '石狮');
INSERT INTO `city` VALUES (421, 26, '仙游');
INSERT INTO `city` VALUES (422, 12, '嘉峪');
INSERT INTO `city` VALUES (423, 12, '武威');
INSERT INTO `city` VALUES (424, 24, '花都');
INSERT INTO `city` VALUES (425, 24, '开平');
INSERT INTO `city` VALUES (426, 24, '南海');
INSERT INTO `city` VALUES (427, 24, '顺德');
INSERT INTO `city` VALUES (428, 24, '台山');
INSERT INTO `city` VALUES (429, 24, '增城');
INSERT INTO `city` VALUES (431, 24, '市梅');
INSERT INTO `city` VALUES (432, 29, '都匀');
INSERT INTO `city` VALUES (433, 29, '贵恙');
INSERT INTO `city` VALUES (434, 29, '凯里');
INSERT INTO `city` VALUES (435, 29, '铜仁');
INSERT INTO `city` VALUES (436, 14, '霸州');
INSERT INTO `city` VALUES (437, 14, '青县');
INSERT INTO `city` VALUES (438, 14, '任丘');
INSERT INTO `city` VALUES (439, 14, '涿州');
INSERT INTO `city` VALUES (440, 18, '安陆');
INSERT INTO `city` VALUES (441, 18, '恩施');
INSERT INTO `city` VALUES (442, 18, '汉口');
INSERT INTO `city` VALUES (443, 18, '汉阳');
INSERT INTO `city` VALUES (444, 18, '潜江');
INSERT INTO `city` VALUES (445, 18, '仙桃');
INSERT INTO `city` VALUES (446, 18, '株州');
INSERT INTO `city` VALUES (447, 19, '株州');
INSERT INTO `city` VALUES (448, 19, '邵东');
INSERT INTO `city` VALUES (449, 6, '高新');
INSERT INTO `city` VALUES (450, 6, '延吉');
INSERT INTO `city` VALUES (451, 6, '梅河口');
INSERT INTO `city` VALUES (452, 21, '常熟');
INSERT INTO `city` VALUES (453, 21, '丹阳');
INSERT INTO `city` VALUES (454, 21, '海门');
INSERT INTO `city` VALUES (455, 21, '江都');
INSERT INTO `city` VALUES (456, 21, '江阴');
INSERT INTO `city` VALUES (457, 21, '靖江');
INSERT INTO `city` VALUES (458, 21, '昆山');
INSERT INTO `city` VALUES (459, 21, '溧阳');
INSERT INTO `city` VALUES (460, 21, '太仓');
INSERT INTO `city` VALUES (461, 21, '泰州华');
INSERT INTO `city` VALUES (462, 21, '吴江');
INSERT INTO `city` VALUES (463, 21, '吴县');
INSERT INTO `city` VALUES (464, 21, '宜兴');
INSERT INTO `city` VALUES (465, 21, '张家港');
INSERT INTO `city` VALUES (466, 23, '高安');
INSERT INTO `city` VALUES (467, 7, '瓦房店');
INSERT INTO `city` VALUES (468, 8, '巴彦淖尔');
INSERT INTO `city` VALUES (469, 8, '呼伦贝尔');
INSERT INTO `city` VALUES (470, 8, '集宁');
INSERT INTO `city` VALUES (471, 8, '乌兰浩特');
INSERT INTO `city` VALUES (472, 8, '锡林浩特');
INSERT INTO `city` VALUES (473, 11, '格尔木');
INSERT INTO `city` VALUES (474, 16, '高密');
INSERT INTO `city` VALUES (475, 16, '荷泽');
INSERT INTO `city` VALUES (476, 16, '淮坊');
INSERT INTO `city` VALUES (477, 16, '即墨');
INSERT INTO `city` VALUES (478, 16, '胶南');
INSERT INTO `city` VALUES (479, 16, '莱州');
INSERT INTO `city` VALUES (480, 16, '林沂');
INSERT INTO `city` VALUES (481, 16, '临忻');
INSERT INTO `city` VALUES (482, 16, '龙口');
INSERT INTO `city` VALUES (483, 16, '蓬莱');
INSERT INTO `city` VALUES (484, 16, '青州');
INSERT INTO `city` VALUES (485, 16, '乳山');
INSERT INTO `city` VALUES (486, 16, '寿光');
INSERT INTO `city` VALUES (487, 16, '滕州');
INSERT INTO `city` VALUES (488, 16, '文登');
INSERT INTO `city` VALUES (489, 16, '招远');
INSERT INTO `city` VALUES (491, 17, '河津');
INSERT INTO `city` VALUES (492, 17, '侯马');
INSERT INTO `city` VALUES (494, 17, '孝义');
INSERT INTO `city` VALUES (495, 17, '榆次');
INSERT INTO `city` VALUES (496, 13, '韩城');
INSERT INTO `city` VALUES (497, 27, '广汉');
INSERT INTO `city` VALUES (498, 27, '锦阳');
INSERT INTO `city` VALUES (499, 27, '西昌');
INSERT INTO `city` VALUES (500, 10, '阿克苏');
INSERT INTO `city` VALUES (501, 10, '昌吉');
INSERT INTO `city` VALUES (502, 10, '哈密');
INSERT INTO `city` VALUES (503, 10, '和田');
INSERT INTO `city` VALUES (504, 10, '喀什');
INSERT INTO `city` VALUES (505, 10, '克拉马依');
INSERT INTO `city` VALUES (506, 10, '库尔勒');
INSERT INTO `city` VALUES (507, 10, '石河子');
INSERT INTO `city` VALUES (508, 10, '吐鲁番');
INSERT INTO `city` VALUES (509, 10, '乌市');
INSERT INTO `city` VALUES (510, 10, '奎屯');
INSERT INTO `city` VALUES (511, 10, '伊犁');
INSERT INTO `city` VALUES (512, 10, '伊宁');
INSERT INTO `city` VALUES (513, 28, '大理');
INSERT INTO `city` VALUES (514, 22, '慈溪');
INSERT INTO `city` VALUES (515, 22, '东阳');
INSERT INTO `city` VALUES (516, 22, '奉化');
INSERT INTO `city` VALUES (517, 22, '乐清');
INSERT INTO `city` VALUES (518, 22, '临安');
INSERT INTO `city` VALUES (519, 22, '临海');
INSERT INTO `city` VALUES (520, 22, '平湖');
INSERT INTO `city` VALUES (521, 22, '瑞安');
INSERT INTO `city` VALUES (522, 22, '上虞');
INSERT INTO `city` VALUES (523, 22, '嵊州');
INSERT INTO `city` VALUES (524, 22, '温岭');
INSERT INTO `city` VALUES (525, 22, '义乌');
INSERT INTO `city` VALUES (526, 22, '永康');
INSERT INTO `city` VALUES (527, 22, '余姚');
INSERT INTO `city` VALUES (528, 22, '诸暨');
INSERT INTO `city` VALUES (529, 22, '新昌');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `price` double(10, 0) DEFAULT NULL,
  `sstate` int(11) DEFAULT 0,
  `ustate` int(11) DEFAULT 0,
  `date` date DEFAULT NULL,
  `fault` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `fk_uid`(`uid`) USING BTREE,
  INDEX `fk_mid`(`sid`) USING BTREE,
  CONSTRAINT `fk_mid` FOREIGN KEY (`sid`) REFERENCES `store` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('06633bf576ed46408e2deb0236aa2f39', 10, 62, 600, 1, 1, '2017-10-12', 'oppo主板坏掉');
INSERT INTO `orders` VALUES ('1f29071177864c97a59b3cc3c21d4bfe', 9, 62, 300, 1, 1, '2017-10-12', '华为屏坏');
INSERT INTO `orders` VALUES ('22', 8, 88, 210, 1, 0, '2017-03-27', '尾插+贴膜');
INSERT INTO `orders` VALUES ('27', 3, 87, 160, 1, 0, '2017-01-05', '刷机换屏');
INSERT INTO `orders` VALUES ('29', 9, 77, 100, 1, 1, '2017-04-12', '刷机');
INSERT INTO `orders` VALUES ('30', 8, 77, 120, 1, 1, '2017-03-14', '刷机贴膜');
INSERT INTO `orders` VALUES ('31', 9, 77, 150, 1, 0, '2017-03-03', '尾插贴膜');
INSERT INTO `orders` VALUES ('345b62261dde46db9dfbd5fe03a5747a', 3, 55, 200, 1, 1, '2017-10-31', '小米屏坏');
INSERT INTO `orders` VALUES ('3899f2a766e64f85950188fb7cb49ef1', 3, 65, NULL, 0, 0, '2017-10-16', NULL);
INSERT INTO `orders` VALUES ('40fd02f151d248cb9860509a03b41a8d', 10, 70, NULL, 0, 0, '2017-10-10', NULL);
INSERT INTO `orders` VALUES ('428d23ef8da94db796f21ee74e4018f6', 3, 65, 200, 1, 1, '2017-10-16', 'oppo屏坏');
INSERT INTO `orders` VALUES ('5a230f84c6454f17b0fb1a3def6dbcc5', 10, 63, 200, 1, 1, '2017-10-12', 'oppo屏幕坏了');
INSERT INTO `orders` VALUES ('63d49a9f54fc4d80bb03fd6e5daff05f', 2, 60, NULL, 0, 0, '2017-10-16', NULL);
INSERT INTO `orders` VALUES ('6893a8cdc192403dbe132d51b2be30f4', 2, 55, 200, 1, 1, '2017-10-11', '华为屏坏');
INSERT INTO `orders` VALUES ('7305211df6ae487fb724a5580cb3dfb5', 9, 62, 200, 1, 1, '2017-10-12', 'vivo贴膜');
INSERT INTO `orders` VALUES ('7e2dac9facf145b8a6982eeca0c4ed81', 13, 62, 300, 1, 1, '2017-10-16', '华为ping坏');
INSERT INTO `orders` VALUES ('85652ee80695424ca6e45246630717a8', 10, 70, NULL, 0, 0, '2017-10-10', NULL);
INSERT INTO `orders` VALUES ('90c1f98aabd54303852f16c2724c3944', 2, 57, 300, 1, 1, '2017-10-11', 'vivo屏坏');
INSERT INTO `orders` VALUES ('95b0a7ac613f4cc38c2baca8e4194dbb', 10, 70, 600, 1, 1, '2017-10-10', '修主板');
INSERT INTO `orders` VALUES ('a0f1344cb4e84ebda03ab3436e7f8183', 12, 62, 700, 1, 1, '2017-10-16', 'oppo屏坏');
INSERT INTO `orders` VALUES ('a2db5b9b241e4b72b48c0b664112a3a2', 9, 71, 500, 1, 1, '2017-10-10', 'oppo贴膜');
INSERT INTO `orders` VALUES ('bff0dcf22eb54de9b5ba100cfd40bbe2', 4, 62, 230, 1, 1, '2017-10-16', 'vivo屏坏');
INSERT INTO `orders` VALUES ('d072cdf8def84287a33f2e623dde9604', 2, 60, NULL, 0, 0, '2017-10-16', NULL);
INSERT INTO `orders` VALUES ('e061224fd5d6431ea05e8d30266ec0ed', 8, 69, 100, 1, 1, '2017-10-10', 'oppo贴膜');
INSERT INTO `orders` VALUES ('eea0dfb8de9a4b2587618a4fa4079b85', 2, 56, 600, 1, 1, '2017-10-11', 'oppo屏坏');
INSERT INTO `orders` VALUES ('f5ff3abb02cb4e6f97e4bbc9c0e428dd', 2, 57, 600, 1, 1, '2017-10-11', 'oppo屏坏');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `provinceId` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`provinceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, '北京');
INSERT INTO `province` VALUES (2, '上海');
INSERT INTO `province` VALUES (3, '天津');
INSERT INTO `province` VALUES (4, '重庆');
INSERT INTO `province` VALUES (5, '黑龙江');
INSERT INTO `province` VALUES (6, '吉林');
INSERT INTO `province` VALUES (7, '辽宁');
INSERT INTO `province` VALUES (8, '内蒙古');
INSERT INTO `province` VALUES (9, '宁夏');
INSERT INTO `province` VALUES (10, '新疆');
INSERT INTO `province` VALUES (11, '青海');
INSERT INTO `province` VALUES (12, '甘肃');
INSERT INTO `province` VALUES (13, '陕西');
INSERT INTO `province` VALUES (14, '河北');
INSERT INTO `province` VALUES (15, '河南');
INSERT INTO `province` VALUES (16, '山东');
INSERT INTO `province` VALUES (17, '山西');
INSERT INTO `province` VALUES (18, '湖北');
INSERT INTO `province` VALUES (19, '湖南');
INSERT INTO `province` VALUES (20, '安徽');
INSERT INTO `province` VALUES (21, '江苏');
INSERT INTO `province` VALUES (22, '浙江');
INSERT INTO `province` VALUES (23, '江西');
INSERT INTO `province` VALUES (24, '广东');
INSERT INTO `province` VALUES (25, '广西');
INSERT INTO `province` VALUES (26, '福建');
INSERT INTO `province` VALUES (27, '四川');
INSERT INTO `province` VALUES (28, '云南');
INSERT INTO `province` VALUES (29, '贵州');
INSERT INTO `province` VALUES (30, '西藏');
INSERT INTO `province` VALUES (31, '海南');
INSERT INTO `province` VALUES (32, '香港');
INSERT INTO `province` VALUES (33, '澳门');
INSERT INTO `province` VALUES (34, '台湾');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `susername` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spassword` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `saddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '/phoneRepair/uploadstore/2017-9-27/1.jpg',
  `stime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `smajor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (55, '18564215690', '123456', '乐乐维修', '北京市昌平区府学路金五星市场一层66号柜台', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。', '苹果 三星');
INSERT INTO `store` VALUES (56, '18963664555', '123456', '天成维修', '北京市昌平区回龙观西大街万意百货 ', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '专业维修中心。各种品牌手机现场维修，主营各种手机换屏，专业爆屏修复，一体屏现场加工制作，解锁，刷机升级，不开机，不充电，按键不灵，主板维修等等。专注维修各种手机疑难杂症，回收手机，苹果主板。微信电话号同步。', '苹果-三星-小米');
INSERT INTO `store` VALUES (57, '17793656553', '123456', '信达维修', '北京市昌平区西关村', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机维修，解锁，刷机有需要的联系我，各种手机疑难问题，欢迎咨询', '苹果-三星-小米');
INSERT INTO `store` VALUES (60, '17796586555', '123456', '苹果专业维修', '北京市朝阳区朝新嘉园东里-三区', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '主要经营：苹果、华为 、 小米、努比亚、乐视 、魅族 中兴 酷派 VIVO等\r\n内屏碎、外屏碎、屏幕进水、外壳变形、开机键不灵敏、音量键不灵敏、HOME主屏幕按键、无线上不了网、无线信号不强、听筒有杂音、话筒没声音、手机不能充电、感光失灵、GPS不定位等，现在来电预约立有优惠', '苹果');
INSERT INTO `store` VALUES (62, '17796368888', '123456', '马师傅维修店', '北京市朝阳区呼家楼地铁旁【东三环北30号】紫荆豪庭B座6H-5', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '三星手机维修： 没信号，死机，黑屏，不开机，进水处理，充不了电，无音，不读卡 ，屏幕不灵活，按键失灵等等问题屏幕摔碎、排线断裂、主板烧坏、进水、触摸屏失灵、 花屏、喇叭无声、听筒无声音、USB无法充电、开机定屏、不启动等、晶振等均可更换原厂配件.', '苹果-三星-小米');
INSERT INTO `store` VALUES (63, '17793066688', '123456', '三毛维修店', '北京市朝阳区北京市朝阳区朝外大街26号雅宝商城北门', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '维修苹果，三星，小米等等各种高中低端手机，配件大全，同时批发配件。本人常年从事手机维修业务，有20多年的维修经验，欢迎新老客户惠顾，招收学员。', '苹果-三星-小米');
INSERT INTO `store` VALUES (64, '17796364023', '123456', '小薇维修店', '北京市朝阳区常营万象新天四区411楼底商', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '本店只解决软件系统问题，硬件损坏，进水不修。如果你的手机现在越来越卡，开机都费劲，您的手机该做系统了。如果您的手机耗电太快，内置软件太多，都可以帮您解决，手机系统崩溃，变砖开不了机，送到售后都不修，您可以拿给我，只要不是硬件损坏，百分之九十可以修好。智能机做系统一律50，获取root权限30。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (65, '17796326996', '123456', '威威维修', '北京市朝阳区莱太花卉女人街', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。', '苹果-三星-小米');
INSERT INTO `store` VALUES (66, '17796359646', '123456', '益华数码', '北京市朝阳区国贸桥东南角大北写字楼124', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '专业维修中心。各种品牌手机现场维修，主营各种手机换屏，专业爆屏修复，一体屏现场加工制作，解锁，刷机升级，不开机，不充电，按键不灵，主板维修等等。专注维修各种手机疑难杂症，回收手机，苹果主板。微信电话号同步。', '苹果-三星-小米');
INSERT INTO `store` VALUES (67, '17796364589', '123456', '凯东维修', '北京市朝阳区朝阳公园西门 258市场 麦子店', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机维修，解锁，刷机有需要的联系我，各种手机疑难问题，欢迎咨询', '苹果-三星-小米');
INSERT INTO `store` VALUES (68, '17787964623', '123456', '专业手机维修', '北京市朝阳区三里屯SOHO商场5号楼B1-553', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '苹果系列专业维修原装屏幕主板维修进水抢修！OPPO、vivo手机换屏幕换电池换尾插不不充电华为小米手机换屏幕修主板修进水不充电发热等故障。三星酷派联想中兴国产手机换屏幕换原装电池修进水等故障', '苹果-三星-小米');
INSERT INTO `store` VALUES (69, '17777653156', '123456', '轩云手机店', '上海市浦东新区川沙路4825号现代广场5楼手机维修服务中心荆豪庭B座6H-5', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '苹果换屏、苹果内存扩容、进水处理、电池更换、无wifi、无蓝牙、没信号、死机开不了机、home键 开机键没反应、耳机没声音、静音键 音量键不管用、后壳更换、不充电、连不上电脑、白苹果修复、主板维修。', '苹果-三星-小米');
INSERT INTO `store` VALUES (70, '13120506565', '123456', 'OK维修', '上海市浦东新区金桥镇长岛路1398弄17号门面店', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (71, '13120596363', '123456', '飞翔手机维修中心', '上海市浦东新区长岛路1398弄17号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (72, '13120685689', '123456', '信达通信', '上海市浦东新区陆家嘴 崂山路689号513室', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (73, '13120776532', '123456', '瑞达维修', '上海市浦东新区川沙路3703号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (74, '13120867456', '123456', '志伟手机', '上海市浦东新区浦东新区锦安东路458弄15号502室', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (75, '13120955655', '123456', '手机专业维修', '上海市浦东新区浦东新区东陆路1016号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (76, '13122049656', '123456', '天成维修', '上海市浦东新区八佰伴 南泉北路1015号102室', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (77, '13122136963', '123456', '富刚维修', '上海市浦东新区东方路124号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (78, '13120515656', '123456', '小徐维修', '上海市浦东新区金桥 金桥路2690号星语通信', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (79, '13120606636', '123456', '宏达手机', '上海市虹口区宝安支路11号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (80, '13120786533', '123456', '长青维修', '上海市虹口区虬江路525号海正(盛畅)数码广场二楼A275室', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (81, '13120969898', '123456', '金大牙手机维修', '上海市虹口区四平路新建路203号7287室', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (82, '13122232563', '123456', '易达维修', '上海市虹口区周家嘴路舟山路东余杭路964号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (83, '13120525656', '123456', '弘伟手机维修', '上海市虹口区四平路775弄2号2205室（天宝华庭商务楼）', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (84, '13120535656', '123456', '手机专业维修', '上海市虹口区密云路280号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (85, '13120625566', '123456', '异客维修', '上海市虹口区凉城路384号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (86, '13120546666', '123456', '大郎手机维修', '上海市虹口区物华路爱家大厦', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (87, '13155265432', '123456', '思远手机维修', '上海市虹口区凉城路356号', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (88, '13155656326', '123456', '啊佟维修', '上海市虹口区银欣路38号803室', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (89, '13156569632', '123456', '诚信手机维修', '上海市虹口区玉田路408号101室', '\\phoneRepair\\upload\\store\\2017-9-27\\1.jpg', '周二-周日9:00-19:00', '手机专业维修中心，各种品牌手机解锁，刷机升级，不开机，不充电，按键不灵，主板维修等。回收手机，微信电话号同步。修好付款，解决不了不要钱！', '苹果-三星-小米');
INSERT INTO `store` VALUES (95, '15101371030', '123456', '马治翡维修店', '北京市昌平区中软国际', '\\phoneRepair\\upload\\store\\2017-10-16\\cae7bfed63f04572baafd9c04a30372d.jpg', '周二-周日9:00-19:00', '华为贴膜,换屏', '华为');
INSERT INTO `store` VALUES (96, '18877554422', '123456789', '卡卡维修', '北京市昌平区邓庄', '\\phoneRepair\\upload\\store\\2017-10-16\\cae7bfed63f04572baafd9c04a30372d.jpg', '周二-周日9:00-19:00', 'oppo换屏,贴膜', '华为');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) DEFAULT 100,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '15103962352', '123456789', 100, '大师傅');
INSERT INTO `user` VALUES (3, '15112365478', '123456789', 100, '曹先生');
INSERT INTO `user` VALUES (4, '13356893566', '123456789', 155, '王二');
INSERT INTO `user` VALUES (5, '18899996666', '123456789', 100, '王大');
INSERT INTO `user` VALUES (6, '17789603564', '123456789', 100, '张十三');
INSERT INTO `user` VALUES (7, '17789636395', '123456789', 100, '行三');
INSERT INTO `user` VALUES (8, '15699665466', '123456789', 100, '李四');
INSERT INTO `user` VALUES (9, '13145681203', '123456789', 100, '万古');
INSERT INTO `user` VALUES (10, '13134856566', '123456789', 100, '阿萨');
INSERT INTO `user` VALUES (11, '15735104507', '123456789', 100, '薛雅芳');
INSERT INTO `user` VALUES (12, '17745322658', '123456789', 100, '卡卡');
INSERT INTO `user` VALUES (13, '17897654356', '123456789', 100, '小明');
INSERT INTO `user` VALUES (14, '15535809089', '123456789', 100, '薛雅芳');

SET FOREIGN_KEY_CHECKS = 1;
