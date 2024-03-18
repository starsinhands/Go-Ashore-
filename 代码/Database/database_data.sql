-- =============================================
-- Author: Hacon
-- Create date: 2024-1-17 02:16
-- Update date: 
-- Description: 中级软件实作考研信息系统数据库的表格数据
-- Version: Mysql 5.7
-- Modify: 
-- =============================================


--
-- 全局配置
--

SET NAMES utf8;
SET TIME_ZONE = '+08:00';


--
-- 指定数据库
--

use software_design;


--
-- 向学校信息表格 School 插入数据
--
INSERT INTO `School` (schName, location, subjection, is_985, is_211, is_firclassU, is_firclassS, is_else, assessmentCS, assessmentSE, graSchool, indLine, annUrl, admGuideUrl, adMethodUrl, proCourseCount)
VALUES 
    ('清华大学', '北京', '教育部', 1, 1, 1, 1, 0, 'A+', 'A+', 1, 1, 'http://www.tsinghua.edu.cn', 'https://yz.chsi.com.cn/sch/viewZszc--infoId-2191426888,categoryId-10460772,schId-367880,mindex-12.dhtml', 'http://www.tsinghua.edu.cn/admission/method', '408'),
    ('北京大学', '北京', '教育部', 1, 1, 1, 1, 0, 'A+', 'A+', 1, 1, 'http://www.pku.edu.cn', 'https://admission.pku.edu.cn/zsxx/index.htm','http://www.pku.edu.cn/admission/method', '408'),
    ('复旦大学', '上海', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.fudan.edu.cn', 'https://gsao.fudan.edu.cn/01/e5/c15015a524773/page.htm','http://www.fudan.edu.cn/admission/method', '408'),
    ('上海交通大学', '上海', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.sjtu.edu.cn', 'https://yzb.sjtu.edu.cn/zsjz/ssszs.htm', 'http://www.sjtu.edu.cn/admission/method', '408'),
    ('浙江大学', '浙江', '教育部', 1, 1, 1, 1, 0, 'A+', 'A+', 1, 1, 'http://www.zju.edu.cn', 'http://www.grs.zju.edu.cn/yjszs/28504/list.htm','http://www.zju.edu.cn/admission/method', '408'),
    ('南京大学', '江苏', '教育部', 1, 1, 1, 1, 0, 'A+', 'A', 1, 1, 'http://www.nju.edu.cn', 'https://yzb.nju.edu.cn/47862/list.htm', 'http://www.nju.edu.cn/admission/method', '408'),
    ('武汉大学', '湖北', '教育部', 1, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.whu.edu.cn', 'https://gs.whu.edu.cn/info/1252/11209.htm','http://www.whu.edu.cn/admission/method', '408'),
    ('中山大学', '广东', '教育部', 1, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.sysu.edu.cn', 'https://graduate.sysu.edu.cn/zsw/admissions-regulations','http://www.sysu.edu.cn/admission/method', '408'),
    ('华中科技大学', '湖北', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.hust.edu.cn', 'https://gszs.hust.edu.cn/zsjz/sszs.htm', 'http://www.hust.edu.cn/admission/method', '408'),
    ('四川大学', '四川', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.scu.edu.cn', 'http://www.scu.edu.cn/admission', 'http://www.scu.edu.cn/admission/method', '408'),
    ('吉林大学', '吉林', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.jlu.edu.cn', 'http://www.jlu.edu.cn/admission', 'http://www.jlu.edu.cn/admission/method', '408'),
    ('哈尔滨工业大学', '黑龙江', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.hit.edu.cn', 'http://www.hit.edu.cn/admission', 'http://www.hit.edu.cn/admission/method', '408'),
    ('西安交通大学', '陕西', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.xjtu.edu.cn', 'http://www.xjtu.edu.cn/admission', 'http://www.xjtu.edu.cn/admission/method', '408'),
    ('厦门大学', '福建', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.xmu.edu.cn', 'http://www.xmu.edu.cn/admission', 'http://www.xmu.edu.cn/admission/method', '408'),
    ('山东大学', '山东', '教育部', 0, 1, 1, 1, 0, 'A', 'A', 1, 1, 'http://www.sdu.edu.cn', 'http://www.sdu.edu.cn/admission', 'http://www.sdu.edu.cn/admission/method', '408'),
    ('中国科学技术大学', '安徽', '教育部', 1, 1, 1, 1, 0, 'A+', 'A+', 1, 1, 'http://www.ustc.edu.cn', 'http://www.ustc.edu.cn/admission', 'http://www.ustc.edu.cn/admission/method', '408');
--
-- 向专业信息表格 Major 插入数据
--
INSERT INTO Major (school, major, resDirection, institute, admScore, enrPlan, examForm, learnForm, examScope, remark)
VALUES
('清华大学', '软件工程', '人工智能', '计算机科学与技术学院', '700', '100', '笔试', '全日制', '数学、英语、编程', '无'),
('北京大学', '软件工程', '软件工程', '信息科学技术学院', '680', '120', '笔试', '全日制', '数学、英语、编程', '无'),
('复旦大学', '计算机科学与技术', '软件工程', '计算机科学与技术学院', '660', '150', '笔试', '全日制', '数学、英语、编程', '无'),
('上海交通大学', '软件工程', '软件工程', '计算机科学与工程学院', '670', '100', '笔试', '全日制', '数学、英语、编程', '无'),
('浙江大学', '人工智能', '人工智能', '计算机科学与技术学院', '680', '100', '笔试', '全日制', '数学、英语、编程', '无'),
('南京大学', '计算机科学与技术', '软件工程', '计算机科学与技术学院', '670', '120', '笔试', '全日制', '数学、英语、编程', '无'),
('武汉大学', '人工智能', '人工智能', '计算机科学与技术学院', '660', '80', '笔试', '全日制', '数学、英语、编程', '无'),
('中山大学', '软件工程', '软件工程', '数据科学与计算机学院', '650', '100', '笔试', '全日制', '数学、英语、编程', '无'),
('哈尔滨工业大学', '人工智能', '人工智能', '计算机科学与技术学院', '680', '150', '笔试', '全日制', '数学、英语、编程', '无'),
('西安交通大学', '软件工程', '软件工程', '计算机科学与技术学院', '670', '120', '笔试', '全日制', '数学、英语、编程', '无'),
('四川大学', '人工智能', '人工智能', '计算机学院', '660', '80', '笔试', '全日制', '数学、英语、编程', '无'),
('厦门大学', '软件工程', '软件工程', '软件学院', '650', '100', '笔试', '全日制', '数学、英语、编程', '无'),
('华中科技大学', '人工智能', '人工智能', '信息科学与工程学院', '660', '120', '笔试', '全日制', '数学、英语、编程', '无'),
('吉林大学', '软件工程', '软件工程', '软件学院', '650', '100', '笔试', '全日制', '数学、英语、编程', '无'),
('中国科学技术大学', '人工智能', '人工智能', '计算机科学与工程学院', '670', '150', '笔试', '全日制', '数学、英语、编程', '无');
