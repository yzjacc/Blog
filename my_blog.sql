/*
 Navicat Premium Data Transfer

 Source Server         : my_blog
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : 127.0.0.1:3306
 Source Schema         : my_blog

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 04/01/2020 20:27:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `title` varchar(128) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `views` int(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `ctime` double(17,0) NOT NULL,
  `utime` double(17,0) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ctime` (`ctime`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `blog_id` int(64) NOT NULL,
  `ctime` double(17,0) NOT NULL,
  `utime` double(17,0) NOT NULL,
  `comments` varchar(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for every_day
-- ----------------------------
DROP TABLE IF EXISTS `every_day`;
CREATE TABLE `every_day` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `ctime` double(17,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ctime` (`ctime`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for tag_blog_mapping
-- ----------------------------
DROP TABLE IF EXISTS `tag_blog_mapping`;
CREATE TABLE `tag_blog_mapping` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tag_id` int(64) NOT NULL,
  `ctime` double(17,0) NOT NULL,
  `utime` double(17,0) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_tag_id_blog_id` (`tag_id`,`blog_id`),
  KEY `idx_tag_id` (`tag_id`) USING BTREE,
  KEY `idx_blog_id` (`blog_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tag` varchar(64) NOT NULL,
  `ctime` double(17,0) NOT NULL,
  `utime` double(17,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
