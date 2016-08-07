/*
Navicat MySQL Data Transfer

Source Server         : homestead
Source Server Version : 50709
Source Host           : 192.168.10.10:33060
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-08-07 10:39:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_categroys
-- ----------------------------
DROP TABLE IF EXISTS `article_categroys`;
CREATE TABLE `article_categroys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章分类';

-- ----------------------------
-- Records of article_categroys
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `click` int(11) NOT NULL,
  `sign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '0', '乔丹和梅西谁的成就和影响力更大？', '127', '足球 体育', '足球影响力完爆篮球无悬念。\n乔丹影响力完爆梅西无悬念。\n\n\n梅西对于足球的推动影响远远小于乔丹之于篮球。\n足球没有梅西，足球是今天的足球。\n篮球没有乔丹，篮球绝非今天的篮球。\n\n西还需一座大力神杯，否则总觉得荣誉不够完美。\n乔丹在荣誉上完美的让不敢看。\n\n梅西是历史级伟大的足球运动员\n乔丹是历史级无争议的最伟大的篮球运动员\n\n梅西代表不了足球。\n乔丹就是篮球的代名词。\n\n梅西的一切伟大基于足球运动本身。\n乔丹的伟大远远超出篮球运动本身。\n\n梅西还有时间去证明自己。\n乔丹已封神好久。\n\n作者：王戈\n链接：https://www.zhihu.com/question/29091352/answer/43659295\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '2016-08-03 09:57:26');
INSERT INTO `articles` VALUES ('2', '0', '国外的排水也会发生武汉这种情况吗？', '126', '洪水', '让开 把路让一让 作为2011年曼谷大水的亲历者我有话说！\r\n\r\n首先必须科普一下大家一些知识，中国人叫的曼谷泰国人更喜欢用 “曼谷大都市 กรุงเทพมหานคร”来称呼，你可以想象曼谷在泰国人心中的形象有多么的高大上。在泰国13年除了南部，其他大大小小的泰国城市我都有去过，在我看来也就曼谷可以算的上城，其他的城市顶多就中国县城的水平。可就是泰国这唯一的城市 这个国家的首都居然在2011年被洪水给废了！那年我公司办公室在Ladprao，那水漫上了我的大腿，我是卷着裤腿提着鞋狼狈不堪的摸进了办公室。后来看新闻才知道大水把Don Muang机场都给淹了，oriental thai（泰国东方航空） 的几架二手747戳在水中的画面5年过去到现在依然历历在目。\r\n\r\n作者：周振浩\r\n链接：https://www.zhihu.com/question/48203661/answer/110057266\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '2016-08-04 01:21:35');
INSERT INTO `articles` VALUES ('3', '0', 'CSS 创建复杂图', '4348', 'CSS', '<h1 style=\"margin: 15px auto 2px; padding: 0px; border: 0px none rgb(85, 85, 85); font-family: Helvetica, Arial, \'Droid Sans\', sans-serif; font-weight: bold; font-size: 28.8px; line-height: 0.9523em; color: rgb(74, 74, 74); box-shadow: none; width: 711px; background-image: none; background-color: rgba(0, 0, 0, 0);\">前言</h1><p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 48px; background-image: none; background-color: rgba(0, 0, 0, 0);\"><span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\">CSS 创建复杂图形的技术即将会被广泛支持，并且应用到实际项目中。本篇文章的目的是为大家开启它的冰山一角。我希望这篇文章能让你对不规则图形有一个初步的了解。</span></p><p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 24px; background-image: none; background-color: rgba(0, 0, 0, 0);\"><span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\">现在，我们已经可以使用CSS 3 常见不规则复杂图形了（</span><a href=\"http://cssshapes.com/\" style=\"margin: 0px; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; word-break: break-all; color: rgb(85, 85, 85); box-shadow: none; background-image: none;\"><span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\">点击链接查看</span></a><span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\">），如下图所示：</span></p><p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 430px; background-image: none; background-color: rgba(0, 0, 0, 0);\"><a href=\"http://images.cnitblog.com/blog/139239/201311/13163518-0e65efcb76954c30a62fc5d9a7cf3b54.png\" style=\"margin: 0px; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; word-break: break-all; color: rgb(85, 85, 85); box-shadow: none; background-image: none;\"><img title=\"image\" alt=\"image\" width=\"644\" height=\"430\" border=\"0\" name=\"25318501-75a6-4160-a1a6-0df801fa623d\" src=\"https://app.yinxiang.com/shard/s69/nl/14958675/907533a4-cdbb-4dc5-ad81-6e41123d340e//res/25318501-75a6-4160-a1a6-0df801fa623d/13163520-a00f0a4289d84d5d9a9a874aba7f4ebc.png?resizeSmall&amp;width=832\" class=\"en-media\" style=\"margin: 0px; padding: 0px; border-style: none; border-color: rgb(85, 85, 85); max-width: 900px; height: 430px; display: inline; box-shadow: none; width: 644px; background-image: none; background-color: rgba(0, 0, 0, 0);\"></a></p><p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 24px; background-image: none; background-color: rgba(0, 0, 0, 0);\"><span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\">使用CSS创建的图形，无法内置文字或实现文字环绕效果。因此，如何实现不规则图形和文字复杂布局也成为了一个热议话题。</span></p><p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 48px; background-image: none; background-color: rgba(0, 0, 0, 0);\"><span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\">今天我们就来介绍一下如何实现这个效果。文章中我们将阐述如何使用 CSS创建不规则图形，实现不规则的文本布局。学会如何创建不规则图形之后，你就可以发挥想象力，创建唯美的CSS页面了，下图既是使用该技术创建的《爱丽丝梦游仙境》效果图：</span></p><p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 404px; background-image: none; background-color: rgba(0, 0, 0, 0);\"><a href=\"http://images.cnitblog.com/blog/139239/201311/13163523-6d4bb6c447874b52b6827c314d761341.png\" style=\"margin: 0px; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; word-break: break-all; color: rgb(85, 85, 85); box-shadow: none; background-image: none;\"><img title=\"image\" alt=\"image\" width=\"644\" height=\"404\" border=\"0\" name=\"148f91ef-4223-4e30-9719-07afeeeb68b8\" src=\"https://app.yinxiang.com/shard/s69/nl/14958675/907533a4-cdbb-4dc5-ad81-6e41123d340e//res/148f91ef-4223-4e30-9719-07afeeeb68b8/13163526-533c01ef22d84712b737589d75d23c73.png?resizeSmall&amp;width=832\" class=\"en-media\" style=\"margin: 0px; padding: 0px; border-style: none; border-color: rgb(85, 85, 85); max-width: 900px; height: 404px; display: inline; box-shadow: none; width: 644px; background-image: none; background-color: rgba(0, 0, 0, 0);\"></a></p><p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 48px; background-image: none; background-color: rgba(0, 0, 0, 0);\"><span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"><em style=\"margin: 0px; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\">注：这是CSS的最新技术，所以对浏览器版本要求较高。如果需要查看在线示例你需要确保浏览器支持这个CSS技术。在本文中我也将提供一些效果截图查看效果。</em></span></p>', '2016-07-16 09:25:51', '2016-08-04 01:24:18');
INSERT INTO `articles` VALUES ('4', '0', 'Web 研发模式演变', '4529', 'WEB', '<br><div><div><h1>Web&nbsp;研发模式演变_星星_新浪博客</h1></div><p><a href=\"https://camo.githubusercontent.com/2ac8d073ba00bde4270a3c0530490255392ca162/687474703a2f2f696d672e68622e616963646e2e636f6d2f6366323535396466303137396666346431666630336463346465663961386334666661376435346531626134662d695355784373\" target=\"_blank\"></a></p><div><a href=\"https://camo.githubusercontent.com/2ac8d073ba00bde4270a3c0530490255392ca162/687474703a2f2f696d672e68622e616963646e2e636f6d2f6366323535396466303137396666346431666630336463346465663961386334666661376435346531626134662d695355784373\" target=\"_blank\"><img src=\"file:///C:/Users/XIAOXI~1/AppData/Local/Temp/enhtmlclip/687474703a2f2f696d672e68622e616963646e2e636f6d2f6366323535396466303137396666346431666630336463346465663961386334666661376435346531626134662d695355784373.jpg\" height=\"514\" style=\"height: auto;\" title=\"Web&nbsp;<wbr>研发模式演变\" width=\"432\"></a></div><p>前不久徐飞写了一篇很好的文章：<a href=\"http://goo.gl/DKNX6z\" target=\"_blank\">Web 应用的组件化开发</a>。本文尝试从历史发展角度，说说各种研发模式的优劣。</p><h2>一、简单明快的早期时代</h2><p><a href=\"https://camo.githubusercontent.com/90850e93b917cd3c958dff1c7d0197f819167343/687474703a2f2f696d672e68622e616963646e2e636f6d2f63333639616163633864613338616638653432326664323935313438633537643162353831376666666335362d4f636250646c5f6677363538\" target=\"_blank\"></a></p><div><a href=\"https://camo.githubusercontent.com/90850e93b917cd3c958dff1c7d0197f819167343/687474703a2f2f696d672e68622e616963646e2e636f6d2f63333639616163633864613338616638653432326664323935313438633537643162353831376666666335362d4f636250646c5f6677363538\" target=\"_blank\"><img src=\"file:///C:/Users/XIAOXI~1/AppData/Local/Temp/enhtmlclip/687474703a2f2f696d672e68622e616963646e2e636f6d2f63333639616163633864613338616638653432326664323935313438633537643162353831376666666335362d4f636250646c5f6677363538.jpg\" alt=\"1\" height=\"379\" style=\"height: auto;\" title=\"Web&nbsp;<wbr>研发模式演变\" width=\"542\"></a></div><p>可称之为 Web 1.0 时代，非常适合创业型小项目，不分前后端，经常 3-5 人搞定所有开发。页面由 JSP、PHP 等工程师在服务端生成，浏览器负责展现。基本上是服务端给什么浏览器就展现什么，展现的控制在 Web Server 层。</p><p>这种模式的好处是：简单明快，本地起一个 Tomcat 或 Apache 就能开发，调试什么的都还好，只要业务不太复杂。</p><p>然而业务总会变复杂，这是好事情，否则很可能就意味着创业失败了。业务的复杂会让 Service 越来越多，参与开发的人员也很可能从几个人快速扩招到几十人。在这种情况下，会遇到一些典型问题：</p><p>1、<strong>Service 越来越多，调用关系变复杂，前端搭建本地环境不再是一件简单的事。</strong>考虑团队协作，往往会考虑搭建集中式的开发服务器来解决。这种解决方案对编译型的后端开发来说也许还好，但对前端开发来说并不友好。天哪，我只是想调整下按钮样式，却要本地开发、代码上传、验证生效等好几个步骤。也许习惯了也还好，但开发服务器总是不那么稳定，出问题时往往需要依赖后端开发搞定。看似仅仅是前端开发难以本地化，但这对研发效率的影响其实蛮大。</p><p>2、**JSP 等代码的可维护性越来越差。**JSP 非常强大，可以内嵌 Java 代码。这种强大使得前后端的职责不清晰，JSP 变成了一个灰色地带。经常为了赶项目，为了各种紧急需求，会在 JSP 里揉杂大量业务代码。积攒到一定阶段时，往往会带来大量维护成本。</p><p>这个时期，为了提高可维护性，可以通过下面的方式实现前端的组件化：</p><p><a href=\"https://camo.githubusercontent.com/bbbf666300ccea8dc4f5deb3f22773195555d3ac/687474703a2f2f696d672e68622e616963646e2e636f6d2f3835393365623736663966353163613735333933333234333131303933623731356235373637316531313466342d6e61677936445f6677363538\" target=\"_blank\"></a></p><div><a href=\"https://camo.githubusercontent.com/bbbf666300ccea8dc4f5deb3f22773195555d3ac/687474703a2f2f696d672e68622e616963646e2e636f6d2f3835393365623736663966353163613735333933333234333131303933623731356235373637316531313466342d6e61677936445f6677363538\" target=\"_blank\"><img src=\"file:///C:/Users/XIAOXI~1/AppData/Local/Temp/enhtmlclip/687474703a2f2f696d672e68622e616963646e2e636f6d2f3835393365623736663966353163613735333933333234333131303933623731356235373637316531313466342d6e61677936445f6677363538.jpg\" alt=\"2\" height=\"384\" style=\"height: auto;\" title=\"Web&nbsp;<wbr>研发模式演变\" width=\"545\"></a></div><p>理论上，如果大家都能按照最佳实践去书写代码，那么无论是 JSP 还是 PHP，可维护性都不会差。<strong>但可维护性更多是工程含义，有时候需要通过限制带来自由，需要某种约定，使得即便是新手也不会写出太糟糕的代码。</strong></p><p><strong>如何让前后端分工更合理高效，如何提高代码的可维护性，在 Web 开发中很重要。</strong>下面我们继续来看，技术架构的演变如何解决这两个问题。</p><h2>二、后端为主的 MVC 时代</h2><p>为了降低复杂度，以后端为出发点，有了 Web Server 层的架构升级，比如 Structs、Spring MVC 等，这是后端的 MVC 时代。</p><p><a href=\"https://camo.githubusercontent.com/b9e16b0b3ff3361a481badaca7d408e8fa6b404f/687474703a2f2f696d672e68622e616963646e2e636f6d2f3961366266353237646162626462396237393563353862306237616636633761313864653963653331316136312d3975697578545f6677363538\" target=\"_blank\"></a></p><div><a href=\"https://camo.githubusercontent.com/b9e16b0b3ff3361a481badaca7d408e8fa6b404f/687474703a2f2f696d672e68622e616963646e2e636f6d2f3961366266353237646162626462396237393563353862306237616636633761313864653963653331316136312d3975697578545f6677363538\" target=\"_blank\"><img src=\"file:///C:/Users/XIAOXI~1/AppData/Local/Temp/enhtmlclip/687474703a2f2f696d672e68622e616963646e2e636f6d2f3961366266353237646162626462396237393563353862306237616636633761313864653963653331316136312d3975697578545f6677363538.jpg\" alt=\"3\" height=\"352\" style=\"height: auto;\" title=\"Web&nbsp;<wbr>研发模式演变\" width=\"540\"></a></div><p>代码可维护性得到明显好转，MVC 是个非常好的协作模式，从架构层面让开发者懂得什么代码应该写在什么地方。为了让 View 层更简单干脆，还可以选择 Velocity、Freemaker 等模板，使得模板里写不了 Java 代码。看起来是功能变弱了，但正是这种限制使得前后端分工更清晰。然而依旧并不是那么清晰，这个阶段的典型问题是：</p><p>1、<strong>前端开发重度依赖开发环境。</strong>这种架构下，前后端协作有两种模式：一种是前端写 demo，写好后，让后端去套模板。淘宝早期包括现在依旧有大量业务线是这种模式。好处很明显，demo 可以本地开发，很高效。不足是还需要后端套模板，有可能套错，套完后还需要前端确定，来回沟通调整的成本比较大。另一种协作模式是前端负责浏览器端的所有开发和服务器端的 View 层模板开发，支付宝是这种模式。好处是 UI 相关的代码都是前端去写就好，后端不用太关注，不足就是前端开发重度绑定后端环境，环境成为影响前端开发效率的重要因素。</p><p>2、**前后端职责依旧纠缠不清。**Velocity 模板还是蛮强大的，变量、逻辑、宏等特性，依旧可以通过拿到的上下文变量来实现各种业务逻辑。这样，只要前端弱势一点，往往就会被后端要求在模板层写出不少业务代码。还有一个很大的灰色地带是 Controller，页面路由等功能本应该是前端最关注的，但却是由后端来实现。Controller 本身与 Model 往往也会纠缠不清，看了让人咬牙的代码经常会出现在 Controller 层。这些问题不能全归结于程序员的素养，否则 JSP 就够了。</p><p>经常会有人吐槽 Java，但 Java 在工程化开发方面真的做了大量思考和架构尝试。Java 蛮符合马云的一句话：让平凡人做非凡事。</p><h2>三、Ajax 带来的 SPA 时代</h2><p>历史滚滚往前，2004 年 Gmail 像风一样的女子来到人间，很快 2005 年 Ajax 正式提出，加上 CDN 开始大量用于静态资源存储，于是出现了 JavaScript 王者归来的 SPA （Single Page Application 单页面应用）时代。</p><p><a href=\"https://camo.githubusercontent.com/d0098546c9fa01b443c16ff1953c90aa9056955b/687474703a2f2f696d672e68622e616963646e2e636f6d2f3932393766646337336438336632373764343439633932313933613361663432386464633064343431316366392d6e31445936465f6677363538\" target=\"_blank\"></a></p><div><a href=\"https://camo.githubusercontent.com/d0098546c9fa01b443c16ff1953c90aa9056955b/687474703a2f2f696d672e68622e616963646e2e636f6d2f3932393766646337336438336632373764343439633932313933613361663432386464633064343431316366392d6e31445936465f6677363538\" target=\"_blank\"><img src=\"file:///C:/Users/XIAOXI~1/AppData/Local/Temp/enhtmlclip/687474703a2f2f696d672e68622e616963646e2e636f6d2f3932393766646337336438336632373764343439633932313933613361663432386464633064343431316366392d6e31445936465f6677363538.jpg\" alt=\"4\" height=\"379\" style=\"height: auto;\" title=\"Web&nbsp;<wbr>研发模式演变\" width=\"538\"></a></div><p>这种模式下，前后端的分工非常清晰，前后端的关键协作点是 Ajax 接口。看起来是如此美妙，但回过头来看看的话，这与 JSP 时代区别不大。复杂度从服务端的 JSP 里移到了浏览器的 JavaScript，浏览器端变得很复杂。类似 Spring MVC，这个时代开始出现浏览器端的分层架构：</p><p><a href=\"https://camo.githubusercontent.com/f064bc7a5b06ea9a39cf039a5dec0ca6675141ff/687474703a2f2f696d672e68622e616963646e2e636f6d2f3135383839323134336263363430333364323264643865643765373533366537316530373063346131336335372d6850673150635f6677363538\" target=\"_blank\"></a></p><div><a href=\"https://camo.githubusercontent.com/f064bc7a5b06ea9a39cf039a5dec0ca6675141ff/687474703a2f2f696d672e68622e616963646e2e636f6d2f3135383839323134336263363430333364323264643865643765373533366537316530373063346131336335372d6850673150635f6677363538\" target=\"_blank\"><img src=\"file:///C:/Users/XIAOXI~1/AppData/Local/Temp/enhtmlclip/687474703a2f2f696d672e68622e616963646e2e636f6d2f3135383839323134336263363430333364323264643865643765373533366537316530373063346131336335372d6850673150635f6677363538.jpg\" alt=\"5\" height=\"376\" style=\"height: auto;\" title=\"Web&nbsp;<wbr>研发模式演变\" width=\"540\"></a></div><p>对于 SPA 应用，有几个很重要的挑战：</p><p>1、<strong>前后端接口的约定。</strong>如果后端的接口一塌糊涂，如果后端的业务模型不够稳定，那么前端开发会很痛苦。这一块在业界有 API Blueprint 等方案来约定和沉淀接口，在阿里，不少团队也有类似尝试，通过接口规则、接口平台等方式来做。有了和后端一起沉淀的接口规则，还可以用来模拟数据，使得前后端可以在约定接口后实现高效并行开发。相信这一块会越做越好。</p><p>2、**前端开发的复杂度控制。**SPA 应用大多以功能交互型为主，JavaScript 代码过十万行很正常。大量 JS 代码的组织，与 View 层的绑定等，都不是容易的事情。典型的解决方案是业界的 Backbone，但 Backbone 做的事还很有限，依旧存在大量空白区域需要挑战。</p><p>SPA 让前端看到了一丝绿色，但依旧是在荒漠中行走。</p><h2>四、前端为主的 MV* 时代</h2><p>为了降低前端开发复杂度，除了 Backbone，还有大量框架涌现，比如 EmberJS、KnockoutJS、AngularJS 等等。这些框架总的原则是先按类型分层，比如 Templates、Controllers、Models，然后再在层内做切分，如下图：</p><p><a href=\"https://camo.githubusercontent.com/2ab0e0e247dfae7b74760b7d57056a680204874d/687474703a2f2f696d672e68622e616963646e2e636f6d2f3536663463656530653663376166363165323464626633316534626531376631343264353930326331313039612d42637852696d5f6677363538\" target=\"_blank\"></a></p><div><a href=\"https://camo.githubusercontent.com/2ab0e0e247dfae7b74760b7d57056a680204874d/687474703a2f2f696d672e68622e616963646e2e636f6d2f3536663463656530653663376166363165323464626633316534626531376631343264353930326331313039612d42637852696d5f6677363538\" target=\"_blank\"><img src=\"file:///C:/Users/XIAOXI~1/AppData/Local/Temp/enhtmlclip/687474703a2f2f696d672e68622e616963646e2e636f6d2f3536663463656530653663376166363165323464626633316534626531376631343264353930326331313039612d42637852696d5f6677363538.jpg\" alt=\"6\" height=\"382\" style=\"height: auto;\" title=\"Web&nbsp;<wbr>研发模式演变\" width=\"541\"></a></div><p>好处很明显：</p><p>1、<strong>前后端职责很清晰。</strong>前端工作在浏览器端，后端工作在服务端。清晰的分工，可以让开发并行，测试数据的模拟不难，前端可以本地开发。后端则可以专注于业务逻辑的处理，输出 RESTful 等接口。</p><p>2、<strong>前端开发的复杂度可控。</strong>前端代码很重，但合理的分层，让前端代码能各司其职。这一块蛮有意思的，简单如模板特性的选择，就有很多很多讲究。并非越强大越好，限制什么，留下哪些自由，代码应该如何组织，所有这一切设计，得花一本的厚度去说明。</p><p>3、<strong>部署相对独立</strong>，产品体验可以快速改进。</p><p>但依旧有不足之处：</p><p>1、代码不能复用。比如后端依旧需要对数据做各种校验，校验逻辑无法复用浏览器端的代码。如果可以复用，那么后端的数据校验可以相对简单化。<br>\r\n2、全异步，对 SEO 不利。往往还需要服务端做同步渲染的降级方案。<br>\r\n3、性能并非最佳，特别是移动互联网环境下。<br>\r\n4、SPA 不能满足所有需求，依旧存在大量多页面应用。URL Design 需要后端配合，前端无法完全掌控。</p><h2>五、Node 带来的全栈时代</h2><p>前端为主的 MV* 模式解决了很多很多问题，但如上所述，依旧存在不少不足之处。随着 Node.js 的兴起，JavaScript 开始有能力运行在服务端。这意味着可以有一种新的研发模式：</p><p><a href=\"https://camo.githubusercontent.com/ed895cf7561cb3ec07ef74aa2dea573b57dbe219/687474703a2f2f696d672e68622e616963646e2e636f6d2f3430303931653637316230626465653236653531366163303530633663616563383038383562386131326238372d374a676646685f6677363538\" target=\"_blank\"></a></p><div><a href=\"https://camo.githubusercontent.com/ed895cf7561cb3ec07ef74aa2dea573b57dbe219/687474703a2f2f696d672e68622e616963646e2e636f6d2f3430303931653637316230626465653236653531366163303530633663616563383038383562386131326238372d374a676646685f6677363538\" target=\"_blank\"><img src=\"file:///C:/Users/XIAOXI~1/AppData/Local/Temp/enhtmlclip/687474703a2f2f696d672e68622e616963646e2e636f6d2f3430303931653637316230626465653236653531366163303530633663616563383038383562386131326238372d374a676646685f6677363538.png\" alt=\"7\" height=\"597\" style=\"height: auto;\" title=\"Web&nbsp;<wbr>研发模式演变\" width=\"576\"></a></div><p>在这种研发模式下，前后端的职责很清晰。对前端来说，两个 UI 层各司其职：</p><p>1、Front-end UI layer 处理浏览器层的展现逻辑。通过 CSS 渲染样式，通过 JavaScript 添加交互功能，HTML 的生成也可以放在这层，具体看应用场景。</p><p>2、Back-end UI layer 处理路由、模板、数据获取、cookie 等。通过路由，前端终于可以自主把控 URL Design，这样无论是单页面应用还是多页面应用，前端都可以自由调控。后端也终于可以摆脱对展现的强关注，转而可以专心于业务逻辑层的开发。</p><p>通过 Node，Web Server 层也是 JavaScript 代码，这意味着部分代码可前后复用，需要 SEO 的场景可以在服务端同步渲染，由于异步请求太多导致的性能问题也可以通过服务端来缓解。前一种模式的不足，通过这种模式几乎都能完美解决掉。</p><p>与 JSP 模式相比，全栈模式看起来是一种回归，也的确是一种向原始开发模式的回归，不过是一种螺旋上升式的回归。</p><p>基于 Node 的全栈模式，依旧面临很多挑战：</p><p>1、需要前端对服务端编程有更进一步的认识。比如 network/tcp、PE 等知识的掌握。<br>\r\n2、Node 层与 Java 层的高效通信。Node 模式下，都在服务器端，RESTful HTTP 通信未必高效，通过 SOAP 等方式通信更高效。一切需要在验证中前行。<br>\r\n3、对部署、运维层面的熟练了解，需要更多知识点和实操经验。<br>\r\n4、大量历史遗留问题如何过渡。这可能是最大最大的阻力。</p><p>回顾历史总是让人感慨，展望未来则让人兴奋。上面讲到的研发模式，除了最后一种还在探索期，其他各种在各大公司都已有大量实践。几点小结：</p><p>1、模式没有好坏高下之分，只有合不合适。<br>\r\n2、Ajax 给前端开发带来了一次质的飞跃，Node 很可能是第二次。<br>\r\n3、SoC（关注度分离） 是一条伟大的原则。上面种种模式，都是让前后端的职责更清晰，分工更合理高效。<br>\r\n4、还有个原则，让合适的人做合适的事。比如 Web Server 层的 UI Layer 开发，前端是更合适的人选。</p><p><strong>历史有时候会打转，咋一看以为是回去了，实际上是螺旋转了一圈，站在了一个新的起点。</strong></p><p>题图：演化真不容易呀。</p></div>', '2016-07-16 09:34:13', '2016-08-04 01:22:21');
INSERT INTO `articles` VALUES ('6', '0', 'CSS 创建复杂图', '28', 'CSS', '&lt;span style=\"line-height: 30.8px;\"&gt;&amp;lt;h1 style=\"margin: 15px auto 2px; padding: 0px; border: 0px none rgb(85, 85, 85); font-family: Helvetica, Arial, \'Droid Sans\', sans-serif; font-weight: bold; font-size: 28.8px; line-height: 0.9523em; color: rgb(74, 74, 74); box-shadow: none; width: 711px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;前言&amp;lt;/h1&amp;gt;&amp;lt;p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 48px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;CSS 创建复杂图形的技术即将会被广泛支持，并且应用到实际项目中。本篇文章的目的是为大家开启它的冰山一角。我希望这篇文章能让你对不规则图形有一个初步的了解。&amp;lt;/span&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 24px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;现在，我们已经可以使用CSS 3 常见不规则复杂图形了（&amp;lt;/span&amp;gt;&amp;lt;a href=\"http://cssshapes.com/\" style=\"margin: 0px; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; word-break: break-all; color: rgb(85, 85, 85); box-shadow: none; background-image: none;\"&amp;gt;&amp;lt;span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;点击链接查看&amp;lt;/span&amp;gt;&amp;lt;/a&amp;gt;&amp;lt;span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;），如下图所示：&amp;lt;/span&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 430px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;a href=\"http://images.cnitblog.com/blog/139239/201311/13163518-0e65efcb76954c30a62fc5d9a7cf3b54.png\" style=\"margin: 0px; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; word-break: break-all; color: rgb(85, 85, 85); box-shadow: none; background-image: none;\"&amp;gt;&amp;lt;img title=\"image\" alt=\"image\" width=\"644\" height=\"430\" border=\"0\" name=\"25318501-75a6-4160-a1a6-0df801fa623d\" src=\"https://app.yinxiang.com/shard/s69/nl/14958675/907533a4-cdbb-4dc5-ad81-6e41123d340e//res/25318501-75a6-4160-a1a6-0df801fa623d/13163520-a00f0a4289d84d5d9a9a874aba7f4ebc.png?resizeSmall&amp;amp;width=832\" class=\"en-media\" style=\"margin: 0px; padding: 0px; border-style: none; border-color: rgb(85, 85, 85); max-width: 900px; height: 430px; display: inline; box-shadow: none; width: 644px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;/a&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 24px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;使用CSS创建的图形，无法内置文字或实现文字环绕效果。因此，如何实现不规则图形和文字复杂布局也成为了一个热议话题。&amp;lt;/span&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 48px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;今天我们就来介绍一下如何实现这个效果。文章中我们将阐述如何使用 CSS创建不规则图形，实现不规则的文本布局。学会如何创建不规则图形之后，你就可以发挥想象力，创建唯美的CSS页面了，下图既是使用该技术创建的《爱丽丝梦游仙境》效果图：&amp;lt;/span&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 404px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;a href=\"http://images.cnitblog.com/blog/139239/201311/13163523-6d4bb6c447874b52b6827c314d761341.png\" style=\"margin: 0px; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; word-break: break-all; color: rgb(85, 85, 85); box-shadow: none; background-image: none;\"&amp;gt;&amp;lt;img title=\"image\" alt=\"image\" width=\"644\" height=\"404\" border=\"0\" name=\"148f91ef-4223-4e30-9719-07afeeeb68b8\" src=\"https://app.yinxiang.com/shard/s69/nl/14958675/907533a4-cdbb-4dc5-ad81-6e41123d340e//res/148f91ef-4223-4e30-9719-07afeeeb68b8/13163526-533c01ef22d84712b737589d75d23c73.png?resizeSmall&amp;amp;width=832\" class=\"en-media\" style=\"margin: 0px; padding: 0px; border-style: none; border-color: rgb(85, 85, 85); max-width: 900px; height: 404px; display: inline; box-shadow: none; width: 644px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;/a&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p style=\"margin-right: auto; margin-bottom: 1em; margin-left: auto; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; color: rgb(74, 74, 74); font-family: gotham; font-size: 16px; text-indent: 2em; box-shadow: none; width: 711px; height: 48px; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;span style=\"line-height: 1.42857em; margin: 0px; padding: 0px; font-family: 微软雅黑; border: 0px none rgb(85, 85, 85); box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;&amp;lt;em style=\"margin: 0px; padding: 0px; border: 0px none rgb(85, 85, 85); line-height: 1.42857em; box-shadow: none; background-image: none; background-color: rgba(0, 0, 0, 0);\"&amp;gt;注：这是CSS的最新技术，所以对浏览器版本要求较高。如果需要查看在线示例你需要确保浏览器支持这个CSS技术。在本文中我也将提供一些效果截图查看效果。&amp;lt;/em&amp;gt;&amp;lt;/span&amp;gt;&amp;lt;/p&amp;gt;&lt;/span&gt;', '2016-07-17 07:47:58', '2016-08-04 01:24:25');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2016_07_09_092055_create_articles_table', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '肖兴平', 'xx9815@qq.com', '$2y$10$jUyrXbARgBDEF0M4tr70neQICo4Q583G4a2MK3I/8Wj5qtCM2F7ua', 'GTju8psQz0DvKxNomt3F3tuFbDQ4hk0k7OoKi2KEZDf6rkD3kqlBc6F5GsSV', '2016-07-09 10:04:30', '2016-07-12 03:56:51');
