/*
 Navicat Premium Data Transfer

 Source Server         : database
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : data

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 03/07/2020 13:01:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo`  (
  `adminId` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `adminName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员用户名',
  `adminPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE `bookinfo`  (
  `bookId` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书编号id',
  `bookName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书名',
  `bookAuthor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书作者',
  `bookPrice` int(11) NOT NULL COMMENT '图书价格',
  `bookPress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书出版社',
  `bookType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书类型',
  `IsBorrowed` tinyint(11) NOT NULL COMMENT '是否被借阅',
  `borrowId` int(11) NULL DEFAULT NULL COMMENT '借阅者id',
  `borrowTime` datetime NULL DEFAULT NULL COMMENT '被借时间',
  PRIMARY KEY (`bookId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bookinfo
-- ----------------------------
INSERT INTO `bookinfo` VALUES (1, '明朝那些事儿', '当年明月', 111, '海南出版社', '历史杂谈', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (2, 'LG教你开发软件', 'LG', 120, 'LG出版社', '高等教育', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (3, '乾坤大挪移', '张无忌', 99, '明教出版社', '武功秘籍', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (4, 'JAVA之父', 'TolKin', 55, '安徽出版社', '高等教育', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (5, 'DOTA发展史', 'G胖', 19, '安徽出版社', '游戏文化', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (6, '软件开发', 'MagicYang', 39, '安徽出版社', '高等教育', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (7, '金瓶梅', '兰陵笑笑生', 98, '安徽出版社', '古典小说', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (8, '西游记', '吴承恩', 199, '安徽出版社', '古典小说', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (10, '独孤九剑', '风清扬', 1, '华山出版社', '武功秘籍', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (11, '22', '22', 22, '22', '22', 0, NULL, NULL);
INSERT INTO `bookinfo` VALUES (12, '33', '33', 33, '33', '33', 0, NULL, NULL);

-- ----------------------------
-- Table structure for borrowed
-- ----------------------------
DROP TABLE IF EXISTS `borrowed`;
CREATE TABLE `borrowed`  (
  `borrowedId` int(11) NOT NULL AUTO_INCREMENT COMMENT '借阅信息id',
  `userId` int(11) NOT NULL COMMENT '操作人id',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人用户名',
  `bookId` int(11) NOT NULL COMMENT '被借书id',
  `editTime` datetime NOT NULL COMMENT '操作时间',
  `bookName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书名',
  PRIMARY KEY (`borrowedId`) USING BTREE,
  INDEX `userId_idx`(`userId`) USING BTREE,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `userinfo` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_topicId` int(10) NULL DEFAULT NULL,
  `comment_userId` int(10) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (78, '1111', 56, 18, ' 2019年12月12日 16:15');
INSERT INTO `comment` VALUES (79, '你好', 57, 14, '');
INSERT INTO `comment` VALUES (80, '1111', 57, 14, ' 2020年1月2日 18:04');
INSERT INTO `comment` VALUES (82, '11111', 58, 14, '');
INSERT INTO `comment` VALUES (83, '111', 58, 14, ' 2020年6月10日 19:13');

-- ----------------------------
-- Table structure for comment1
-- ----------------------------
DROP TABLE IF EXISTS `comment1`;
CREATE TABLE `comment1`  (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_commentuserid` int(10) NULL DEFAULT NULL,
  `c_commentid` int(10) NULL DEFAULT NULL,
  `c_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment1
-- ----------------------------
INSERT INTO `comment1` VALUES (3, 18, 75, '嗯', ' 2019年12月12日 15:56');
INSERT INTO `comment1` VALUES (4, 18, 77, '111', ' 2019年12月12日 16:15');
INSERT INTO `comment1` VALUES (5, 18, 79, '你好', ' 2019年12月12日 17:39');
INSERT INTO `comment1` VALUES (6, 14, 79, '你好', ' 2019年12月30日 16:59');
INSERT INTO `comment1` VALUES (7, 14, 80, '111', ' 2020年1月2日 18:04');

-- ----------------------------
-- Table structure for comment1_copy1
-- ----------------------------
DROP TABLE IF EXISTS `comment1_copy1`;
CREATE TABLE `comment1_copy1`  (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_commentuserid` int(10) NULL DEFAULT NULL,
  `c_commentid` int(10) NULL DEFAULT NULL,
  `c_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment1_copy1
-- ----------------------------
INSERT INTO `comment1_copy1` VALUES (31, 18, 6, '呵呵', ' 2019年12月12日 15:57');
INSERT INTO `comment1_copy1` VALUES (32, 18, 7, '哈哈哈', ' 2019年12月12日 15:58');
INSERT INTO `comment1_copy1` VALUES (33, 18, 9, '呵呵', ' 2019年12月12日 16:00');

-- ----------------------------
-- Table structure for comment_copy1
-- ----------------------------
DROP TABLE IF EXISTS `comment_copy1`;
CREATE TABLE `comment_copy1`  (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_topicId` int(10) NULL DEFAULT NULL,
  `comment_userId` int(10) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment_copy1
-- ----------------------------
INSERT INTO `comment_copy1` VALUES (9, '数学吧！我觉得数学比较重要！', 16, 18, ' 2019年12月12日 15:59');
INSERT INTO `comment_copy1` VALUES (11, '也挺好', 17, 18, '');

-- ----------------------------
-- Table structure for likeme
-- ----------------------------
DROP TABLE IF EXISTS `likeme`;
CREATE TABLE `likeme`  (
  `like_id` int(10) NOT NULL AUTO_INCREMENT,
  `like_topicId` int(10) NULL DEFAULT NULL,
  `like_userId` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`like_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of likeme
-- ----------------------------
INSERT INTO `likeme` VALUES (214, 49, 16);
INSERT INTO `likeme` VALUES (215, 49, 18);
INSERT INTO `likeme` VALUES (217, 53, 18);
INSERT INTO `likeme` VALUES (218, 54, 19);
INSERT INTO `likeme` VALUES (219, 55, 19);
INSERT INTO `likeme` VALUES (223, 52, 18);
INSERT INTO `likeme` VALUES (225, 55, 18);
INSERT INTO `likeme` VALUES (230, 50, 18);
INSERT INTO `likeme` VALUES (231, 57, 14);
INSERT INTO `likeme` VALUES (233, 58, 14);

-- ----------------------------
-- Table structure for loveme
-- ----------------------------
DROP TABLE IF EXISTS `loveme`;
CREATE TABLE `loveme`  (
  `love_id` int(10) NOT NULL AUTO_INCREMENT,
  `love_topicId` int(10) NULL DEFAULT NULL,
  `love_userId` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`love_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of loveme
-- ----------------------------
INSERT INTO `loveme` VALUES (37, 12, 18);
INSERT INTO `loveme` VALUES (38, 13, 18);
INSERT INTO `loveme` VALUES (39, 14, 18);
INSERT INTO `loveme` VALUES (40, 16, 19);
INSERT INTO `loveme` VALUES (47, 15, 18);
INSERT INTO `loveme` VALUES (48, 16, 18);
INSERT INTO `loveme` VALUES (49, 17, 18);
INSERT INTO `loveme` VALUES (51, 17, 14);

-- ----------------------------
-- Table structure for master
-- ----------------------------
DROP TABLE IF EXISTS `master`;
CREATE TABLE `master`  (
  `Gid` int(11) NOT NULL,
  `Gname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Gpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Gid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master
-- ----------------------------
INSERT INTO `master` VALUES (1, '王明', '222');

-- ----------------------------
-- Table structure for sct
-- ----------------------------
DROP TABLE IF EXISTS `sct`;
CREATE TABLE `sct`  (
  `学号` int(11) NOT NULL,
  `姓名` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `课程号` int(11) NULL DEFAULT NULL,
  `课程名` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `成绩` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `教师工号` int(11) NULL DEFAULT NULL,
  `教师姓名` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sct
-- ----------------------------
INSERT INTO `sct` VALUES (20173658, '魏佳', 1, '数据库', ' ', 101, '张三', 1);
INSERT INTO `sct` VALUES (20173626, '郑锦', 2, '数据结构', '100', 102, '李四', 2);
INSERT INTO `sct` VALUES (20173658, '魏佳', 2, '数据结构', ' ', 102, '李四', 3);
INSERT INTO `sct` VALUES (20173626, '郑锦', 1, '数据库', '100', 101, '张三', 4);
INSERT INTO `sct` VALUES (20173658, '魏佳', 3, '高等数学', ' ', 103, '王五', 5);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `学号` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `姓名` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `专业` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `班级` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Susername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Spassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20173658', '魏佳', '数字媒体', '信1706', '魏佳', '222');
INSERT INTO `student` VALUES ('20173626', '郑锦', '软件工程', '信1705-2', '郑锦', '222');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `教师工号` int(11) NOT NULL,
  `教师姓名` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `性别` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `年龄` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `电话` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `课程名` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tusername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `Tpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`教师工号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (102, '李四', '男', '33', '14432331123', '数据结构', '李四', '222');
INSERT INTO `teacher` VALUES (103, '王五', '男', '30', '13233445766', '高等数学', '王五', '222');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `topic_id` int(10) NOT NULL AUTO_INCREMENT,
  `topic_webtext` varchar(9999) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `content` varchar(9999) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `time` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (49, '清华大学：考研分数400+学霸告诉你，网课究竟该怎么选！', 15, '作为二本学渣的学姐，第一次考研没有过，第二次听学长的建议找了一些网课才成功上岸！\r\n～\r\n当时也考虑过线下课，但是线下课都比较贵，学生负担不起，也不想和爸妈要，所以选了网课\r\n～\r\n非常惭愧地说我mai的不算都是证版，也有在官方入的基本500+一个单元。买了两三次就承受不了了，然后又找了个单科40+的渠道，我买了三科100，给学弟学妹们做了个坏榜样，自我检讨！\r\n～\r\n闲话少叙今天小姐姐就来和大家聊一聊，关于考研网课的那些事~\r\n～\r\n一、英语 网课推荐\r\n词汇：朱伟《恋练有词》对于英语来说单词是最基础的，也是最重要的，所以背单词一定要尽早提上日程！\r\n阅读：唐迟老师，他的课程主要教大家分析题目的方法，理解文章的逻辑关系，找关键句，有讲很多解题技巧和长难句分析。\r\n新题型和完型：王晟，完型部分相对比较不容易得分，他的课会讲这两个部分的套路，和一些解题技巧。\r\n作文：王江涛，这个老师的课程比较适合基础比较差的同学，他的课程需要背诵的内容比较多，但是对提升基础有很大的作用。\r\n语法：田静和刘晓燕，田静老师的课程由浅入深。这两位老师的课都内容细致也容易理解，适合基础不太好的同学。\r\n长难句：田静和何凯文，田静老师参考上一条；何凯文老师比较适合基础比较好的同学，他讲的句子都比较高级。\r\n翻译：唐静，课程里很多干货，推荐《拆分与组合分析法》，不过官网要到六月才更新，大家可以先看看19年的。\r\n真题：张剑，黄皮书。主要讲文章结构和解题思路，偏向于教大家搞清楚每个句子之间的关系和文章意思的理解。\r\n二、政治 网课推荐\r\n徐涛：他的课调理清晰，非常幽默，把马原这种枯燥难懂的课程讲得生动易懂，近两年广受好评。\r\n陆寓丰（腿姐）：她的课也非常有逻辑，调理清楚，很容易理解。答题套路很值得一看。\r\n肖秀荣：肖大大应该没人不知道了吧，后期8套卷和4套卷必看！押题一绝！超准！\r\n三、数学 网课推荐\r\n高数：推荐张宇和汤家凤，不过张宇比较适合基础比较好的人。\r\n线代：李永乐，曾任命题组老师。基础好的直接看强化课程，基础差一点的先看基础班视频；\r\n概率论：王式安，对知识点的拆分和命题点都掌握的很好。', ' 2019年12月10日 20:57');
INSERT INTO `topic` VALUES (50, '11', 18, '1111', ' 2019年12月10日 22:22');
INSERT INTO `topic` VALUES (51, '通告', 14, '近期将会不定时检查账号文明问题，一经发现账号存在不文明行为，严肃处理！', ' 2019年12月10日 22:39');
INSERT INTO `topic` VALUES (52, '考研注意事项分享', 14, '2020考研注意事项——初试时间\r\n2020考研的初试时间已经确定，是12月21-22日，个别学校/个别专业在23日才结束。上午8：30-11：30，下午2：00-5：00。另外，要注意所有的考研初试全是笔试！\r\n2020考研注意事项——网上预报名\r\n2020考研网上预报名的时间是2019年9月24日至9月27日，每天9:00-22:00。要注意，有的朋友一直处于考研目标院校的纠结中，想等正式报名时再填报，是不对的。无论你是否在犹豫，为了防止正式报名时遗忘和各种问题，都要在预报名时报名。\r\n2020考研注意事项——正式报名\r\n2020考研，网上正式报名的时间是2019年10月10日至10月31日，每天早上9:00开始，晚上22:00截止。自己要确定所用的时间是北京时间！\r\n2020考研注意事项——现场确认\r\n要注意每个地方，不同学校的现场确认时间一般是不一样的，由各个地方通知实行。现场确认时一般就是确认信息，然后拍摄照片，拍摄的照片可能会在研究生期间作为学生卡/学籍卡等使用。（所以要打扮一下哦）\r\n2020考研注意事项——打印准考证\r\n要注意打印准考证是有时间限制的，是在2019年12月14日至12月23日期间可以在研招网下载打印，也就是考试前一周才可以打印，其他时间不行。因此，报名时要记住自己的研招网登录账号/密码等信息。\r\n2020考研注意事项——妥善保管准考证\r\n即使是考研结束后，也不要丢弃准考证，因为在过完年后的2-3月份，会公布考研成绩，查分时要用到准考证上面的信息。而且，在复试时也需要使用准考证。\r\n', ' 2019年12月11日 17:21');
INSERT INTO `topic` VALUES (53, '考研复习分享', 18, '在复习的前期中期：复习前期和中期应该以参考书为主，通读全书给考研复习打下一个良好的基础。在考研后期一定要以历年的试题为主，反复研究琢磨，也是提分的关键。\r\n数学复习\r\n最好不要复习一遍之后才复习第二遍，一定要穿插着来，和英语背单词一样，复习到第四五章时要安排时间看第一章，六章七章之后看第二章，这样才能提高记忆效率，数学以动笔为主不要直接看答案，多练习能让你学更多的东西。\r\n英语贵在坚持\r\n我们上班中午一般有一个半小时休息时间，可以趴半个小时小睡保证精力，剩下的一个小时吃饭、用英语APP记100个单词或者是做两篇阅读。坚持一定有成果，万不可三天打渔两天晒网。\r\n关于考研班\r\n考研班对于上班的同学尤其必要，闭门造车要不得，因为我们没有太多的大块时间，更加需要有人指导，才能让学习更有效率。\r\n考研班的讲课更接近考研大纲，接近考试思路，提出一些重点题非常有用，通常都是真正出题的方向，好钢用在刀刃上，能帮你省1/4的时间。\r\n关于一个小技巧，这个方法很好用\r\n准备一个笔记本，能活页加纸的，从正面翻是领导讲话，开会记录，工作计划要点，但是从背后翻就是50个单元记不熟的单词，还有数学题，每天开会或者培训的时候，能拿出来做或者背单词，领导也看不见，零散时间效率特别高。（当然这个看个人的具体情况，不可盲目效仿）\r\n除了开会，每天通勤时间，排队时间都可以把笔记本拿出来看看，记一记背一背，灵活使用零散时间。\r\n关于设立工作节点\r\n做计划的时候和做项目一样，有大计划，有工作节点，到一个节点一定有个标志表示你完成了某个阶段，可以转入下一个阶段复习。比如前一阶段X月X日，英语阅读平均一篇错误保持在两个以内，就进入下个阶段，把阅读错误保持在一个以内。计划要有，一定要具体到某一天学什么，学几页，看几张，完成标志是什么，要用对待做项目的态度对待计划。\r\n\r\n', ' 2019年12月11日 17:59');
INSERT INTO `topic` VALUES (54, '考研关于休息', 19, '关于休息\r\n对于边上班边学习的人，学习时间就是从休息时间里挤出来的，我每天都是6个小时的睡眠，白天很容易犯困，晚上下班去自习室，更加困，困的话就趴着睡一会，不要勉强，一般也就十分钟，脑子立刻清醒了。', ' 2019年12月11日 18:00');
INSERT INTO `topic` VALUES (55, '奖惩制度', 19, '关于奖惩制度\r\n工作有奖惩才能保持积极性，学习也一样。每天上午有上午的计划，下午有下午的计划，上午计划完成，中午照常吃饭;如果没有完成，就罚自己不能吃饭，只喝单位食堂两碗免费汤和2个馒头，这样既省钱也不会因为饿影响下午的效率。一周计划完成的好，周日可以休息半天。', ' 2019年12月11日 18:02');
INSERT INTO `topic` VALUES (57, '你好', 18, '你好', ' 2019年12月12日 17:41');
INSERT INTO `topic` VALUES (58, '软件过程与管理', 14, '20173626郑锦大作业', ' 2020年6月10日 16:48');

-- ----------------------------
-- Table structure for topic1
-- ----------------------------
DROP TABLE IF EXISTS `topic1`;
CREATE TABLE `topic1`  (
  `topic_id1` int(10) NOT NULL AUTO_INCREMENT,
  `topic_webtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`topic_id1`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topic1
-- ----------------------------
INSERT INTO `topic1` VALUES (12, '没几天了，心里满是紧张', 18, ' 2019年12月10日 22:25');
INSERT INTO `topic1` VALUES (13, '近期严肃处理不文明行为', 14, ' 2019年12月10日 22:41');
INSERT INTO `topic1` VALUES (14, '考研冲刺阶段，大家紧张吗？是如何缓解的教教我', 18, ' 2019年12月11日 18:16');
INSERT INTO `topic1` VALUES (15, '今天天气真好，难道预示着我考研必过，哈哈哈哈！！！', 18, ' 2019年12月11日 18:17');
INSERT INTO `topic1` VALUES (16, '最后几天了，有点不知道复习哪科了，有大神指点一下吗', 19, ' 2019年12月11日 18:21');
INSERT INTO `topic1` VALUES (17, '今天心情好晴朗', 18, ' 2019年12月12日 16:53');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `user_password` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `user_nicename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_img` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `user_time` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `user_gx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (8, '20173658', '20173658', '流年', 'images\\15755444934513.jpg', ' 2019年12月10日 10:50', '一往无前，无所畏惧');
INSERT INTO `user` VALUES (10, '20173659', '0173659', '九年金色', 'images\\15755444934513.jpg', ' 2019年12月10日 10:50', '一往无前，无所畏惧');
INSERT INTO `user` VALUES (12, '456', '456', '啊啊啊', 'images\\15755444934513.jpg', ' 2019年12月10日 10:50', '一往无前，无所畏惧');
INSERT INTO `user` VALUES (14, '123456', '123456', '社区管理员', 'images\\1575547728482default.png', ' 2019年12月10日 10:50', '吼吼吼吼');
INSERT INTO `user` VALUES (15, '1554', '1555', '一笑奈何', 'images\\15759816203267.jpg', ' 2019年12月10日 20:38', '呵呵');
INSERT INTO `user` VALUES (16, '222', '222', '锦哥哥', 'images\\15759854261694.jpg', ' 2019年12月10日 21:43', '真好');
INSERT INTO `user` VALUES (17, '333', '333', '随便', NULL, ' 2019年12月10日 21:53', NULL);
INSERT INTO `user` VALUES (18, '528916935', '193820', '小甜心', 'images\\15761186980985.jpg', ' 2019年12月10日 22:09', '心之所向 无所畏惧');
INSERT INTO `user` VALUES (19, '1666727795', '199832', '似水流年6', 'images\\15760597952296.jpg', ' 2019年12月10日 22:11', '即使敌众我寡');
INSERT INTO `user` VALUES (20, '11111', '11111', '11111', NULL, '', NULL);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `userPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `userSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户性别',
  PRIMARY KEY (`userId`) USING BTREE,
  UNIQUE INDEX `userName_UNIQUE`(`userName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, '111', '111', '男');
INSERT INTO `userinfo` VALUES (2, '222', '11', '男');
INSERT INTO `userinfo` VALUES (5, '333', '11', '男');

SET FOREIGN_KEY_CHECKS = 1;
