-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.27 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 cloud_auth.auth_client 结构
CREATE TABLE IF NOT EXISTS `auth_client` (
                                             `id` int NOT NULL AUTO_INCREMENT,
                                             `code` varchar(255) DEFAULT NULL COMMENT '服务编码',
    `secret` varchar(255) DEFAULT NULL COMMENT '服务密钥',
    `name` varchar(255) DEFAULT NULL COMMENT '服务名',
    `locked` char(1) DEFAULT NULL COMMENT '是否锁定',
    `description` varchar(255) DEFAULT NULL COMMENT '描述',
    `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
    `crt_user` varchar(255) DEFAULT NULL COMMENT '创建人',
    `crt_name` varchar(255) DEFAULT NULL COMMENT '创建人姓名',
    `crt_host` varchar(255) DEFAULT NULL COMMENT '创建主机',
    `upd_time` datetime DEFAULT NULL COMMENT '更新时间',
    `upd_user` varchar(255) DEFAULT NULL COMMENT '更新人',
    `upd_name` varchar(255) DEFAULT NULL COMMENT '更新姓名',
    `upd_host` varchar(255) DEFAULT NULL COMMENT '更新主机',
    `attr1` varchar(255) DEFAULT NULL,
    `attr2` varchar(255) DEFAULT NULL,
    `attr3` varchar(255) DEFAULT NULL,
    `attr4` varchar(255) DEFAULT NULL,
    `attr5` varchar(255) DEFAULT NULL,
    `attr6` varchar(255) DEFAULT NULL,
    `attr7` varchar(255) DEFAULT NULL,
    `attr8` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='授权客户端';

-- 正在导出表  cloud_auth.auth_client 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `auth_client` DISABLE KEYS */;
INSERT INTO `auth_client` (`id`, `code`, `secret`, `name`, `locked`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES
(1, 'cloud-gate', '123456', 'cloud-gate', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'cloud-admin', '123456', 'cloud-admin', '0', '', NULL, NULL, NULL, NULL, '2017-07-06 21:42:17', '1', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'cloud-auth', '123456', 'cloud-auth', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'cloud-config', 'fXHsssa2', 'cloud-config', '0', 'config', NULL, NULL, NULL, NULL, '2019-06-11 07:13:51', '1', 'admin', '192.168.1.160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'cloud-template', 'bZf8yvj8', 'cloud-template', '0', 'template', NULL, NULL, NULL, NULL, '2019-06-11 07:14:57', '1', 'admin', '192.168.1.160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'cloud-trace', 'wKTl6GGE', 'cloud-trace', '0', 'trace', NULL, NULL, NULL, NULL, '2019-06-11 07:15:14', '1', 'admin', '192.168.1.160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'cloud-monitor', 'eEQBUcnW', 'cloud-monitor', '0', 'monitor', NULL, NULL, NULL, NULL, '2019-06-11 07:15:31', '1', 'admin', '192.168.1.160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'cloud-classroom-course', '123456', 'cloud-classroom-course', '0', '课程微服务', '2019-05-31 04:01:17', '1', 'admin', '192.168.1.160', '2019-05-31 04:01:17', '1', 'admin', '192.168.1.160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'cloud-classroom-order', '123456', 'cloud-classroom-order', '0', '课程订单', '2019-05-31 08:41:36', '1', 'admin', '192.168.1.160', '2019-05-31 08:41:36', '1', 'admin', '192.168.1.160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'cloud-classroom-essearch', '123456', 'cloud-classroom-essearch', '0', 'es搜索提供相关接口', '2019-06-02 01:15:57', '1', 'admin', '192.168.1.160', '2019-06-02 01:16:34', '1', 'admin', '192.168.1.160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `auth_client` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
