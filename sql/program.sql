/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : program

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 07/04/2020 15:21:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `rank` int(3) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `ratingNum` double DEFAULT NULL,
  `ratingPeopleNum` int(11) DEFAULT NULL,
  `quote` varchar(50) DEFAULT NULL,
  `flag` int(1) DEFAULT '0',
  `dealTime` date DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of movie
-- ----------------------------
BEGIN;
INSERT INTO `movie` VALUES (1, '肖申克的救赎', 'https://movie.douban.com/subject/1292052/', 9.7, 1539997, '希望让人自由。', 0, '2020-04-05', NULL);
INSERT INTO `movie` VALUES (2, '霸王别姬', 'https://movie.douban.com/subject/1291546/', 9.6, 1139076, '风华绝代。', 1, '2020-04-05', '阿萨德');
INSERT INTO `movie` VALUES (3, '这个杀手不太冷', 'https://movie.douban.com/subject/1295644/', 9.4, 1391405, '怪蜀黍和小萝莉不得不说的故事。', 1, '2020-04-05', '11');
INSERT INTO `movie` VALUES (4, '阿甘正传', 'https://movie.douban.com/subject/1292720/', 9.4, 1202541, '一部美国近现代史。', 1, '2020-04-05', '11');
INSERT INTO `movie` VALUES (5, '美丽人生', 'https://movie.douban.com/subject/1292063/', 9.5, 704143, '最美的谎言。', 1, '2020-04-05', '11');
INSERT INTO `movie` VALUES (6, '千与千寻', 'https://movie.douban.com/subject/1291561/', 9.3, 1234788, '最好的宫崎骏，最好的久石让。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (7, '泰坦尼克号', 'https://movie.douban.com/subject/1292722/', 9.4, 1144102, '失去的才是永恒的。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (8, '辛德勒的名单', 'https://movie.douban.com/subject/1295124/', 9.5, 624905, '拯救一个人，就是拯救整个世界。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (9, '盗梦空间', 'https://movie.douban.com/subject/3541415/', 9.3, 1191466, '诺兰给了我们一场无法盗取的梦。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (10, '忠犬八公的故事', 'https://movie.douban.com/subject/3011091/', 9.3, 796789, '永远都不能忘记你所爱的人。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (11, '机器人总动员', 'https://movie.douban.com/subject/2131459/', 9.3, 790279, '小瓦力，大人生。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (12, '三傻大闹宝莱坞', 'https://movie.douban.com/subject/3793023/', 9.2, 1077273, '英俊版憨豆，高情商版谢耳朵。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (13, '放牛班的春天', 'https://movie.douban.com/subject/1291549/', 9.3, 750032, '天籁一般的童声，是最接近上帝的存在。', 1, '2020-04-07', '1195687131@qq.com');
INSERT INTO `movie` VALUES (14, '海上钢琴师', 'https://movie.douban.com/subject/1292001/', 9.2, 874643, '每个人都要走一条自己坚定了的路，就算是粉身碎骨。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (15, '楚门的世界', 'https://movie.douban.com/subject/1292064/', 9.2, 833719, '如果再也不能见到你，祝你早安，午安，晚安。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (16, '大话西游之大圣娶亲', 'https://movie.douban.com/subject/1292213/', 9.2, 837024, '一生所爱。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (17, '星际穿越', 'https://movie.douban.com/subject/1889243/', 9.3, 856591, '爱是一种力量，让我们超越时空感知它的存在。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (18, '龙猫', 'https://movie.douban.com/subject/1291560/', 9.2, 740572, '人人心中都有个龙猫，童年就永远不会消失。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (19, '熔炉', 'https://movie.douban.com/subject/5912992/', 9.3, 493425, '我们一路奋战不是为了改变世界，而是为了不让世界改变我们。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (20, '教父', 'https://movie.douban.com/subject/1291841/', 9.3, 537625, '千万不要记恨你的对手，这样会让你失去理智。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (21, '无间道', 'https://movie.douban.com/subject/1307914/', 9.2, 687987, '香港电影史上永不过时的杰作。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (22, '疯狂动物城', 'https://movie.douban.com/subject/25662329/', 9.2, 963714, '迪士尼给我们营造的乌托邦就是这样，永远善良勇敢，永远出乎意料。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (23, '当幸福来敲门', 'https://movie.douban.com/subject/1849031/', 9.1, 872396, '平民励志片。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (24, '怦然心动', 'https://movie.douban.com/subject/3319755/', 9, 973646, '真正的幸福是来自内心深处。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (25, '触不可及', 'https://movie.douban.com/subject/6786002/', 9.2, 570342, '满满温情的高雅喜剧。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (26, '蝙蝠侠：黑暗骑士', 'https://movie.douban.com/subject/1851857/', 9.1, 562490, '无尽的黑暗。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (27, '乱世佳人', 'https://movie.douban.com/subject/1300267/', 9.3, 394996, 'Tomorrow is another day.', 0, NULL, NULL);
INSERT INTO `movie` VALUES (28, '活着', 'https://movie.douban.com/subject/1292365/', 9.2, 444978, '张艺谋最好的电影。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (29, '控方证人', 'https://movie.douban.com/subject/1296141/', 9.6, 200427, '比利·怀德满分作品。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (30, '少年派的奇幻漂流', 'https://movie.douban.com/subject/1929463/', 9, 855704, '瑰丽壮观、无人能及的冒险之旅。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (31, '指环王3：王者无敌', 'https://movie.douban.com/subject/1291552/', 9.2, 432786, '史诗的终章。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (32, '摔跤吧！爸爸', 'https://movie.douban.com/subject/26387939/', 9, 850820, '你不是在为你一个人战斗，你要让千千万万的女性看到女生并不是只能相夫教子。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (33, '天空之城', 'https://movie.douban.com/subject/1291583/', 9.1, 507862, '对天空的追逐，永不停止。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (34, '鬼子来了', 'https://movie.douban.com/subject/1291858/', 9.2, 361629, '对敌人的仁慈，就是对自己残忍。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (35, '十二怒汉', 'https://movie.douban.com/subject/1293182/', 9.4, 257384, '1957年的理想主义。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (36, '天堂电影院', 'https://movie.douban.com/subject/1291828/', 9.2, 417277, '那些吻戏，那些青春，都在影院的黑暗里被泪水冲刷得无比清晰。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (37, '飞屋环游记', 'https://movie.douban.com/subject/2129039/', 9, 775407, '最后那些最无聊的事情，才是最值得怀念的。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (38, '大话西游之月光宝盒', 'https://movie.douban.com/subject/1299398/', 9, 676297, '旷古烁今。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (39, '哈尔的移动城堡', 'https://movie.douban.com/subject/1308807/', 9, 570831, '带着心爱的人在天空飞翔。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (40, '搏击俱乐部', 'https://movie.douban.com/subject/1292000/', 9, 543702, '邪恶与平庸蛰伏于同一个母体，在特定的时间互相对峙。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (41, '罗马假日', 'https://movie.douban.com/subject/1293839/', 9, 577188, '爱情哪怕只有一天。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (42, '末代皇帝', 'https://movie.douban.com/subject/1293172/', 9.2, 355471, '“不要跟我比惨，我比你更惨”再适合这部电影不过了。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (43, '寻梦环游记', 'https://movie.douban.com/subject/20495023/', 9, 812858, '死亡不是真的逝去，遗忘才是永恒的消亡。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (44, '闻香识女人', 'https://movie.douban.com/subject/1298624/', 9, 494255, '史上最美的探戈。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (45, '辩护人', 'https://movie.douban.com/subject/21937445/', 9.2, 342053, '电影的现实意义大过电影本身。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (46, '素媛', 'https://movie.douban.com/subject/21937452/', 9.2, 323478, '受过伤害的人总是笑得最开心，因为他们不愿意让身边的人承受一样的痛苦。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (47, '窃听风暴', 'https://movie.douban.com/subject/1900841/', 9.1, 340752, '别样人生。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (48, '死亡诗社', 'https://movie.douban.com/subject/1291548/', 9, 415192, '当一个死水般的体制内出现一个活跃的变数时，所有的腐臭都站在了光明的对面。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (49, '两杆大烟枪', 'https://movie.douban.com/subject/1293350/', 9.1, 370172, '4个臭皮匠顶个诸葛亮，盖·里奇果然不是盖的。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (50, '飞越疯人院', 'https://movie.douban.com/subject/1292224/', 9.1, 374100, '自由万岁。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (51, '指环王2：双塔奇兵', 'https://movie.douban.com/subject/1291572/', 9, 405633, '承前启后的史诗篇章。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (52, '教父2', 'https://movie.douban.com/subject/1299131/', 9.2, 292027, '优雅的孤独。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (53, '指环王1：魔戒再现', 'https://movie.douban.com/subject/1291571/', 9, 455254, '传说的开始。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (54, '狮子王', 'https://movie.douban.com/subject/1301753/', 9, 441832, '动物版《哈姆雷特》。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (55, 'V字仇杀队', 'https://movie.douban.com/subject/1309046/', 8.9, 635694, '一张面具背后的理想与革命。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (56, '美丽心灵', 'https://movie.douban.com/subject/1306029/', 9, 443523, '爱是一切逻辑和原由。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (57, '饮食男女', 'https://movie.douban.com/subject/1291818/', 9.1, 313587, '人生不能像做菜，把所有的料都准备好了才下锅。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (58, '海豚湾', 'https://movie.douban.com/subject/3442220/', 9.3, 246733, '海豚的微笑，是世界上最高明的伪装。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (59, '情书', 'https://movie.douban.com/subject/1292220/', 8.9, 545326, '暗恋的极致。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (60, '何以为家', 'https://movie.douban.com/subject/30170448/', 9.1, 355543, '凝视卑弱生命，用电影改变命运。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (61, '钢琴家', 'https://movie.douban.com/subject/1296736/', 9.1, 293470, '音乐能化解仇恨。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (62, '大闹天宫', 'https://movie.douban.com/subject/1418019/', 9.3, 190793, '经典之作，历久弥新。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (63, '本杰明·巴顿奇事', 'https://movie.douban.com/subject/1485260/', 8.9, 578218, '在时间之河里感受溺水之苦。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (64, '哈利·波特与魔法石', 'https://movie.douban.com/subject/1295038/', 8.9, 468042, '童话世界的开端。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (65, '看不见的客人', 'https://movie.douban.com/subject/26580232/', 8.8, 636581, '你以为你以为的就是你以为的。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (66, '黑客帝国', 'https://movie.douban.com/subject/1291843/', 8.9, 435698, '视觉革命。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (67, '西西里的美丽传说', 'https://movie.douban.com/subject/1292402/', 8.8, 553610, '美丽无罪。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (68, '小鞋子', 'https://movie.douban.com/subject/1303021/', 9.2, 218594, '奔跑的孩子是天使。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (69, '美国往事', 'https://movie.douban.com/subject/1292262/', 9.2, 248520, '往事如烟，无处祭奠。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (70, '拯救大兵瑞恩', 'https://movie.douban.com/subject/1292849/', 9, 370750, '美利坚精神输出大片No1.', 0, NULL, NULL);
INSERT INTO `movie` VALUES (71, '让子弹飞', 'https://movie.douban.com/subject/3742360/', 8.8, 939327, '你给我翻译翻译，神马叫做TMD的惊喜。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (72, '音乐之声', 'https://movie.douban.com/subject/1294408/', 9, 341154, '用音乐化解仇恨，让歌声串起美好。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (73, '致命魔术', 'https://movie.douban.com/subject/1780330/', 8.8, 498604, '孪生蝙蝠侠大战克隆金刚狼。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (74, '猫鼠游戏', 'https://movie.douban.com/subject/1305487/', 8.9, 405770, '骗子大师和执著警探的你追我跑故事。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (75, '七宗罪', 'https://movie.douban.com/subject/1292223/', 8.8, 594320, '警察抓小偷，老鼠玩死猫。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (76, '被嫌弃的松子的一生', 'https://movie.douban.com/subject/1787291/', 8.9, 446327, '以戏谑来戏谑戏谑。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (77, '低俗小说', 'https://movie.douban.com/subject/1291832/', 8.8, 495200, '故事的高级讲法。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (78, '沉默的羔羊', 'https://movie.douban.com/subject/1293544/', 8.8, 498258, '安东尼·霍普金斯的顶级表演。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (79, '蝴蝶效应', 'https://movie.douban.com/subject/1292343/', 8.8, 549515, '人的命运被自己瞬间的抉择改变。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (80, '春光乍泄', 'https://movie.douban.com/subject/1292679/', 8.9, 368287, '爱情纠缠，男女一致。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (81, '勇敢的心', 'https://movie.douban.com/subject/1294639/', 8.9, 388557, '史诗大片的典范。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (82, '天使爱美丽', 'https://movie.douban.com/subject/1292215/', 8.7, 658505, '法式小清新。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (83, '穿条纹睡衣的男孩', 'https://movie.douban.com/subject/3008247/', 9, 257634, '尽管有些不切实际的幻想，这部电影依旧是一部感人肺腑的佳作。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (84, '剪刀手爱德华', 'https://movie.douban.com/subject/1292370/', 8.7, 676845, '浪漫忧郁的成人童话。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (85, '心灵捕手', 'https://movie.douban.com/subject/1292656/', 8.8, 403610, '人生中应该拥有这样的一段豁然开朗。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (86, '禁闭岛', 'https://movie.douban.com/subject/2334904/', 8.8, 538091, '昔日翩翩少年，今日大腹便便。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (87, '布达佩斯大饭店', 'https://movie.douban.com/subject/11525673/', 8.8, 501416, '小清新的故事里注入了大历史的情怀。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (88, '阿凡达', 'https://movie.douban.com/subject/1652587/', 8.7, 788100, '绝对意义上的美轮美奂。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (89, '入殓师', 'https://movie.douban.com/subject/2149806/', 8.8, 402154, '死可能是一道门，逝去并不是终结，而是超越，走向下一程。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (90, '幽灵公主', 'https://movie.douban.com/subject/1297359/', 8.9, 337085, '人与自然的战争史诗。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (91, '加勒比海盗', 'https://movie.douban.com/subject/1298070/', 8.7, 520120, '约翰尼·德普的独角戏。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (92, '摩登时代', 'https://movie.douban.com/subject/1294371/', 9.3, 149294, '大时代中的人生，小人物的悲喜。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (93, '致命ID', 'https://movie.douban.com/subject/1297192/', 8.7, 455869, '最不可能的那个人永远是最可能的。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (94, '断背山', 'https://movie.douban.com/subject/1418834/', 8.7, 449185, '每个人心中都有一座断背山。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (95, '阳光灿烂的日子', 'https://movie.douban.com/subject/1291875/', 8.8, 380084, '一场华丽的意淫。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (96, '重庆森林', 'https://movie.douban.com/subject/1291999/', 8.7, 472245, '寂寞没有期限。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (97, '第六感', 'https://movie.douban.com/subject/1297630/', 8.8, 326803, '深入内心的恐怖，出人意料的结局。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (98, '狩猎', 'https://movie.douban.com/subject/6985810/', 9.1, 197088, '人言可畏。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (99, '喜剧之王', 'https://movie.douban.com/subject/1302425/', 8.7, 514347, '我是一个演员。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (100, '玛丽和马克思', 'https://movie.douban.com/subject/3072124/', 8.9, 290374, '你是我最好的朋友，你是我唯一的朋友 。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (101, '消失的爱人', 'https://movie.douban.com/subject/21318488/', 8.7, 525809, '年度最佳date movie。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (102, '告白', 'https://movie.douban.com/subject/4268598/', 8.7, 468169, '没有一人完全善，也没有一人完全恶。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (103, '小森林 夏秋篇', 'https://movie.douban.com/subject/25814705/', 9, 226551, '那些静得只能听见呼吸的日子里，你明白孤独即生活。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (104, '大鱼', 'https://movie.douban.com/subject/1291545/', 8.8, 347968, '抱着梦想而活着的人是幸福的，怀抱梦想而死去的人是不朽的。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (105, '一一', 'https://movie.douban.com/subject/1292434/', 9, 210394, '我们都曾经是一一。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (106, '阳光姐妹淘', 'https://movie.douban.com/subject/4917726/', 8.8, 378487, '再多各自牛逼的时光，也比不上一起傻逼的岁月。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (107, '爱在黎明破晓前', 'https://movie.douban.com/subject/1296339/', 8.8, 327362, '缘分是个连绵词，最美不过一瞬。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (108, '请以你的名字呼唤我', 'https://movie.douban.com/subject/26799731/', 8.8, 327990, '沉醉在电影的情感和视听氛围中无法自拔。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (109, '射雕英雄传之东成西就', 'https://movie.douban.com/subject/1316510/', 8.7, 385156, '百看不厌。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (110, '甜蜜蜜', 'https://movie.douban.com/subject/1305164/', 8.8, 307563, '相逢只要一瞬间，等待却像是一辈子。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (111, '侧耳倾听', 'https://movie.douban.com/subject/1297052/', 8.9, 256793, '少女情怀总是诗。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (112, '红辣椒', 'https://movie.douban.com/subject/1865703/', 8.9, 211089, '梦的勾结。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (113, '驯龙高手', 'https://movie.douban.com/subject/2353023/', 8.7, 439197, '和谐的生活离不开摸头与被摸头。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (114, '倩女幽魂', 'https://movie.douban.com/subject/1297447/', 8.7, 400419, '两张绝世的脸。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (115, '超脱', 'https://movie.douban.com/subject/5322596/', 8.8, 257116, '穷尽一生，我们要学会的，不过是彼此拥抱。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (116, '杀人回忆', 'https://movie.douban.com/subject/1300299/', 8.8, 316011, '关于连环杀人悬案的集体回忆。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (117, '海蒂和爷爷', 'https://movie.douban.com/subject/25958717/', 9.1, 143278, '如果生活中有什么使你感到快乐，那就去做吧！不要管别人说什么。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (118, '恐怖直播', 'https://movie.douban.com/subject/21360417/', 8.7, 349803, '恐怖分子的“秋菊打官司”。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (119, '菊次郎的夏天', 'https://movie.douban.com/subject/1293359/', 8.8, 284941, '从没见过那么流氓的温柔，从没见过那么温柔的流氓。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (120, '爱在日落黄昏时', 'https://movie.douban.com/subject/1291990/', 8.8, 285696, '九年后的重逢是世俗和责任的交叠，没了悸动和青涩，沧桑而温暖。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (121, '7号房的礼物', 'https://movie.douban.com/subject/10777687/', 8.8, 277116, '《我是山姆》的《美丽人生》。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (122, '小森林 冬春篇', 'https://movie.douban.com/subject/25814707/', 9, 196666, '尊敬他人，尊敬你生活的这片土地，明白孤独是人生的常态。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (123, '风之谷', 'https://movie.douban.com/subject/1291585/', 8.8, 246229, '动画片的圣经。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (124, '哈利·波特与死亡圣器(下)', 'https://movie.douban.com/subject/3011235/', 8.7, 408926, '10年的完美句点。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (125, '我不是药神', 'https://movie.douban.com/subject/26752088/', 9, 1183718, NULL, 0, NULL, NULL);
INSERT INTO `movie` VALUES (126, '幸福终点站', 'https://movie.douban.com/subject/1292274/', 8.7, 310868, '有时候幸福需要等一等。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (127, '蝙蝠侠：黑暗骑士崛起', 'https://movie.douban.com/subject/3395373/', 8.7, 416537, '诺兰就是保证。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (128, '上帝之城', 'https://movie.douban.com/subject/1292208/', 8.9, 200516, '被上帝抛弃了的上帝之城。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (129, '萤火之森', 'https://movie.douban.com/subject/5989818/', 8.8, 262221, '触不到的恋人。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (130, '借东西的小人阿莉埃蒂', 'https://movie.douban.com/subject/4202302/', 8.8, 309177, '曾经的那段美好会沉淀为一辈子的记忆。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (131, '超能陆战队', 'https://movie.douban.com/subject/11026735/', 8.6, 566181, 'Balalala~~~', 0, NULL, NULL);
INSERT INTO `movie` VALUES (132, '唐伯虎点秋香', 'https://movie.douban.com/subject/1306249/', 8.5, 547096, '华太师是黄霑，吴镇宇四大才子之一。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (133, '神偷奶爸', 'https://movie.douban.com/subject/3287562/', 8.5, 573500, 'Mr. I Don\'t Care其实也有Care的时候。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (134, '无人知晓', 'https://movie.douban.com/subject/1292337/', 9.1, 133567, '我的平常生活就是他人的幸福。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (135, '怪兽电力公司', 'https://movie.douban.com/subject/1291579/', 8.7, 364203, '不要给它起名字，起了名字就有感情了。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (136, '电锯惊魂', 'https://movie.douban.com/subject/1417598/', 8.7, 288128, '真相就在眼前。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (137, '岁月神偷', 'https://movie.douban.com/subject/3792799/', 8.7, 394909, '岁月流逝，来日可追。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (138, '玩具总动员3', 'https://movie.douban.com/subject/1858711/', 8.8, 279369, '跨度十五年的欢乐与泪水。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (139, '血战钢锯岭', 'https://movie.douban.com/subject/26325320/', 8.7, 473504, '优秀的战争片不会美化战场，不会粉饰死亡，不会矮化敌人，不会无视常识，最重要的，不会宣扬战争。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (140, '谍影重重3', 'https://movie.douban.com/subject/1578507/', 8.8, 255149, '像吃了苏打饼一样干脆的电影。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (141, '疯狂原始人', 'https://movie.douban.com/subject/1907966/', 8.7, 519304, '老少皆宜，这就是好莱坞动画的魅力。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (142, '七武士', 'https://movie.douban.com/subject/1295399/', 9.2, 109070, '时代悲歌。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (143, '英雄本色', 'https://movie.douban.com/subject/1297574/', 8.7, 277380, '英雄泪短，兄弟情长。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (144, '喜宴', 'https://movie.douban.com/subject/1303037/', 8.9, 195482, '中国家庭的喜怒哀乐忍。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (145, '真爱至上', 'https://movie.douban.com/subject/1292401/', 8.6, 430981, '爱，是个动词。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (146, '萤火虫之墓', 'https://movie.douban.com/subject/1293318/', 8.7, 272579, '幸福是生生不息，却难以触及的远。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (147, '东邪西毒', 'https://movie.douban.com/subject/1292328/', 8.6, 362919, '电影诗。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (148, '傲慢与偏见', 'https://movie.douban.com/subject/1418200/', 8.5, 430655, '爱是摈弃傲慢与偏见之后的曙光。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (149, '时空恋旅人', 'https://movie.douban.com/subject/10577869/', 8.7, 303445, '把每天当作最后一天般珍惜度过，积极拥抱生活，就是幸福。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (150, '贫民窟的百万富翁', 'https://movie.douban.com/subject/2209573/', 8.6, 498518, '上帝之城+猜火车+阿甘正传+开心辞典=山寨富翁', 0, NULL, NULL);
INSERT INTO `movie` VALUES (151, '黑天鹅', 'https://movie.douban.com/subject/1978709/', 8.5, 549877, '黑暗之美。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (152, '记忆碎片', 'https://movie.douban.com/subject/1304447/', 8.6, 373868, '一个针管引发的血案。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (153, '心迷宫', 'https://movie.douban.com/subject/25917973/', 8.7, 274706, '荒诞讽刺，千奇百巧，抽丝剥茧，百转千回。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (154, '纵横四海', 'https://movie.douban.com/subject/1295409/', 8.8, 226986, '香港浪漫主义警匪动作片的巅峰之作。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (155, '教父3', 'https://movie.douban.com/subject/1294240/', 8.8, 192142, '任何信念的力量，都无法改变命运。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (156, '荒蛮故事', 'https://movie.douban.com/subject/24750126/', 8.8, 224041, '始于荒诞，止于更荒诞。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (157, '完美的世界', 'https://movie.douban.com/subject/1300992/', 9.1, 123260, '坏人的好总是比好人的好来得更感人。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (158, '达拉斯买家俱乐部', 'https://movie.douban.com/subject/1793929/', 8.7, 265269, 'Jared Leto的腿比女人还美！', 0, NULL, NULL);
INSERT INTO `movie` VALUES (159, '雨人', 'https://movie.douban.com/subject/1291870/', 8.7, 267859, '生活在自己的世界里，也可以让周围的人显得可笑和渺小。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (160, '三块广告牌', 'https://movie.douban.com/subject/26611804/', 8.7, 494658, '怼天怼地，你走后，她与世界为敌。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (161, '花样年华', 'https://movie.douban.com/subject/1291557/', 8.6, 337953, '偷情本没有这样美。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (162, '被解救的姜戈', 'https://movie.douban.com/subject/6307447/', 8.7, 358174, '热血沸腾，那个低俗、性感的无耻混蛋又来了。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (163, '卢旺达饭店', 'https://movie.douban.com/subject/1291822/', 8.9, 161684, '当这个世界闭上双眼，他却敞开了怀抱。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (164, '你的名字。', 'https://movie.douban.com/subject/26683290/', 8.4, 758542, '穿越错位的时空，仰望陨落的星辰，你没留下你的名字，我却无法忘记那句“我爱你”。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (165, '海边的曼彻斯特', 'https://movie.douban.com/subject/25980443/', 8.6, 295184, '我们都有权利不与自己的过去和解。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (166, '我是山姆', 'https://movie.douban.com/subject/1306861/', 8.9, 156002, '爱并不需要智商 。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (167, '头脑特工队', 'https://movie.douban.com/subject/10533913/', 8.7, 340502, '愿我们都不用长大，每一座城堡都能永远存在。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (168, '你看起来好像很好吃', 'https://movie.douban.com/subject/4848115/', 8.8, 202584, '感情不分食草或者食肉。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (169, '恋恋笔记本', 'https://movie.douban.com/subject/1309163/', 8.5, 386165, '爱情没有那么多借口，如果不能圆满，只能说明爱的不够。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (170, '哪吒闹海', 'https://movie.douban.com/subject/1307315/', 9, 130027, '想你时你在闹海。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (171, '无敌破坏王', 'https://movie.douban.com/subject/6534248/', 8.7, 307367, '迪士尼和皮克斯拿错剧本的产物。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (172, '虎口脱险', 'https://movie.douban.com/subject/1296909/', 8.9, 141246, '永远看不腻的喜剧。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (173, '冰川时代', 'https://movie.douban.com/subject/1291578/', 8.5, 379645, '松鼠才是角儿。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (174, '二十二', 'https://movie.douban.com/subject/26430107/', 8.7, 169193, '有一些东西不应该被遗忘。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (175, '海洋', 'https://movie.douban.com/subject/3443389/', 9, 116585, '大海啊，不全是水。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (176, '雨中曲', 'https://movie.douban.com/subject/1293460/', 9, 125215, '骨灰级歌舞片。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (177, '爆裂鼓手', 'https://movie.douban.com/subject/25773932/', 8.7, 324801, '这个世界从不善待努力的人，努力了也不一定会成功，但是知道自己在努力，就是活下去的动力。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (178, '未麻的部屋', 'https://movie.douban.com/subject/1395091/', 8.9, 147785, '好的剧本是，就算你猜到了结局也猜不到全部。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (179, '模仿游戏', 'https://movie.douban.com/subject/10463953/', 8.6, 355934, '他给机器起名“克里斯托弗”，因为这是他初恋的名字。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (180, '一个叫欧维的男人决定去死', 'https://movie.douban.com/subject/26628357/', 8.8, 195954, '惠及一生的美丽。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (181, '忠犬八公物语', 'https://movie.douban.com/subject/1959195/', 9.1, 96902, '养狗三日，便会对你终其一生。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (182, '燃情岁月', 'https://movie.douban.com/subject/1295865/', 8.8, 185345, '传奇，不是每个人都可以拥有。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (183, '人工智能', 'https://movie.douban.com/subject/1302827/', 8.6, 258923, '对爱的执着，可以超越一切。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (184, '魔女宅急便', 'https://movie.douban.com/subject/1307811/', 8.6, 281420, '宫崎骏的电影总让人感觉世界是美好的，阳光明媚的。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (185, '房间', 'https://movie.douban.com/subject/25724855/', 8.8, 229881, '被偷走的岁月，被伤害的生命，被禁锢的灵魂，终将被希望和善意救赎。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (186, '穿越时空的少女', 'https://movie.douban.com/subject/1937946/', 8.6, 250423, '爱上未来的你。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (187, '天书奇谭', 'https://movie.douban.com/subject/1428581/', 9.1, 91923, '传奇的年代，醉人的童话。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (188, '恐怖游轮', 'https://movie.douban.com/subject/3011051/', 8.4, 459701, '不要企图在重复中寻找已经失去的爱。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (189, '魂断蓝桥', 'https://movie.douban.com/subject/1293964/', 8.8, 164894, '中国式内在的美国电影。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (190, '黑客帝国3：矩阵革命', 'https://movie.douban.com/subject/1302467/', 8.7, 226173, '不得不说，《黑客帝国》系列是商业片与科幻、哲学完美结合的典范。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (191, '海街日记', 'https://movie.douban.com/subject/25895901/', 8.7, 214479, '是枝裕和的家庭习作。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (192, '猜火车', 'https://movie.douban.com/subject/1292528/', 8.5, 306746, '不可猜的青春迷笛。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (193, '罗生门', 'https://movie.douban.com/subject/1291879/', 8.8, 175737, '人生的N种可能性。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (194, '完美陌生人', 'https://movie.douban.com/subject/26614893/', 8.5, 334453, '来啊，互相伤害啊！', 0, NULL, NULL);
INSERT INTO `movie` VALUES (195, '阿飞正传', 'https://movie.douban.com/subject/1305690/', 8.5, 296178, '王家卫是一种风格，张国荣是一个代表。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (196, '头号玩家', 'https://movie.douban.com/subject/4920389/', 8.7, 825824, '写给影迷，动漫迷和游戏迷的一封情书。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (197, '香水', 'https://movie.douban.com/subject/1760622/', 8.5, 362866, '一个单凭体香达到高潮的男人。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (198, '功夫', 'https://movie.douban.com/subject/1291543/', 8.4, 466727, '警恶惩奸，维护世界和平这个任务就交给你了，好吗？', 0, NULL, NULL);
INSERT INTO `movie` VALUES (199, '可可西里', 'https://movie.douban.com/subject/1308857/', 8.7, 171353, '坚硬的信仰。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (200, '朗读者', 'https://movie.douban.com/subject/2213597/', 8.5, 333635, '当爱情跨越年龄的界限，它似乎能变得更久远一点，成为一种责任，一种水到渠成的相濡以沫。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (201, '谍影重重2', 'https://movie.douban.com/subject/1308767/', 8.6, 219273, '谁说王家卫镜头很晃？', 0, NULL, NULL);
INSERT INTO `movie` VALUES (202, '浪潮', 'https://movie.douban.com/subject/2297265/', 8.7, 173557, '世界离独裁只有五天。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (203, '牯岭街少年杀人事件', 'https://movie.douban.com/subject/1292329/', 8.8, 149612, '弱者送给弱者的一刀。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (204, '谍影重重', 'https://movie.douban.com/subject/1304102/', 8.6, 261310, '哗啦啦啦啦，天在下雨，哗啦啦啦啦，云在哭泣……找自己。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (205, '战争之王', 'https://movie.douban.com/subject/1419936/', 8.6, 225183, '做一颗让别人需要你的棋子。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (206, '地球上的星星', 'https://movie.douban.com/subject/2363506/', 8.9, 121032, '天使保护事件始末。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (207, '疯狂的石头', 'https://movie.douban.com/subject/1862151/', 8.4, 452594, '中国版《两杆大烟枪》。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (208, '初恋这件小事', 'https://movie.douban.com/subject/4739952/', 8.3, 634638, '黑小鸭速效美白记。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (209, '青蛇', 'https://movie.douban.com/subject/1303394/', 8.5, 304345, '人生如此，浮生如斯。谁人言，花彼岸，此生情长意短。谁都是不懂爱的罢了。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (210, '惊魂记', 'https://movie.douban.com/subject/1293181/', 8.9, 120535, '故事的反转与反转，分裂电影的始祖。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (211, '终结者2：审判日', 'https://movie.douban.com/subject/1291844/', 8.6, 198950, '少见的超越首部的续集，动作片中的经典。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (212, '源代码', 'https://movie.douban.com/subject/3075287/', 8.4, 521166, '邓肯·琼斯继《月球》之后再度奉献出一部精彩绝伦的科幻佳作。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (213, '爱在午夜降临前', 'https://movie.douban.com/subject/10808442/', 8.8, 167439, '所谓爱情，就是话唠一路，都不会心生腻烦，彼此嫌弃。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (214, '步履不停', 'https://movie.douban.com/subject/2222996/', 8.8, 139752, '日本的家庭电影已经是世界巅峰了，步履不停是巅峰中的佳作。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (215, '新龙门客栈', 'https://movie.douban.com/subject/1292287/', 8.5, 258343, '嬉笑怒骂，调风动月。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (216, '奇迹男孩', 'https://movie.douban.com/subject/26787574/', 8.6, 323640, '世界不完美，爱会有奇迹。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (217, '小萝莉的猴神大叔', 'https://movie.douban.com/subject/26393561/', 8.5, 271925, '宝莱坞的萝莉与大叔。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (218, '追随', 'https://movie.douban.com/subject/1397546/', 8.9, 108496, '诺兰的牛逼来源于内心散发出的恐惧。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (219, '一次别离', 'https://movie.douban.com/subject/5964718/', 8.7, 168271, '只有有信仰的人才能说出事实真相。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (220, '无耻混蛋', 'https://movie.douban.com/subject/1438652/', 8.5, 294427, '昆汀同学越来越变态了，比北野武还杜琪峰。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (221, '再次出发之纽约遇见你', 'https://movie.douban.com/subject/6874403/', 8.5, 245739, '爱我就给我看你的播放列表。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (222, '釜山行', 'https://movie.douban.com/subject/25986180/', 8.4, 563407, '揭露人性的丧尸题材力作。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (223, '血钻', 'https://movie.douban.com/subject/1428175/', 8.6, 196715, '每个美丽事物背后都是滴血的现实。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (224, '东京物语', 'https://movie.douban.com/subject/1291568/', 9.2, 73038, '东京那么大，如果有一天走失了，恐怕一辈子不能再相见。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (225, '撞车', 'https://movie.douban.com/subject/1388216/', 8.6, 219508, '天使与魔鬼的冲撞。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (226, '彗星来的那一夜', 'https://movie.douban.com/subject/25807345/', 8.5, 276711, '小成本大魅力。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (227, '城市之光', 'https://movie.douban.com/subject/1293908/', 9.3, 65192, '永远的小人物，伟大的卓别林。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (228, '2001太空漫游', 'https://movie.douban.com/subject/1292226/', 8.7, 149732, '现代科幻电影的开山之作，最伟大导演的最伟大影片。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (229, '梦之安魂曲', 'https://movie.douban.com/subject/1292270/', 8.7, 144905, '一场没有春天的噩梦。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (230, '新世界', 'https://movie.douban.com/subject/10437779/', 8.7, 150068, '要做就做得狠一点，这样才能活下去。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (231, '绿里奇迹', 'https://movie.douban.com/subject/1300374/', 8.7, 145277, '天使暂时离开。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (232, '疯狂的麦克斯4：狂暴之路', 'https://movie.douban.com/subject/3592854/', 8.6, 296748, '“多么美好的一天！”轰轰轰砰咚，啪哒哒哒轰隆隆，磅~', 0, NULL, NULL);
INSERT INTO `movie` VALUES (233, '聚焦', 'https://movie.douban.com/subject/25954475/', 8.8, 172929, '新闻人的理性求真。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (234, 'E.T. 外星人', 'https://movie.douban.com/subject/1294638/', 8.5, 211460, '生病的E.T.皮肤的颜色就像柿子饼。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (235, '这个男人来自地球', 'https://movie.douban.com/subject/2300586/', 8.5, 245181, '科幻真正的魅力不是视觉效果能取代的。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (236, '末路狂花', 'https://movie.douban.com/subject/1291992/', 8.7, 138206, '没有了退路，只好飞向自由。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (237, '黑鹰坠落', 'https://movie.douban.com/subject/1291824/', 8.6, 169778, '还原真实而残酷的战争。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (238, '发条橙', 'https://movie.douban.com/subject/1292233/', 8.5, 238135, '我完全康复了。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (239, '遗愿清单', 'https://movie.douban.com/subject/1867345/', 8.6, 191538, '用剩余不多的时间，去燃烧整个生命。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (240, '变脸', 'https://movie.douban.com/subject/1292659/', 8.4, 272810, '当发哥的风衣、墨镜出现在了凯奇身上⋯⋯', 0, NULL, NULL);
INSERT INTO `movie` VALUES (241, '勇闯夺命岛', 'https://movie.douban.com/subject/1292728/', 8.6, 182321, '类型片的极致。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (242, '国王的演讲', 'https://movie.douban.com/subject/4023638/', 8.4, 436397, '皇上无话儿。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (243, '我爱你', 'https://movie.douban.com/subject/5908478/', 9, 84754, '你要相信，这世上真的有爱存在，不管在什么年纪', 0, NULL, NULL);
INSERT INTO `movie` VALUES (244, '黄金三镖客', 'https://movie.douban.com/subject/1401118/', 9.1, 71138, '最棒的西部片。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (245, '千钧一发', 'https://movie.douban.com/subject/1300117/', 8.7, 131428, '一部能引人思考的科幻励志片。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (246, '非常嫌疑犯', 'https://movie.douban.com/subject/1292214/', 8.6, 163485, '我不信仰上帝，但我敬畏上帝。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (247, '秒速5厘米', 'https://movie.douban.com/subject/2043546/', 8.3, 413186, '青春就是放弃和怀念。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (248, '驴得水', 'https://movie.douban.com/subject/25921812/', 8.3, 503644, '过去的如果就让它过去了，未来只会越来越糟！', 0, NULL, NULL);
INSERT INTO `movie` VALUES (249, '卡萨布兰卡', 'https://movie.douban.com/subject/1296753/', 8.6, 160677, '世界上有那么多女人那么多酒馆，但她偏偏走进我的这家。', 0, NULL, NULL);
INSERT INTO `movie` VALUES (250, '四个春天', 'https://movie.douban.com/subject/27191492/', 8.9, 87485, '来也匆匆去也匆匆，就这样风雨兼程。', 0, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `hour` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `min` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `sec` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of schedule
-- ----------------------------
BEGIN;
INSERT INTO `schedule` VALUES (1, '00 20 14 * * ?', '14', '20', '00');
COMMIT;

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `high` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `low` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `fengli` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `fengxiang` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of weather
-- ----------------------------
BEGIN;
INSERT INTO `weather` VALUES (1, '2020-04-05', '\"高温 14℃\"', '\"低温 8℃\"', '\"<![CDATA[4-5级]]>\"', '\"东北风\"', '\"阴\"', '星期天');
INSERT INTO `weather` VALUES (2, '2020-04-06', '\"高温 14℃\"', '\"低温 7℃\"', '\"<![CDATA[3-4级]]>\"', '\"东北风\"', '\"阴\"', '星期一');
INSERT INTO `weather` VALUES (3, '2020-04-07', '\"高温 18℃\"', '\"低温 8℃\"', '\"<![CDATA[4-5级]]>\"', '\"东北风\"', '\"晴\"', '星期二');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
