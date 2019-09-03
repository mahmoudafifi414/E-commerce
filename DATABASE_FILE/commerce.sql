/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : commerce

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 03/09/2019 16:46:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cards_item_id_foreign`(`item_id`) USING BTREE,
  INDEX `cards_customer_id_foreign`(`customer_id`) USING BTREE,
  CONSTRAINT `cards_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cards_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (1, 1, 1, 3, '2019-09-02 22:55:49', '2019-09-02 22:55:49');
INSERT INTO `carts` VALUES (2, 4, 1, 1, '2019-09-02 22:55:49', '2019-09-02 22:55:49');
INSERT INTO `carts` VALUES (3, 2, 1, 3, '2019-09-02 22:55:49', '2019-09-02 22:55:49');
INSERT INTO `carts` VALUES (4, 1, 1, 3, '2019-09-02 23:03:33', '2019-09-02 23:03:33');
INSERT INTO `carts` VALUES (5, 4, 1, 1, '2019-09-02 23:03:34', '2019-09-02 23:03:34');
INSERT INTO `carts` VALUES (6, 2, 1, 3, '2019-09-02 23:03:34', '2019-09-02 23:03:34');
INSERT INTO `carts` VALUES (7, 1, 1, 3, '2019-09-02 23:04:10', '2019-09-02 23:04:10');
INSERT INTO `carts` VALUES (8, 4, 1, 1, '2019-09-02 23:04:10', '2019-09-02 23:04:10');
INSERT INTO `carts` VALUES (9, 2, 1, 3, '2019-09-02 23:04:10', '2019-09-02 23:04:10');
INSERT INTO `carts` VALUES (10, 1, 1, 3, '2019-09-02 23:04:17', '2019-09-02 23:04:17');
INSERT INTO `carts` VALUES (11, 4, 1, 1, '2019-09-02 23:04:17', '2019-09-02 23:04:17');
INSERT INTO `carts` VALUES (12, 2, 1, 3, '2019-09-02 23:04:17', '2019-09-02 23:04:17');
INSERT INTO `carts` VALUES (13, 1, 1, 3, '2019-09-02 23:04:18', '2019-09-02 23:04:18');
INSERT INTO `carts` VALUES (14, 4, 1, 1, '2019-09-02 23:04:18', '2019-09-02 23:04:18');
INSERT INTO `carts` VALUES (15, 2, 1, 3, '2019-09-02 23:04:18', '2019-09-02 23:04:18');
INSERT INTO `carts` VALUES (16, 1, 1, 3, '2019-09-02 23:04:22', '2019-09-02 23:04:22');
INSERT INTO `carts` VALUES (17, 4, 1, 1, '2019-09-02 23:04:22', '2019-09-02 23:04:22');
INSERT INTO `carts` VALUES (18, 2, 1, 3, '2019-09-02 23:04:22', '2019-09-02 23:04:22');
INSERT INTO `carts` VALUES (19, 1, 1, 3, '2019-09-02 23:04:35', '2019-09-02 23:04:35');
INSERT INTO `carts` VALUES (20, 4, 1, 1, '2019-09-02 23:04:35', '2019-09-02 23:04:35');
INSERT INTO `carts` VALUES (21, 2, 1, 3, '2019-09-02 23:04:35', '2019-09-02 23:04:35');
INSERT INTO `carts` VALUES (22, 1, 1, 3, '2019-09-02 23:04:36', '2019-09-02 23:04:36');
INSERT INTO `carts` VALUES (23, 4, 1, 1, '2019-09-02 23:04:36', '2019-09-02 23:04:36');
INSERT INTO `carts` VALUES (24, 2, 1, 3, '2019-09-02 23:04:36', '2019-09-02 23:04:36');
INSERT INTO `carts` VALUES (25, 1, 1, 3, '2019-09-02 23:04:38', '2019-09-02 23:04:38');
INSERT INTO `carts` VALUES (26, 4, 1, 1, '2019-09-02 23:04:38', '2019-09-02 23:04:38');
INSERT INTO `carts` VALUES (27, 2, 1, 3, '2019-09-02 23:04:38', '2019-09-02 23:04:38');
INSERT INTO `carts` VALUES (28, 1, 1, 3, '2019-09-02 23:04:49', '2019-09-02 23:04:49');
INSERT INTO `carts` VALUES (29, 4, 1, 1, '2019-09-02 23:04:49', '2019-09-02 23:04:49');
INSERT INTO `carts` VALUES (30, 2, 1, 3, '2019-09-02 23:04:49', '2019-09-02 23:04:49');
INSERT INTO `carts` VALUES (31, 1, 1, 3, '2019-09-02 23:05:09', '2019-09-02 23:05:09');
INSERT INTO `carts` VALUES (32, 4, 1, 1, '2019-09-02 23:05:10', '2019-09-02 23:05:10');
INSERT INTO `carts` VALUES (33, 2, 1, 3, '2019-09-02 23:05:10', '2019-09-02 23:05:10');
INSERT INTO `carts` VALUES (34, 1, 1, 3, '2019-09-02 23:09:16', '2019-09-02 23:09:16');
INSERT INTO `carts` VALUES (35, 4, 1, 1, '2019-09-02 23:09:16', '2019-09-02 23:09:16');
INSERT INTO `carts` VALUES (36, 2, 1, 3, '2019-09-02 23:09:16', '2019-09-02 23:09:16');
INSERT INTO `carts` VALUES (37, 1, 1, 3, '2019-09-02 23:10:29', '2019-09-02 23:10:29');
INSERT INTO `carts` VALUES (38, 4, 1, 1, '2019-09-02 23:10:29', '2019-09-02 23:10:29');
INSERT INTO `carts` VALUES (39, 2, 1, 3, '2019-09-02 23:10:29', '2019-09-02 23:10:29');
INSERT INTO `carts` VALUES (40, 1, 1, 3, '2019-09-02 23:10:43', '2019-09-02 23:10:43');
INSERT INTO `carts` VALUES (41, 4, 1, 1, '2019-09-02 23:10:43', '2019-09-02 23:10:43');
INSERT INTO `carts` VALUES (42, 2, 1, 3, '2019-09-02 23:10:43', '2019-09-02 23:10:43');
INSERT INTO `carts` VALUES (43, 1, 1, 3, '2019-09-02 23:11:00', '2019-09-02 23:11:00');
INSERT INTO `carts` VALUES (44, 4, 1, 1, '2019-09-02 23:11:01', '2019-09-02 23:11:01');
INSERT INTO `carts` VALUES (45, 2, 1, 3, '2019-09-02 23:11:01', '2019-09-02 23:11:01');
INSERT INTO `carts` VALUES (46, 1, 1, 3, '2019-09-02 23:11:19', '2019-09-02 23:11:19');
INSERT INTO `carts` VALUES (47, 4, 1, 1, '2019-09-02 23:11:19', '2019-09-02 23:11:19');
INSERT INTO `carts` VALUES (48, 2, 1, 3, '2019-09-02 23:11:19', '2019-09-02 23:11:19');
INSERT INTO `carts` VALUES (49, 1, 1, 3, '2019-09-02 23:11:34', '2019-09-02 23:11:34');
INSERT INTO `carts` VALUES (50, 4, 1, 1, '2019-09-02 23:11:34', '2019-09-02 23:11:34');
INSERT INTO `carts` VALUES (51, 2, 1, 3, '2019-09-02 23:11:35', '2019-09-02 23:11:35');
INSERT INTO `carts` VALUES (52, 1, 1, 3, '2019-09-02 23:12:09', '2019-09-02 23:12:09');
INSERT INTO `carts` VALUES (53, 4, 1, 1, '2019-09-02 23:12:09', '2019-09-02 23:12:09');
INSERT INTO `carts` VALUES (54, 2, 1, 3, '2019-09-02 23:12:10', '2019-09-02 23:12:10');
INSERT INTO `carts` VALUES (55, 1, 1, 3, '2019-09-02 23:12:11', '2019-09-02 23:12:11');
INSERT INTO `carts` VALUES (56, 4, 1, 1, '2019-09-02 23:12:11', '2019-09-02 23:12:11');
INSERT INTO `carts` VALUES (57, 2, 1, 3, '2019-09-02 23:12:11', '2019-09-02 23:12:11');
INSERT INTO `carts` VALUES (58, 1, 1, 3, '2019-09-02 23:12:20', '2019-09-02 23:12:20');
INSERT INTO `carts` VALUES (59, 4, 1, 1, '2019-09-02 23:12:20', '2019-09-02 23:12:20');
INSERT INTO `carts` VALUES (60, 2, 1, 3, '2019-09-02 23:12:20', '2019-09-02 23:12:20');
INSERT INTO `carts` VALUES (61, 1, 1, 3, '2019-09-02 23:12:32', '2019-09-02 23:12:32');
INSERT INTO `carts` VALUES (62, 4, 1, 1, '2019-09-02 23:12:32', '2019-09-02 23:12:32');
INSERT INTO `carts` VALUES (63, 2, 1, 3, '2019-09-02 23:12:32', '2019-09-02 23:12:32');
INSERT INTO `carts` VALUES (64, 1, 1, 3, '2019-09-02 23:24:16', '2019-09-02 23:24:16');
INSERT INTO `carts` VALUES (65, 4, 1, 1, '2019-09-02 23:24:16', '2019-09-02 23:24:16');
INSERT INTO `carts` VALUES (66, 2, 1, 3, '2019-09-02 23:24:16', '2019-09-02 23:24:16');
INSERT INTO `carts` VALUES (67, 1, 1, 3, '2019-09-02 23:24:43', '2019-09-02 23:24:43');
INSERT INTO `carts` VALUES (68, 4, 1, 1, '2019-09-02 23:24:43', '2019-09-02 23:24:43');
INSERT INTO `carts` VALUES (69, 2, 1, 3, '2019-09-02 23:24:43', '2019-09-02 23:24:43');
INSERT INTO `carts` VALUES (70, 2, 1, 1, '2019-09-02 23:31:44', '2019-09-02 23:31:44');
INSERT INTO `carts` VALUES (71, 3, 1, 1, '2019-09-02 23:31:44', '2019-09-02 23:31:44');
INSERT INTO `carts` VALUES (72, 1, 1, 1, '2019-09-02 23:31:44', '2019-09-02 23:31:44');
INSERT INTO `carts` VALUES (73, 4, 1, 2, '2019-09-02 23:35:07', '2019-09-02 23:35:07');
INSERT INTO `carts` VALUES (74, 2, 1, 1, '2019-09-02 23:51:56', '2019-09-02 23:51:56');
INSERT INTO `carts` VALUES (75, 2, 1, 1, '2019-09-03 00:11:18', '2019-09-03 00:11:18');
INSERT INTO `carts` VALUES (76, 3, 1, 1, '2019-09-03 00:11:18', '2019-09-03 00:11:18');
INSERT INTO `carts` VALUES (77, 3, 1, 1, '2019-09-03 00:21:37', '2019-09-03 00:21:37');
INSERT INTO `carts` VALUES (78, 4, 1, 2, '2019-09-03 00:21:37', '2019-09-03 00:21:37');
INSERT INTO `carts` VALUES (79, 3, 1, 1, '2019-09-03 00:23:08', '2019-09-03 00:23:08');
INSERT INTO `carts` VALUES (80, 2, 1, 1, '2019-09-03 00:23:08', '2019-09-03 00:23:08');
INSERT INTO `carts` VALUES (81, 2, 1, 1, '2019-09-03 14:45:22', '2019-09-03 14:45:22');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_credit` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'mahmoudaffifi', 'mahmoud', 'afifi', 799954240, NULL, '2019-09-03 14:45:22');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1, 'toy', 'this is bla bla', 10, NULL, NULL);
INSERT INTO `items` VALUES (2, 'headphone', 'this is bla bla', 20, NULL, NULL);
INSERT INTO `items` VALUES (3, 'smartphone', 'this is bla bla', 30, NULL, NULL);
INSERT INTO `items` VALUES (4, 'telephone', 'this s', 600, NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_08_30_163333_create_customers_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_08_30_163348_create_orders_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_30_163400_create_items_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_30_163410_create_cards_table', 1);
INSERT INTO `migrations` VALUES (5, '2014_10_12_000000_create_users_table', 2);
INSERT INTO `migrations` VALUES (6, '2014_10_12_100000_create_password_resets_table', 2);
INSERT INTO `migrations` VALUES (7, '2019_09_02_225351_update_table_cards_name', 2);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orders_customer_id_foreign`(`customer_id`) USING BTREE,
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (3, 1, 1350, 'dsd', 'ds', '2019-09-02 22:37:47', '2019-09-02 22:37:47');
INSERT INTO `orders` VALUES (4, 1, 1370, 's', 'da', '2019-09-02 22:45:07', '2019-09-02 22:45:07');
INSERT INTO `orders` VALUES (5, 1, 1370, 'ad', 'dad', '2019-09-02 22:45:25', '2019-09-02 22:45:25');
INSERT INTO `orders` VALUES (6, 1, 1370, 'dsd', 'da', '2019-09-02 22:46:09', '2019-09-02 22:46:09');
INSERT INTO `orders` VALUES (7, 1, 1370, 'das', 'da', '2019-09-02 22:48:52', '2019-09-02 22:48:52');
INSERT INTO `orders` VALUES (8, 1, 1370, 'das', 'da', '2019-09-02 22:49:22', '2019-09-02 22:49:22');
INSERT INTO `orders` VALUES (9, 1, 1370, 'das', 'da', '2019-09-02 22:49:38', '2019-09-02 22:49:38');
INSERT INTO `orders` VALUES (10, 1, 1370, 'das', 'da', '2019-09-02 22:50:34', '2019-09-02 22:50:34');
INSERT INTO `orders` VALUES (11, 1, 1370, 'das', 'da', '2019-09-02 22:50:53', '2019-09-02 22:50:53');
INSERT INTO `orders` VALUES (12, 1, 1370, 'das', 'da', '2019-09-02 22:52:13', '2019-09-02 22:52:13');
INSERT INTO `orders` VALUES (13, 1, 1370, 'das', 'da', '2019-09-02 22:52:26', '2019-09-02 22:52:26');
INSERT INTO `orders` VALUES (14, 1, 1370, 'das', 'da', '2019-09-02 22:52:38', '2019-09-02 22:52:38');
INSERT INTO `orders` VALUES (15, 1, 1370, 'das', 'da', '2019-09-02 22:55:49', '2019-09-02 22:55:49');
INSERT INTO `orders` VALUES (16, 1, 1370, 'sd', 'cda', '2019-09-02 23:03:33', '2019-09-02 23:03:33');
INSERT INTO `orders` VALUES (17, 1, 1370, 'sd', 'cda', '2019-09-02 23:04:10', '2019-09-02 23:04:10');
INSERT INTO `orders` VALUES (18, 1, 1370, 'sd', 'cda', '2019-09-02 23:04:17', '2019-09-02 23:04:17');
INSERT INTO `orders` VALUES (19, 1, 1370, 'sd', 'cda', '2019-09-02 23:04:18', '2019-09-02 23:04:18');
INSERT INTO `orders` VALUES (20, 1, 1370, 'sd', 'cda', '2019-09-02 23:04:21', '2019-09-02 23:04:21');
INSERT INTO `orders` VALUES (21, 1, 1370, 'sd', 'cda', '2019-09-02 23:04:34', '2019-09-02 23:04:34');
INSERT INTO `orders` VALUES (22, 1, 1370, 'sd', 'cda', '2019-09-02 23:04:35', '2019-09-02 23:04:35');
INSERT INTO `orders` VALUES (23, 1, 1370, 'sd', 'cda', '2019-09-02 23:04:38', '2019-09-02 23:04:38');
INSERT INTO `orders` VALUES (24, 1, 1370, 'ds', 'da', '2019-09-02 23:04:49', '2019-09-02 23:04:49');
INSERT INTO `orders` VALUES (25, 1, 1370, 'ds', 'da', '2019-09-02 23:05:09', '2019-09-02 23:05:09');
INSERT INTO `orders` VALUES (26, 1, 1370, 'ad', 'wda', '2019-09-02 23:09:16', '2019-09-02 23:09:16');
INSERT INTO `orders` VALUES (27, 1, 1370, 'ad', 'wda', '2019-09-02 23:10:29', '2019-09-02 23:10:29');
INSERT INTO `orders` VALUES (28, 1, 1370, 'ad', 'wda', '2019-09-02 23:10:43', '2019-09-02 23:10:43');
INSERT INTO `orders` VALUES (29, 1, 1370, 'ad', 'wda', '2019-09-02 23:11:00', '2019-09-02 23:11:00');
INSERT INTO `orders` VALUES (30, 1, 1370, 'ad', 'wda', '2019-09-02 23:11:19', '2019-09-02 23:11:19');
INSERT INTO `orders` VALUES (31, 1, 1370, 'ad', 'wda', '2019-09-02 23:11:33', '2019-09-02 23:11:33');
INSERT INTO `orders` VALUES (32, 1, 1370, 'ad', 'wda', '2019-09-02 23:12:08', '2019-09-02 23:12:08');
INSERT INTO `orders` VALUES (33, 1, 1370, 'ad', 'wda', '2019-09-02 23:12:11', '2019-09-02 23:12:11');
INSERT INTO `orders` VALUES (34, 1, 1370, 'sf', 'dqd', '2019-09-02 23:12:20', '2019-09-02 23:12:20');
INSERT INTO `orders` VALUES (35, 1, 1370, 'sf', 'dqd', '2019-09-02 23:12:32', '2019-09-02 23:12:32');
INSERT INTO `orders` VALUES (36, 1, 1370, 'sd', 'da', '2019-09-02 23:24:16', '2019-09-02 23:24:16');
INSERT INTO `orders` VALUES (37, 1, 1370, 'sd', 'sda', '2019-09-02 23:24:43', '2019-09-02 23:24:43');
INSERT INTO `orders` VALUES (38, 1, 60, 'dda', 'dad', '2019-09-02 23:31:44', '2019-09-02 23:31:44');
INSERT INTO `orders` VALUES (39, 1, 1200, 'dsdm', 'wcsmncj', '2019-09-02 23:35:07', '2019-09-02 23:35:07');
INSERT INTO `orders` VALUES (40, 1, 680, 'ds', 'da', '2019-09-02 23:51:55', '2019-09-02 23:51:55');
INSERT INTO `orders` VALUES (41, 1, 50, 'ad', 'ac', '2019-09-03 00:11:18', '2019-09-03 00:11:18');
INSERT INTO `orders` VALUES (42, 1, 1230, 'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssq', '515151511555451515', '2019-09-03 00:21:36', '2019-09-03 00:21:36');
INSERT INTO `orders` VALUES (43, 1, 50, 'dscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsd', '515151511555451515', '2019-09-03 00:23:08', '2019-09-03 00:23:08');
INSERT INTO `orders` VALUES (44, 1, 20, 'dscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsdaaaaaaaaaaaaaaaaaaadscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsddscsdaaaaaaaaaaaaaaaaaaa', '333333333333333333', '2019-09-03 14:45:22', '2019-09-03 14:45:22');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
