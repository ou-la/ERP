/*
 Navicat Premium Data Transfer

 Source Server         : 迦勒底
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : localhost:3306
 Source Schema         : erp

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : 65001

 Date: 26/04/2019 00:41:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bill_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单ID',
  `bill_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单类型 1：输出 2：采购 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `business_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商家ID',
  `business_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商家名称',
  `business_linkman` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商家联系人',
  `business_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商家联系电话',
  `business_contact_another` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其他联系方式',
  `business_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商家地址',
  `business_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商家类型',
  PRIMARY KEY (`business_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `department_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '部门ID',
  `department_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'b部门名称',
  `staff_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工ID',
  `staff_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工姓名',
  `staff_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工状态：0：离职 1：实习 2转正',
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for expenditure
-- ----------------------------
DROP TABLE IF EXISTS `expenditure`;
CREATE TABLE `expenditure`  (
  `expenditure_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '支出账单ID',
  `bill_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '平时账单ID',
  `bill_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '账单类型',
  `expenditure_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '账单支出金额',
  `expenditure_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '支出汇总',
  PRIMARY KEY (`expenditure_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for export
-- ----------------------------
DROP TABLE IF EXISTS `export`;
CREATE TABLE `export`  (
  `bill_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '出库ID',
  `bill_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单类型：输出',
  `export_staff` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '输出员工',
  `export_commodity` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '输出商品',
  `export_commodity_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品数量',
  `export_commodity_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品单价',
  `export_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '总价',
  `export_date` datetime NULL DEFAULT NULL COMMENT '输出订单日期',
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of export
-- ----------------------------
INSERT INTO `export` VALUES ('1', '出库', '石悦', '传承结晶', '10', '40', '400', '2019-04-25 18:54:28');
INSERT INTO `export` VALUES ('2', '出库', '阿达', '乖宝宝', '10', '10000', '100000', '2019-04-25 18:54:28');
INSERT INTO `export` VALUES ('3', '出库', '789', '传承结晶', '20', '40', '800', '2019-04-25 18:54:28');
INSERT INTO `export` VALUES ('4', '出库', '企鹅王', '乖宝宝', '20', '10000', '200000', '2019-04-25 18:54:28');
INSERT INTO `export` VALUES ('5', '出库', '安帝斯大', '乖宝宝', '10', '10000', '100000', '2019-04-25 18:54:28');
INSERT INTO `export` VALUES ('6', '出库', '东风浩荡', '乖宝宝', '20', '10000', '100000', '2019-04-25 18:54:28');

-- ----------------------------
-- Table structure for income
-- ----------------------------
DROP TABLE IF EXISTS `income`;
CREATE TABLE `income`  (
  `income_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '收入账单ID',
  `bill_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '平时账单ID',
  `bill_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '账单类型',
  `income_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '账单收入金额',
  `income_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收入汇总',
  PRIMARY KEY (`income_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for inventory_detailed
-- ----------------------------
DROP TABLE IF EXISTS `inventory_detailed`;
CREATE TABLE `inventory_detailed`  (
  `detailed_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '盘库明细表',
  `plan_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '盘库计划表',
  `stock_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品ID',
  `stock-name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品名称',
  `stock_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品数量',
  `stock_actual_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库实际数量',
  `loss_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '损耗描述',
  PRIMARY KEY (`detailed_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for inventory_plan
-- ----------------------------
DROP TABLE IF EXISTS `inventory_plan`;
CREATE TABLE `inventory_plan`  (
  `plan_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '盘库计划ID',
  `staff_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '盘库员工ID',
  `staff_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '盘库员工姓名',
  `warehouse_id` varchar(0) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库ID',
  `warehouse_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库名称',
  `warehouse_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库位置',
  `stock_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品ID',
  `stock-name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品名称',
  `plan_date` datetime NULL DEFAULT NULL COMMENT '盘库时间',
  `plan_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '计划状态 0：未完成 1：完成',
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for materiel
-- ----------------------------
DROP TABLE IF EXISTS `materiel`;
CREATE TABLE `materiel`  (
  `materiel_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '物料ID',
  `materie_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物料名称',
  `materie_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物料类型',
  `materie_specifications` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物料规格 10*10*10',
  `materie_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物料描述',
  `materie_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物料单价 1元/平米，不需要单位了',
  `materie_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物料数量',
  `materie_supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物料供应商',
  `materie_purchase_date` datetime NULL DEFAULT NULL COMMENT '物料进货日期',
  PRIMARY KEY (`materiel_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of materiel
-- ----------------------------
INSERT INTO `materiel` VALUES ('1', 'QP', '物料', '1', '', '0.0001', '999', '宝石之门', '2019-04-01 23:24:55');
INSERT INTO `materiel` VALUES ('2', '混沌之爪', '物料', '100*10', '', '533', '999', '日耳曼尼亚(黑森林）', '2019-04-01 23:24:55');
INSERT INTO `materiel` VALUES ('3', '凶骨', '物料', '1*10', '', '23', '999', '坐标X-C', '2019-04-01 23:24:55');
INSERT INTO `materiel` VALUES ('4', '血之泪石', '物料', '5*10', '', '400', '999', '亚历山大', '2019-04-01 23:24:55');
INSERT INTO `materiel` VALUES ('5', '龙之逆鳞', '物料', '100*100', '', '573', '999', '巴比伦尼亚', '2019-04-01 23:24:55');
INSERT INTO `materiel` VALUES ('6', 'Berserker棋子(金)', '物料', '1*10', '', '70', '999', '周三场', '2019-04-01 23:24:55');
INSERT INTO `materiel` VALUES ('7', 'Berserker棋子(银）', '物料', '1*10', '', '40', '999', '周三场', '2019-04-01 23:24:55');
INSERT INTO `materiel` VALUES ('8', '传承结晶', '物料', '10*10', '', '40', '999', '活动本', '2019-04-01 23:24:55');
INSERT INTO `materiel` VALUES ('9', '乖宝宝', '物料', '100*10', '气温气温群', '10000', '80', '梦里', '2019-04-01 23:24:55');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pro_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品ID',
  `pro_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品名称',
  `pro_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品类型',
  `pro_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品售价',
  `pro_purchase price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品进价',
  `pro_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品数量',
  `pro_materiel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品原料',
  `pro_supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品供应商',
  `pro_purchase_date` datetime NULL DEFAULT NULL COMMENT '商品进货日期',
  `pro_preservation_date` datetime NULL DEFAULT NULL COMMENT '商品保存日期',
  `pro_expiration_date` datetime NULL DEFAULT NULL COMMENT '商品过期时间',
  PRIMARY KEY (`pro_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for profit
-- ----------------------------
DROP TABLE IF EXISTS `profit`;
CREATE TABLE `profit`  (
  `profit_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '盈利账单ID',
  `income_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收入账单ID',
  `expenditure_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '支出账单ID',
  `profit_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '盈利金额',
  `profit_judge` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否盈利',
  PRIMARY KEY (`profit_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `bill_id` int(11) NOT NULL COMMENT '采购单ID',
  `bill_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单类型：采购',
  `purchase_commodity` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '采购商品',
  `purchase_supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品供应商',
  `purchase_commodity_uprice` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品单价',
  `purchase_commodity_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品数量',
  `purchase_commodity_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品总价',
  `purchase_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '采购汇总',
  `purchase_staff` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '采购员工',
  `purchase_date` datetime NULL DEFAULT NULL COMMENT '采购日期',
  `purchase_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单审核状态',
  `purchase_img` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '审核签名',
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES (1, '1', '1', '1', '1', '1', '1', '1', '1', '2019-04-07 11:14:08', '审核通过', '1.png');
INSERT INTO `purchase` VALUES (3, '2', NULL, '周三场', '40', '2312', '', '', '毛毛', '2019-04-16 15:21:29', '待审核', NULL);
INSERT INTO `purchase` VALUES (4, '2', NULL, '亚历山大', '400', '456', '', '', '五六七', '2019-04-16 15:21:29', '待审核', NULL);
INSERT INTO `purchase` VALUES (5, '', NULL, '巴比伦尼亚', '573', '789', '', '', '五六七', '2019-04-16 15:21:29', '待审核', NULL);
INSERT INTO `purchase` VALUES (6, '', NULL, '周三场', '70', '165', '', '', '毛毛', '2019-04-16 15:21:29', '待审核', NULL);

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `bill_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '销售单ID',
  `bill_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '销售单类型：1',
  `sale_staff` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '销售人员',
  `sale_customer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '客户',
  `sale_pro` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '销售商品',
  `sale_pro_uprice` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品单价',
  `sale_pro_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品总价',
  `sale_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '销售单汇总',
  `sale_date` datetime NULL DEFAULT NULL COMMENT '销售单日期',
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `staff_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '员工编号',
  `staff_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工姓名',
  `staff_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工登录密码',
  `staff_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工性别',
  `staff_age` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工年龄',
  `staff_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工电话',
  `staff_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工邮箱',
  `staff_post` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工职务',
  `staff_wages` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工工资',
  `staff_working_years` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工工龄',
  `staff_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工状态：0：离职 1：实习 2转正',
  PRIMARY KEY (`staff_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `stock_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '仓库物品ID',
  `stock_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品名称',
  `stock_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物件类型',
  `stock_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品数量',
  `stock_actual_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品实际数量',
  `stock_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '价格',
  `stock_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库物品描述',
  `relation_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关联ID',
  PRIMARY KEY (`stock_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('cd8bd840-9078-464d-9d35-e671eca601d5', '乖宝宝', '物料', '80', '10', '10000', '气温气温群', NULL);

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplier_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '供应商ID',
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '供应商家名称',
  `supplier_materiel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '供应物料',
  `supplier_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '供应商类型',
  `supplier_linkman` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '供应商联系人',
  `supplier_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '供应商联系方式',
  `supplier_contact_another` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其他联系方式',
  `supplier_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '供应商地址',
  PRIMARY KEY (`supplier_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '藤迅计算机系统有限公司', 'Q币', '互联网公司', '麻花藤', '13513456872', '19865742357 ', '深圳市南山区高新区');
INSERT INTO `supplier` VALUES ('2', '淘宝网 ', '淘宝积分', '网上购物平台', '码云', '13594164982', '19998642843', '中国杭州未来科技城');
INSERT INTO `supplier` VALUES ('3', '3', '', '', '', '', '', '');
INSERT INTO `supplier` VALUES ('4', '4', '', '', '', '', '', '');
INSERT INTO `supplier` VALUES ('5', '5', '5', '5', '5', '5', '5', '5');
INSERT INTO `supplier` VALUES ('6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `supplier` VALUES ('7', '7', '7', '7', '7', '7', '7', '7');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `warehouse_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '仓库ID',
  `warehouse_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库名称',
  `warehouse_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库位置',
  `warehouse_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库描述',
  `warehouse_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库类别',
  `warehouse_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '仓库是否还有空间 0：无 1：有',
  PRIMARY KEY (`warehouse_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('1', '物料库', 'A栋1-6', '存放物料', '张三', '使用中');
INSERT INTO `warehouse` VALUES ('2', '成品库', 'B栋2-3', '存放成品', '李四', '使用中');
INSERT INTO `warehouse` VALUES ('3', '废料库', 'C栋3-3', '存放废料', '五六七', '废弃');

SET FOREIGN_KEY_CHECKS = 1;
