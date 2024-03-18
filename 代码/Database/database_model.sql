-- =============================================
-- Author: Hacon
-- Create date: 2024-1-17 00:21
-- Update date: 
-- Description: 中级软件实作考研信息系统数据库的表格结构
-- Version: Mysql 5.7
-- Modify: 
-- =============================================


--
-- 全局配置
--

SET NAMES gbk;
SET TIME_ZONE= '+08:00';


-- 
-- 创建数据库，逆序清空表格
--
UNLOCK TABLES;
DROP DATABASE IF EXISTS `software_design`;
CREATE DATABASE `software_design`;
USE `software_design`;

-- 
-- 创建用户信息表 user_info 的结构
-- 

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
`id` bigint NOT NULL UNIQUE AUTO_INCREMENT, -- 用户编号
`username` varchar(200), -- 用户名
`password` varchar(200) NOT NULL, -- 密码
`delete` int DEFAULT 0, -- 软删除标记
`email` varchar(200) DEFAULT NULL, -- 邮箱
`picture` text DEFAULT NULL, -- 头像Base64
`phone` bigint,  -- 手机号码
PRIMARY KEY (`id`)
);


-- 
-- 创建学校信息表 School 的结构
-- 

DROP TABLE IF EXISTS `School`;
CREATE TABLE `School` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    schName VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    subjection VARCHAR(255) NOT NULL,
    is_985 TINYINT(1) DEFAULT 0,
    is_211 TINYINT(1) DEFAULT 0,
    is_firclassU TINYINT(1) DEFAULT 0,
    is_firclassS TINYINT(1) DEFAULT 0,
    is_else TINYINT(1) DEFAULT 0,
    assessmentCS VARCHAR(8) DEFAULT NULL,
    assessmentSE VARCHAR(8) DEFAULT NULL,
    graSchool TINYINT(1) DEFAULT 0,
    indLine TINYINT(1) DEFAULT 0,
    annUrl TEXT DEFAULT NULL,
    admGuideUrl TEXT DEFAULT NULL,
    adMethodUrl TEXT DEFAULT NULL,
    proCourseCount VARCHAR(18) DEFAULT '408'
);
ALTER TABLE School ADD INDEX idx_schName (schName);

-- 
-- 创建专业信息表 Major 的结构
-- 
DROP TABLE IF EXISTS `Major`;
CREATE TABLE Major (
    id INT AUTO_INCREMENT PRIMARY KEY,
    school VARCHAR(255),
    major VARCHAR(255),
    resDirection VARCHAR(255),
    institute VARCHAR(255),
    admScore VARCHAR(255),
    enrPlan VARCHAR(255),
    examForm VARCHAR(8),
    learnForm VARCHAR(12),
    examScope TEXT,
    remark TEXT,
    FOREIGN KEY (school) REFERENCES School(schName) ON DELETE NO ACTION
);



