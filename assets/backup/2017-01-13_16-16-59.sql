#
# NormoTech - Volvo Database Dump
# MODX Version:1.2
# 
# Host: 
# Generation Time: 13-01-2017 16:16:59
# Server version: 5.5.52-38.3
# PHP Version: 5.6.22
# Database: `cr02255_truck`
# Description: 13.01.17
#

# --------------------------------------------------------

#
# Table structure for table `modx_active_user_locks`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_active_user_locks`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_active_user_locks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_element_id` (`internalKey`,`elementType`,`elementId`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

#
# Dumping data for table `modx_active_user_locks`
#


# --------------------------------------------------------

#
# Table structure for table `modx_active_user_sessions`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_active_user_sessions`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_active_user_sessions` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';

#
# Dumping data for table `modx_active_user_sessions`
#

INSERT INTO `modx_active_user_sessions` VALUES ('1','1484313419','91.144.150.167');


# --------------------------------------------------------

#
# Table structure for table `modx_active_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_active_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL,
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';

#
# Dumping data for table `modx_active_users`
#

INSERT INTO `modx_active_users` VALUES ('1','siteadmin_volvo','1484313419','93',NULL);


# --------------------------------------------------------

#
# Table structure for table `modx_categories`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_categories`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `modx_categories`
#

INSERT INTO `modx_categories` VALUES ('2','Js');

INSERT INTO `modx_categories` VALUES ('3','Manager and Admin');

INSERT INTO `modx_categories` VALUES ('4','Search');

INSERT INTO `modx_categories` VALUES ('5','Content');

INSERT INTO `modx_categories` VALUES ('6','Navigation');

INSERT INTO `modx_categories` VALUES ('7','Login');

INSERT INTO `modx_categories` VALUES ('8','Forms');

INSERT INTO `modx_categories` VALUES ('9','Структура сайта');


# --------------------------------------------------------

#
# Table structure for table `modx_document_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_document_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_documentgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_documentgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `modx_event_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_event_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `modx_event_log`
#

INSERT INTO `modx_event_log` VALUES ('1','0','1484296391','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `modx_event_log` VALUES ('2','0','1484305377','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, controlcenter/index.php, controlcenter/includes/config.inc.php) ');

INSERT INTO `modx_event_log` VALUES ('3','0','1484305377','3','1','0','phpmailer','Could not instantiate mail function.');


# --------------------------------------------------------

#
# Table structure for table `modx_keyword_xref`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_keyword_xref`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

#
# Dumping data for table `modx_keyword_xref`
#


# --------------------------------------------------------

#
# Table structure for table `modx_manager_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_manager_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=351 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `modx_manager_log`
#

INSERT INTO `modx_manager_log` VALUES ('1','1484295274','1','admin','58','-','MODX','Logged in');

INSERT INTO `modx_manager_log` VALUES ('2','1484295275','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('3','1484295288','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('4','1484295301','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('5','1484295306','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('6','1484295336','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('7','1484295724','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('8','1484295886','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('9','1484296153','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('10','1484296155','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('11','1484296232','1','admin','30','-','-','Saving settings');

INSERT INTO `modx_manager_log` VALUES ('12','1484296233','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('13','1484296390','1','admin','30','-','-','Saving settings');

INSERT INTO `modx_manager_log` VALUES ('14','1484296400','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('15','1484296482','1','admin','30','-','-','Saving settings');

INSERT INTO `modx_manager_log` VALUES ('16','1484296487','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('17','1484296771','1','admin','30','-','-','Saving settings');

INSERT INTO `modx_manager_log` VALUES ('18','1484296781','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('19','1484296832','1','admin','118','-','-','Call settings ajax include');

INSERT INTO `modx_manager_log` VALUES ('20','1484296858','1','admin','30','-','-','Saving settings');

INSERT INTO `modx_manager_log` VALUES ('21','1484296868','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('22','1484296908','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('23','1484296914','1','admin','102','7','TransAlias','Edit plugin');

INSERT INTO `modx_manager_log` VALUES ('24','1484296964','1','admin','103','7','TransAlias','Saving plugin');

INSERT INTO `modx_manager_log` VALUES ('25','1484296964','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('26','1484297068','1','admin','27','1','MODX CMS Install Success','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('27','1484297081','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('28','1484297154','1','admin','16','4','MODX startup - Bootstrap','Editing template');

INSERT INTO `modx_manager_log` VALUES ('29','1484297163','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('30','1484297175','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `modx_manager_log` VALUES ('31','1484297229','1','admin','20','-','Главная','Saving template');

INSERT INTO `modx_manager_log` VALUES ('32','1484297229','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('33','1484297233','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `modx_manager_log` VALUES ('34','1484297253','1','admin','20','-','Второстепенная страница','Saving template');

INSERT INTO `modx_manager_log` VALUES ('35','1484297253','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('36','1484297295','1','admin','78','1','AjaxSearch_tplAjaxGrpResult','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('37','1484297297','1','admin','80','1','AjaxSearch_tplAjaxGrpResult','Deleting Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('38','1484297297','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('39','1484297301','1','admin','16','4','MODX startup - Bootstrap','Editing template');

INSERT INTO `modx_manager_log` VALUES ('40','1484297305','1','admin','21','4','MODX startup - Bootstrap','Deleting template');

INSERT INTO `modx_manager_log` VALUES ('41','1484297306','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('42','1484297308','1','admin','16','3','Minimal Template','Editing template');

INSERT INTO `modx_manager_log` VALUES ('43','1484297313','1','admin','27','1','MODX CMS Install Success','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('44','1484297317','1','admin','27','1','MODX CMS Install Success','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('45','1484297319','1','admin','5','1','MODX CMS Install Success','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('46','1484297320','1','admin','3','1','MODX CMS Install Success','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('47','1484297324','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('48','1484297326','1','admin','16','3','Minimal Template','Editing template');

INSERT INTO `modx_manager_log` VALUES ('49','1484297329','1','admin','16','3','Minimal Template','Editing template');

INSERT INTO `modx_manager_log` VALUES ('50','1484297332','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('51','1484297337','1','admin','16','6','Второстепенная страница','Editing template');

INSERT INTO `modx_manager_log` VALUES ('52','1484297357','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('53','1484297363','1','admin','16','3','Minimal Template','Editing template');

INSERT INTO `modx_manager_log` VALUES ('54','1484297373','1','admin','27','1','MODX CMS Install Success','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('55','1484297385','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('56','1484297409','1','admin','78','7','AjaxSearch_tplAjaxResult','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('57','1484297414','1','admin','80','7','AjaxSearch_tplAjaxResult','Deleting Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('58','1484297414','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('59','1484297415','1','admin','78','2','AjaxSearch_tplAjaxResults','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('60','1484297417','1','admin','80','2','AjaxSearch_tplAjaxResults','Deleting Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('61','1484297417','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('62','1484297428','1','admin','501','-','Demo Content','Delete category');

INSERT INTO `modx_manager_log` VALUES ('63','1484297428','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('64','1484297448','1','admin','16','3','Minimal Template','Editing template');

INSERT INTO `modx_manager_log` VALUES ('65','1484297456','1','admin','27','1','MODX CMS Install Success','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('66','1484297467','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('67','1484297470','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('68','1484297512','1','admin','78','6','AjaxSearch_tplInput','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('69','1484297514','1','admin','80','6','AjaxSearch_tplInput','Deleting Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('70','1484297514','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('71','1484297516','1','admin','78','5','Comments_tplComments','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('72','1484297518','1','admin','80','5','Comments_tplComments','Deleting Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('73','1484297518','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('74','1484297520','1','admin','78','4','Comments_tplForm','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('75','1484297522','1','admin','80','4','Comments_tplForm','Deleting Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('76','1484297522','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('77','1484297523','1','admin','78','8','WebLogin_tplForm','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('78','1484297526','1','admin','80','8','WebLogin_tplForm','Deleting Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('79','1484297526','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('80','1484297563','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('81','1484297579','1','admin','79','-','header','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('82','1484297579','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('83','1484297581','1','admin','78','9','header','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('84','1484297595','1','admin','79','9','header','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('85','1484297595','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('86','1484297623','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('87','1484297649','1','admin','79','-','footer','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('88','1484297649','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('89','1484297651','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('90','1484297675','1','admin','79','-','links','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('91','1484297675','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('92','1484297685','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('93','1484297698','1','admin','79','-','modal_callback_1','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('94','1484297698','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('95','1484297699','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('96','1484297713','1','admin','79','-','modal_callback_2','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('97','1484297713','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('98','1484297723','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('99','1484297742','1','admin','79','-','scripts','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('100','1484297742','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('101','1484297749','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('102','1484297763','1','admin','79','-','sidebar','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('103','1484297763','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('104','1484297768','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('105','1484297785','1','admin','79','-','sidebar-home','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('106','1484297785','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('107','1484297791','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('108','1484297805','1','admin','79','-','top-menu','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('109','1484297805','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('110','1484297848','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('111','1484297876','1','admin','79','-','ajax','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('112','1484297876','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('113','1484297878','1','admin','78','18','ajax','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('114','1484297883','1','admin','79','18','ajax','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('115','1484297883','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('116','1484297911','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('117','1484297926','1','admin','79','-','map','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('118','1484297926','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('119','1484297941','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('120','1484297985','1','admin','79','-','event-list','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('121','1484297985','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('122','1484298013','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('123','1484298036','1','admin','79','-','service-grid','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('124','1484298036','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('125','1484298059','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('126','1484298071','1','admin','79','-','slides','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('127','1484298072','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('128','1484298081','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('129','1484298097','1','admin','79','-','vk-group','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('130','1484298097','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('131','1484298105','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('132','1484298130','1','admin','79','-','vk-reviews','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('133','1484298130','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('134','1484298210','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('135','1484298214','1','admin','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('136','1484298216','1','admin','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('137','1484298218','1','admin','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('138','1484298234','1','admin','27','1','MODX CMS Install Success','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('139','1484298244','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('140','1484298258','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('141','1484298270','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('142','1484298294','1','admin','5','-','Главная','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('143','1484298296','1','admin','3','2','Главная','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('144','1484298318','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('145','1484298339','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('146','1484298359','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('147','1484298371','1','admin','5','-','Сервис','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('148','1484298372','1','admin','3','3','Сервис','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('149','1484298384','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('150','1484298412','1','admin','30','-','-','Saving settings');

INSERT INTO `modx_manager_log` VALUES ('151','1484298415','1','admin','27','1','MODX CMS Install Success','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('152','1484298425','1','admin','6','1','MODX CMS Install Success','Deleting resource');

INSERT INTO `modx_manager_log` VALUES ('153','1484298426','1','admin','3','1','MODX CMS Install Success','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('154','1484298428','1','admin','27','1','MODX CMS Install Success','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('155','1484298444','1','admin','64','-','-','Removing deleted content');

INSERT INTO `modx_manager_log` VALUES ('156','1484298447','1','admin','27','2','Главная','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('157','1484298485','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('158','1484298504','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('159','1484298514','1','admin','5','-','Акции','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('160','1484298515','1','admin','3','4','Акции','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('161','1484298549','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('162','1484298587','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('163','1484298594','1','admin','5','-','Запчасти','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('164','1484298595','1','admin','3','5','Запчасти','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('165','1484298597','1','admin','27','5','Запчасти','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('166','1484298601','1','admin','5','5','Запчасти','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('167','1484298602','1','admin','3','5','Запчасти','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('168','1484298658','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('169','1484298674','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('170','1484298678','1','admin','5','-','Мойка','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('171','1484298679','1','admin','3','6','Мойка','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('172','1484298724','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('173','1484298867','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('174','1484298880','1','admin','5','-','Стоянка','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('175','1484298881','1','admin','3','7','Стоянка','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('176','1484298902','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('177','1484298928','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('178','1484298942','1','admin','5','-','Отзывы','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('179','1484298943','1','admin','3','8','Отзывы','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('180','1484298953','1','admin','27','8','Отзывы','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('181','1484298956','1','admin','5','8','Отзывы','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('182','1484298958','1','admin','3','8','Отзывы','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('183','1484298972','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('184','1484298997','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('185','1484299011','1','admin','5','-','Контакты','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('186','1484299012','1','admin','3','9','Контакты','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('187','1484299196','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('188','1484299217','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('189','1484299287','1','admin','5','-','Замена масла БЕСПЛАТНО','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('190','1484299288','1','admin','3','10','Замена масла БЕСПЛАТНО','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('191','1484299294','1','admin','27','10','Замена масла БЕСПЛАТНО','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('192','1484299327','1','admin','94','10','Duplicate of Замена масла БЕСПЛАТНО','Duplicate resource');

INSERT INTO `modx_manager_log` VALUES ('193','1484299327','1','admin','3','11','Duplicate of Замена масла БЕСПЛАТНО','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('194','1484299330','1','admin','27','11','Duplicate of Замена масла БЕСПЛАТНО','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('195','1484299332','1','admin','6','11','Duplicate of Замена масла БЕСПЛАТНО','Deleting resource');

INSERT INTO `modx_manager_log` VALUES ('196','1484299334','1','admin','3','4','Акции','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('197','1484299372','1','admin','27','3','Сервис','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('198','1484299374','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('199','1484299390','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('200','1484299396','1','admin','5','-','Тестирование АКБ','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('201','1484299398','1','admin','3','12','Тестирование АКБ','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('202','1484299407','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('203','1484299421','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('204','1484299429','1','admin','5','-','Компьютерная диагностика','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('205','1484299430','1','admin','3','13','Компьютерная диагностика','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('206','1484299438','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('207','1484299450','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('208','1484299454','1','admin','5','-','Ремонт','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('209','1484299455','1','admin','3','14','Ремонт','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('210','1484299457','1','admin','27','14','Ремонт','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('211','1484299460','1','admin','5','14','Ремонт','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('212','1484299461','1','admin','3','14','Ремонт','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('213','1484299464','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('214','1484299485','1','admin','30','-','-','Saving settings');

INSERT INTO `modx_manager_log` VALUES ('215','1484299491','1','admin','27','12','Тестирование АКБ','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('216','1484299498','1','admin','27','14','Ремонт','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('217','1484299508','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('218','1484299527','1','admin','5','-','Техобслуживание','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('219','1484299529','1','admin','3','15','Техобслуживание','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('220','1484299538','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('221','1484299556','1','admin','5','-','Регулировка света','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('222','1484299557','1','admin','3','16','Регулировка света','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('223','1484299597','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('224','1484299617','1','admin','5','-','Замена масла','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('225','1484299618','1','admin','3','17','Замена масла','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('226','1484299620','1','admin','27','17','Замена масла','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('227','1484299623','1','admin','5','17','Замена масла','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('228','1484299625','1','admin','3','17','Замена масла','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('229','1484299659','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('230','1484299680','1','admin','5','-','Глобальное снижение цен','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('231','1484299681','1','admin','3','18','Глобальное снижение цен','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('232','1484299689','1','admin','64','-','-','Removing deleted content');

INSERT INTO `modx_manager_log` VALUES ('233','1484299747','1','admin','94','18','Duplicate of Глобальное снижение цен','Duplicate resource');

INSERT INTO `modx_manager_log` VALUES ('234','1484299747','1','admin','3','19','Duplicate of Глобальное снижение цен','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('235','1484299754','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('236','1484299777','1','admin','5','-','Масляные фильтры','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('237','1484299779','1','admin','3','20','Масляные фильтры','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('238','1484299782','1','admin','6','19','Duplicate of Глобальное снижение цен','Deleting resource');

INSERT INTO `modx_manager_log` VALUES ('239','1484299783','1','admin','3','4','Акции','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('240','1484299800','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('241','1484299815','1','admin','5','-','Двигатели','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('242','1484299819','1','admin','3','21','Двигатели','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('243','1484299827','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('244','1484299844','1','admin','5','-','Оставьте жару за бортом','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('245','1484299846','1','admin','3','22','Оставьте жару за бортом','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('246','1484299853','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('247','1484299879','1','admin','5','-','Бесплатная проверка тормозных услилий','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('248','1484299880','1','admin','3','23','Бесплатная проверка тормозных услилий','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('249','1484299897','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('250','1484299913','1','admin','5','-','Пакетное предложение: Кондиционер','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('251','1484299914','1','admin','3','24','Пакетное предложение: Кондиционер','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('252','1484299930','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('253','1484299944','1','admin','5','-','Ремонт в день рекомендации','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('254','1484299946','1','admin','3','25','Ремонт в день рекомендации','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('255','1484299954','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('256','1484299977','1','admin','5','-','Берегите тепло','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('257','1484299978','1','admin','3','26','Берегите тепло','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('258','1484299989','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `modx_manager_log` VALUES ('259','1484300007','1','admin','5','-','Спецпредложение Нормотех','Saving resource');

INSERT INTO `modx_manager_log` VALUES ('260','1484300009','1','admin','3','27','Спецпредложение Нормотех','Viewing data for resource');

INSERT INTO `modx_manager_log` VALUES ('261','1484300521','1','admin','27','-','Новый ресурс','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('262','1484300525','1','admin','27','-','Новый ресурс','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('263','1484300577','1','admin','17','-','-','Editing settings');

INSERT INTO `modx_manager_log` VALUES ('264','1484300617','1','admin','99','-','-','Manage Web Users');

INSERT INTO `modx_manager_log` VALUES ('265','1484300618','1','admin','86','-','-','Role management');

INSERT INTO `modx_manager_log` VALUES ('266','1484300623','1','admin','53','-','-','Viewing system info');

INSERT INTO `modx_manager_log` VALUES ('267','1484300624','1','admin','13','-','-','Viewing logging');

INSERT INTO `modx_manager_log` VALUES ('268','1484300625','1','admin','114','-','-','View event log');

INSERT INTO `modx_manager_log` VALUES ('269','1484300626','1','admin','70','-','-','Viewing site schedule');

INSERT INTO `modx_manager_log` VALUES ('270','1484300631','1','admin','26','-','-','Refreshing site');

INSERT INTO `modx_manager_log` VALUES ('271','1484300642','1','admin','93','-','-','Backup Manager');

INSERT INTO `modx_manager_log` VALUES ('272','1484300665','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('273','1484300669','1','admin','78','22','slides','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('274','1484300706','1','admin','27','2','Главная','Editing resource');

INSERT INTO `modx_manager_log` VALUES ('275','1484300719','1','admin','16','5','Главная','Editing template');

INSERT INTO `modx_manager_log` VALUES ('276','1484300750','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('277','1484300763','1','admin','79','-','slider','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('278','1484300763','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('279','1484300801','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('280','1484300804','1','admin','78','14','scripts','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('281','1484300812','1','admin','78','18','ajax','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('282','1484300828','1','admin','78','10','footer','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('283','1484300858','1','admin','78','9','header','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('284','1484304207','1','admin','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('285','1484304381','1','admin','9','-','-','Viewing help');

INSERT INTO `modx_manager_log` VALUES ('286','1484304408','1','admin','106','-','-','Viewing Modules');

INSERT INTO `modx_manager_log` VALUES ('287','1484304410','1','admin','112','1','Doc Manager','Execute module');

INSERT INTO `modx_manager_log` VALUES ('288','1484304416','1','admin','112','2','Extras','Execute module');

INSERT INTO `modx_manager_log` VALUES ('289','1484304685','1','admin','28','-','-','Changing password');

INSERT INTO `modx_manager_log` VALUES ('290','1484304688','1','admin','75','-','-','User/ role management');

INSERT INTO `modx_manager_log` VALUES ('291','1484304690','1','admin','12','1','admin','Editing user');

INSERT INTO `modx_manager_log` VALUES ('292','1484304875','1','admin','32','1','siteadmin_volvo','Saving user');

INSERT INTO `modx_manager_log` VALUES ('293','1484304913','1','admin','8','-','-','Logged out');

INSERT INTO `modx_manager_log` VALUES ('294','1484305377','1','siteadmin_volvo','58','-','MODX','Logged in');

INSERT INTO `modx_manager_log` VALUES ('295','1484305734','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('296','1484305736','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('297','1484305740','1','siteadmin_volvo','78','9','header','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('298','1484305748','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('299','1484305750','1','siteadmin_volvo','78','11','links','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('300','1484306082','1','siteadmin_volvo','112','2','Extras','Execute module');

INSERT INTO `modx_manager_log` VALUES ('301','1484306883','1','siteadmin_volvo','106','-','-','Viewing Modules');

INSERT INTO `modx_manager_log` VALUES ('302','1484308158','1','siteadmin_volvo','58','-','MODX','Logged in');

INSERT INTO `modx_manager_log` VALUES ('303','1484310240','1','siteadmin_volvo','99','-','-','Manage Web Users');

INSERT INTO `modx_manager_log` VALUES ('304','1484310241','1','siteadmin_volvo','75','-','-','User/ role management');

INSERT INTO `modx_manager_log` VALUES ('305','1484310250','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('306','1484310254','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('307','1484310892','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('308','1484310894','1','siteadmin_volvo','112','1','Doc Manager','Execute module');

INSERT INTO `modx_manager_log` VALUES ('309','1484310897','1','siteadmin_volvo','112','1','Doc Manager','Execute module');

INSERT INTO `modx_manager_log` VALUES ('310','1484310897','1','siteadmin_volvo','112','2','Extras','Execute module');

INSERT INTO `modx_manager_log` VALUES ('311','1484311079','1','siteadmin_volvo','9','-','-','Viewing help');

INSERT INTO `modx_manager_log` VALUES ('312','1484311089','1','siteadmin_volvo','86','-','-','Role management');

INSERT INTO `modx_manager_log` VALUES ('313','1484311101','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('314','1484311519','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('315','1484311520','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('316','1484311524','1','siteadmin_volvo','78','11','links','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('317','1484311556','1','siteadmin_volvo','79','11','links','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('318','1484311556','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('319','1484311568','1','siteadmin_volvo','78','14','scripts','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('320','1484311575','1','siteadmin_volvo','79','14','scripts','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('321','1484311575','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('322','1484311580','1','siteadmin_volvo','78','18','ajax','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('323','1484311594','1','siteadmin_volvo','79','18','ajax','Saving Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('324','1484311594','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('325','1484311632','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('326','1484311634','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('327','1484311658','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('328','1484311661','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('329','1484311663','1','siteadmin_volvo','31','-','/home/c/cr02255/volvo-kirov/public_html/assets/send.php','Viewing File');

INSERT INTO `modx_manager_log` VALUES ('330','1484311678','1','siteadmin_volvo','31','-','/home/c/cr02255/volvo-kirov/public_html/assets/send.php','Modified File');

INSERT INTO `modx_manager_log` VALUES ('331','1484311678','1','siteadmin_volvo','31','-','/home/c/cr02255/volvo-kirov/public_html/assets/send.php','Viewing File');

INSERT INTO `modx_manager_log` VALUES ('332','1484311683','1','siteadmin_volvo','31','-','/home/c/cr02255/volvo-kirov/public_html/assets/send.php','Viewing File');

INSERT INTO `modx_manager_log` VALUES ('333','1484311700','1','siteadmin_volvo','31','-','/home/c/cr02255/volvo-kirov/public_html/assets/send.php','Modified File');

INSERT INTO `modx_manager_log` VALUES ('334','1484311700','1','siteadmin_volvo','31','-','/home/c/cr02255/volvo-kirov/public_html/assets/send.php','Viewing File');

INSERT INTO `modx_manager_log` VALUES ('335','1484311769','1','siteadmin_volvo','76','-','-','Element management');

INSERT INTO `modx_manager_log` VALUES ('336','1484311774','1','siteadmin_volvo','78','18','ajax','Editing Chunk (HTML Snippet)');

INSERT INTO `modx_manager_log` VALUES ('337','1484311799','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('338','1484311800','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('339','1484312057','1','siteadmin_volvo','31','-','-','Using file manager');

INSERT INTO `modx_manager_log` VALUES ('340','1484312847','1','siteadmin_volvo','114','-','-','View event log');

INSERT INTO `modx_manager_log` VALUES ('341','1484312851','1','siteadmin_volvo','115','3','-','View event log details');

INSERT INTO `modx_manager_log` VALUES ('342','1484312857','1','siteadmin_volvo','114','-','-','View event log');

INSERT INTO `modx_manager_log` VALUES ('343','1484312862','1','siteadmin_volvo','115','1','-','View event log details');

INSERT INTO `modx_manager_log` VALUES ('344','1484312881','1','siteadmin_volvo','114','-','-','View event log');

INSERT INTO `modx_manager_log` VALUES ('345','1484312882','1','siteadmin_volvo','70','-','-','Viewing site schedule');

INSERT INTO `modx_manager_log` VALUES ('346','1484312893','1','siteadmin_volvo','93','-','-','Backup Manager');

INSERT INTO `modx_manager_log` VALUES ('347','1484313299','1','siteadmin_volvo','114','-','-','View event log');

INSERT INTO `modx_manager_log` VALUES ('348','1484313312','1','siteadmin_volvo','114','-','-','View event log');

INSERT INTO `modx_manager_log` VALUES ('349','1484313314','1','siteadmin_volvo','114','-','-','View event log');

INSERT INTO `modx_manager_log` VALUES ('350','1484313402','1','siteadmin_volvo','93','-','-','Backup Manager');


# --------------------------------------------------------

#
# Table structure for table `modx_manager_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_manager_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `modx_manager_users`
#

INSERT INTO `modx_manager_users` VALUES ('1','siteadmin_volvo','$P$BgnscNZh2X69c64Stv9U4Jd64cQ6jE.');


# --------------------------------------------------------

#
# Table structure for table `modx_member_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_member_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_membergroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_membergroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_membergroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_membergroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_content`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_content`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `modx_site_content`
#

INSERT INTO `modx_site_content` VALUES ('2','document','text/html','Главная','','','home','','1','0','0','0','0','','<h3>Новости</h3>\n<h4>График работы СТО в праздники</h4>\n30.12.2016 г. с 8.00 - 21.00 <br>\n31.12.2016 г. с 8.00- 17.00 <br>\n01.01.2017 г. - ВЫХОДНОЙ <br>\n02.01.2017 г. - ВЫХОДНОЙ <br>\n03.01.2017 г. - ВЫХОДНОЙ <br>\n04.01.2017 г. - с 8.00 - 21.00 <br>\n05.01.2017 г. - с 8.00 - 21.00 <br>\n06.01.2017 г. - с 8.00 - 21.00 <br>\n07.01.2017 г. - ВЫХОДНОЙ <br>\n08.01.2017 г. - с 8.00 - 21.00 <br>\n09.01.2017 г. - с 8.00 - 21.00 <br>\n10.01.2017 г. - с 8.00 - 21.00 <br>\n<h4>Термостаты и Антифриз по суперцене!</h4>\n<ol>\n	<li>ТЕРМОСТАТЫ стоимость пакета от 5000 руб. В пакет входят:\n		<ul>\n			<li>запчасти- 1 шт</li>\n			<li>работа - замена термостата</li>\n		</ul>\n	</li>\n	<li>АНТИФРИЗ стоимость пакета от 13790 руб. В пакет входят:\n		<ul>\n			<li>антифриз 40 л.</li>\n			<li>работа - замена антифриза</li>\n		</ul>\n	</li>\n</ol>\n<h4>Продление акций</h4>\n<ol>\n	<li>Специально для Вас продлена Акция по масляным фильтрам до 31.12.2016</li>\n	<li>Специально для Вас продлена Акция по комплектам для двигателей Д 12 до 31.12.2016</li>\n</ol>\n<h4>Изменился график работы сервисной станции</h4>\n<img style=\"vertical-align: middle; text-align: center;\" src=\"assets/images/content/warning.jpg\" width=\"300\" height=\"100\">\n<p>Уважаемые клиенты! Специально, по вашим многочисленным просьбам, мы увеличили продолжительность работы нашей СТО</p>\n<h4><a href=\"[~9~]\">8:00 - 21:00</a></h4>\n<br>\n<h4>Глобальное снижение цен! Спешите ознакомиться с <a href=\"crash-cost\">каталогом</a></h4>\n<iframe class=\"scribd_iframe_embed\" src=\"https://www.scribd.com/embeds/319369485/content?start_page=3&amp;view_mode=slideshow&amp;access_key=key-vKPucB9SsfeboCKB5H90&amp;show_recommendations=true&amp;show_upsell=true\" data-auto-height=\"false\" data-aspect-ratio=\"2\" scrolling=\"no\" id=\"doc_17683\" width=\"100%\" height=\"450\" frameborder=\"0\"></iframe>\n<h4>Вольво с Вами навсегда</h4>\n<h5>Теперь вы можете у нас приобрести сувенирную продукцию. Ознакомьтесь с каталогом ниже</h5>\n<iframe class=\"scribd_iframe_embed\" src=\"https://www.scribd.com/embeds/320979291/content?start_page=1&amp;view_mode=slideshow&amp;show_recommendations=true\" data-auto-height=\"false\" data-aspect-ratio=\"undefined\" scrolling=\"no\" id=\"doc_9242\" width=\"100%\" height=\"600\" frameborder=\"0\"></iframe>\n<h3>НОРМОТЕХ. О Компании</h3>\n<p>Компания Нормотех &mdash; авторизованный сервис грузовых автомобилей Volvo и Renault. Мы находимся непосредственно на объездной дороге Подгорянка-Шихово в 2-х км от Шихово, на нерегулируемом перекрестке с дорожным указателем &laquo;Подберезы-0,5&raquo;</p>\n<h4>Выполняем работы:</h4>\n<ul>\n<li>компьютерная диагностика и ремонт электрооборудования</li>\n<li>тестирование АКБ</li>\n<li>техническое обслуживание грузовых автомобилей</li>\n<li>замена масла</li>\n<li>регулировка тормозных усилий</li>\n<li>регулировка сход-развал</li>\n<li>заправка кондиционеров</li>\n<li>полный ремонт ходовой</li>\n<li>рулевой части и пневмосистемы автомобиля</li>\n<li>сварка</li>\n<li>агрегатная замена узлов и компонентов</li>\n</ul>\n<h4>На все работы по обслуживанию и ремонту предоставляется гарантия 30 дней.</h4>\n<h4>На оригинальные запасные части предоставляется гарантия 1 год.</h4>\n<hr>\n<h4>Предоставляем услуги:</h4>\n<ul>\n<li>мойка грузовых автомобилей</li>\n<li>стоянка грузовых автомобилей (без водителя)</li>\n</ul>\n<h4>Для отдыха водителей &mdash;</h4>\n<ul>\n<li>комната отдыха с туалетом и душем</li>\n<li>телевизор</li>\n<li>DVD-проигрыватель</li>\n<li>Wi-Fi</li>\n</ul>','1','5','1','1','1','1','1484298294','1','1484298294','0','0','0','1484298294','1','','0','0','0','0','0','0','0','1');

INSERT INTO `modx_site_content` VALUES ('3','document','text/html','Сервис','Сервисные услуги','','service','','1','0','0','0','1','','<p>Мастер-приемщик детально согласовывает с клиентом предстоящие работы, их стоимость и сроки выполнения. Никакие дополнительные работы не производятся без предварительного согласования с клиентом.</p>\n<button class=\"btn-volvo center-block\" data-toggle=\"modal\" data-target=\"#callback-service\">\n			<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\n			<i class=\"fa fa-reply\" aria-hidden=\"true\"></i>\n			<p>Запрос на постановку в сервис</p>\n</button>\n<!-- Modal -->\n<div class=\"modal fade\" id=\"callback-service\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n	{{modal_callback_1}}\n		<form method=\"POST\" id=\"serviceForm\" action=\"javascript:void(null);\" onsubmit=\"call(\'service\')\">\n		<input type=\"hidden\" name=\"id\" value=\"service\">\n	{{modal_callback_2}}\n</div>\n\n<p>Квалифицированные механики выполняют только те работы, которые указаны в заказ-наряде.</p>\n<p>Диагностика:<br />- компьютерная диагностика электрооборудования;<br />- тестирование АКБ;<br />- измерение тормозных усилий;<br />- измерение сход-развал.</p>\n<p>Техническое обслуживание:<br />- техническое обслуживание грузовых автомобилей;<br />- замена масла;<br />- регулировка тормозных усилий;&nbsp;<br />- регулировка сход-развал;&nbsp;<br />- заправка кондиционеров.</p>\n<p>Ремонт:<br />- ремонт двигателя;<br />- ремонт КПП и АКПП;<br />- ремонт ходовой, рулевой части;<br />- ремонт гидравлических и пневмосистем;<br />- агрегатная замена узлов и компонентов;<br />- сварка;<br />- слесарные работы;</p>\n<p>Выполняем <strong>ВЫЕЗДНОЙ</strong> ремонт: диагностика, агрегатная замена узлов и компонентов.</p>\n<h4>На все работы по обслуживанию и ремонту предоставляется гарантия 30 дней.</h4> \n	<h4>На оригинальные запасные части предоставляется гарантия 1 год.</h4>\n<p>Приветствуется предварительная запись в удобное для клиента время:<br />+7 (8332) 22-77-90, доб. 1, мобильный +7 (909) 133-96-46<br /><span id=\"cloak22527\"><a href=\"mailto:service@volvo-kirov.ru\">service@volvo-kirov.ru</a></span></p>','1','6','3','1','1','1','1484298371','1','1484298371','0','0','0','1484298371','1','','0','0','0','0','0','0','0','1');

INSERT INTO `modx_site_content` VALUES ('4','document','text/html','Акции','Акции','','sales','','1','0','0','0','1','','<div class=\"clearfix\"></div>\n            <div class=\"row event-list\">\n               <div class=\"col-xs-12 col-sm-6 event-item\">\n					<a href=\"[~23~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/brakes-preview.png\" alt=\"Замена тормозных усилий бесплатно\">\n							<div class=\"caption\">\n								<h3>Бесплатная проверка <br> тормозных усилий</h3>\n								<h4>1 августа 2016 - 31 декабря 2016</h4>\n								<p><b>НОРМОТЕХ. КИРОВ</b></p>\n								<p>\n									Воспользуйтесь нашими специальными\n									предложениями для подготовки грузового\n									автомобиля к зимнему сезону.\n								</p>\n							</div>\n						</div>\n					</a>\n                </div>\n                <div class=\"col-xs-12 col-sm-6 event-item\">\n					<a href=\"[~21~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/summer 2106/volvo-engine.jpg\" alt=\"Двигатель акция Volvo\">\n							<div class=\"caption\">\n								<h3>Акция комплекты для двигателей</h3>\n								<h4>1 июня 2016 - 31 декабря 2016</h4>\n								<p><b>НОРМОТЕХ. КИРОВ</b></p>\n								<p>\n									<b>Уникальные предложения только этим летом.</b> <br>\n									Запчасти от 30 000 <i class=\"fa fa-rub\" aria-hidden=\"true\"></i><br>\n									Работа от 20 730 <i class=\"fa fa-rub\" aria-hidden=\"true\"></i></p>\n							</div>\n						</div>\n					</a>\n                </div>\n				<div class=\"clearfix\"></div>\n                <div class=\"col-xs-12 col-sm-6 event-item\">\n					<a href=\"[~20~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/summer 2106/volvo-filters.jpg\" alt=\"Масляные фильры Volvo\">\n							<div class=\"caption\">\n								<h3>Масляные фильтры Акция</h3>\n								<h4>1 июня 2016 - 31 декабря 2016</h4>\n								<p><b>НОРМОТЕХ. КИРОВ</b></p>\n								<p>\n									<b>Уникальные предложения только этим летом.</b> <br>\n									Фильтр LONG LIFE 2шт. 1900<i class=\"fa fa-rub\" aria-hidden=\"true\"></i><br>\n									Фильтр BY-PASS 1шт. 1100 <i class=\"fa fa-rub\" aria-hidden=\"true\"></i></p>\n							</div>\n						</div>\n					</a>\n                </div>\n                <div class=\"col-xs-12 col-sm-6 event-item\">\n					<a href=\"[~27~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/winter 16/volvo-sale-preview-home.jpg\" alt=\"Акция Берегите тепло\">\n							<div class=\"caption\">\n								<h3>Акция \"Берегите тепло\"</h3>\n								<h4>1 октября 2016 - 30 ноября 2016</h4>\n								<p><b>Выгода до 30%</b></p>\n								<p>\n									Хорошие скидки на термостаты, элементы климат-контроля, автономного отопителя и пр.\n								</p>\n							</div>\n						</div>\n					</a>\n                </div>\n				<div class=\"clearfix\"></div>\n                <div class=\"col-xs-12 col-sm-6 event-item\">\n					<a href=\"[~10~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/summer 2106/volvo-engine.jpg\" alt=\"Снижение цен Volvo\">\n							<div class=\"caption\">\n								<h3>Замена масла в ПОДАРОК</h3>\n								<h4>25 июня 2016 - 31 декабря 2016</h4>\n								<p><b>Всего 1<i class=\"fa fa-rub\" aria-hidden=\"true\"></i> </b></p>\n								<p>\n									При покупке масла в сервисном центре Volvo и Renault \n								</p>\n							</div>\n						</div>\n					</a>\n                </div>\n                <div class=\"col-xs-12 col-sm-6 event-item\">\n					<a href=\"[~25~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/spec.jpg\" alt=\"Снижение цен Volvo\">\n							<div class=\"caption\">\n								<h3>Скидка специалиста</h3>\n								<h4>1 августа 2016 - 30 декабря 2016</h4>\n								<p><b>10%</b> на ремонт</p>\n								<p>\n									Ремонт в день рекомендации дешевле до 10% \n								</p>\n							</div>\n						</div>\n					</a>\n                </div>\n            </div>','1','6','2','1','1','1','1484298514','1','1484298514','0','0','0','1484298514','1','Акции','0','0','0','0','0','0','0','1');

INSERT INTO `modx_site_content` VALUES ('5','document','text/html','Запчасти','Запчасти','','spares','','1','0','0','0','0','','<h4>Оригинальные запчасти Volvo и Renault Truck.</h4>\n<h4>На <strong>оригинальные запчасти</strong> гарантия <strong>1 год</strong></h4>\n<p>Если необходимые запчасти отсутствуют на нашем складе, время их доставки будет следующим:</p>\n<p>при заказе запчастей <b>до 11:00</b> текущего дня время доставки составит:<br />- 1 день для запчасти со склада Вольво-Восток в России;<br />- 15 дней для запчасти со склада Вольво в Европе.</p>\n<h4>При заказе запчастей после <b>11:00 </b>текущего дня время доставки увеличивается на один день.</h4>\n<div class=\"clearfix\">&nbsp;</div>\n<p>Запрос наличия запчастей</p>\n<p>&nbsp;</p>\n<!-- Modal -->\n<div id=\"callback-spares\" class=\"modal fade\" tabindex=\"-1\">{{modal_callback_1}}<form id=\"sparesForm\" action=\"javascript:void(null);\" method=\"POST\"><input name=\"id\" type=\"hidden\" value=\"spares\" /> {{modal_callback_2}}</form></div>\n<h3>Восстановление запасных частей</h3>\n<p><iframe src=\"https://www.youtube.com/embed/NawwV3PEqzY\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\n<p><img src=\"assets/images/content/letter.png\" alt=\"Восстановление запчастей\" /></p>','1','6','3','1','1','1','1484298594','1','1484298601','0','0','0','1484298601','1','Запчасти','0','0','0','0','0','0','0','1');

INSERT INTO `modx_site_content` VALUES ('6','document','text/html','Мойка','Мойка','','wash','','1','0','0','0','0','','<p>По выбору клиента выполняется технологическая мойка и полная бесконтактная мойка грузовых автомобилей, включая автопоезда. Длина линии мойки составляет 28 метров, обеспечивается сквозной проезд автопоезда. Для мойки грузовых автомобилей используется только профессиональная автохимия.</p>','1','6','4','1','1','1','1484298678','1','1484298678','0','0','0','1484298678','1','','0','0','0','0','0','0','0','1');

INSERT INTO `modx_site_content` VALUES ('7','document','text/html','Стоянка','Стоянка','','parking','','1','0','0','0','0','','<p>Непосредственно на территории станции имеется стоянка для грузовых автомобилей площадью 4 000 кв.м.</p>\n<p>Охрана круглосуточно, освещение в ночное время.</p>\n<p>Стоянка предназначена для хранения грузовых автомобилей без водителей, поскольку все бытовые помещения находятся внутри здания сервисной станции, которая закрыта во внерабочие часы.</p>','1','6','5','1','1','1','1484298880','1','1484298880','0','0','0','1484298880','1','','0','0','0','0','0','0','0','1');

INSERT INTO `modx_site_content` VALUES ('8','document','text/html','Отзывы','Отзывы','','reviews','','1','0','0','0','0','','<p>{{vk-reviews}}</p>','1','6','7','1','1','1','1484298942','1','1484298956','0','0','0','1484298956','1','Отзывы','0','0','0','0','0','0','0','1');

INSERT INTO `modx_site_content` VALUES ('9','document','text/html','Контакты','Контакты','','contact','','1','0','0','0','0','','<p>+7 (8332) 22-77-90 &ndash; единый номер<br />+7 (8332) 22-77-90 доб. 1 - приемка/запись на сервис, мобильный +7 (909) 133-96-46<br />+7 (8332) 22-77-90 доб. 2, доб. 1 - продажа запчастей<br />+7 (8332) 22-77-90 доб. 2, доб. 2 - менеджер по работе с клиентами<br />+7 (8332) 22-77-90 доб. 2, доб. 3 - бухгалтерия</p>\n<p><span id=\"cloak40590\"><a href=\"mailto:service@volvo-kirov.ru\">service@volvo-kirov.ru</a></span>&nbsp;- приемка/запись на сервис<br /><span id=\"cloak61665\"><a href=\"mailto:parts@volvo-kirov.ru\">parts@volvo-kirov.ru</a></span>&nbsp;- продажа запчастей<br /><span id=\"cloak8225\"><a href=\"mailto:csr@volvo-kirov.ru\">csr@volvo-kirov.ru</a></span>&nbsp;- менеджер по работе с клиентами<br /><span id=\"cloak22273\"><a href=\"mailto:finance@volvo-kirov.ru\">finance@volvo-kirov.ru</a></span>&nbsp;- бухгалтерия<br /><span id=\"cloak2384\"><a href=\"mailto:warranty@volvo-kirov.ru\">warranty@volvo-kirov.ru</a></span>&nbsp;- инженер по гарантии</p>\n<p>&nbsp;</p>\n<h2>Нормотех</h2>\n<p>613118, Кировская область,<br />Слободской район,<br />МО Шиховское сельское поселение</p>\n<p>&nbsp;</p>\n<h4>Часы работы:</h4>\n<b>ежедневно</b>\n<p>с 8:00 до 21:00</p>\n<button class=\"btn-volvo center-block\" data-toggle=\"modal\" data-target=\"#callback-contact\">\n			<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\n			<i class=\"fa fa-reply\" aria-hidden=\"true\"></i>\n			<p>Написать директору</p>\n</button>\n<!-- Modal -->\n<div class=\"modal fade\" id=\"callback-contact\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n	{{modal_callback_1}}\n		<form method=\"POST\" id=\"contactForm\" action=\"javascript:void(null);\" onsubmit=\"call(\'contact\')\">\n		<input type=\"hidden\" name=\"id\" value=\"contact\">\n	{{modal_callback_2}}\n</div>','1','6','7','1','1','1','1484299011','1','1484299011','0','0','0','1484299011','1','Контакты','0','0','0','0','0','0','0','1');

INSERT INTO `modx_site_content` VALUES ('10','document','text/html','Замена масла БЕСПЛАТНО','','','shange-of-oil','','1','0','0','4','0','','<p><img src=\"assets/images/content/events/ccivnh3nc-m.jpg\" width=\"724\" height=\"1024\" alt=\"Замена масла бесплатно\" style=\"vertical-align: middle;\" /></p>','1','6','0','1','1','1','1484299287','1','1484299287','0','0','0','1484299287','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('19','document','text/html','Duplicate of Глобальное снижение цен','Глобальное снижение цен','','','','0','0','0','4','0','','<!--<ul>\n<li>Стоимость седел клапанов снижена более, чем в 3 раза. В среднем понижение составило 65 % по группе!</li>\n<li>Стоимость клапанов снижена в 2 раза. В среднем понижение составило 40 % по группе!</li>\n<li>Стоимость направляющих клапанов снижена более , чем в 4 раза. В среднем понижение составило 70 % по группе!</li>\n<li>Стоимость &laquo;стаканов&raquo; снижена более, чем в 2 раза. Стоимость насос-форсунок снижена в среднем на 25 %.</li>\n<li>Детали КПП, синхронизаторы, валы, шестерни. Стоимость &laquo;внутренностей&raquo; снижена более, чем в 4 раза (VT2214B/C, VT2514B/C, AT24142C, VT2814, VT2209B)</li>\n<li>Стоимость сопутствующих запасных частей снижена в среднем в 1,7 раза.</li>\n<li>Стоимость запасных частей системы &laquo;кондиционирования&raquo; и радиаторов снижена более, чем в 2 раза.</li>\n<li>Стоимость распредвалов и рокеров снижена более, чем в 2 раза.</li>\n<li>Стоимость маховиков снижена более , чем в 3 раза.</li>\n<li>Стоимость фар и фонарей в среднем снижена на 15%.</li>\n<li>Стоимость блоков управления снижена в 2,5 раза. На блоки управления двигателем цена снижена в 5 раз!</li>\n<li>Пневматические клапаны, модуляторы. В среднем понижение составило 20 %</li>\n<li>Стоимость приводных ремней снижена на 32 %. Стоимость шкивов в среднем снизится на 9 %</li>\n<li>Стоимость листов рессор снижена 30 %. Стоимость пневморессор уменьшится в среднем на 3 %</li>\n<li>Стоимость сопутствующих запасных частей снижена в среднем в 1,7 раза.</li>\n<li>Стоимость стартеров снижена в 2 раза. Стоимость генераторов снижена в 1,5 раза. Стоимость ГУРов снижена на 30 %.</li>\n<li>Стоимость стоек, втулок, снижена в среднем на 30 %</li>\n<li>Стоимость водяных насосов в среднем снижена на 16%. Стоимость поддонов снижена в два раза</li>\n</ul> -->\n<iframe class=\"scribd_iframe_embed\" src=\"https://www.scribd.com/embeds/319369485/content?start_page=3&view_mode=slideshow&access_key=key-vKPucB9SsfeboCKB5H90&show_recommendations=true&show_upsell=true\" data-auto-height=\"false\" data-aspect-ratio=\"2\" scrolling=\"no\" id=\"doc_17683\" width=\"100%\" height=\"450\" frameborder=\"0\"></iframe>\n<h4>Листайте страницы с помощью стрелок \"&lt;\" и \">\"</h4>','1','6','2','1','1','1','1484299747','0','0','1','1484299782','1','0','0','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('12','document','text/html','Тестирование АКБ','Тестирование АКБ','','test-akb','','1','0','0','3','0','','<p>Тестирование АКБ и системы пуска выполняется с помощью Дилерского тестера и включает в себя функции:<br />- тестирование аккумуляторной батареи с помощью информации, выбираемой на нескольких экранах;<br />- тестирование аккумуляторной батареи, а также систем пуска и зарядки;<br />- выполнение предпродажного испытания;<br />- подбор пары аккумуляторных батарей;<br />- режим контроля качества для испытания аккумуляторных батарей на складе или находящихся на автомобиле.</p>\n<p>&nbsp;</p>\n<p>По итогам тестирования выдаются следующие результаты:</p>\n<p>- результаты тестирования аккумуляторной батареи;<br />- заключение о состоянии аккумуляторной батареи;<br />- заключение о температуре;<br />- измеренное напряжение;<br />- измеренная емкость в единицах номинальной емкости;<br />- номинальная емкость в единицах, выбранных для тестирования;</p>\n<p>&nbsp;</p>\n<p>Результаты тестирования системы пуска:<br />- среднее напряжение при включении стартера;<br />- средняя сила тока при включении стартера, если используются токовые клещи;<br />- продолжительность включения стартера в миллисекундах;<br />- сопротивление цепи в омах (сопротивление цепи стартера) отображается, если используются токовые клещи.</p>\n<p>&nbsp;</p>\n<p>Результаты теста генератора:<br />- напряжение постоянного тока при выключенных нагрузках и заданных оборотах двигателя;<br />- ток при выключенных нагрузках и заданных оборотах двигателя, если используются токовые клещи;<br />- заключение о состоянии генератора;<br />- напряжение постоянного тока при включенных нагрузках и заданных оборотах двигателя;<br />- ток при включенных нагрузках и заданных оборотах двигателя, если используются токовые клещи.</p>','1','6','0','1','1','1','1484299396','1','1484299396','0','0','0','1484299396','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('13','document','text/html','Компьютерная диагностика','Компьютерная диагностика','','comp-diag','','1','0','0','3','0','','<p>Мастер-приемщик детально согласовывает с клиентом предстоящие работы, их стоимость и сроки выполнения. Никакие дополнительные работы не производятся без предварительного согласования с клиентом.</p>\n<p>Квалифицированные механики выполняют только те работы, которые указаны в заказ-наряде.</p>\n<p>Диагностика:<br />- компьютерная диагностика электрооборудования;<br />- тестирование АКБ;<br />- измерение тормозных усилий;<br />- измерение сход-развал.</p>\n<p>Техническое обслуживание:<br />- техническое обслуживание грузовых автомобилей;<br />- замена масла;<br />- регулировка тормозных усилий;&nbsp;<br />- регулировка сход-развал;&nbsp;<br />- заправка кондиционеров.</p>\n<p>Ремонт:<br />- ремонт двигателя;<br />- ремонт КПП и АКПП;<br />- ремонт ходовой, рулевой части;<br />- ремонт гидравлических и пневмосистем;<br />- агрегатная замена узлов и компонентов;<br />- сварка;<br />- слесарные работы;</p>\n<p>Выполняем ВЫЕЗДНОЙ ремонт: диагностика, агрегатная замена узлов и компонентов.</p>\n<p>На все работы по обслуживанию и ремонту с использованием оригинальных запасных частей предоставляется гарантия 1 год.</p>\n<p>Приветствуется предварительная запись в удобное для клиента время:<br />+7 (8332) 22-77-90, доб. 1, мобильный +7 (909) 133-96-46</p>','1','6','1','1','1','1','1484299429','1','1484299429','0','0','0','1484299429','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('14','document','text/html','Ремонт','Ремонт','','remont','','1','0','0','3','0','','<p>Мастер-приемщик детально согласовывает с клиентом предстоящие работы, их стоимость и сроки выполнения. Никакие дополнительные работы не производятся без предварительного согласования с клиентом.</p>\n<p>Квалифицированные механики выполняют только те работы, которые указаны в заказ-наряде.</p>\n<p>Диагностика:<br />- компьютерная диагностика электрооборудования;<br />- тестирование АКБ;<br />- измерение тормозных усилий;<br />- измерение сход-развал.</p>\n<p>Техническое обслуживание:<br />- техническое обслуживание грузовых автомобилей;<br />- замена масла;<br />- регулировка тормозных усилий;&nbsp;<br />- регулировка сход-развал;&nbsp;<br />- заправка кондиционеров.</p>\n<p>Ремонт:<br />- ремонт двигателя;<br />- ремонт КПП и АКПП;<br />- ремонт ходовой, рулевой части;<br />- ремонт гидравлических и пневмосистем;<br />- агрегатная замена узлов и компонентов;<br />- сварка;<br />- слесарные работы;</p>\n<p>Выполняем ВЫЕЗДНОЙ ремонт: диагностика, агрегатная замена узлов и компонентов.</p>\n<p>На все работы по обслуживанию и ремонту с использованием оригинальных запасных частей предоставляется гарантия 1 год.</p>\n<p>Приветствуется предварительная запись в удобное для клиента время:<br />+7 (8332) 22-77-90, доб. 1, мобильный +7 (909) 133-96-46<br /><span id=\"cloak64428\"><a href=\"mailto:service@volvo-kirov.ru\">service@volvo-kirov.ru</a></span></p>','1','6','2','1','1','1','1484299454','1','1484299460','0','0','0','1484299460','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('15','document','text/html','Техобслуживание','Техобслуживание','','tehobsluzhivanie','','1','0','0','3','0','','<p>Мастер-приемщик детально согласовывает с клиентом предстоящие работы, их стоимость и сроки выполнения. Никакие дополнительные работы не производятся без предварительного согласования с клиентом.</p>\n<p>Квалифицированные механики выполняют только те работы, которые указаны в заказ-наряде.</p>\n<p>Диагностика:<br />- компьютерная диагностика электрооборудования;<br />- тестирование АКБ;<br />- измерение тормозных усилий;<br />- измерение сход-развал.</p>\n<p>Техническое обслуживание:<br />- техническое обслуживание грузовых автомобилей;<br />- замена масла;<br />- регулировка тормозных усилий;&nbsp;<br />- регулировка сход-развал;&nbsp;<br />- заправка кондиционеров.</p>\n<p>Ремонт:<br />- ремонт двигателя;<br />- ремонт КПП и АКПП;<br />- ремонт ходовой, рулевой части;<br />- ремонт гидравлических и пневмосистем;<br />- агрегатная замена узлов и компонентов;<br />- сварка;<br />- слесарные работы;</p>\n<p>Выполняем ВЫЕЗДНОЙ ремонт: диагностика, агрегатная замена узлов и компонентов.</p>\n<p>На все работы по обслуживанию и ремонту с использованием оригинальных запасных частей предоставляется гарантия 1 год.</p>\n<p>Приветствуется предварительная запись в удобное для клиента время:<br />+7 (8332) 22-77-90, доб. 1, мобильный +7 (909) 133-96-46<br /><span id=\"cloak64428\"><a href=\"mailto:service@volvo-kirov.ru\">service@volvo-kirov.ru</a></span></p>','1','6','3','1','1','1','1484299527','1','1484299527','0','0','0','1484299527','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('16','document','text/html','Регулировка света','Регулировка света','','regular-light','','1','0','0','3','0','','<p>Мастер-приемщик детально согласовывает с клиентом предстоящие работы, их стоимость и сроки выполнения. Никакие дополнительные работы не производятся без предварительного согласования с клиентом.</p>\n<p>Квалифицированные механики выполняют только те работы, которые указаны в заказ-наряде.</p>\n<p>Диагностика:<br />- компьютерная диагностика электрооборудования;<br />- тестирование АКБ;<br />- измерение тормозных усилий;<br />- измерение сход-развал.</p>\n<p>Техническое обслуживание:<br />- техническое обслуживание грузовых автомобилей;<br />- замена масла;<br />- регулировка тормозных усилий;&nbsp;<br />- регулировка сход-развал;&nbsp;<br />- заправка кондиционеров.</p>\n<p>Ремонт:<br />- ремонт двигателя;<br />- ремонт КПП и АКПП;<br />- ремонт ходовой, рулевой части;<br />- ремонт гидравлических и пневмосистем;<br />- агрегатная замена узлов и компонентов;<br />- сварка;<br />- слесарные работы;</p>\n<p>Выполняем ВЫЕЗДНОЙ ремонт: диагностика, агрегатная замена узлов и компонентов.</p>\n<p>На все работы по обслуживанию и ремонту с использованием оригинальных запасных частей предоставляется гарантия 1 год.</p>\n<p>Приветствуется предварительная запись в удобное для клиента время:<br />+7 (8332) 22-77-90, доб. 1, мобильный +7 (909) 133-96-46<br /><span id=\"cloak64428\"><a href=\"mailto:service@volvo-kirov.ru\">service@volvo-kirov.ru</a></span></p>','1','6','4','1','1','1','1484299556','1','1484299556','0','0','0','1484299556','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('17','document','text/html','Замена масла','Замена масла','','change-oil','','1','0','0','3','0','','<p>Мастер-приемщик детально согласовывает с клиентом предстоящие работы, их стоимость и сроки выполнения. Никакие дополнительные работы не производятся без предварительного согласования с клиентом.</p>\n<p>Квалифицированные механики выполняют только те работы, которые указаны в заказ-наряде.</p>\n<p>Диагностика:<br />- компьютерная диагностика электрооборудования;<br />- тестирование АКБ;<br />- измерение тормозных усилий;<br />- измерение сход-развал.</p>\n<p>Техническое обслуживание:<br />- техническое обслуживание грузовых автомобилей;<br />- замена масла;<br />- регулировка тормозных усилий;&nbsp;<br />- регулировка сход-развал;&nbsp;<br />- заправка кондиционеров.</p>\n<p>Ремонт:<br />- ремонт двигателя;<br />- ремонт КПП и АКПП;<br />- ремонт ходовой, рулевой части;<br />- ремонт гидравлических и пневмосистем;<br />- агрегатная замена узлов и компонентов;<br />- сварка;<br />- слесарные работы;</p>\n<p>Выполняем ВЫЕЗДНОЙ ремонт: диагностика, агрегатная замена узлов и компонентов.</p>\n<p>На все работы по обслуживанию и ремонту с использованием оригинальных запасных частей предоставляется гарантия 1 год.</p>\n<p>Приветствуется предварительная запись в удобное для клиента время:<br />+7 (8332) 22-77-90, доб. 1, мобильный +7 (909) 133-96-46<br /><span id=\"cloak64428\"><a href=\"mailto:service@volvo-kirov.ru\">service@volvo-kirov.ru</a></span></p>','1','6','5','1','1','1','1484299617','1','1484299623','0','0','0','1484299623','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('18','document','text/html','Глобальное снижение цен','Глобальное снижение цен','','crash-cost','','0','0','0','4','0','','<!--<ul>\n<li>Стоимость седел клапанов снижена более, чем в 3 раза. В среднем понижение составило 65 % по группе!</li>\n<li>Стоимость клапанов снижена в 2 раза. В среднем понижение составило 40 % по группе!</li>\n<li>Стоимость направляющих клапанов снижена более , чем в 4 раза. В среднем понижение составило 70 % по группе!</li>\n<li>Стоимость &laquo;стаканов&raquo; снижена более, чем в 2 раза. Стоимость насос-форсунок снижена в среднем на 25 %.</li>\n<li>Детали КПП, синхронизаторы, валы, шестерни. Стоимость &laquo;внутренностей&raquo; снижена более, чем в 4 раза (VT2214B/C, VT2514B/C, AT24142C, VT2814, VT2209B)</li>\n<li>Стоимость сопутствующих запасных частей снижена в среднем в 1,7 раза.</li>\n<li>Стоимость запасных частей системы &laquo;кондиционирования&raquo; и радиаторов снижена более, чем в 2 раза.</li>\n<li>Стоимость распредвалов и рокеров снижена более, чем в 2 раза.</li>\n<li>Стоимость маховиков снижена более , чем в 3 раза.</li>\n<li>Стоимость фар и фонарей в среднем снижена на 15%.</li>\n<li>Стоимость блоков управления снижена в 2,5 раза. На блоки управления двигателем цена снижена в 5 раз!</li>\n<li>Пневматические клапаны, модуляторы. В среднем понижение составило 20 %</li>\n<li>Стоимость приводных ремней снижена на 32 %. Стоимость шкивов в среднем снизится на 9 %</li>\n<li>Стоимость листов рессор снижена 30 %. Стоимость пневморессор уменьшится в среднем на 3 %</li>\n<li>Стоимость сопутствующих запасных частей снижена в среднем в 1,7 раза.</li>\n<li>Стоимость стартеров снижена в 2 раза. Стоимость генераторов снижена в 1,5 раза. Стоимость ГУРов снижена на 30 %.</li>\n<li>Стоимость стоек, втулок, снижена в среднем на 30 %</li>\n<li>Стоимость водяных насосов в среднем снижена на 16%. Стоимость поддонов снижена в два раза</li>\n</ul> -->\n<iframe class=\"scribd_iframe_embed\" src=\"https://www.scribd.com/embeds/319369485/content?start_page=3&view_mode=slideshow&access_key=key-vKPucB9SsfeboCKB5H90&show_recommendations=true&show_upsell=true\" data-auto-height=\"false\" data-aspect-ratio=\"2\" scrolling=\"no\" id=\"doc_17683\" width=\"100%\" height=\"450\" frameborder=\"0\"></iframe>\n<h4>Листайте страницы с помощью стрелок \"&lt;\" и \">\"</h4>','1','6','2','1','1','1','1484299680','1','1484299680','0','0','0','0','0','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('20','document','text/html','Масляные фильтры','Масляные фильтры','','oil-filters','','1','0','0','4','0','','<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"assets/images/content/events/summer%202106/full/%D1%84%D0%B8%D0%BB%D1%8C%D1%82%D1%80%D1%8B.jpg\" width=\"763\" height=\"1080\"></div>','1','6','3','1','1','1','1484299777','1','1484299777','0','0','0','1484299777','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('21','document','text/html','Двигатели','Двигатели','','engine','','1','0','0','4','0','','<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"assets/images/content/events/summer%202106/full/%D0%B4%D0%B2%D0%B8%D0%B3%D0%B0%D1%82%D0%B5%D0%BB%D0%B8.jpg\" width=\"763\" height=\"1080\"></div>','1','6','4','1','1','1','1484299815','1','1484299815','0','0','0','1484299815','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('22','document','text/html','Оставьте жару за бортом','Оставьте жару за бортом','','event-summer','','0','0','0','4','0','','<p  style=\" margin: 12px auto 6px auto; font-family: Helvetica,Arial,Sans-serif; font-style: normal; font-variant: normal; font-weight: normal; font-size: 14px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; display: block;\"><iframe class=\"scribd_iframe_embed\" src=\"https://www.scribd.com/embeds/319368954/content?start_page=1&view_mode=scroll&access_key=key-DXoUQQjkfqGe6EjpDCG9&show_recommendations=true&show_upsell=true\" data-auto-height=\"false\" data-aspect-ratio=\"0.4707112970711297\" scrolling=\"no\" id=\"doc_46297\" width=\"100%\" height=\"900\" frameborder=\"0\"></iframe>','1','6','5','1','1','1','1484299844','1','1484299844','0','0','0','0','0','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('23','document','text/html','Бесплатная проверка тормозных услилий','Бесплатная проверка тормозных услилий','','freebrakes','','1','0','0','4','0','','<img style=\"vertical-align: middle;\" src=\"/assets/images/content/events/brakes.jpg\" width=\"861\" height=\"1200\">','1','6','6','1','1','1','1484299879','1','1484299879','0','0','0','1484299879','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('24','document','text/html','Пакетное предложение: Кондиционер','Пакетное предложение: Кондиционер','','climatesontrol','','0','0','0','4','0','','<img style=\"vertical-align: middle;\" src=\"assets/images/content/events/climatecontrol.jpg\" width=\"861\" height=\"1200\">','1','6','7','1','1','1','1484299913','1','1484299913','0','0','0','0','0','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('25','document','text/html','Ремонт в день рекомендации','Ремонт в день рекомендации','','default','','1','0','0','4','0','','<img style=\"vertical-align: middle;\" src=\"assets/images/content/events/a4anwu5kvba.jpg\" width=\"861\" height=\"1200\">','1','6','8','1','1','1','1484299944','1','1484299944','0','0','0','1484299944','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('26','document','text/html','Берегите тепло','','','save_warm','','1','0','0','4','0','','<style>\n.sale-header{\n	max-width: 100%;\n	height: 500px;\n	background: url(\'/assets/images/content/events/winter 16/sale-warm-bg.jpg\');\n    background-size: cover;\n}\n.sale-desc{\n	margin-top: 5%;\n	color: white;\n    text-transform: uppercase;\n	text-align: center;\n    background: rgba(0, 0, 0, 0.45);\n    padding: 5px;\n    border-radius: 10px;\n}\n.sale-desc h3{\n	margin-top: 0;\n}\n.image-container{\n	margin-top: 30px;\n}\n.sale-buttons-slider{\n    text-align: center;\n    height: 50px;\n    line-height: 1.0;\n    font-size: 14px;\n    border-radius: 0;\n    margin-right: 1px;\n    background: #f1f0ef;\n    color: #4d4e53;\n}\n.sale-buttons-slider div{\n	border-top: 3px solid #f1f0ef;\n	width: 20%;\n	float: left;\n	height: 50px;\n}\n.sale-buttons-slider div:hover{\n	cursor: pointer;\n	background-color: #badce6;\n	border-top: 3px solid #badce6;\n}\n.sale-buttons-slider div.active{\n	cursor: pointer;\n	background-color: #badce6;\n	border-top: 3px solid #1251b5;\n}	\n.sale-slider-items h2{\n	text-align: center;\n}\n.sale-slider-desc{\n	font-style: italic;\n}\n</style>\n<div class=\"sale-wrapper\">\n	<div class=\"sale-header\">\n		<div class=\"sale-desc col-md-offset-8 col-md-3\">\n			<p>C 1 октября по 30 ноября</p>\n			<h3>Берегите тепло</h3>\n		</div>\n	</div>\n	<div class=\"sale-content-wrapper\">\n		<div class=\"image-container col-md-3\">\n			<img src=\"/assets/images/content/events/winter 16/sale-warm-label.jpg\" alt=\"Выгода акции \'Берегите тепло\'\">\n		</div>\n		<div class=\"content-container col-md-9\">\n			<h4>Только с 1 октября по 30 ноября 2016 года</h4>\n			<p>Подготовьтесь к наступающим холодам, сохраните тепло в Вашем грузовом автомобиле вместе с оригинальными запасными частями Volvo. Заручитесь повышенным комфортом и беспрецедентной безопасностью каждой поездки в любую погоду.</p>\n		</div>\n		<div class=\"clearfix\"></div>\n		<div class=\"sale-slider\">\n			<div class=\"sale-buttons-slider\">\n				<div class=\"termostat active\">Термостаты</div>\n				<div class=\"climat-control\">Элементы системы климат-контроля</div>\n				<div class=\"komplect-otopitel\">Комплекты автономных отопителей</div>\n				<div class=\"elem-otopitel\">Детали автономных отопителей</div>\n				<div class=\"antifreeze\">Антифриз</div>\n			</div>\n			<div class=\"clearfix\"></div>\n			<div class=\"sale-slider-items\">\n				<div id=\"termostat\">\n					<h2>Термостаты</h2>\n					<div class=\"clearfix\"></div>\n					<div class=\"col-md-6\">\n						<h4>Термостаты</h4>\n						<p>Оригинальный термостат Volvo способствует эффективному разогреву и поддержанию рабочей температуры двигателя Вашего грузового автомобиля, снижая расход топлива и уменьшая вредные выбросы в атмосферу.</p>\n						<p><b>от 4 787 рублей*</b></p>\n					</div>\n					<div class=\"col-md-6\">\n						<img src=\"/assets/images/content/events/winter 16/sale-warm-termostat.jpg\" alt=\"Термостаты\">\n					</div>\n				</div>\n				<div class=\"clearfix\"></div>\n				<div id=\"climat-control\" class=\"hidden\">\n					<h2>Элементы системы климат-контроля</h2>\n					<div class=\"clearfix\"></div>\n					<div class=\"col-md-6\">\n						<h4>Элементы системы климат-контроля</h4>\n						<p>Доверьте нам проверку системы климат-контроля и замену необходимых элементов для наибольшего комфорта и лучшего обзора окружения за окнами Вашей кабины.</p>\n					</div>\n					<div class=\"col-md-6\">\n						<img src=\"/assets/images/content/events/winter 16/sale-warm-climat-control.jpg\" alt=\"Климат-контроль\">\n					</div>\n				</div>\n				<div class=\"clearfix\"></div>\n				<div id=\"komplect-otopitel\" class=\"hidden\">\n					<h2>Комплекты автономных отопителей</h2>\n					<div class=\"clearfix\"></div>\n					<div class=\"col-md-6\">\n						<h4>Комплекты автономных отопителей</h4>\n						<p>Автономные отопители Volvo осуществляют быстрый и безопасный нагрев кабины грузового автомобиля, исключая непредвиденный нагрев окружающих деталей. Добейтесь максимально комфортного вождения с автономным отопителем Volvo по выгодной цене.</p>\n						<p><b>от 64 192 рублей*</b></p>\n					</div>\n					<div class=\"col-md-6\">\n						<img src=\"/assets/images/content/events/winter 16/sale-warm-komplect-otopitel.jpg\" alt=\"Комплекты автономных отопителей\">\n					</div>\n				</div>\n				<div class=\"clearfix\"></div>\n				<div id=\"elem-otopitel\" class=\"hidden\">\n					<h2>Детали автономных отопителей</h2>\n					<div class=\"clearfix\"></div>\n					<div class=\"col-md-6\">\n						<h4>Детали автономных отопителей</h4>\n						<p>Детали автономных отопителей, изготовленные по собственным спецификациям Volvo, полностью совместимы с электрической системой Вашего автомобиля. Восстановите работоспособность фирменных отопителей Volvo с существенной экономией.</p>\n						<p>Горелки <b>от 13 550 рублей*</b></p>\n						<p>Свечи накаливания <b>от 3 800 рублей*</b></p>\n						<p>Вентиляторы автономного отопителя <b>от 16 655 рублей*</b></p>\n					</div>\n					<div class=\"col-md-6\">\n						<img src=\"/assets/images/content/events/winter 16/sale-warm-elem-otopitel.jpg\" alt=\"Детали автономных отопителей\">\n					</div>\n				</div>\n				<div class=\"clearfix\"></div>\n				<div id=\"antifreeze\" class=\"hidden\">\n					<h2>Антифриз</h2>\n					<div class=\"clearfix\"></div>\n					<div class=\"col-md-6\">\n						<h4>Антифриз</h4>\n						<p>Вовремя не произведенная замена антифриза грозит коррозией алюминиевых компонентов Вашего грузового автомобиля. Используйте оригинальный антифриз Volvo для бесперебойной и долговечной работы двигателя.</p>\n						<p><b>от 305 рублей за 1 литр*</b></p>\n					</div>\n					<div class=\"col-md-6\">\n						<img src=\"/assets/images/content/events/winter 16/sale-warm-antifreeze.jpg\" alt=\"Антифриз\">\n					</div>\n				</div>\n			</div>\n			<div class=\"sale-slider-desc\">\n				<ol>\n					<li>*Предложение ограничено. Приведены ориентировочные цены с НДС 18% на запасные части, включенные в спецпредложение, действующее с 1 октября по 30 ноября 2016 года. Полный перечень запасных частей, включенных в спецпредложение, а также точную информацию об условиях и ценах уточняйте на авторизованной сервисной станции \"НОРМОТЕХ\"</li>\n					<li>*Приблизительная выгода рассчитывается исходя из разницы между текущей рекомендованной розничной ценой и ценой по данному спецпредложению для аналогичной запасной части и может отличаться от указанной</li>\n					<li>*Запасные части, включенные в спецпредложение, могут отличаться от представленных на изображениях</li>\n				</ol>\n			</div>\n		</div>\n	</div>\n</div>\n<script type=\"text/javascript\">\n	$(\'.termostat\').click(function(){\n		$(\'#termostat\').removeClass(\'hidden\');\n		$(\'#climat-control\').addClass(\'hidden\');\n		$(\'#komplect-otopitel\').addClass(\'hidden\');\n		$(\'#elem-otopitel\').addClass(\'hidden\');\n		$(\'#antifreeze\').addClass(\'hidden\');\n		\n		$(\'.termostat\').addClass(\'active\');\n		$(\'.climat-control\').removeClass(\'active\');\n		$(\'.komplect-otopitel\').removeClass(\'active\');\n		$(\'.elem-otopitel\').removeClass(\'active\');\n		$(\'.antifreeze\').removeClass(\'active\');\n	});\n	$(\'.climat-control\').click(function(){\n		$(\'#climat-control\').removeClass(\'hidden\');\n		$(\'#termostat\').addClass(\'hidden\');\n		$(\'#komplect-otopitel\').addClass(\'hidden\');\n		$(\'#elem-otopitel\').addClass(\'hidden\');\n		$(\'#antifreeze\').addClass(\'hidden\');\n		\n		$(\'.termostat\').removeClass(\'active\');\n		$(\'.climat-control\').addClass(\'active\');\n		$(\'.komplect-otopitel\').removeClass(\'active\');\n		$(\'.elem-otopitel\').removeClass(\'active\');\n		$(\'.antifreeze\').removeClass(\'active\');\n	});\n	$(\'.komplect-otopitel\').click(function(){\n		$(\'#komplect-otopitel\').removeClass(\'hidden\');\n		$(\'#climat-control\').addClass(\'hidden\');\n		$(\'#termostat\').addClass(\'hidden\');\n		$(\'#elem-otopitel\').addClass(\'hidden\');\n		$(\'#antifreeze\').addClass(\'hidden\');\n		\n		$(\'.termostat\').removeClass(\'active\');\n		$(\'.climat-control\').removeClass(\'active\');\n		$(\'.komplect-otopitel\').addClass(\'active\');\n		$(\'.elem-otopitel\').removeClass(\'active\');\n		$(\'.antifreeze\').removeClass(\'active\');\n	});\n	$(\'.elem-otopitel\').click(function(){\n		$(\'#elem-otopitel\').removeClass(\'hidden\');\n		$(\'#climat-control\').addClass(\'hidden\');\n		$(\'#komplect-otopitel\').addClass(\'hidden\');\n		$(\'#termostat\').addClass(\'hidden\');\n		$(\'#antifreeze\').addClass(\'hidden\');\n		\n		$(\'.termostat\').removeClass(\'active\');\n		$(\'.climat-control\').removeClass(\'active\');\n		$(\'.komplect-otopitel\').removeClass(\'active\');\n		$(\'.elem-otopitel\').addClass(\'active\');\n		$(\'.antifreeze\').removeClass(\'active\');\n	});\n	$(\'.antifreeze\').click(function(){\n		$(\'#antifreeze\').removeClass(\'hidden\');\n		$(\'#climat-control\').addClass(\'hidden\');\n		$(\'#komplect-otopitel\').addClass(\'hidden\');\n		$(\'#elem-otopitel\').addClass(\'hidden\');\n		$(\'#termostat\').addClass(\'hidden\');\n		\n		$(\'.termostat\').removeClass(\'active\');\n		$(\'.climat-control\').removeClass(\'active\');\n		$(\'.komplect-otopitel\').removeClass(\'active\');\n		$(\'.elem-otopitel\').removeClass(\'active\');\n		$(\'.antifreeze\').addClass(\'active\');\n	});\n</script>','1','6','9','1','1','1','1484299977','1','1484299977','0','0','0','1484299977','1','','0','0','0','0','0','0','1','1');

INSERT INTO `modx_site_content` VALUES ('27','document','text/html','Спецпредложение Нормотех','Спецпредложение Нормотех','','last-action-2016','','1','0','0','4','0','','<style>\n.action-header h1{\n	font-family: \"VolvoBlack\";\n	font-size: 3em;\n}\n.action-header span{\n	color: #00a1ce;\n    font-size: 1em;\n}\n.action-header img{\n	max-height: 150px;\n}\n.action-body .packet h3{\n	font-family: \"VolvoBlack\";\n    color: #8f3f99;\n}\n.action-body .packet hr{\n	border-top: 3px solid #8e3f98;\n}\n.action-body .packet .labelCost{\n	width: 155px;\n    height: 87px;\n    margin-top: -50px;\n    background: url(\"/assets/images/content/events/last 2016/labelcost.png\");\n    background-size: cover;\n    float: right;\n    padding-top: 56px;\n    padding-left: 5px;\n    color: white;\n    font-weight: bold;\n}\n</style>\n<div class=\"action-header\">\n	<div class=\"col-md-8\">\n		<h1>Специальное предложение <br>Сервисная станция Нормотех</h1>\n		<span>С 1 сентября 2016 до 31 декабря 2016</span>\n	</div>\n	<div class=\"col-md-4\">\n		<img src=\"/assets/images/content/events/last 2016/labaltittle.png\" alt=\"1\">\n	</div>\n</div>\n<div class=\"clearfix\"></div>\n<div class=\"action-body\">\n	<div class=\"packet\">\n		<h3>Пакет 1: Сайлентблок передней рессоры</h3><br>\n		<div class=\"col-md-3\">\n			<img src=\"/assets/images/content/events/last 2016/packet1.png\" alt=\"Пакет1\">\n		</div>\n		<div class=\"col-md-9\">\n			Стоимость пакета: <div class=\"labelCost\">22 000 руб.</div>\n			<hr>\n			В комлект входят\n			<div class=\"clearfix\"></div>\n			<div class=\"col-md-6\">\n				Запчасти:\n				<ul>\n					<li>Комлект сайлентблоков 6шт.</li>\n				</ul>\n			</div>\n			<div class=\"col-md-6\">\n				Работы:\n				<ul>\n					<li>Замена сайлентблоков.</li>\n				</ul>\n			</div>\n		</div>\n	</div>\n	<div class=\"packet\">\n		<h3>Пакет 2: Лобовое стекло</h3><br>\n		<div class=\"col-md-3\">\n			<img src=\"/assets/images/content/events/last 2016/packet2.png\" alt=\"Пакет2\">\n		</div>\n		<div class=\"col-md-9\">\n			Стоимость пакета: <div class=\"labelCost\">23 000 руб.</div>\n			<hr>\n			В комлект входят\n			<div class=\"clearfix\"></div>\n			<div class=\"col-md-6\">\n				Запчасти:\n				<ul>\n					<li>Стекло 1шт.</li>\n				</ul>\n			</div>\n			<div class=\"col-md-6\">\n				Работы:\n				<ul>\n					<li>Замена стекла.</li>\n				</ul>\n			</div>\n		</div>\n	</div>\n	<div class=\"packet\">\n		<h3>Пакет 3: Тормозные накладки</h3><br>\n		<div class=\"col-md-3\">\n			<img src=\"/assets/images/content/events/last 2016/packet3.png\" alt=\"Пакет 3\">\n		</div>\n		<div class=\"col-md-9\">\n			Стоимость пакета: <div class=\"labelCost\">41 000 руб.</div>\n			<hr>\n			В комлект входят\n			<div class=\"clearfix\"></div>\n			<div class=\"col-md-6\">\n				Запчасти:\n				<ul>\n					<li>Комлект передних тормозных накладок.</li>\n					<li>Комлект задних тормозных накладок.</li>\n				</ul>\n			</div>\n			<div class=\"col-md-6\">\n				Работы:\n				<ul>\n					<li>Замена тормозных накладок.</li>\n				</ul>\n			</div>\n		</div>\n	</div>\n	<div class=\"packet\">\n		<h3>Пакет 4: Шкворни</h3><br>\n		<div class=\"col-md-3\">\n			<img src=\"/assets/images/content/events/last 2016/packet4.png\" alt=\"Пакет4\">\n		</div>\n		<div class=\"col-md-9\">\n			Стоимость пакета: <div class=\"labelCost\">49 900 руб.</div>\n			<hr>\n			В комлект входят\n			<div class=\"clearfix\"></div>\n			<div class=\"col-md-6\">\n				Запчасти:\n				<ul>\n					<li>Шкворни 2шт.</li>\n				</ul>\n			</div>\n			<div class=\"col-md-6\">\n				Работы:\n				<ul>\n					<li>Замена шкворней.</li>\n				</ul>\n			</div>\n		</div>\n	</div>\n</div>','1','6','10','1','1','1','1484300007','1','1484300007','0','0','0','1484300007','1','','0','0','0','0','0','0','1','1');


# --------------------------------------------------------

#
# Table structure for table `modx_site_content_metatags`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_content_metatags`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `metatag_id` (`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

#
# Dumping data for table `modx_site_content_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_htmlsnippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `modx_site_htmlsnippets`
#

INSERT INTO `modx_site_htmlsnippets` VALUES ('21','service-grid','Сетка услуг','2','none','5','0','<div class=\"service-grid\">\n	<div class=\"container-fluid\">\n		<a href=\"[~13~]\">\n			<div class=\"col-md-4 service-grid-item\">\n				<img src=\"/assets/images/grid_service/comp_diag.png\" alt=\"Компьютерная диагностика\">\n				<span class=\"caption\">Компьютерная диагностика</span>\n				</div>\n		</a>\n		<a href=\"[~14~]\">\n			<div class=\"col-md-4 service-grid-item\">\n				<img src=\"/assets/images/grid_service/remont.png\" alt=\"Ремонт\">\n				<span class=\"caption\">Ремонт</span>\n				</div>\n		</a>\n		<a href=\"[~15~]\">\n			<div class=\"col-md-4 service-grid-item-last\">\n				<img src=\"/assets/images/grid_service/tehobs.png\" alt=\"Техобслуживание\">\n				<span class=\"caption\">Техобслуживание</span>\n				</div>\n		</a>\n		<div class=\"clearfix\"></div>\n		<a href=\"[~5~]\">\n			<div class=\"col-md-4 service-grid-item\">\n				<img src=\"/assets/images/grid_service/zapchasti.png\" alt=\"Запчасти\">\n				<span class=\"caption\">Запчасти</span>\n				</div>	\n		</a>\n		<a href=\"[~16~]\">\n			<div class=\"col-md-4 service-grid-item\">\n				<img src=\"/assets/images/grid_service/svet.png\" alt=\"Регулировка света\">\n				<span class=\"caption\">Регулировка света</span>\n				</div>	\n		</a>\n		<a href=\"[~17~]\">\n			<div class=\"col-md-4 service-grid-item-last\">\n				<img src=\"/assets/images/grid_service/oil.png\" alt=\"Замена масла\">\n				<span class=\"caption\">Замена масла</span>\n				</div>\n		</a>\n		<div class=\"clearfix\"></div>\n		<a href=\"[~6~]\">\n			<div class=\"col-md-4 service-grid-item\">\n				<img src=\"/assets/images/grid_service/clear.png\" alt=\"Мойка\">\n				<span class=\"caption\">Мойка</span>\n				</div>\n		</a>\n		<a href=\"[~7~]\">\n			<div class=\"col-md-4 service-grid-item\">\n				<img src=\"/assets/images/grid_service/parking.png\" alt=\"Парковка\">\n				<span class=\"caption\">Парковка</span>\n				</div>	\n		</a>\n		<a href=\"[~12~]\">\n			<div class=\"col-md-4 service-grid-item-last\">\n				<img src=\"/assets/images/grid_service/akb.png\" alt=\"Тестирование АКБ\">\n				<span class=\"caption\">Тестирование АКБ</span>\n				</div>\n		</a>\n		<div class=\"clearfix\"></div>\n		<p class=\"grid-label\">Мы предоставляем качественную <br> продукцию и услуги\n			<br>Чтобы мы не делали, мы обязуемся <br> делать это качественно и правильно <br> с первого раза</p>\n	</div>\n</div>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('3','mm_rules','Default ManagerManager rules.','0','none','2','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('10','footer','Подвал сайта','2','none','9','0','<div class=\"clearfix\"></div>\n</div>\n<footer id=\"footer\">\n        <div class=\"container\">\n            <div class=\"row\">\n                <div class=\"col-xs-3 col-sm-2\">\n					{{yametrika}}\n				</div>\n                <div class=\"col-xs-6 col-sm-8\">Нормотех 2016</div>\n                <div class=\"col-xs-3 col-sm-2\">\n					<a href=\"[(site_url)]\">\n                		<img src=\"/assets/images/system/menulogow.png\" alt=\"logo white\">\n					</a>\n                </div>\n            </div>\n        </div>\n    </footer>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('11','links','Подключения сайта','2','none','9','0','<!DOCTYPE html>\n<html lang=\"ru\">\n<head>\n    <meta charset=\"UTF-8\">\n\n    <!-- В первую очередь мобильные -->\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n    <title>Volvo-Trucks</title>\n    <!-- fonts -->\n	<link rel=\"stylesheet\" href=\"/assets/css/include_fonts.css\">\n	<link rel=\"stylesheet\" href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css\">\n    <!-- Подключение стилей -->\n	<link rel=\"stylesheet\" href=\"/assets/css/style.css\">\n    <link rel=\"stylesheet\" href=\"/assets/css/bootstrap.min.css\">\n	<script src=\"//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js\"></script>\n	<!-- VK -->\n	<script type=\"text/javascript\" src=\"//vk.com/js/api/openapi.js?121\"></script>\n\n	<script type=\"text/javascript\">\n	  VK.init({apiId: 5494932, onlyWidgets: true});\n	</script>\n	<!-- /VK -->\n    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n    <!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->\n    <!--[if lt IE 9]>\n    <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n    <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n    <![endif]-->\n</head>\n<body>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('12','modal_callback_1','Форма обратной связи вьюшка','2','none','9','0','<div class=\"modal-dialog\">\n    <div class=\"modal-content\">\n      <div class=\"modal-header\">\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n        <h4 class=\"modal-title\" id=\"myModalLabel\">Заказать обратный звонок</h4>\n      </div>\n      <div class=\"modal-body\">\n','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('13','modal_callback_2','Форма обратной связи вьюшка','2','none','9','0','<div class=\"notice hidden\"></div>\n			<div class=\"input-group\">\n  				<span class=\"input-group-addon\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i></span>\n  				<input name=\"name\" type=\"text\" class=\"form-control\" placeholder=\"Имя\" required>\n			</div>\n			\n        	<div class=\"input-group\">\n  				<span class=\"input-group-addon\"><i class=\"fa fa-phone\" aria-hidden=\"true\"></i></span>\n  				<input name=\"phone\" type=\"text\" class=\"form-control\" placeholder=\"Телефон\" required>\n			</div>\n			\n			<textarea name=\"message\" class=\"form-control\" rows=\"3\" placeholder=\"Сообщение\"></textarea>			\n      </div>\n      <div class=\"modal-footer\">\n		 \n        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Закрыть</button>\n        <button type=\"submit\" class=\"btn btn-primary\">Отправить заявку</button>\n      </div>\n	</form>\n    </div>\n  </div>\n','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('14','scripts','Подключаемые скрипты','2','none','9','0','{{ajax}}\n<!-- jQuery (necessary for Bootstrap\'s JavaScript plugins) -->\n    <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js\"></script>\n    <!-- Include all compiled plugins (below), or include individual files as needed -->\n<script src=\"/assets/js/bootstrap.min.js\"></script>\n</body>\n</html>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('15','sidebar','Cайдбар','2','none','9','0','<aside id=\"sidebar\" class=\"col-xs-12 col-sm-4\">\n	<!-- Сетка услуг -->\n	{{service-grid}}\n	<!-- VK -->\n	{{vk-group}}\n	<!-- Карта -->\n    {{map}}\n</aside>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('16','sidebar-home','Cайдбар главная','2','none','9','0','<aside id=\"sidebar\" class=\"col-xs-12 col-sm-4\">\n{{vk-group}}\n{{map}}\n</aside>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('17','top-menu','Верхнее меню для сайта','2','none','9','0','<!-- Menu -->\n<div class=\"row\"><nav class=\"navbar navbar-default top-menu\" role=\"navigation\">\n<div class=\"container-fluid\"><!-- Brand and toggle get grouped for better mobile display -->\n<div class=\"navbar-header\"><button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\"> <span class=\"sr-only\">Переключить меню</span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> </button></div>\n<!-- Collect the nav links, forms, and other content for toggling -->\n<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n	[!Wayfinder? &startId=`0` &outerClass=`nav navbar-nav`! &sortBy=`menuindex`]]\n</div>\n<!-- /.navbar-collapse --></div>\n<!-- /.container-fluid --></nav></div>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('18','ajax','Отправка с формы','2','none','2','0','<script type=\"text/javascript\">\n 	function call(where) {\n		if (where == \"header\"){\n			var msg   = $(\'#headerForm\');\n		} else if (where == \"spares\"){\n			msg   = $(\'#sparesForm\');\n		} else if (where == \"service\"){\n			msg   = $(\'#serviceForm\');\n		} else if (where == \"contact\"){\n			msg = $(\'#contactForm\');\n		}\n		var mig = msg.serialize();\n		$.ajax({\n			  type: \'POST\',\n			  url: \'/assets/send.php\',\n			  data: mig,\n			  success: function(data) {\n				  $(msg).find(\'div.notice\').addClass(\'success\').removeClass(\'hidden\').html(\'Сообщение успешно отправлено\');\n				  setTimeout(function () {\n					$(msg).parents(\'.modal.fade\').modal(\'hide\');\n				  	$(msg).find(\'div.notice\').removeClass(\'success\').addClass(\'hidden\').html(\'\');\n				  }, 3000); // время в мc\n			  },\n			  error:  function(xhr, str){\n				msg.find(\'div.notice\').addClass(\'error\').removeClass(\'hidden\').html(\'Возникла ошибка: \' + xhr.responseCode);\n				setTimeout(function () {\n					$(msg).parents(\'.modal.fade\').modal(\'hide\');\n				  	$(msg).find(\'div.notice\').removeClass(\'error\').addClass(\'hidden\').html(\'\');\n				  }, 3000); // время в мc\n			  }\n			});\n	}\n    \n</script>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('19','map','Интерактивная карта','2','none','2','0','<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=VWvwj7ECzmecjubutRK1_K4yw8aaWEVz&width=390&height=450&lang=ru_RU&sourceType=constructor&scroll=true&id=map\"></script>\n<div id=\"map\"></div>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('20','event-list','Полоска событий Главная','2','none','5','0','<div class=\"clearfix\"></div>\n            <div class=\"row event-list\">\n               <div class=\"col-xs-6 col-sm-3 col-md-3 event-item\">\n					<a href=\"[~23~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/brakes-preview.png\" alt=\"Замена тормозных усилий бесплатно\">\n							<div class=\"caption\">\n								<h3>Бесплатная проверка <br> тормозных усилий</h3>\n								<h4>1 августа 2016 - 31 декабря 2016</h4>\n								<p><b>НОРМОТЕХ. КИРОВ</b></p>\n								<p>\n									Воспользуйтесь нашими специальными\n									предложениями для подготовки грузового\n									автомобиля к зимнему сезону.\n								</p>\n							</div>\n						</div>\n					</a>\n                </div>\n                <div class=\"col-xs-6 col-sm-3 col-md-3 event-item\">\n					<a href=\"[~21~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/summer 2106/volvo-engine.jpg\" alt=\"Двигатель акция Volvo\">\n							<div class=\"caption\">\n								<h3>Акция комплекты для двигателей</h3>\n								<h4>1 июня 2016 - 31 декабря 2016</h4>\n								<p><b>НОРМОТЕХ. КИРОВ</b></p>\n								<p>\n									<b>Уникальные предложения только в этот год.</b> <br>\n									Запчасти от 30 000 <i class=\"fa fa-rub\" aria-hidden=\"true\"></i><br>\n									Работа от 20 730 <i class=\"fa fa-rub\" aria-hidden=\"true\"></i></p>\n							</div>\n						</div>\n					</a>\n                </div>\n                <div class=\"col-xs-6 col-sm-3 col-md-3 event-item\">\n					<a href=\"[~20~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/summer 2106/volvo-filters.jpg\" alt=\"Масляные фильры Volvo\">\n							<div class=\"caption\">\n								<h3>Масляные фильтры Акция</h3>\n								<h4>1 июня 2016 - 31 декабря 2016</h4>\n								<p><b>НОРМОТЕХ. КИРОВ</b></p>\n								<p>\n									<b>Уникальные предложения только в этот год.</b> <br>\n									Фильтр LONG LIFE 2шт. 1900<i class=\"fa fa-rub\" aria-hidden=\"true\"></i><br>\n									Фильтр BY-PASS 1шт. 1100 <i class=\"fa fa-rub\" aria-hidden=\"true\"></i></p>\n							</div>\n						</div>\n					</a>\n                </div>\n                <div class=\"col-xs-6 col-sm-3 col-md-3 event-item\">\n					<a href=\"[~27~]\">\n						<div class=\"thumbnail\">\n							<img src=\"/assets/images/content/events/winter 16/volvo-sale-preview-home.jpg\" alt=\"Акция Берегите тепло\">\n							<div class=\"caption\">\n								<h3>Акция <br> \"Берегите тепло\"</h3>\n								<h4>1 октября 2016 - 30 ноября 2016</h4>\n								<p><b>НОРМОТЕХ. КИРОВ</b></p>\n								<p>\n									<b>Выгода до 30%</b> <br>\n									Хорошие скидки на термостаты, элементы климат-контроля, автономного отопителя и др.\n								</p>\n							</div>\n						</div>\n					</a>\n                </div>\n            </div>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('9','header','Шапка сайта','2','none','9','0','<!-- Шапка сайта --><header id=\"header\"><!--Полоска информации -->\n<div class=\"row top-line\">\n<div class=\"col-xs-12 col-sm-8\">\n	<a href=\"https://maps.yandex.ru/-/CVW2jL9K\" target=\"_blank\" onclick=\"window.open(this.href,\'\',\'scrollbars=yes,resizable=yes,location=yes,menubar=yes,status=yes,toolbar=yes,left=0,top=0\');return false;\">\n		2 км от Шихово на объездной дороге Подгорянка-&shy;Шихово\n	</a></div>\n<div class=\"col-xs-6 col-sm-2\">\n	<a href=\"mailto:service@volvo-kirov.ru\">service@volvo-kirov.ru</a>\n	</div>\n<div class=\"col-xs-6 col-sm-2\">\n	<a href=\"mailto:parts@volvo-kirov.ru\">parts@volvo-kirov.ru</a>\n	</div>\n</div>\n<!--Шапка сайта -->\n<div class=\"row header-content\">\n<div class=\"col-xs-6 col-sm-2 phone-hidden\">\n		<a href=\"[(site_url)]\">\n			<img src=\"assets/images/system/volvo_iron_mark_rgb_140x140px.png\" />\n		</a>\n	</div>\n<div class=\"col-xs-12 col-sm-8\">\n	<a href=\"[(site_url)]\">\n	<h1 class=\"whitevolvo\">\n		Нормотех <span>Киров</span></h1>\n	</a>\n<h3 class=\"darkvolvo\">Сервис грузовиков VOLVO и RENAULT</h3>\n	<h4 class=\"whitevolvo callback-buttons\">\n		<button class=\"btn-volvo pull-right\" data-toggle=\"modal\" data-target=\"#callback-header\">\n			<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\n			<i class=\"fa fa-reply\" aria-hidden=\"true\"></i>\n			<p>Заказать звонок</p>\n		</button>\n		<a href=\"tel:+78332227790\"><button class=\"btn-volvo pull-left\">\n			<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\n			<p>+7 8332 22-77-90</p>\n		</button></a>\n	</h4>\n</div>\n<div class=\"col-xs-6 col-sm-2 phone-hidden\">\n	<a href=\"[(site_url)]\">\n		<img src=\"assets/images/system/rnt_lo_coul_pos_rvb.png\"/>\n	</a>\n	</div>\n</div>\n{{top-menu}}</header>\n<div class=\"clearfix\"></div>\n<!-- Modal -->\n<div class=\"modal fade\" id=\"callback-header\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n	{{modal_callback_1}}\n		<form method=\"POST\" id=\"headerForm\" action=\"javascript:void(null);\" onsubmit=\"call(\'header\')\">\n			<input type=\"hidden\" name=\"id\" value=\"header\">\n	{{modal_callback_2}}\n</div>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('22','slides','Слайды для сладера','2','none','5','0','<!-- Wrapper for slides -->\n                        <div class=\"carousel-inner\">\n                            <div class=\"item active\">\n								<img src=\"/assets/images/slider/1.jpg\" alt=\"volvo-center\">\n                            </div>\n							<div class=\"item\">\n								<img src=\"/assets/images/slider/2.jpg\" alt=\"volvo-dobble-trucks\">\n							</div>\n							<div class=\"item\">\n								<img src=\"/assets/images/slider/3.jpg\" alt=\"cool-truck\">\n							</div>\n							<div class=\"item\">\n								<img src=\"/assets/images/slider/4.jpg\" alt=\"cool-truck\">\n							</div>\n							<div class=\"item\">\n								<img src=\"/assets/images/slider/5.jpg\" alt=\"cool-truck\">\n							</div>\n							<div class=\"item\">\n								<img src=\"/assets/images/slider/6.jpg\" alt=\"cool-truck\">\n							</div>\n                        </div>\n','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('23','vk-group','Виджет ВК \"Подписаться\"','2','none','5','0','<!-- VK Widget -->\n<div id=\"vk_groups\"></div>\n<script type=\"text/javascript\">\nVK.Widgets.Group(\"vk_groups\", {mode: 0, width: \"390\", height: \"400\", color1: \'FFFFFF\', color2: \'728da3\', color3: \'728da3\'}, 119832543);\n</script>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('24','vk-reviews','Виджет ВК-отзывы','2','none','5','0','<!-- Put this div tag to the place, where the Comments block will be -->\n<div id=\"vk_comments\"></div>\n<script type=\"text/javascript\">\nVK.Widgets.Comments(\"vk_comments\", {limit: 20, width: \"750\", attach: \"*\"});\n</script>','0');

INSERT INTO `modx_site_htmlsnippets` VALUES ('25','slider','Слайдер на главной','2','none','5','0','<div class=\"col-xs-12 col-sm-8 slider\">\n                    <div id=\"carousel-example-generic\" class=\"carousel slide\" data-ride=\"carousel\">\n                        <!-- Indicators -->\n                        <ol class=\"carousel-indicators\">\n                            <li data-target=\"#carousel-example-generic\" data-slide-to=\"0\" class=\"active\"></li>\n                            <li data-target=\"#carousel-example-generic\" data-slide-to=\"1\"></li>\n                            <li data-target=\"#carousel-example-generic\" data-slide-to=\"2\"></li>\n                            <li data-target=\"#carousel-example-generic\" data-slide-to=\"3\"></li>\n                            <li data-target=\"#carousel-example-generic\" data-slide-to=\"4\"></li>\n                            <li data-target=\"#carousel-example-generic\" data-slide-to=\"5\"></li>\n                        </ol>\n\n                        {{slides}}\n                        <!-- Controls -->\n                        <a class=\"left carousel-control\" href=\"#carousel-example-generic\" data-slide=\"prev\">\n                            <span class=\"glyphicon glyphicon-chevron-left\"></span>\n                        </a>\n                        <a class=\"right carousel-control\" href=\"#carousel-example-generic\" data-slide=\"next\">\n                            <span class=\"glyphicon glyphicon-chevron-right\"></span>\n                        </a>\n                    </div>\n                </div>','0');


# --------------------------------------------------------

#
# Table structure for table `modx_site_keywords`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_keywords`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list';

#
# Dumping data for table `modx_site_keywords`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_metatags`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_metatags`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_metatags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';

#
# Dumping data for table `modx_site_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_module_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_module_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `modx_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_module_depobj`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_module_depobj`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `modx_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_modules`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_modules`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `modx_site_modules`
#

INSERT INTO `modx_site_modules` VALUES ('1','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','3','0','0','','0','','0','0','docman435243542tf542t5t','1','',' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');

INSERT INTO `modx_site_modules` VALUES ('2','Extras','<strong>0.1.3</strong> first repository for MODX EVO','0','0','3','0','0','','0','','0','0','store435243542tf542t5t','1','',' \n/**\n * Extras\n * \n * first repository for MODX EVO\n * \n * @category	module\n * @version 	0.1.3\n * @internal	@properties\n * @internal	@guid store435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/store/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  25/11/2016\n */\n\n//AUTHORS: Bumkaka & Dmi3yy \ninclude_once(\'../assets/modules/store/core.php\');');


# --------------------------------------------------------

#
# Table structure for table `modx_site_plugin_events`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_plugin_events`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `modx_site_plugin_events`
#

INSERT INTO `modx_site_plugin_events` VALUES ('1','34','0');

INSERT INTO `modx_site_plugin_events` VALUES ('1','35','0');

INSERT INTO `modx_site_plugin_events` VALUES ('1','36','0');

INSERT INTO `modx_site_plugin_events` VALUES ('1','40','0');

INSERT INTO `modx_site_plugin_events` VALUES ('1','41','0');

INSERT INTO `modx_site_plugin_events` VALUES ('1','42','0');

INSERT INTO `modx_site_plugin_events` VALUES ('2','3','0');

INSERT INTO `modx_site_plugin_events` VALUES ('2','13','0');

INSERT INTO `modx_site_plugin_events` VALUES ('2','28','0');

INSERT INTO `modx_site_plugin_events` VALUES ('2','31','0');

INSERT INTO `modx_site_plugin_events` VALUES ('2','92','0');

INSERT INTO `modx_site_plugin_events` VALUES ('3','3','0');

INSERT INTO `modx_site_plugin_events` VALUES ('3','20','0');

INSERT INTO `modx_site_plugin_events` VALUES ('3','85','0');

INSERT INTO `modx_site_plugin_events` VALUES ('3','87','0');

INSERT INTO `modx_site_plugin_events` VALUES ('3','88','0');

INSERT INTO `modx_site_plugin_events` VALUES ('3','91','0');

INSERT INTO `modx_site_plugin_events` VALUES ('3','92','0');

INSERT INTO `modx_site_plugin_events` VALUES ('4','3','0');

INSERT INTO `modx_site_plugin_events` VALUES ('5','23','0');

INSERT INTO `modx_site_plugin_events` VALUES ('5','29','0');

INSERT INTO `modx_site_plugin_events` VALUES ('5','35','0');

INSERT INTO `modx_site_plugin_events` VALUES ('5','41','0');

INSERT INTO `modx_site_plugin_events` VALUES ('5','47','0');

INSERT INTO `modx_site_plugin_events` VALUES ('5','73','0');

INSERT INTO `modx_site_plugin_events` VALUES ('5','88','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','25','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','27','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','37','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','39','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','43','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','45','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','49','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','51','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','55','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','57','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','75','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','77','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','206','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','210','0');

INSERT INTO `modx_site_plugin_events` VALUES ('6','211','0');

INSERT INTO `modx_site_plugin_events` VALUES ('7','100','0');

INSERT INTO `modx_site_plugin_events` VALUES ('8','80','0');

INSERT INTO `modx_site_plugin_events` VALUES ('8','81','0');

INSERT INTO `modx_site_plugin_events` VALUES ('8','93','0');

INSERT INTO `modx_site_plugin_events` VALUES ('9','28','0');

INSERT INTO `modx_site_plugin_events` VALUES ('9','29','0');

INSERT INTO `modx_site_plugin_events` VALUES ('9','30','0');

INSERT INTO `modx_site_plugin_events` VALUES ('9','31','0');

INSERT INTO `modx_site_plugin_events` VALUES ('9','35','0');

INSERT INTO `modx_site_plugin_events` VALUES ('9','53','0');

INSERT INTO `modx_site_plugin_events` VALUES ('9','205','0');


# --------------------------------------------------------

#
# Table structure for table `modx_site_plugins`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_plugins`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `modx_site_plugins`
#

INSERT INTO `modx_site_plugins` VALUES ('1','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','3','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','');

INSERT INTO `modx_site_plugins` VALUES ('2','Quick Manager+','<strong>1.5.6</strong> Enables QuickManager+ front end content editing support','0','3','0','\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.6\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv\n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr\n * @lastupdate  31/03/2014\n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass);\n}\n','0','&jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv','1','');

INSERT INTO `modx_site_plugins` VALUES ('3','TinyMCE4','<strong>4.3.7.2</strong> Javascript WYSIWYG editor','0','3','0','require MODX_BASE_PATH.\'assets/plugins/tinymce4/plugin.tinymce.php\';','0','&styleFormats=Custom Style Formats;textarea;Title,cssClass|Title2,cssClass &customParams=Custom Parameters <b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline','0','');

INSERT INTO `modx_site_plugins` VALUES ('4','Search Highlight','<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results','0','4','0','/**\n * Search Highlight\n * \n * Used with AjaxSearch to show search terms highlighted on page linked from search results\n *\n * @category 	plugin\n * @version 	1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@events OnWebPagePrerender \n * @internal	@modx_category Search\n * @internal    @legacy_names Search Highlighting\n * @internal    @installset base, sample\n * @internal    @disabled 1\n */\n \n /*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://forums.modx.com/thread/47775/plugin-highlight-search-terms\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  // magic quotes check\n  if (get_magic_quotes_gpc()){\n    $searched = strip_tags(stripslashes($_REQUEST[\'searched\']));\n    $highlight = strip_tags(stripslashes($_REQUEST[\'highlight\']));\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags(stripslashes($_REQUEST[\'advsearch\']));\n  }\n  else {\n    $searched = strip_tags($_REQUEST[\'searched\']);\n    $highlight = strip_tags($_REQUEST[\'highlight\']);\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n  }\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}','0','','1','');

INSERT INTO `modx_site_plugins` VALUES ('5','CodeMirror','<strong>1.4</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12','0','3','0','\n/**\n * CodeMirror\n *\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12\n *\n * @category    plugin\n * @version     1.4\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     modx\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\n * @internal    @modx_category Manager and Admin\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\n * @internal    @installset base\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs https://codemirror.net/doc/manual.html\n * @author      hansek from http://www.modxcms.cz\n * @author      update Mihanik71\n * @author      update Deesen\n * @lastupdate  11/04/2016\n */\n\n$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');','0','&theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250','0','');

INSERT INTO `modx_site_plugins` VALUES ('6','ElementsInTree','<strong>1.5.6</strong> Get access to all Elements and Modules inside Manager sidebar','0','3','0','require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';\n','0','&tabTreeTitle=Tree Tab Title;text;Site Tree;;Custom title of Site Tree tab. &useIcons=Use icons in tabs;list;yes,no;yes;;Icons available in MODX version 1.2 or newer. &treeButtonsInTab=Tree Buttons in tab;list;yes,no;yes;;Move Tree Buttons into Site Tree tab. &unifyFrames=Unify Frames;list;yes,no;yes;;Unify Tree and Main frame style. Right now supports MODxRE2 theme only.','0','');

INSERT INTO `modx_site_plugins` VALUES ('7','TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides','0','3','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','{\n  \"table_name\": [\n    {\n      \"label\": \"Trans table\",\n      \"type\": \"list\",\n      \"value\": \"russian\",\n      \"options\": \"common,russian,dutch,german,czech,utf8,utf8lowercase\",\n      \"default\": \"utf8lowercase\",\n      \"desc\": \"\"\n    }\n  ],\n  \"char_restrict\": [\n    {\n      \"label\": \"Restrict alias to\",\n      \"type\": \"list\",\n      \"value\": \"legal characters\",\n      \"options\": \"lowercase alphanumeric,alphanumeric,legal characters\",\n      \"default\": \"legal characters\",\n      \"desc\": \"\"\n    }\n  ],\n  \"remove_periods\": [\n    {\n      \"label\": \"Remove Periods\",\n      \"type\": \"list\",\n      \"value\": \"No\",\n      \"options\": \"Yes,No\",\n      \"default\": \"No\",\n      \"desc\": \"\"\n    }\n  ],\n  \"word_separator\": [\n    {\n      \"label\": \"Word Separator\",\n      \"type\": \"list\",\n      \"value\": \"dash\",\n      \"options\": \"dash,underscore,none\",\n      \"default\": \"dash\",\n      \"desc\": \"\"\n    }\n  ],\n  \"override_tv\": [\n    {\n      \"label\": \"Override TV name\",\n      \"type\": \"string\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ');

INSERT INTO `modx_site_plugins` VALUES ('8','Forgot Manager Login','<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation','0','3','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','');

INSERT INTO `modx_site_plugins` VALUES ('9','ManagerManager','<strong>0.6.2</strong> Customize the MODX Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.','0','3','0','\n/**\n * ManagerManager\n *\n * Customize the MODX Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.2\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  06/03/2016\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');','0','&remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules','0','');


# --------------------------------------------------------

#
# Table structure for table `modx_site_snippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_snippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `modx_site_snippets`
#

INSERT INTO `modx_site_snippets` VALUES ('1','Ditto','<strong>2.1.2</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('2','if','<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('3','Wayfinder','<strong>2.0.5</strong> Completely template-driven and highly flexible menu builder','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';\n','0','','');

INSERT INTO `modx_site_snippets` VALUES ('4','phpthumb','<strong>1.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','');

INSERT INTO `modx_site_snippets` VALUES ('5','WebChangePwd','<strong>1.1.2</strong> Allows Web User to change their password from the front-end of the website','0','7','0','\n/**\n * WebChangePwd\n * \n * Allows Web User to change their password from the front-end of the website\n *\n * @category 	snippet\n * @version 	1.1.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Login\n * @internal    @installset base\n * @documentation [+site_url+]assets/snippets/weblogin/docs/webchangepwd.html\n * @documentation http://www.opensourcecms.com/news/details.php?newsid=660\n * @reportissues https://github.com/modxcms/evolution\n * @author      Created By Raymond Irving April, 2005\n * @author      Ryan Thrash http://thrash.me\n * @author      Jason Coward http://opengeek.com\n * @author      Shaun McCormick, garryn, Dmi3yy\n * @lastupdate  09/02/2016\n */\n\n# Set Snippet Paths \n$snipPath  = (($modx->isBackend())? \"../\":\"\");\n$snipPath .= \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$isPostBack		= count($_POST) && isset($_POST[\'cmdwebchngpwd\']);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/webchangepwd.inc.php\";\n\n# Return\nreturn $output;\n\n\n\n','0','','');

INSERT INTO `modx_site_snippets` VALUES ('6','WebSignup','<strong>1.1.2</strong> Basic Web User account creation/signup system','0','7','0','\n/**\n * WebSignup\n * \n * Basic Web User account creation/signup system\n *\n * @category 	snippet\n * @version 	1.1.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties &tpl=Template;string;\n * @internal	@modx_category Login\n * @internal    @installset base, sample\n * @documentation [+site_url+]assets/snippets/weblogin/docs/websignup.html\n * @documentation http://www.opensourcecms.com/news/details.php?newsid=660\n * @reportissues https://github.com/modxcms/evolution\n * @author      Created By Raymond Irving April, 2005\n * @author      Ryan Thrash http://thrash.me\n * @author      Jason Coward http://opengeek.com\n * @author      Shaun McCormick, garryn, Dmi3yy\n * @lastupdate  09/02/2016\n */\n\n# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n    return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl = isset($tpl)? $tpl:\"\";\n$useCaptcha = isset($useCaptcha)? $useCaptcha : $modx->config[\'use_captcha\'] ;\n// Override captcha if no GD\nif ($useCaptcha && !gd_info()) $useCaptcha = 0;\n\n# setup web groups\n$groups = isset($groups) ? array_filter(array_map(\'trim\', explode(\',\', $groups))):array();\n\n# System settings\n$isPostBack        = count($_POST) && isset($_POST[\'cmdwebsignup\']);\n\n$output = \'\';\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/websignup.inc.php\";\n\n# Return\nreturn $output;','0','&tpl=Template;string;','');

INSERT INTO `modx_site_snippets` VALUES ('7','MemberCheck','<strong>1.1</strong> Show chunks based on a logged in Web User\'s group membership','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/membercheck/snippet.membercheck.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('8','FirstChildRedirect','<strong>2.0</strong> Automatically redirects to the first child of a Container Resource','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('9','Breadcrumbs','<strong>1.0.5</strong> Configurable breadcrumb page-trail navigation','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('10','Reflect','<strong>2.2</strong> Generates date-based archives using Ditto','0','5','0','\n/**\n * Reflect\n * \n * Generates date-based archives using Ditto\n *\n * @category 	snippet\n * @version 	2.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation Cheatsheet https://de.scribd.com/doc/55919355/MODx-Ditto-and-Reflect-Cheatsheet-v1-2\n * @documentation Inside snippet-code\n * @reportissues https://github.com/modxcms/evolution\n * @author      Mark Kaplan\n * @author      Ryan Thrash http://thrash.me\n * @author      netProphET, Dmi3yy, bossloper, yamamoto\n * @lastupdate  2016-11-21\n */\n\n/*\n *  Note: \n *  If Reflect is not retrieving its own documents, make sure that the\n *  Ditto call feeding it has all of the fields in it that you plan on\n *  calling in your Reflect template. Furthermore, Reflect will ONLY\n *  show what is currently in the Ditto result set.\n *  Thus, if pagination is on it will ONLY show that page\'s items.\n*/\n\nreturn require MODX_BASE_PATH.\'assets/snippets/reflect/snippet.reflect.php\';\n','0','','');

INSERT INTO `modx_site_snippets` VALUES ('11','Jot','<strong>1.1.5</strong> User comments with moderation and email subscription','0','5','0','\n/**\n * Jot\n * \n * User comments with moderation and email subscription\n *\n * @category 	snippet\n * @version 	1.1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation MODX Wiki http://wiki.modxcms.com/index.php/Jot\n * @reportissues https://github.com/modxcms/evolution\n * @link 		Latest Version http://modx.com/extras/package/jot\n * @link 		Jot Demo Site http://projects.zerobarrier.nl/modx/\n * @author      Armand \"bS\" Pondman apondman@zerobarrier.nl\n * @lastupdate  09/02/2016\n */\n$jotPath = $modx->config[\'base_path\'] . \'assets/snippets/jot/\';\ninclude_once($jotPath.\'jot.class.inc.php\');\n\n$Jot = new CJot;\n$Jot->VersionCheck(\"1.1.5\");\n$Jot->Set(\"path\",$jotPath);\n$Jot->Set(\"action\", $action);\n$Jot->Set(\"postdelay\", $postdelay);\n$Jot->Set(\"docid\", $docid);\n$Jot->Set(\"tagid\", $tagid);\n$Jot->Set(\"subscribe\", $subscribe);\n$Jot->Set(\"moderated\", $moderated);\n$Jot->Set(\"captcha\", $captcha);\n$Jot->Set(\"badwords\", $badwords);\n$Jot->Set(\"bw\", $bw);\n$Jot->Set(\"sortby\", $sortby);\n$Jot->Set(\"numdir\", $numdir);\n$Jot->Set(\"customfields\", $customfields);\n$Jot->Set(\"guestname\", $guestname);\n$Jot->Set(\"canpost\", $canpost);\n$Jot->Set(\"canview\", $canview);\n$Jot->Set(\"canedit\", $canedit);\n$Jot->Set(\"canmoderate\", $canmoderate);\n$Jot->Set(\"trusted\", $trusted);\n$Jot->Set(\"pagination\", $pagination);\n$Jot->Set(\"placeholders\", $placeholders);\n$Jot->Set(\"subjectSubscribe\", $subjectSubscribe);\n$Jot->Set(\"subjectModerate\", $subjectModerate);\n$Jot->Set(\"subjectAuthor\", $subjectAuthor);\n$Jot->Set(\"notify\", $notify);\n$Jot->Set(\"notifyAuthor\", $notifyAuthor);\n$Jot->Set(\"validate\", $validate);\n$Jot->Set(\"title\", $title);\n$Jot->Set(\"authorid\", $authorid);\n$Jot->Set(\"css\", $css);\n$Jot->Set(\"cssFile\", $cssFile);\n$Jot->Set(\"cssRowAlt\", $cssRowAlt);\n$Jot->Set(\"cssRowMe\", $cssRowMe);\n$Jot->Set(\"cssRowAuthor\", $cssRowAuthor);\n$Jot->Set(\"tplForm\", $tplForm);\n$Jot->Set(\"tplComments\", $tplComments);\n$Jot->Set(\"tplModerate\", $tplModerate);\n$Jot->Set(\"tplNav\", $tplNav);\n$Jot->Set(\"tplNotify\", $tplNotify);\n$Jot->Set(\"tplNotifyModerator\", $tplNotifyModerator);\n$Jot->Set(\"tplNotifyAuthor\", $tplNotifyAuthor);\n$Jot->Set(\"tplSubscribe\", $tplSubscribe);\n$Jot->Set(\"debug\", $debug);\n$Jot->Set(\"output\", $output);\nreturn $Jot->Run();','0','','');

INSERT INTO `modx_site_snippets` VALUES ('12','DocLister','<strong>2.3.0</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('13','WebLogin','<strong>1.2</strong> Allows webusers to login to protected pages in the website, supporting multiple user groups','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/weblogin/snippet.weblogin.php\';\n','0','&loginhomeid=Login Home Id;string; &logouthomeid=Logout Home Id;string; &logintext=Login Button Text;string; &logouttext=Logout Button Text;string; &tpl=Template;string;','');

INSERT INTO `modx_site_snippets` VALUES ('14','eForm','<strong>1.4.8</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('15','AjaxSearch','<strong>1.10.1</strong> Ajax and non-Ajax search that supports results highlighting','0','4','0','return require MODX_BASE_PATH.\'assets/snippets/ajaxSearch/snippet.ajaxSearch.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('16','UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';','0','','');

INSERT INTO `modx_site_snippets` VALUES ('17','Personalize','<strong>2.1</strong> Checks to see if web- / mgr-users are logged in or not, to display accordingly yesChunk/noChunk','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/personalize/snippet.personalize.php\';','0','','');


# --------------------------------------------------------

#
# Table structure for table `modx_site_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `modx_site_templates`
#

INSERT INTO `modx_site_templates` VALUES ('3','Minimal Template','Default minimal empty template (content returned only)','0','0','','0','[*content*]','0','1');

INSERT INTO `modx_site_templates` VALUES ('5','Главная','Главная страница','0','9','','0','{{links}}\n<div class=\"container wrapper\">\n{{header}}\n<div class=\"row middle-modules\">\n	{{slider}}\n	<div class=\"col-xs12 col-md-4\" style=\"padding: 0;\">\n	{{service-grid}}		\n	</div>\n</div>\n{{event-list}}\n	<div class=\"row\">\n		<main id=\"main\" class=\"col-xs-12 col-sm-8\">\n			[*content*]\n		</main>\n		{{sidebar-home}}\n	</div>\n\n</div>\n{{footer}}\n{{scripts}}','0','1');

INSERT INTO `modx_site_templates` VALUES ('6','Второстепенная страница','Второстепенная страница','0','9','','0','{{links}}\n<div class=\"container wrapper\">\n{{header}}\n	<div class=\"row\">\n		<main id=\"main\" class=\"col-xs-12 col-sm-8\">\n			<h1>[*pagetitle*]</h1>\n			[*content*]\n		</main>\n		{{sidebar}}\n	</div>\n\n</div>\n{{footer}}\n{{scripts}}','0','1');


# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `modx_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_contentvalues`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `modx_site_tmplvar_contentvalues`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `modx_site_tmplvar_templates`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvars`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_site_tmplvars`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `modx_site_tmplvars`
#

INSERT INTO `modx_site_tmplvars` VALUES ('1','text','documentTags','Tags','Space delimited tags for the current document','0','0','0','','0','','','');

INSERT INTO `modx_site_tmplvars` VALUES ('2','richtext','blogContent','blogContent','RTE for the new blog entries','0','0','0','','0','RichText','&w=383px&h=450px&edt=TinyMCE','');

INSERT INTO `modx_site_tmplvars` VALUES ('3','text','loginName','loginName','Conditional name for the Login menu item','0','0','0','','0','','','@EVAL if ($modx->getLoginUserID()) return \'Logout\'; else return \'Login\';');


# --------------------------------------------------------

#
# Table structure for table `modx_system_eventnames`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_system_eventnames`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `modx_system_eventnames`
#

INSERT INTO `modx_system_eventnames` VALUES ('1','OnDocPublished','5','');

INSERT INTO `modx_system_eventnames` VALUES ('2','OnDocUnPublished','5','');

INSERT INTO `modx_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');

INSERT INTO `modx_system_eventnames` VALUES ('4','OnWebLogin','3','');

INSERT INTO `modx_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');

INSERT INTO `modx_system_eventnames` VALUES ('6','OnWebLogout','3','');

INSERT INTO `modx_system_eventnames` VALUES ('7','OnWebSaveUser','3','');

INSERT INTO `modx_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');

INSERT INTO `modx_system_eventnames` VALUES ('9','OnWebChangePassword','3','');

INSERT INTO `modx_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');

INSERT INTO `modx_system_eventnames` VALUES ('11','OnManagerLogin','2','');

INSERT INTO `modx_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');

INSERT INTO `modx_system_eventnames` VALUES ('13','OnManagerLogout','2','');

INSERT INTO `modx_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');

INSERT INTO `modx_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');

INSERT INTO `modx_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');

INSERT INTO `modx_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');

INSERT INTO `modx_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');

INSERT INTO `modx_system_eventnames` VALUES ('19','OnCacheUpdate','4','');

INSERT INTO `modx_system_eventnames` VALUES ('107','OnMakePageCacheKey','4','');

INSERT INTO `modx_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');

INSERT INTO `modx_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');

INSERT INTO `modx_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');

INSERT INTO `modx_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');

INSERT INTO `modx_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');

INSERT INTO `modx_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');

INSERT INTO `modx_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');

INSERT INTO `modx_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');

INSERT INTO `modx_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('1033','OnDocFormUnDelete','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('1034','onBeforeMoveDocument','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('1035','onAfterMoveDocument','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');

INSERT INTO `modx_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');

INSERT INTO `modx_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');

INSERT INTO `modx_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');

INSERT INTO `modx_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');

INSERT INTO `modx_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');

INSERT INTO `modx_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');

INSERT INTO `modx_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');

INSERT INTO `modx_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');

INSERT INTO `modx_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');

INSERT INTO `modx_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');

INSERT INTO `modx_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');

INSERT INTO `modx_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');

INSERT INTO `modx_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');

INSERT INTO `modx_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');

INSERT INTO `modx_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');

INSERT INTO `modx_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');

INSERT INTO `modx_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');

INSERT INTO `modx_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');

INSERT INTO `modx_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');

INSERT INTO `modx_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');

INSERT INTO `modx_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');

INSERT INTO `modx_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');

INSERT INTO `modx_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');

INSERT INTO `modx_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');

INSERT INTO `modx_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');

INSERT INTO `modx_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');

INSERT INTO `modx_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');

INSERT INTO `modx_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');

INSERT INTO `modx_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');

INSERT INTO `modx_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');

INSERT INTO `modx_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');

INSERT INTO `modx_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');

INSERT INTO `modx_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');

INSERT INTO `modx_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');

INSERT INTO `modx_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');

INSERT INTO `modx_system_eventnames` VALUES ('70','OnSiteRefresh','1','');

INSERT INTO `modx_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');

INSERT INTO `modx_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');

INSERT INTO `modx_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');

INSERT INTO `modx_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');

INSERT INTO `modx_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');

INSERT INTO `modx_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');

INSERT INTO `modx_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');

INSERT INTO `modx_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');

INSERT INTO `modx_system_eventnames` VALUES ('79','OnWebAuthentication','3','');

INSERT INTO `modx_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');

INSERT INTO `modx_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');

INSERT INTO `modx_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');

INSERT INTO `modx_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');

INSERT INTO `modx_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');

INSERT INTO `modx_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');

INSERT INTO `modx_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');

INSERT INTO `modx_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');

INSERT INTO `modx_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');

INSERT INTO `modx_system_eventnames` VALUES ('89','OnManagerPageInit','2','');

INSERT INTO `modx_system_eventnames` VALUES ('90','OnWebPageInit','5','');

INSERT INTO `modx_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');

INSERT INTO `modx_system_eventnames` VALUES ('104','OnBeforeLoadDocumentObject','5','');

INSERT INTO `modx_system_eventnames` VALUES ('105','OnAfterLoadDocumentObject','5','');

INSERT INTO `modx_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');

INSERT INTO `modx_system_eventnames` VALUES ('92','OnParseDocument','5','');

INSERT INTO `modx_system_eventnames` VALUES ('106','OnParseProperties','5','');

INSERT INTO `modx_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('94','OnWebPageComplete','5','');

INSERT INTO `modx_system_eventnames` VALUES ('95','OnLogPageHit','5','');

INSERT INTO `modx_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');

INSERT INTO `modx_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('102','OnMakeDocUrl','5','');

INSERT INTO `modx_system_eventnames` VALUES ('103','OnBeforeLoadExtension','5','');

INSERT INTO `modx_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');

INSERT INTO `modx_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');

INSERT INTO `modx_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');

INSERT INTO `modx_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');

INSERT INTO `modx_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');

INSERT INTO `modx_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('214','OnManagerMenuPrerender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('215','OnManagerTopPrerender','2','');

INSERT INTO `modx_system_eventnames` VALUES ('224','OnDocFormTemplateRender','1','Documents');

INSERT INTO `modx_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');

INSERT INTO `modx_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

INSERT INTO `modx_system_eventnames` VALUES ('1001','OnFileBrowserUpload','1','File Browser Events');


# --------------------------------------------------------

#
# Table structure for table `modx_system_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_system_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `modx_system_settings`
#

INSERT INTO `modx_system_settings` VALUES ('settings_version','1.2');

INSERT INTO `modx_system_settings` VALUES ('manager_theme','MODxRE2');

INSERT INTO `modx_system_settings` VALUES ('server_offset_time','0');

INSERT INTO `modx_system_settings` VALUES ('manager_language','russian-UTF8');

INSERT INTO `modx_system_settings` VALUES ('modx_charset','UTF-8');

INSERT INTO `modx_system_settings` VALUES ('site_name','NormoTech - Volvo');

INSERT INTO `modx_system_settings` VALUES ('site_start','2');

INSERT INTO `modx_system_settings` VALUES ('error_page','2');

INSERT INTO `modx_system_settings` VALUES ('unauthorized_page','2');

INSERT INTO `modx_system_settings` VALUES ('site_status','1');

INSERT INTO `modx_system_settings` VALUES ('auto_template_logic','parent');

INSERT INTO `modx_system_settings` VALUES ('default_template','6');

INSERT INTO `modx_system_settings` VALUES ('old_template','6');

INSERT INTO `modx_system_settings` VALUES ('cache_type','1');

INSERT INTO `modx_system_settings` VALUES ('use_udperms','1');

INSERT INTO `modx_system_settings` VALUES ('udperms_allowroot','0');

INSERT INTO `modx_system_settings` VALUES ('failed_login_attempts','3');

INSERT INTO `modx_system_settings` VALUES ('blocked_minutes','60');

INSERT INTO `modx_system_settings` VALUES ('use_captcha','1');

INSERT INTO `modx_system_settings` VALUES ('emailsender','ichirozcom@gmail.com');

INSERT INTO `modx_system_settings` VALUES ('use_editor','1');

INSERT INTO `modx_system_settings` VALUES ('use_browser','1');

INSERT INTO `modx_system_settings` VALUES ('fe_editor_lang','russian-UTF8');

INSERT INTO `modx_system_settings` VALUES ('session.cookie.lifetime','604800');

INSERT INTO `modx_system_settings` VALUES ('theme_refresher','');

INSERT INTO `modx_system_settings` VALUES ('site_id','58788c5e99de5');

INSERT INTO `modx_system_settings` VALUES ('site_unavailable_page','');

INSERT INTO `modx_system_settings` VALUES ('reload_site_unavailable','');

INSERT INTO `modx_system_settings` VALUES ('site_unavailable_message','В настоящее время сайт недоступен.');

INSERT INTO `modx_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');

INSERT INTO `modx_system_settings` VALUES ('enable_filter','0');

INSERT INTO `modx_system_settings` VALUES ('publish_default','0');

INSERT INTO `modx_system_settings` VALUES ('cache_default','1');

INSERT INTO `modx_system_settings` VALUES ('search_default','1');

INSERT INTO `modx_system_settings` VALUES ('auto_menuindex','1');

INSERT INTO `modx_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');

INSERT INTO `modx_system_settings` VALUES ('docid_incrmnt_method','0');

INSERT INTO `modx_system_settings` VALUES ('minifyphp_incache','0');

INSERT INTO `modx_system_settings` VALUES ('server_protocol','http');

INSERT INTO `modx_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/modx-announce');

INSERT INTO `modx_system_settings` VALUES ('track_visitors','0');

INSERT INTO `modx_system_settings` VALUES ('top_howmany','10');

INSERT INTO `modx_system_settings` VALUES ('friendly_urls','1');

INSERT INTO `modx_system_settings` VALUES ('xhtml_urls','1');

INSERT INTO `modx_system_settings` VALUES ('friendly_url_prefix','');

INSERT INTO `modx_system_settings` VALUES ('friendly_url_suffix','.html');

INSERT INTO `modx_system_settings` VALUES ('make_folders','0');

INSERT INTO `modx_system_settings` VALUES ('seostrict','1');

INSERT INTO `modx_system_settings` VALUES ('aliaslistingfolder','1');

INSERT INTO `modx_system_settings` VALUES ('friendly_alias_urls','1');

INSERT INTO `modx_system_settings` VALUES ('use_alias_path','0');

INSERT INTO `modx_system_settings` VALUES ('allow_duplicate_alias','0');

INSERT INTO `modx_system_settings` VALUES ('automatic_alias','1');

INSERT INTO `modx_system_settings` VALUES ('email_method','mail');

INSERT INTO `modx_system_settings` VALUES ('smtp_auth','0');

INSERT INTO `modx_system_settings` VALUES ('smtp_secure','none');

INSERT INTO `modx_system_settings` VALUES ('smtp_host','smtp.example.com');

INSERT INTO `modx_system_settings` VALUES ('smtp_port','25');

INSERT INTO `modx_system_settings` VALUES ('smtp_username','you@example.com');

INSERT INTO `modx_system_settings` VALUES ('reload_emailsubject','');

INSERT INTO `modx_system_settings` VALUES ('emailsubject','Данные для авторизации');

INSERT INTO `modx_system_settings` VALUES ('emailsubject_default','Данные для авторизации');

INSERT INTO `modx_system_settings` VALUES ('reload_signupemail_message','');

INSERT INTO `modx_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `modx_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `modx_system_settings` VALUES ('reload_websignupemail_message','');

INSERT INTO `modx_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `modx_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `modx_system_settings` VALUES ('reload_system_email_webreminder_message','');

INSERT INTO `modx_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `modx_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `modx_system_settings` VALUES ('warning_visibility','1');

INSERT INTO `modx_system_settings` VALUES ('tree_page_click','27');

INSERT INTO `modx_system_settings` VALUES ('use_breadcrumbs','1');

INSERT INTO `modx_system_settings` VALUES ('remember_last_tab','1');

INSERT INTO `modx_system_settings` VALUES ('resource_tree_node_name','pagetitle');

INSERT INTO `modx_system_settings` VALUES ('session_timeout','15');

INSERT INTO `modx_system_settings` VALUES ('tree_show_protected','0');

INSERT INTO `modx_system_settings` VALUES ('show_meta','0');

INSERT INTO `modx_system_settings` VALUES ('datepicker_offset','-10');

INSERT INTO `modx_system_settings` VALUES ('datetime_format','dd-mm-YYYY');

INSERT INTO `modx_system_settings` VALUES ('number_of_logs','100');

INSERT INTO `modx_system_settings` VALUES ('mail_check_timeperiod','60');

INSERT INTO `modx_system_settings` VALUES ('number_of_messages','30');

INSERT INTO `modx_system_settings` VALUES ('number_of_results','20');

INSERT INTO `modx_system_settings` VALUES ('which_editor','none');

INSERT INTO `modx_system_settings` VALUES ('editor_css_path','');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_theme','custom');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_skin','lightgray');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_template_docs','');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_template_chunks','');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_entermode','p');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_element_format','xhtml');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_schema','html5');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_custom_buttons3','');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_custom_buttons4','');

INSERT INTO `modx_system_settings` VALUES ('tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

INSERT INTO `modx_system_settings` VALUES ('allow_eval','with_scan');

INSERT INTO `modx_system_settings` VALUES ('safe_functions_at_eval','time,date,strtotime,strftime');

INSERT INTO `modx_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');

INSERT INTO `modx_system_settings` VALUES ('validate_referer','1');

INSERT INTO `modx_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/modxsecurity');

INSERT INTO `modx_system_settings` VALUES ('error_reporting','1');

INSERT INTO `modx_system_settings` VALUES ('send_errormail','1');

INSERT INTO `modx_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');

INSERT INTO `modx_system_settings` VALUES ('enable_bindings','1');

INSERT INTO `modx_system_settings` VALUES ('reload_captcha_words','');

INSERT INTO `modx_system_settings` VALUES ('captcha_words','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `modx_system_settings` VALUES ('captcha_words_default','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `modx_system_settings` VALUES ('filemanager_path','/home/c/cr02255/volvo-kirov/public_html/');

INSERT INTO `modx_system_settings` VALUES ('upload_files','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg');

INSERT INTO `modx_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg');

INSERT INTO `modx_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');

INSERT INTO `modx_system_settings` VALUES ('upload_flash','fla,flv,swf');

INSERT INTO `modx_system_settings` VALUES ('upload_maxsize','5000000');

INSERT INTO `modx_system_settings` VALUES ('new_file_permissions','0644');

INSERT INTO `modx_system_settings` VALUES ('new_folder_permissions','0755');

INSERT INTO `modx_system_settings` VALUES ('which_browser','mcpuk');

INSERT INTO `modx_system_settings` VALUES ('rb_webuser','0');

INSERT INTO `modx_system_settings` VALUES ('rb_base_dir','/home/c/cr02255/volvo-kirov/public_html/assets/');

INSERT INTO `modx_system_settings` VALUES ('rb_base_url','assets/');

INSERT INTO `modx_system_settings` VALUES ('clean_uploaded_filename','1');

INSERT INTO `modx_system_settings` VALUES ('strip_image_paths','1');

INSERT INTO `modx_system_settings` VALUES ('maxImageWidth','1600');

INSERT INTO `modx_system_settings` VALUES ('maxImageHeight','1200');

INSERT INTO `modx_system_settings` VALUES ('thumbWidth','150');

INSERT INTO `modx_system_settings` VALUES ('thumbHeight','150');

INSERT INTO `modx_system_settings` VALUES ('thumbsDir','.thumbs');

INSERT INTO `modx_system_settings` VALUES ('jpegQuality','90');

INSERT INTO `modx_system_settings` VALUES ('denyZipDownload','0');

INSERT INTO `modx_system_settings` VALUES ('denyExtensionRename','0');

INSERT INTO `modx_system_settings` VALUES ('showHiddenFiles','0');

INSERT INTO `modx_system_settings` VALUES ('lang_code','ru');

INSERT INTO `modx_system_settings` VALUES ('sys_files_checksum','a:2:{s:49:\"/home/c/cr02255/volvo-kirov/public_html/index.php\";s:32:\"ed8dd02021b28b9227b44d5a76ef7440\";s:49:\"/home/c/cr02255/volvo-kirov/public_html/.htaccess\";s:32:\"ff4f91280f72be1d69ff2de37d5dd454\";}');

INSERT INTO `modx_system_settings` VALUES ('reset_template','2');


# --------------------------------------------------------

#
# Table structure for table `modx_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `modx_user_attributes`
#

INSERT INTO `modx_user_attributes` VALUES ('1','1','Журавлев Илья','1','ichirozcom@gmail.com','+79091403385','+79091403385','0','0','0','3','1484305377','1484308158','0','7b64521854113d159942e8372dd25b54','772278780','1','176','Карла Маркса 129 85','Киров','Кировская','610027','','','');


# --------------------------------------------------------

#
# Table structure for table `modx_user_messages`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_user_messages`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `modx_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `modx_user_roles`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_user_roles`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `assets_files` int(1) NOT NULL DEFAULT '0',
  `assets_images` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  `display_locks` int(1) NOT NULL DEFAULT '0',
  `change_resourcetype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `modx_user_roles`
#

INSERT INTO `modx_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','1','0','0','1','1','1');

INSERT INTO `modx_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','0','0','1','1','1','1','0','1','0','0','1','1','1');

INSERT INTO `modx_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');


# --------------------------------------------------------

#
# Table structure for table `modx_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `modx_user_settings`
#

INSERT INTO `modx_user_settings` VALUES ('1','manager_theme','MODxRE2');

INSERT INTO `modx_user_settings` VALUES ('1','allow_manager_access','1');

INSERT INTO `modx_user_settings` VALUES ('1','which_browser','default');

INSERT INTO `modx_user_settings` VALUES ('1','which_editor','none');

INSERT INTO `modx_user_settings` VALUES ('1','tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `modx_user_settings` VALUES ('1','tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `modx_user_settings` VALUES ('1','tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code');

INSERT INTO `modx_user_settings` VALUES ('1','tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');


# --------------------------------------------------------

#
# Table structure for table `modx_web_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_web_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_web_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `modx_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_web_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `modx_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_web_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `modx_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `modx_webgroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_webgroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_webgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `modx_webgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `modx_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_webgroup_names`
#
