/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : cxz

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-08-30 16:43:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `essay`
-- ----------------------------
DROP TABLE IF EXISTS `essay`;
CREATE TABLE `essay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of essay
-- ----------------------------
INSERT INTO `essay` VALUES ('1', '2', '为嫁豪门我勾引富二代抛弃男友', '人原本快乐，而我们却在寻找不快乐。是的，我们本可以过踏实的日子，但我们又不甘平庸，说到底就是贪欲在作怪。\r\n \r\n　　我在传媒集团上班，一个大集团，几千号员工，我只是一名普通的员工，我的主要任务是策划、编辑。虽然在一个单位工作，但是很多面孔我都没有见过。周末，集团搞了一个高规格的聚会，大家聚在一起，才发现集团真是藏龙卧虎，美女如云，帅哥一大片。只可惜多数帅哥都拖家带口的，跟我已经没有什么关系。\r\n \r\n　　聚会刚开始，男友陈军打来电话，他让我多吃一点，还说不吃白不吃，为了应付他，我说“好”，他唠叨个没完，当我说快没话费的时候，他才说要挂电话了，可在挂电话的前半分钟，他让我给他带点好吃的回去。\r\n \r\n　　陈军不是在开玩笑，他是真的希望我在聚会回去时给他带点吃的，因为我们的生活太落魄了。陈军在一家外企上班，但是他只是外企的一名保安。拿的工资并不高，每次刚拿到工资，陈军又得把钱寄回去给他妹妹上学当生活费。\r\n \r\n　　我没有把陈军的话放在心上，找了一个靠角落的地方静静地看着进进出出的人。那些男人一个比一个绅士、斯文，阔气，他们身边的女人也是特别妖艳，一个比一个标致，不过没有那些水灵感，毕竟都化妆了，那些自然的美被粉底给遮住了。尽管这样，他们还是那么的惹眼，我都不好意思靠近他们', '2016-08-19');
INSERT INTO `essay` VALUES ('2', '1', '马蓉称微博被盗 家庭状况父母情况被扒', '【马蓉称微博被盗】据媒体消息，马蓉发朋友圈称自己的微博邮箱等都被盗号，之前发的所有言论都不代表自己的，可朝阳法院的官微已经发文证实马蓉告王宝强侵权……所以到底微博的哪些言论是与“本人”无关的?\r\n\r\n　　17日，有媒体走访马蓉老家陕西省渭南市，了解到马蓉的父亲目前在渭南市临渭区中国农业银行某分理处工作，是大堂经理，离退休还有几年。据在农行工作的知情人透露，马蓉的父亲得知女儿闹出离婚风波后，便向银行请假回家了', '2016-08-19');

-- ----------------------------
-- Table structure for `evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论表的id',
  `cid` int(11) NOT NULL COMMENT '层id',
  `fid` int(11) NOT NULL COMMENT '父id',
  `wzid` int(11) NOT NULL COMMENT '文章id',
  `uid` int(11) NOT NULL DEFAULT '1' COMMENT '用户id',
  `d` int(11) NOT NULL COMMENT '顶',
  `c` int(11) NOT NULL COMMENT '踩',
  `huifu` int(11) NOT NULL,
  `content` text NOT NULL COMMENT '回复内容',
  `date` datetime NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES ('1', '0', '0', '2', '1', '0', '0', '0', '大家好 我是vip！', '2016-08-30 14:55:55');
INSERT INTO `evaluate` VALUES ('2', '1', '1', '2', '1', '0', '0', '0', '嗯 有事儿在我的楼下留留言！', '2016-08-30 14:56:36');
INSERT INTO `evaluate` VALUES ('3', '0', '0', '2', '1', '0', '0', '0', '你们人呢？', '2016-08-30 14:56:45');
INSERT INTO `evaluate` VALUES ('4', '0', '0', '2', '2', '0', '0', '0', '我人在这里 你人在哪了？', '2016-08-30 14:57:18');
INSERT INTO `evaluate` VALUES ('5', '4', '4', '2', '1', '0', '0', '0', '王思聪是傻逼！', '2016-08-30 14:57:32');
INSERT INTO `evaluate` VALUES ('6', '4', '5', '2', '3', '0', '0', '0', '我也觉的王思聪是傻逼', '2016-08-30 14:58:07');
INSERT INTO `evaluate` VALUES ('7', '4', '6', '2', '2', '0', '0', '0', '哈哈哈', '2016-08-30 14:58:32');
INSERT INTO `evaluate` VALUES ('8', '3', '3', '2', '2', '0', '0', '0', '你们是谁啊？', '2016-08-30 14:59:17');
INSERT INTO `evaluate` VALUES ('9', '0', '0', '1', '3', '0', '0', '0', '哈哈哈哈哈 劳资是第一个评价的 \n！！', '2016-08-30 15:05:26');
INSERT INTO `evaluate` VALUES ('10', '9', '9', '1', '2', '0', '0', '0', '王熙凤 你脑子坏掉了？', '2016-08-30 15:05:40');
INSERT INTO `evaluate` VALUES ('11', '9', '10', '1', '2', '0', '0', '0', '哈哈哈！王思聪傻逼啊', '2016-08-30 15:05:50');
INSERT INTO `evaluate` VALUES ('12', '9', '11', '1', '2', '0', '0', '0', '哈哈哈哈哈', '2016-08-30 15:05:58');
INSERT INTO `evaluate` VALUES ('13', '9', '12', '1', '3', '0', '0', '0', '我还是第一次看自己骂自己的，而且还骂的这么开心！', '2016-08-30 15:06:36');
INSERT INTO `evaluate` VALUES ('14', '9', '13', '1', '2', '0', '0', '0', '你给我滚！', '2016-08-30 15:07:06');
INSERT INTO `evaluate` VALUES ('33', '0', '0', '1', '3', '0', '0', '0', '床前明月光<br/>疑是地上霜<br/>举头望明月<br/>低头思故乡<br/>                              ----李商隐', '2016-08-30 15:55:23');
INSERT INTO `evaluate` VALUES ('34', '0', '0', '1', '3', '0', '0', '0', '人原本快乐，而我们却在寻找不快乐。是的，我们本可以过踏实的日子，但我们又不甘平庸，说到底就是贪欲在作怪。 　　我在传媒集团上班，一个大集团，几千号员工，我只是一名普通的员工，我的主要任务是策划、编辑。虽然在一个单位工作，但是很多面孔我都没有见过。周末，集团搞了一个高规格的聚会，大家聚在一起，才发现集团真是藏龙卧虎，美女如云，帅哥一大片。只可惜多数帅哥都拖家带口的，跟我已经没有什么关系。 　　聚会刚开始，男友陈军打来电话，他让我多吃一点，还说不吃白不吃，为了应付他，我说“好”，他唠叨个没完，当我说快没话费的时候，他才说要挂电话了，可在挂电话的前半分钟，他让我给他带点好吃的回去。 　　陈军不是在开玩笑，他是真的希望我在聚会回去时给他带点吃的，因为我们的生活太落魄了。陈军在一家外企上班，但是他只是外企的一名保安。拿的工资并不高，每次刚拿到工资，陈军又得把钱寄回去给他妹妹上学当生活费。 　　我没有把陈军的话放在心上，找了一个靠角落的地方静静地看着进进出出的人。那些男人一个比一个绅士、斯文，阔气，他们身边的女人也是特别妖艳，一个比一个标致，不过没有那些水灵感，毕竟都化妆了，那些自然的美被粉底给遮住了。尽管这样，他们还是那么的惹眼，我都不好意思靠近他们', '2016-08-30 15:56:11');
INSERT INTO `evaluate` VALUES ('35', '0', '0', '1', '3', '0', '0', '0', '将笔趣阁快捷键下载到桌面<br/>收藏笔趣阁<br/>账号：<br/>密码：<br/>忘记密码<br/>用户注册<br/>笔趣阁<br/> 留言：通过邮件、站内短信<br/>积分规则  解决跳到别的站<br/><br/>    首页<br/>    我的书架<br/>    玄幻小说<br/>    修真小说<br/>    都市小说<br/>    历史小说<br/>    网游小说<br/>    科幻小说<br/>    排行榜单<br/>    完本小说<br/>    小说大全<br/><br/>翻页 夜间<br/>笔趣阁 &gt; 大主宰 &gt; 第一章 北灵院<br/>第一章 北灵院<br/>投推荐票 上一章 ← 章节列表 → 下一章 加入书签 小说错误举报<br/> 推荐阅读：太古神王、全职法师、我欲封天、完美世界、造化之门、大主宰、魔天记、帝御山河、红色仕途、儒道至圣、星战风暴、择天记、女总裁的神级保镖<br/>    烈日如炎，灼热的阳光从天空上倾洒下来，令得整片大地都是处于一片蒸腾之中，杨柳微垂，收敛着枝叶，恹恹不振。<br/><br/>    在那一片投射着被柳树枝叶切割而开的明亮光斑的空地中，数百道身影静静盘坐，这是一群略显青涩的少年少女，而此时，他们都是面目认真的微闭着双目，鼻息间的呼吸，呈现一种极有节奏之感，而随着呼吸的吐纳，他们的周身，仿佛是有着肉眼难辨的细微光芒出现。<br/><br/>    微风悄然的吹拂而来，衣衫飘动，倒是略显壮观。<br/><br/>    在这数百道身影前方，有着一座石台，石台上，同样是有着一道身影安静的盘坐，他双手在身前相合，十指交叉，双目紧闭，犹如是进入了某种修炼状态之中。<br/><br/>    这道身影也是少年模样，他有着一头柔软而略显散乱的黑发，尚还显得稚嫩的脸庞有点清瘦，让人看起来有着一种相当舒服的感觉。<br/><br/>    而此时，在这名少年的周身，正有着肉眼可见的光芒绽放着，在那种光芒下，仿佛是有着一股玄奥的能量，正在对着他的体内涌去。<br/><br/>    石台下，一些少年突然悄悄的睁开眼睛，他们望着石台上那少年周身的光芒，皆是忍不住的舔舔嘴，脸庞上露出了一些羡慕钦佩之色，而后那股安静便是被他们的窃窃私语声开始打破。<br/><br/>    “牧哥真厉害，我们都还在感应天地灵气，他就已经成功晋入灵动境了，真不愧是我们东院地届的第一人啊。”<br/><br/>    “哈，那是当然，莫说东院了，我想整个北灵院同等年龄中，恐怕都没几人能和牧哥比。”<br/><br/>    一名靠前的灰衣少年似乎与石台上的少年颇为熟悉，他听得大伙的窃窃私语，不由得得意一笑，压低声音道：“牧哥可是被选拔出来参加过“灵路”的人，我们整个北灵境中，可就牧哥一人有名额，你们应该也知道参加“灵路”的都是些什么变态吧？当年我们这北灵境可是因为此事沸腾了好一阵的，从那里出来的人，最后基本全部都是被“五大院”给预定了的。”<br/><br/>    “五大院？”不少少年听得这对于他们而言极端耀眼的名字，都是忍不住的咽了口唾沫，眼中满是向往与火热之色，那里，算是所有少年人心中的终极梦想所在，只不过“五大院”选拔极端的严苛，能够进入其中的，莫不是天才之姿，谁若是能够进入其中，那也真正算是前途无量了。<br/><br/>    “牧哥是很厉害不过，不过牧哥好像只参加了一年我听别人说，牧哥是第一个“灵路”时间未曾完结就被驱逐出来的人”<br/><br/>    有着一名少年犹豫了一下，悄悄的说道，但旋即他又赶紧补充道：“牧哥的能力我们都知道，就算那“灵路”中都是来自大世界各处的天才妖孽，可牧哥也绝不会逊色，这样被驱逐出来，一定是受到了不公对待！”<br/><br/>    众多少年少女面面相觑，这事情在北灵院甚至整个北灵境也不算什么秘密，他们在对此感到遗憾的同时，又相当的好奇，他们很想知道，究竟是因为什么原因，这个出色得让同样有着几分傲气的他们都信服的牧哥，竟然会被那“灵路”主动的驱逐出来。<br/><br/>    那灰衣少年撇了撇嘴，不以为然的道：“哼，肯定是那“灵路”里有人嫉妒牧哥，这才使用手段把他逼走，不过没关系，以牧哥的能力，迟早也能够进入“五大院”，到时候自然让人明白。”<br/><br/>    众多少年捎了捎头，虽然他们也知道他们口中这位牧哥天赋极强，但五大院也不是这么好进入的啊，毕竟他在那“灵路”中，只是修炼了一年时间，还谈不上成功的完成修炼，这与那些从“灵路”真正出来的天才妖孽相比，应该还是要差一些的。<br/><br/>    “啪！”<br/><br/>    不过就在他们说话间，一块碎木突然从石台上飞下，然后甩在那灰衣少年额头上，一道轻笑的骂声随之传来：“苏凌，你们真当我是摆设吗？信不信我告诉莫师，让你们接下来的假期都留在东院补习修炼？”<br/><br/>    众多少年少女忙抬起头来，只见得石台上修炼中的少年已经睁开了双目，漆黑的双目犹如夜空，其中灵气十足，在其嘴角，也是噙着一抹笑容，那笑容阳光而柔和，犹如点睛之笔一般，令得少年的面目，变得有些帅气起来。<br/><br/>    不得不说，这是一个挺有味道的少年郎。<br/><br/>    “嘿嘿，牧尘哥别啊，好不容易放点假，我还指望着回去乐乐呢，我爹要是知道我干这么丢人的事，非打死我不可。”那灰衣少年捂着额头，嘿嘿直笑。<br/><br/>    周围的少年少女也是哄笑出声，气氛热闹。<br/><br/>    “你也知道你爹凶狠，三月之内，你若再无法晋入灵动境，你就等着挨揍吧。”那被称为牧尘的少年摇了摇头，没好气的道。<br/><br/>    “灵动境哪有这么好晋入，我又不是牧哥你这样可以随随便便参加“灵路”的变态。”那苏凌撇了撇嘴，旋即忙止住嘴巴，这件事情虽然在整个北灵境都不算什么秘密，而且牧尘本人也对此并不避讳，但这种驱逐总归不会是什么光彩的事。<br/><br/>    名为牧尘的少年闻言则是一笑，神情并没有太大的波动，只是微微抬起头来，目光望着那割碎着光斑的树枝，眼神略显怀念与复杂。<br/><br/>    灵路啊<br/><br/>    不知道那几个家伙现在怎么样了，应该也已经结束修炼了吧？如果这样的话，或许不久后他们便是能够进入“五大院”了吧。<br/><br/>    还有，她<br/><br/>    牧尘抿了抿嘴，脑海中掠过一道不管何时都背负着一柄暗黑长剑，有着窈窕身姿，冷漠而漂亮的容颜的黑裙少女。<br/><br/>    倩影跳动间，那璀璨如银河般的耀眼银发，也是随之飘舞。<br/><br/>    就是这个神秘冷漠，修炼起来让人感到疯狂的少女，在那灵路中，莫名其妙的追杀了他大半年，而那让得牧尘咬牙切齿的理由是他救了她一次。<br/><br/>    不过，在最后他被逼迫的离开时，她却是第一个毫不犹豫拔剑挡在他身前的人。<br/><br/>    想到那素来没有多少情感，有着成为祸水级别潜力的小脸在那时流露出的一丝冰冷杀意，牧尘也是忍不住的有些恍惚。<br/><br/>    真是怀念啊。<br/><br/>    “呵呵，这不是咱们北灵境那唯一一个参加了“灵路”的小牧哥吗？又在带人修炼啊？莫师还真是器重你呢。”<br/><br/>    而就在牧尘沉侵在那种复杂心情中时，突然有着一道略显刺耳的声音传来，他脸庞平静的抬起头来，只见得不远处突然有着十数道身影慢吞吞的走来，那为首一人，是一位面容桀骜的少年，他此时正嘴挑着草根，笑眯眯的望着牧尘。<br/><br/>    “刘彻，你们西院的人跑我们东院干什么？找揍不成？!”那之前被牧尘称为苏凌的少年见到这群人，面色却是一沉，站起身来冷笑道。<br/><br/>    唰！<br/><br/>    空地上那数百名东院的学生，也是在此时站起来，目光不善的望着这群来人，人数汇聚起来，倒是相当的有气势。<br/><br/>    在这北灵院中，分为东院与西院，两院之间经常产生各种竞争，不过总体来说，以往一直是西院强于东院，在西院面前，东院的学生也是大多避着走，可这一年来，局势却是变化了不少，而这种变化的原因，便是因为牧尘的存在。<br/><br/>    三月之前的一场两院地届学员比试中，西院这一届排名第三的薛东，落败于牧尘之手，倒是让得东院不少学生出了一口恶气，也令得西院的嚣张气焰变弱了一些。<br/><br/>    而眼下，这些西院的家伙，竟然跑过来挑衅牧尘，这可让得苏凌他们有些忍不了。<br/><br/>    “呵呵，现在的东院真是越来越得瑟了，以为出了一个牧尘就真能跟我们西院叫板不成？”<br/><br/>    那刘彻见到东院人多势众，却是丝毫不见惧色，反而是嘴角一撇，手指指向不远处的高台，咧嘴笑道：“你们敢动手试试？”<br/><br/>    苏凌他们目光投望而去，只见得在那高台上，有着数道身影，那些身影正笑眯眯的望着这边，而在见到那些有点熟悉的面孔后，苏凌等人面色都是变了一变。<br/><br/>    “是西院天届的学长们”<br/><br/>    在北灵院中，不仅分为东西两院，而且还分为天地两届，而牧尘他们则是地届，眼下高台上的这些人，便是西院天届的学长，实力比起他们自然是要厉害许多。<br/><br/>    而在苏凌他们面色因此变化时，那高台上的天届学长们也是居高临下的笑望着他们，彼此交谈。<br/><br/>    “那是东院的牧尘吧？现在可是我们北灵院甚至北灵境的名人呢，没想到这种年龄就晋入灵动境了，虽然只是灵动境初期，不过也有资格升入天届了，倒是厉害啊。”<br/><br/>    “是还不错，东院倒是出了个人才，以后等他升上东院天届，我们西院天届怕就要有些压力了哦。”<br/><br/>    “这小子据说被选中了参加“灵路”呢，不过不知道为什么被驱逐出来了，倒是有点滑稽，第一次听说这种事情。”<br/><br/>    “莫不是选错人了，这才把他丢出来吧？”<br/><br/>    “哈哈。”<br/><br/>    在这群人当中，有着一名红衣女孩，她身段修长，肌肤如雪，一张美丽的瓜子脸颊看上去显得有些妩媚，她慵懒的斜靠着栏杆，狭长的美目望向空地上的对恃，然后目光停留在那名为牧尘的少年身上，似是饶有兴致。<br/><br/>    “呵呵，红绫，你似乎与这牧尘还认识吧？”有着一名天届的学长笑着道，从众人的站位来看，显然她才是这个小圈子的中心。<br/><br/>    “嗯，他父亲是北灵境域主之一，与我父亲也算是有些关系，小时候曾在一起玩过。”那被称为红绫的女孩漫不经心的道。<br/><br/>    “据说当初他好像喜欢你来着？”<br/><br/>    红绫狭长的美目眨了眨，她望着不远处那笔直盘坐的身躯，此时有着一道光束穿透柳树枝叶，刚好是落在少年俊逸的脸庞上，形成一圈淡淡的光弧，舒服而好看，这令得她微怔了一下，隐约的还能够记起小时候那跟着她屁股后面的小男孩，只不过那时候的他，倒是没什么引人注目的地方，她也是并没有给予过多的注意，然而谁能想到，如今这个彼此关系有些疏远的少年，却是能够成为“北灵境”中唯一一个获得参加“灵路”资格的人，当时的牧尘在这北灵境可谓是风头极盛，那种风头，直到后来他突然被驱逐出“灵路”后方才开始淡去。<br/><br/>    “小时候的事情，哪能算什么喜欢。”红绫似是不在意的一笑，不过那明亮眸子倒是多看了牧尘一眼，如今的后者随着进入北灵院，也是开始崭露头角，虽然还不至于成为北灵院第一人，但被这种优秀的人喜欢这种事传出来，于她而言还是有些面子的，即便她心中清楚其实这件事还是谣言成分居多，但这般年龄的女孩，终归是有些虚荣的。<br/><br/>    “哈哈，红绫的眼光可不一般，这牧尘虽然还算不错，可还达不到让红绫动心的地步，你难道没见到连林修都失败了么？那可是咱们北灵院总榜第七的牛人呢，现在都晋入灵动境中期了，这牧尘与他比还是有点差距的。”<br/><br/>    “看来我们这北灵院，能够让得红绫多看一眼的，也就柳慕白大哥了。”<br/><br/>    柳慕白这个名字一出来，就连这些天届的学长们神情都是顿了顿，显然是感受到不小的压力。<br/><br/>    北灵院总榜第一，柳慕白，其父亲更是北灵境第一大域的域主，威名显赫。<br/><br/>    不论从样貌还是实力或者背景来说，这都是一个在北灵院中随时能够引来一些少女发花痴的名字。<br/><br/>    在西院的学员眼中，谁都知道那柳慕白与红绫走得微近，虽然至今为止依旧未将这朵骄傲的西院之花摘下，但想来应该只是时间问题罢了。<br/><br/>    如果牧尘是顺利的通过了那“灵路”的历练，获得进入“五大院”的资格，那名气自然是能够压过柳慕白，但可惜的是，他不知道怎么回事竟然被驱逐出来了。<br/><br/>    这样一来，谁若是再将两人放在一起相比，无疑就只能令得旁人一笑了。<br/><br/>    (新书正式开始了。六年了，不知道陪伴了多少读者走完高中，大学，甚至走入社会，或许中途会有读者离去，但若是能够在多年后突然想起那曾经的学园中，追读着一本小说的欢乐，这便是我最大的幸福。所以我也希望，大主宰也能够陪伴着大家，再度走过两年的光阴岁月。新书刚刚出生，需要大家的温养，真心的希望，不论是看正版还是盗版的读者，能够在公众期支持大主宰，一张推荐，一个收藏，都至关重要。所以，请大家将票票投给大主宰，今天推荐票多的话，就三更喔~~~~~我们一起加油吧！）<br/><br/>昨晚打到神装，今天就卖了一万！！！<br/>分享本书到：<br/>一键分享<br/>新浪微博<br/>QQ空间<br/>QQ好友<br/>百度贴吧<br/>腾讯微博<br/>百度搜藏<br/>百度新首页<br/>复制网址<br/>投推荐票 上一章 ← 章节目录 → 下一章 加入书签 小说错误举报<br/> 新书推荐：官道无疆、黄金渔场、食色天下、永夜君王、极品修真强少、奥术神座、终极教师、星河大帝、公子风流、斩龙、绝世武神、特种兵在都市<br/><br/>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。<br/><br/>Copyright © 2012 笔趣阁 All Rights Reserved.<br/><br/>冀ICP备11007602号', '2016-08-30 15:56:22');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin');
INSERT INTO `user` VALUES ('2', '王思聪');
INSERT INTO `user` VALUES ('3', '王熙凤');
INSERT INTO `user` VALUES ('4', '王宝强');
INSERT INTO `user` VALUES ('5', '马蓉');
