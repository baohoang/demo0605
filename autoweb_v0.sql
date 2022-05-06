/*
Navicat MySQL Data Transfer

Source Server         : Inet Mysql
Source Server Version : 100510
Source Host           : 103.82.25.21:3306
Source Database       : autoweb_v0

Target Server Type    : MYSQL
Target Server Version : 100510
File Encoding         : 65001

Date: 2022-05-06 12:22:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_settings
-- ----------------------------
DROP TABLE IF EXISTS `app_settings`;
CREATE TABLE `app_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `app_settings_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app_settings
-- ----------------------------
INSERT INTO `app_settings` VALUES ('1', 'favicon', '/images/favicon.ico', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('2', 'phone', '', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('3', 'master_email', '', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('4', 'master_name', 'An Thịnh Phát', '2022-04-22 07:00:12', '2022-05-04 07:15:15');
INSERT INTO `app_settings` VALUES ('5', 'meta_title', 'Nhập metatitle', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('6', 'meta_description', 'Nhập description', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('7', 'messenger_link', 'https://m.me/spexi.fashion', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('8', 'meta_image', 'Nhập link image', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('9', 'meta_twitter_site', 'Nhập link twitter', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('10', 'zalo_link', 'Nhập link zalo', '2022-04-22 07:00:12', '2022-04-22 07:00:12');
INSERT INTO `app_settings` VALUES ('11', 'master_title', 'Website giới thiệu công ty', '2022-05-04 14:16:35', '2022-05-04 14:16:37');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articleable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `articleable_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('2', 'Lamborghini Urus - siêu SUV giá từ 13,1 tỷ đồng', '<p>Nh&agrave; ph&acirc;n ph&#7889;i c&#7911;a Lamborghini m&#7899;i &#273;&acirc;y th&ocirc;ng b&aacute;o gi&aacute; b&aacute;n t&#7915; 13,1 t&#7927; &#273;&#7891;ng c&#7911;a chi&#7871;c SUV hi&#7879;u su&#7845;t cao, Urus t&#7841;i th&#7883; tr&#432;&#7901;ng Vi&#7879;t Nam. Xe nh&#7853;p kh&#7849;u t&#7915; Italy v&agrave; d&#7921; ki&#7871;n giao &#273;&#7871;n kh&aacute;ch h&agrave;ng v&agrave;o cu&#7889;i 2022, c&ugrave;ng th&#7901;i &#273;i&#7875;m &#273;i v&agrave;o v&#7853;n h&agrave;nh c&#7911;a showroom Lamborghini m&#7899;i &#7903; qu&#7853;n 1, TP HCM.</p>\r\n\r\n<p><img alt=\"Thi&#7871;t k&#7871; Urus 2022.\" src=\"https://i1-vnexpress.vnecdn.net/2022/04/24/493264-1650798216-4609-1650799409.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=OyZND8G2sfCG197pU95q2g\"></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Xe/Xe.thitruong.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Xe/Xe.thitruong.detail_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"1\"></iframe></p>\r\n\r\n<p>Thi&#7871;t k&#7871; Urus 2022. &#7842;nh:&nbsp;<em>Lamborghini</em></p>\r\n\r\n<p>Nh&agrave; ph&acirc;n ph&#7889;i Lamborghini c&#361; tr&#432;&#7899;c &#273;&acirc;y kh&ocirc;ng c&ocirc;ng b&#7889; gi&aacute; b&aacute;n cho c&aacute;c d&ograve;ng xe c&#7911;a h&atilde;ng n&oacute;i chung v&agrave; Urus n&oacute;i ri&ecirc;ng. Trong khi c&aacute;c showroom t&#432; nh&acirc;n, xe Urus \"l&#432;&#7899;t\" gi&aacute; kh&ocirc;ng d&#432;&#7899;i 20 t&#7927; &#273;&#7891;ng.</p>\r\n\r\n<p>Chi&#7871;c si&ecirc;u SUV s&#7855;p b&aacute;n t&#7841;i Vi&#7879;t Nam trang b&#7883; &#273;&#7897;ng c&#417; t&#259;ng &aacute;p k&eacute;p V8 dung t&iacute;ch 4 l&iacute;t, c&ocirc;ng su&#7845;t 650 m&atilde; l&#7921;c v&agrave; m&ocirc;-men xo&#7855;n c&#7921;c &#273;&#7841;i 850 Nm. H&#7897;p s&#7889; t&#7921; &#273;&#7897;ng ZF 8 c&#7845;p.</p>\r\n\r\n<p>Lamborghini Urus t&#259;ng t&#7889;c 0-100 km/h trong 3,6 gi&acirc;y, 0-200 km/h trong 12,8 gi&acirc;y tr&#432;&#7899;c khi &#273;&#7841;t v&#7853;n t&#7889;c t&#7889;i &#273;a 305 km/h. Xe d&#7851;n &#273;&#7897;ng 4 b&aacute;nh to&agrave;n th&#7901;i gian c&ugrave;ng c&#417; c&#7845;u &#273;&aacute;nh l&aacute;i b&aacute;nh sau th&#7915;a h&#432;&#7903;ng t&#7915; chi&#7871;c Aventador S. L&#7921;c k&eacute;o ph&acirc;n b&#7893; cho hai c&#7847;u tr&#432;&#7899;c/sau theo t&#7927; l&#7879; 40:60 v&agrave; c&oacute; th&#7875; t&ugrave;y ch&#7881;nh m&#7913;c 70% cho c&#7847;u tr&#432;&#7899;c ho&#7863;c 87% cho c&#7847;u sau.</p>\r\n\r\n<p>Urus hi&#7879;n l&agrave; m&#7851;u xe g&#7847;m cao duy nh&#7845;t trong d&#7843;i s&#7843;n ph&#7849;m c&#7911;a Lamborghini. Xe mang DNA &#273;&#7863;c tr&#432;ng c&#7911;a h&atilde;ng si&ecirc;u xe Italy v&#7899;i thi&#7871;t k&#7871; h&#7847;m h&#7889;, c&#417; b&#7855;p. Chi&#7873;u cao xe c&oacute; th&#7875; thay &#273;&#7893;i nh&#7901; ch&#7871; &#273;&#7897; n&acirc;ng/h&#7841; g&#7847;m.</p>\r\n\r\n<p><img alt=\"Khoang l&aacute;i tr&ecirc;n m&#7897;t m&#7851;u Urus t&#7841;i Vi&#7879;t Nam. &#7842;nh: Minh Qu&acirc;n\" src=\"https://i1-vnexpress.vnecdn.net/2022/04/24/urus-vne-1561452797-jpeg-7128-1650799409.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=8p6HfgiIvOTFBHEjC4yk-A\"></p>\r\n\r\n<p>Khoang l&aacute;i tr&ecirc;n m&#7897;t m&#7851;u Urus t&#7841;i Vi&#7879;t Nam. &#7842;nh:&nbsp;<em>Minh Qu&acirc;n</em></p>\r\n\r\n<p>N&#7897;i th&#7845;t Lamborghini Urus h&#432;&#7899;ng t&#7899;i ch&#7845;t th&#7875; thao, sang tr&#7885;ng. M&agrave;n h&igrave;nh trung t&acirc;m k&#7929; thu&#7853;t s&#7889; TFT c&oacute; kh&#7843; n&#259;ng hi&#7875;n th&#7883; hi&#7879;u &#7913;ng 3 chi&#7873;u v&agrave; t&ugrave;y ch&#7881;nh theo &yacute; th&iacute;ch c&aacute; nh&acirc;n. Hai m&agrave;n h&igrave;nh th&ocirc;ng tin gi&#7843;i tr&iacute; c&#7905; l&#7899;n n&#7889;i d&agrave;i &#7903; b&#7843;ng t&aacute;p-l&ocirc;.</p>\r\n\r\n<p>M&#7913;c gi&aacute; ch&iacute;nh h&atilde;ng t&#7915; 13,1 t&#7927; &#273;&#7891;ng c&#7911;a Lamborghini Urus m&#7899;i th&#7845;p h&#417;n nhi&#7873;u gi&aacute; xe &#7903; c&aacute;c &#273;&#7841;i l&yacute; t&#432; nh&acirc;n, v&igrave; th&#7871; c&#417; h&#7897;i ti&#7871;p c&#7853;n kh&aacute;ch h&agrave;ng t&#7889;t h&#417;n. Tuy nhi&ecirc;n c&aacute;c &#273;&#7841;i l&yacute; t&#432; nh&acirc;n c&oacute; l&#7907;i th&#7871; th&#432;&#7901;ng c&oacute; xe giao s&#7899;m cho kh&aacute;ch d&ugrave; kh&aacute;ch kh&ocirc;ng &#273;&#432;&#7907;c tho&#7843;i m&aacute;i t&ugrave;y ch&#7885;n option c&#361;ng nh&#432; thi&#7871;u ch&iacute;nh s&aacute;ch b&#7843;o h&agrave;nh ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p>Urus h&#432;&#7899;ng &#273;&#7871;n c&aacute;c &#273;&#7889;i th&#7911; &#7903; ph&acirc;n kh&uacute;c SUV h&#7841;ng sang hi&#7879;u n&#259;ng cao nh&#432; Maserati Levante (phi&ecirc;n b&#7843;n Trofeo) gi&aacute; g&#7847;n 15,5 t&#7927; &#273;&#7891;ng, Aston Martin DBX t&#7915; 16,7 t&#7927; &#273;&#7891;ng.</p>', 'Admin', '/', 'posts', '3', null, '2022-04-25 02:00:06', '2022-04-25 02:00:06');
INSERT INTO `articles` VALUES ('3', 'Lamborghini Urus - siêu SUV giá từ 13,1 tỷ đồng', '<p>Nh&agrave; ph&acirc;n ph&#7889;i c&#7911;a Lamborghini m&#7899;i &#273;&acirc;y th&ocirc;ng b&aacute;o gi&aacute; b&aacute;n t&#7915; 13,1 t&#7927; &#273;&#7891;ng c&#7911;a chi&#7871;c SUV hi&#7879;u su&#7845;t cao, Urus t&#7841;i th&#7883; tr&#432;&#7901;ng Vi&#7879;t Nam. Xe nh&#7853;p kh&#7849;u t&#7915; Italy v&agrave; d&#7921; ki&#7871;n giao &#273;&#7871;n kh&aacute;ch h&agrave;ng v&agrave;o cu&#7889;i 2022, c&ugrave;ng th&#7901;i &#273;i&#7875;m &#273;i v&agrave;o v&#7853;n h&agrave;nh c&#7911;a showroom Lamborghini m&#7899;i &#7903; qu&#7853;n 1, TP HCM.</p>\r\n\r\n<p><img alt=\"Thi&#7871;t k&#7871; Urus 2022.\" src=\"https://i1-vnexpress.vnecdn.net/2022/04/24/493264-1650798216-4609-1650799409.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=OyZND8G2sfCG197pU95q2g\"></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Xe/Xe.thitruong.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Xe/Xe.thitruong.detail_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"1\"></iframe></p>\r\n\r\n<p>Thi&#7871;t k&#7871; Urus 2022. &#7842;nh:&nbsp;<em>Lamborghini</em></p>\r\n\r\n<p>Nh&agrave; ph&acirc;n ph&#7889;i Lamborghini c&#361; tr&#432;&#7899;c &#273;&acirc;y kh&ocirc;ng c&ocirc;ng b&#7889; gi&aacute; b&aacute;n cho c&aacute;c d&ograve;ng xe c&#7911;a h&atilde;ng n&oacute;i chung v&agrave; Urus n&oacute;i ri&ecirc;ng. Trong khi c&aacute;c showroom t&#432; nh&acirc;n, xe Urus \"l&#432;&#7899;t\" gi&aacute; kh&ocirc;ng d&#432;&#7899;i 20 t&#7927; &#273;&#7891;ng.</p>\r\n\r\n<p>Chi&#7871;c si&ecirc;u SUV s&#7855;p b&aacute;n t&#7841;i Vi&#7879;t Nam trang b&#7883; &#273;&#7897;ng c&#417; t&#259;ng &aacute;p k&eacute;p V8 dung t&iacute;ch 4 l&iacute;t, c&ocirc;ng su&#7845;t 650 m&atilde; l&#7921;c v&agrave; m&ocirc;-men xo&#7855;n c&#7921;c &#273;&#7841;i 850 Nm. H&#7897;p s&#7889; t&#7921; &#273;&#7897;ng ZF 8 c&#7845;p.</p>\r\n\r\n<p>Lamborghini Urus t&#259;ng t&#7889;c 0-100 km/h trong 3,6 gi&acirc;y, 0-200 km/h trong 12,8 gi&acirc;y tr&#432;&#7899;c khi &#273;&#7841;t v&#7853;n t&#7889;c t&#7889;i &#273;a 305 km/h. Xe d&#7851;n &#273;&#7897;ng 4 b&aacute;nh to&agrave;n th&#7901;i gian c&ugrave;ng c&#417; c&#7845;u &#273;&aacute;nh l&aacute;i b&aacute;nh sau th&#7915;a h&#432;&#7903;ng t&#7915; chi&#7871;c Aventador S. L&#7921;c k&eacute;o ph&acirc;n b&#7893; cho hai c&#7847;u tr&#432;&#7899;c/sau theo t&#7927; l&#7879; 40:60 v&agrave; c&oacute; th&#7875; t&ugrave;y ch&#7881;nh m&#7913;c 70% cho c&#7847;u tr&#432;&#7899;c ho&#7863;c 87% cho c&#7847;u sau.</p>\r\n\r\n<p>Urus hi&#7879;n l&agrave; m&#7851;u xe g&#7847;m cao duy nh&#7845;t trong d&#7843;i s&#7843;n ph&#7849;m c&#7911;a Lamborghini. Xe mang DNA &#273;&#7863;c tr&#432;ng c&#7911;a h&atilde;ng si&ecirc;u xe Italy v&#7899;i thi&#7871;t k&#7871; h&#7847;m h&#7889;, c&#417; b&#7855;p. Chi&#7873;u cao xe c&oacute; th&#7875; thay &#273;&#7893;i nh&#7901; ch&#7871; &#273;&#7897; n&acirc;ng/h&#7841; g&#7847;m.</p>\r\n\r\n<p><img alt=\"Khoang l&aacute;i tr&ecirc;n m&#7897;t m&#7851;u Urus t&#7841;i Vi&#7879;t Nam. &#7842;nh: Minh Qu&acirc;n\" src=\"https://i1-vnexpress.vnecdn.net/2022/04/24/urus-vne-1561452797-jpeg-7128-1650799409.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=8p6HfgiIvOTFBHEjC4yk-A\"></p>\r\n\r\n<p>Khoang l&aacute;i tr&ecirc;n m&#7897;t m&#7851;u Urus t&#7841;i Vi&#7879;t Nam. &#7842;nh:&nbsp;<em>Minh Qu&acirc;n</em></p>\r\n\r\n<p>N&#7897;i th&#7845;t Lamborghini Urus h&#432;&#7899;ng t&#7899;i ch&#7845;t th&#7875; thao, sang tr&#7885;ng. M&agrave;n h&igrave;nh trung t&acirc;m k&#7929; thu&#7853;t s&#7889; TFT c&oacute; kh&#7843; n&#259;ng hi&#7875;n th&#7883; hi&#7879;u &#7913;ng 3 chi&#7873;u v&agrave; t&ugrave;y ch&#7881;nh theo &yacute; th&iacute;ch c&aacute; nh&acirc;n. Hai m&agrave;n h&igrave;nh th&ocirc;ng tin gi&#7843;i tr&iacute; c&#7905; l&#7899;n n&#7889;i d&agrave;i &#7903; b&#7843;ng t&aacute;p-l&ocirc;.</p>\r\n\r\n<p>M&#7913;c gi&aacute; ch&iacute;nh h&atilde;ng t&#7915; 13,1 t&#7927; &#273;&#7891;ng c&#7911;a Lamborghini Urus m&#7899;i th&#7845;p h&#417;n nhi&#7873;u gi&aacute; xe &#7903; c&aacute;c &#273;&#7841;i l&yacute; t&#432; nh&acirc;n, v&igrave; th&#7871; c&#417; h&#7897;i ti&#7871;p c&#7853;n kh&aacute;ch h&agrave;ng t&#7889;t h&#417;n. Tuy nhi&ecirc;n c&aacute;c &#273;&#7841;i l&yacute; t&#432; nh&acirc;n c&oacute; l&#7907;i th&#7871; th&#432;&#7901;ng c&oacute; xe giao s&#7899;m cho kh&aacute;ch d&ugrave; kh&aacute;ch kh&ocirc;ng &#273;&#432;&#7907;c tho&#7843;i m&aacute;i t&ugrave;y ch&#7885;n option c&#361;ng nh&#432; thi&#7871;u ch&iacute;nh s&aacute;ch b&#7843;o h&agrave;nh ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p>Urus h&#432;&#7899;ng &#273;&#7871;n c&aacute;c &#273;&#7889;i th&#7911; &#7903; ph&acirc;n kh&uacute;c SUV h&#7841;ng sang hi&#7879;u n&#259;ng cao nh&#432; Maserati Levante (phi&ecirc;n b&#7843;n Trofeo) gi&aacute; g&#7847;n 15,5 t&#7927; &#273;&#7891;ng, Aston Martin DBX t&#7915; 16,7 t&#7927; &#273;&#7891;ng.</p>', 'Admin', '/', 'posts', '4', null, '2022-04-25 02:00:25', '2022-04-25 02:00:25');
INSERT INTO `articles` VALUES ('4', 'Xe máy Honda kênh giá hàng chục triệu đồng', '<p>C&aacute;c m&#7851;u xe nh&#432; SH, Vision, Lead &#273;&#7873;u k&ecirc;nh so v&#7899;i gi&aacute; ni&ecirc;m y&#7871;t t&#7915; v&agrave;i tri&#7879;u t&#7899;i v&agrave;i ch&#7909;c tri&#7879;u, xe ch&ecirc;nh cao nh&#7845;t l&agrave; SH350i.</p>\r\n\r\n<p>Hi&#7879;n d&ograve;ng Wave &#273;ang &#273;&#7897;i gi&aacute; 3 tri&#7879;u l&agrave; m&#7913;c th&#7845;p nh&#7845;t trong c&aacute;c s&#7843;n ph&#7849;m xe m&aacute;y c&#7911;a Honda. &#7902; ph&acirc;n kh&uacute;c xe ga, c&aacute;c m&#7851;u Lead, Air Blade, Vision &#273;&#7873;u c&oacute; gi&aacute; b&aacute;n cao h&#417;n &#273;&#7873; xu&#7845;t 7-15 tri&#7879;u. SH k&ecirc;nh 17-25 tri&#7879;u. Cao nh&#7845;t l&agrave; SH350i, k&ecirc;nh 40 tri&#7879;u &#273;&#7891;ng.</p>\r\n\r\n<p>M&#7913;c gi&aacute; t&#259;ng s&#7869; khi&#7871;n t&#7893;ng chi ph&iacute; l&#259;n b&aacute;nh xe t&#259;ng &#273;&aacute;ng k&#7875;. V&iacute; d&#7909; Vision c&oacute; v&#7899;i gi&aacute; &#273;&#7873; xu&#7845;t 29-33 tri&#7879;u nh&#432;ng gi&aacute; b&aacute;n l&#7867; l&ecirc;n t&#7899;i 37-42 tri&#7879;u &#273;&#7891;ng, n&#7871;u t&iacute;nh c&#7843; gi&#7845;y t&#7901; ra bi&#7875;n &#7903; H&agrave; N&#7897;i l&ecirc;n t&#7899;i g&#7847;n 50 tri&#7879;u &#273;&#7891;ng.</p>\r\n\r\n<p><img alt=\"Vision &#273;&#432;&#7907;c b&#7847;y b&aacute;n t&#7841;i m&#7897;t Head &#7903; TP HCM. &#7842;nh: Ph&#7841;m Trung\" src=\"https://i1-vnexpress.vnecdn.net/2022/04/22/z3359471094734-9c2a89d6e1990ef-2041-8564-1650601995.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=brwGSW1aUPM3CoK3MH439A\"></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Xe/Xe.thitruong.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Xe/Xe.thitruong.detail_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"1\"></iframe></p>\r\n\r\n<p>Vision &#273;&#432;&#7907;c b&#7847;y b&aacute;n t&#7841;i m&#7897;t Head &#7903; TP HCM. &#7842;nh:&nbsp;<em>Ph&#7841;m Trung</em></p>\r\n\r\n<p>K&ecirc;nh gi&aacute; v&#7889;n l&agrave; th&#7921;c t&#7871; t&#7915; l&acirc;u nay c&#7911;a xe m&aacute;y Honda, nh&#432;ng g&#7847;n &#273;&acirc;y n&oacute;ng h&#417;n, k&#7875; t&#7915; sau khi h&atilde;ng&nbsp;<a href=\"https://vnexpress.net/honda-viet-nam-tang-gia-gan-20-dong-xe-may-4447208.html\" rel=\"dofollow\" target=\"_blank\">&#273;i&#7873;u ch&#7881;nh t&#259;ng gi&aacute; cho 20 d&ograve;ng xe</a>&nbsp;h&#7891;i th&aacute;ng 4. C&oacute; r&#7845;t &iacute;t m&#7851;u xe Honda b&aacute;n d&#432;&#7899;i gi&aacute; ho&#7863;c b&#7857;ng gi&aacute; ni&ecirc;m y&#7871;t, tr&#432;&#7899;c &#273;&acirc;y c&oacute; Winner.</p>\r\n\r\n<p>H&atilde;ng xe Nh&#7853;t t&#7915;ng nhi&#7873;u l&#7847;n gi&#7843;i th&iacute;ch, gi&aacute; ni&ecirc;m y&#7871;t tr&ecirc;n website ch&#7881; l&agrave; \"gi&aacute; &#273;&#7873; xu&#7845;t\", t&#7913;c kh&ocirc;ng c&#7889; &#273;&#7883;nh. &#272;&#7841;i l&yacute; c&oacute; th&#7875; &#273;i&#7873;u ch&#7881;nh &#273;&#7875; b&aacute;n theo nhu c&#7847;u th&#7883; tr&#432;&#7901;ng. Quan h&#7879; c&#7911;a h&atilde;ng v&agrave; &#273;&#7841;i l&yacute; c&#361;ng l&agrave; mua-b&aacute;n &#273;&#417;n thu&#7847;n n&ecirc;n h&atilde;ng kh&ocirc;ng can thi&#7879;p &#273;&#432;&#7907;c v&agrave;o c&aacute;ch &#273;&#7863;t gi&aacute; c&#7911;a &#273;&#7841;i l&yacute;, Honda Vi&#7879;t Nam cho bi&#7871;t.</p>\r\n\r\n<p>Hi&#7879;n Honda chi&#7871;m 80% th&#7883; ph&#7847;n xe m&aacute;y &#7903; Vi&#7879;t Nam, t&#7913;c g&#7847;n nh&#432; mu&#7889;n mua xe m&aacute;y l&agrave; ng&#432;&#7901;i Vi&#7879;t ngh&#297; t&#7899;i Honda. T&acirc;m l&yacute; n&agrave;y c&#361;ng khi&#7871;n c&aacute;c &#273;&#7841;i l&yacute; c&oacute; c&#417; h&#7897;i ch&#7911; &#273;&#7897;ng t&#259;ng gi&aacute; ki&#7871;m l&#7907;i nhu&#7853;n ho&#7863;c b&ugrave; cho nh&#7919;ng m&#7851;u b&aacute;n ch&#7853;m. M&#7897;t s&#7889; &#273;&#7841;i l&yacute; l&#7841;i gi&#7843;i th&iacute;ch, do m&#7913;c gi&aacute; th&#7921;c t&#7871; nh&#7853;p xe t&#7915; nh&agrave; m&aacute;y &#7903; t&#7915;ng &#273;&#7907;t c&oacute; th&#7875; kh&ocirc;ng gi&#7889;ng nhau, n&ecirc;n n&#7871;u b&aacute;n &#273;&uacute;ng gi&aacute; &#273;&#7873; xu&#7845;t, c&oacute; th&#7875; &#273;&#7841;i l&yacute; s&#7869; kh&ocirc;ng c&oacute; l&atilde;i ho&#7863;c b&#7883; gi&#7843;m t&#7927; su&#7845;t l&#7907;i nhu&#7853;n.</p>', 'Admin', '/', 'posts', '5', null, '2022-04-25 02:04:31', '2022-04-25 02:04:31');
INSERT INTO `articles` VALUES ('6', 'Trang giới thiệu sản phẩm tới người tiêu dùng', '<p>test c&aacute;i xem n&agrave;o&nbsp;</p>', 'Quản trị viên', 'http://localhost:8000', 'pages', '3', null, '2022-04-25 07:47:53', '2022-04-25 07:47:53');
INSERT INTO `articles` VALUES ('7', 'Elon Musk chế nhạo Warren Buffett về Bitcoin', '<p>Trong cu&#7897;c h&#7885;p c&#7893; &#273;&ocirc;ng tu&#7847;n tr&#432;&#7899;c, t&#7927; ph&uacute; Warren Buffett c&oacute; b&agrave;i ph&aacute;t bi&#7875;u g&acirc;y tranh c&atilde;i khi n&oacute;i&nbsp;<a href=\"https://vnexpress.net/chu-de/bitcoin-3112\" rel=\"dofollow\">Bitcoin</a>&nbsp;kh&ocirc;ng mang l&#7841;i gi&aacute; tr&#7883; v&agrave; &ocirc;ng&nbsp;<a href=\"https://vnexpress.net/ly-do-warren-buffett-khong-tin-bitcoin-4458664.html\" rel=\"dofollow\">s&#7869; kh&ocirc;ng mua</a>&nbsp;ngay c&#7843; khi ch&uacute;ng c&oacute; gi&aacute; 25 USD. Nhi&#7873;u nh&agrave; &#273;&#7847;u t&#432; kh&aacute;c &#273;&atilde; l&ecirc;n ti&#7871;ng v&#7873; quan &#273;i&#7875;m n&agrave;y, trong &#273;&oacute; c&oacute; nh&agrave; &#273;&#7847;u t&#432; m&#7841;o hi&#7875;m Marc Andreessen.</p>\r\n\r\n<p>Tr&ecirc;n trang Twitter c&aacute; nh&acirc;n, Andreessen nh&#7853;n x&eacute;t: \"Th&#7853;t hoang &#273;&#432;&#7901;ng khi &ocirc;ng &#7845;y n&oacute;i &#273;i&#7873;u n&agrave;y khi &#273;ang m&#7855;c ti&#7875;u &#273;&#432;&#7901;ng\", nh&#7855;c &#273;&#7871;n vi&#7879;c Buffett xu&#7845;t hi&#7879;n t&#7841;i cu&#7897;c h&#7885;p v&#7899;i nhi&#7873;u h&#7897;p k&#7865;o See\'s Candies xung quanh. See\'s Candies c&#361;ng l&agrave; th&#432;&#417;ng hi&#7879;u thu&#7897;c s&#7903; h&#7919;u c&#7911;a Berkshire.</p>\r\n\r\n<p>V&#7889;n l&agrave; ng&#432;&#7901;i &#7911;ng h&#7897; ti&#7873;n &#273;i&#7879;n t&#7917;,&nbsp;<a href=\"https://vnexpress.net/chu-de/elon-musk-1849\" rel=\"dofollow\">Elon Musk</a>&nbsp;kh&ocirc;ng tr&#7921;c ti&#7871;p chia s&#7867; quan &#273;i&#7875;m v&#7873; ph&aacute;t bi&#7875;u c&#7911;a Buffett. Tuy nhi&ecirc;n, &ocirc;ng ch&#7911; Tesla b&igrave;nh lu&#7853;n tr&ecirc;n tweet c&#7911;a Andreessen: \"&Ocirc;ng &#7845;y n&oacute;i \'Bitcoin\' r&#7845;t nhi&#7873;u l&#7847;n\", k&egrave;m c&acirc;u c&#432;&#7901;i \"haha\", &aacute;m ch&#7881; vi&#7879;c &ocirc;ng ch&#7911; c&#7911;a Berkshire Hathaway ph&#7843;n &#273;&#7889;i Bitcoin, nh&#432;ng v&ocirc; t&igrave;nh nh&#7855;c &#273;&#7871;n c&#7909;m t&#7915; n&agrave;y nhi&#7873;u l&#7847;n.</p>\r\n\r\n<p>Tweet n&agrave;y c&#7911;a Musk nh&#7853;n h&#417;n 30.000 l&#432;&#7907;t th&iacute;ch v&agrave; h&agrave;ng ngh&igrave;n ph&#7843;n h&#7891;i sau m&#7897;t ng&agrave;y, trong &#273;&oacute; c&oacute; \"c&aacute; m&#7853;p\" Bitcoin l&agrave; Michael Saylor - nh&agrave; s&aacute;ng l&#7853;p Microstrategy. \"M&#7885;i ng&#432;&#7901;i &#273;&#7873;u kh&ocirc;ng th&#7875; ng&#7915;ng n&oacute;i v&#7873; Bitcoin\", Saylor &#273;&#7891;ng t&igrave;nh.</p>\r\n\r\n<p><img alt=\"Elon Musk v&agrave; Warren Buffett c&oacute; quan &#273;i&#7875;m tr&aacute;i ng&#432;&#7907;c v&#7873; Bitcoin. &#7842;nh: Benzinga\" src=\"https://i1-sohoa.vnecdn.net/2022/05/03/elon-musk-warren-buffett2-8846-1651572681.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hIj_JegNjZN98o_VCRO4yw\"></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Sohoa/Sohoa.congnghe.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Sohoa/Sohoa.congnghe.detail_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"1\"></iframe></p>\r\n\r\n<p>Elon Musk v&agrave; Warren Buffett c&oacute; quan &#273;i&#7875;m tr&aacute;i ng&#432;&#7907;c v&#7873; Bitcoin. &#7842;nh:&nbsp;<em>Benzinga</em></p>\r\n\r\n<p>&#272;&acirc;y kh&ocirc;ng ph&#7843;i l&agrave; l&#7847;n &#273;&#7847;u Musk b&igrave;nh lu&#7853;n v&#7873; Buffett. N&#259;m 2021, &ocirc;ng ch&acirc;m ch&#7885;c Buffett sau khi tr&#7903; th&agrave;nh ng&#432;&#7901;i gi&agrave;u nh&#7845;t h&agrave;nh tinh, n&oacute;i Buffett n&ecirc;n &#273;&#7847;u t&#432; v&agrave;o c&ocirc;ng ty c&#7911;a m&igrave;nh n&#7871;u mu&#7889;n theo k&#7883;p v&#7873; gi&aacute; tr&#7883; t&agrave;i s&#7843;n.</p>\r\n\r\n<p>Theo&nbsp;<em>Business Insider</em>, Buffett tr&#432;&#7899;c &#273;&acirc;y &#273;&aacute;nh gi&aacute; Musk l&agrave; \"m&#7897;t ng&#432;&#7901;i &#273;&aacute;ng ch&uacute; &yacute;\", c&oacute; th&#7875; g&acirc;y &#273;&#7843;o l&#7897;n m&#7897;t s&#7889; l&#297;nh v&#7921;c, nh&#432;ng v&#7851;n c&oacute; nh&#7919;ng &#273;i&#7873;u c&#7847;n c&#7843;i thi&#7879;n v&agrave; n&ecirc;n ch&#7885;n l&#7885;c h&#417;n v&#7873; nh&#7919;ng g&igrave; m&igrave;nh tweet.</p>\r\n\r\n<p>Hai t&#7927; ph&uacute; c&oacute; quan &#273;i&#7875;m tr&aacute;i chi&#7873;u v&#7873; ti&#7873;n &#273;i&#7879;n t&#7917;. Musk cho bi&#7871;t &ocirc;ng s&#7903; h&#7919;u Bitcoin, Ethereum v&agrave; Dogecoin, &#273;&#7891;ng th&#7901;i li&ecirc;n t&#7909;c nh&#7855;c &#273;&#7871;n &#273;&#7891;ng Dogecoin tr&ecirc;n trang c&aacute; nh&acirc;n. Trong khi &#273;&oacute;, Buffett g&#7885;i Bitcoin l&agrave; \"thu&#7897;c di&#7879;t chu&#7897;t\", &#273;&#7891;ng th&#7901;i kh&#7859;ng &#273;&#7883;nh s&#7869; kh&ocirc;ng bao gi&#7901; s&#7903; h&#7919;u b&#7845;t c&#7913; lo&#7841;i ti&#7873;n &#273;i&#7879;n t&#7917; n&agrave;o.</p>', 'Admin', '/', 'posts', '6', null, '2022-05-04 02:07:37', '2022-05-04 02:07:37');
INSERT INTO `articles` VALUES ('8', 'Elon Musk nói sẽ không bán Bitcoin', '<p>Ng&agrave;y 14/3,&nbsp;<a href=\"https://vnexpress.net/chu-de/elon-musk-1849\" rel=\"dofollow\">Musk</a>&nbsp;l&ecirc;n Twitter h&#7887;i m&#7885;i ng&#432;&#7901;i ngh&#297; th&#7871; n&agrave;o v&#7873; t&#7927; l&#7879; l&#7841;m ph&aacute;t trong v&agrave;i n&#259;m t&#7899;i. Michael Saylor, CEO MicroStrategy, b&igrave;nh lu&#7853;n r&#7857;ng l&#7841;m ph&aacute;t s&#7869; khi&#7871;n nhi&#7873;u ng&#432;&#7901;i mua&nbsp;<a href=\"https://vnexpress.net/chu-de/bitcoin-3112\" rel=\"dofollow\">Bitcoin</a>&nbsp;h&#417;n. Nh&#432;ng Musk kh&ocirc;ng &#273;&#7891;ng t&igrave;nh: \"Nh&igrave;n chung, l&#7841;m ph&aacute;t &#7903; M&#7929; &#273;ang t&#259;ng cao, t&#7889;t nh&#7845;t b&#7841;n n&ecirc;n mua nh&#7919;ng t&agrave;i s&#7843;n h&#7919;u h&igrave;nh nh&#432; m&#7897;t ng&ocirc;i nh&agrave;, c&ograve;n kh&ocirc;ng th&igrave; c&#7893; phi&#7871;u &#7903; m&#7897;t c&ocirc;ng ty n&agrave;o &#273;&oacute; b&#7841;n tin t&#432;&#7903;ng\".</p>\r\n\r\n<p>Tuy nhi&ecirc;n, &ocirc;ng c&#361;ng nh&#7845;n m&#7841;nh: \"T&ocirc;i v&#7851;n gi&#7919; v&agrave; s&#7869; kh&ocirc;ng b&aacute;n Bitcoin, Ehtereum v&agrave; Doge\".</p>\r\n\r\n<p>Theo&nbsp;<em>CoinGecko,</em>&nbsp;gi&aacute; c&#7911;a c&#7843; ba &#273;&#7891;ng ti&#7873;n m&atilde; h&oacute;a n&agrave;y &#273;&#7873;u t&#259;ng sau d&ograve;ng tweet c&#7911;a Musk, t&#7927; l&#7879; t&#259;ng l&#7847;n l&#432;&#7907;t l&agrave; 2,9%, 2,3% v&agrave; 3,8%. B&igrave;nh lu&#7853;n c&#7911;a t&#7927; ph&uacute; c&ocirc;ng ngh&#7879; c&#361;ng nhanh ch&oacute;ng tr&#7903; th&agrave;nh ch&#7911; &#273;&#7873; thu h&uacute;t tr&ecirc;n m&#7841;ng x&atilde; h&#7897;i v&#7899;i h&#417;n 57 ngh&igrave;n l&#432;&#7907;t th&iacute;ch, 12,4 ngh&igrave;n l&#432;&#7907;t b&igrave;nh lu&#7853;n v&agrave; 1,63 ngh&igrave;n l&#432;&#7907;t tr&iacute;ch d&#7851;n. M&#7897;t s&#7889; cho r&#7857;ng c&acirc;u tr&#7843; l&#7901;i c&#7911;a Musk kh&aacute; m&acirc;u thu&#7851;n.</p>\r\n\r\n<p>\"M&#7899;i c&aacute;ch &#273;&acirc;y v&agrave;i th&aacute;ng, Musk tr&#7903; th&agrave;nh ng&#432;&#7901;i kh&ocirc;ng nh&agrave; sau khi tuy&ecirc;n b&#7889; b&aacute;n t&#7845;t c&#7843; b&#7845;t &#273;&#7897;ng s&#7843;n. Gi&#7901; &ocirc;ng &#7845;y l&#7841;i khuy&ecirc;n m&#7885;i ng&#432;&#7901;i &#273;i mua nh&agrave;\", t&agrave;i kho&#7843;n Carlos Mogo b&igrave;nh lu&#7853;n. Tuy nhi&ecirc;n, ng&#432;&#7901;i d&ugrave;ng Jedi_Wolfy cho r&#7857;ng l&#7901;i khuy&ecirc;n c&#7911;a Musk d&agrave;nh cho c&#7897;ng &#273;&#7891;ng kh&ocirc;ng nh&#7845;t thi&#7871;t &#273;&uacute;ng v&#7899;i &ocirc;ng. \"Musk b&aacute;n nh&agrave; &#273;&#7875; l&agrave;m nh&#7919;ng th&#7913; l&#7899;n lao h&#417;n cho nh&acirc;n lo&#7841;i, nh&#432; nghi&ecirc;n c&#7913;u v&#7873; d&#7921; &aacute;n Sao Ho&#7843;. N&oacute; kh&aacute;c vi&#7879;c mua m&#7897;t ng&ocirc;i nh&agrave; &#273;&#7875; ch&#7889;t l&#7901;i\", m&#7897;t ng&#432;&#7901;i n&oacute;i.</p>\r\n\r\n<p>&#272;&acirc;y kh&ocirc;ng ph&#7843;i l&#7847;n &#273;&#7847;u Musk &#273;&#7873; c&#7853;p danh m&#7909;c &#273;&#7847;u t&#432; ti&#7873;n m&atilde; h&oacute;a c&#7911;a m&igrave;nh. Th&aacute;ng 5/2021, CEO Tesla kh&#7859;ng &#273;&#7883;nh &ocirc;ng \"ch&#432;a v&agrave; s&#7869; kh&ocirc;ng\" b&aacute;n b&#7845;t k&#7923; Dogecoin n&agrave;o. &#272;&acirc;y l&agrave; &#273;&#7891;ng ti&#7873;n m&atilde; h&oacute;a &#273;&#432;&#7907;c &ocirc;ng &#273;&#7863;c bi&#7879;t y&ecirc;u th&iacute;ch v&agrave; th&#432;&#7901;ng c&oacute; nhi&#7873;u bi&#7871;n &#273;&#7897;ng m&#7841;nh sau m&#7895;i th&ocirc;ng b&aacute;o c&oacute; li&ecirc;n quan c&#7911;a Musk.</p>\r\n\r\n<p>Hai th&aacute;ng sau, t&#7841;i h&#7897;i ngh&#7883; ti&#7873;n m&atilde; h&oacute;a The B Word, Musk ti&#7871;t l&#7897; ngo&agrave;i c&#7893; phi&#7871;u Tesla, &ocirc;ng c&ograve;n &#273;&#7847;u t&#432; v&agrave;o ba &#273;&#7891;ng g&#7891;m Bitcoin, Ethereum v&agrave; Dogecoin. Tr&#7843; l&#7901;i v&#7873; nh&#7919;ng c&aacute;o bu&#7897;c li&ecirc;n quan &#273;&#7871;n vi&#7879;c thao t&uacute;ng ti&#7873;n &#273;i&#7879;n t&#7917;, khi &#273;&oacute; Musk n&oacute;i: \"T&ocirc;i c&oacute; th&#7875; \'b&#417;m\' nh&#432;ng t&ocirc;i kh&ocirc;ng b&aacute;n ph&aacute; gi&aacute;. T&ocirc;i c&#361;ng kh&ocirc;ng ch&#7901; Bitcoin l&ecirc;n gi&aacute; cao &#273;&#7875; b&aacute;n, t&ocirc;i mu&#7889;n th&#7845;y Bitcoin th&agrave;nh c&ocirc;ng\".</p>', 'Admin', '/', 'posts', '7', null, '2022-05-04 02:08:32', '2022-05-04 02:08:32');
INSERT INTO `articles` VALUES ('9', 'Elon Musk ám chỉ danh tính cha đẻ Bitcoin', '<p>Danh t&iacute;nh c&#7911;a&nbsp;<a href=\"https://vnexpress.net/so-hoa/cha-de-bitcoin-thuoc-nhom-ty-phu-giau-nhat-the-gioi-4262634.html\" rel=\"dofollow\">Satoshi Nakamoto</a>, &#273;&#432;&#7907;c cho l&agrave; cha &#273;&#7867;&nbsp;<a href=\"https://vnexpress.net/chu-de/bitcoin-3112\" rel=\"dofollow\">Bitcoin</a>, v&#7851;n l&agrave; m&#7897;t trong nh&#7919;ng b&iacute; &#7849;n l&#7899;n nh&#7845;t c&#7911;a c&#7897;ng &#273;&#7891;ng ti&#7873;n m&atilde; h&oacute;a n&oacute;i ri&ecirc;ng v&agrave; gi&#7899;i c&ocirc;ng ngh&#7879; n&oacute;i chung. Nhi&#7873;u n&#259;m qua, c&#7897;ng &#273;&#7891;ng cho r&#7857;ng Nakamoto l&agrave; m&#7897;t nh&acirc;n v&#7853;t gi&#7845;u t&ecirc;n nh&#432;ng m&#7899;i &#273;&acirc;y, t&#7927; ph&uacute; Elon Musk n&ecirc;u gi&#7843; thuy&#7871;t r&#7857;ng cha &#273;&#7867; Bitcoin c&oacute; th&#7875; l&agrave; m&#7897;t t&#7893; ch&#7913;c.</p>\r\n\r\n<p>B&#7913;c &#7843;nh Musk &#273;&#259;ng g&#7891;m t&ecirc;n c&#7911;a b&#7889;n t&#7853;p &#273;o&agrave;n c&ocirc;ng ngh&#7879; n&#7893;i ti&#7871;ng l&agrave; Samsung, Toshiba, Nakamichi, Motorola. Khi gh&eacute;p c&aacute;c k&yacute; t&#7921; &#273;&#7847;u ti&ecirc;n c&#7911;a th&#432;&#417;ng hi&#7879;u s&#7869; ra d&ograve;ng ch&#7919; Satoshi Nakamoto. Tr&ecirc;n Twitter, b&agrave;i vi&#7871;t nhanh ch&oacute;ng thu h&uacute;t h&#417;n 350 ngh&igrave;n l&#432;&#7907;t th&iacute;ch, 49 ngh&igrave;n l&#432;&#7907;t retweet v&agrave; h&#417;n 8,5 ngh&igrave;n l&#432;&#7907;t b&igrave;nh lu&#7853;n sau 7 gi&#7901; &#273;&#259;ng t&#7843;i.</p>\r\n\r\n<p>B&#7913;c &#7843;nh &aacute;m ch&#7881; danh t&iacute;nh c&#7911;a cha &#273;&#7867; Bitcoin &#273;&#432;&#7907;c Elon Musk &#273;&#259;ng tr&ecirc;n Twitter c&aacute; nh&acirc;n h&ocirc;m 9/3.</p>\r\n\r\n<p>Theo&nbsp;<em>News18</em>, sau b&agrave;i vi&#7871;t c&#7911;a Musk, t&#7915; kh&oacute;a Satoshi Nakamoto l&#7853;p t&#7913;c n&#7893;i l&ecirc;n trong danh s&aacute;ch th&#7883;nh h&agrave;nh c&#7911;a Twitter. N&#7871;u x&eacute;t v&#7873; m&#7909;c &#273;&iacute;ch Bitcoin ra &#273;&#7901;i l&agrave; &#273;&#7875; t&igrave;m ki&#7871;m gi&#7843;i ph&aacute;p thanh to&aacute;n m&#7899;i, vi&#7879;c &#273;&#7891;ng ti&#7873;n s&#7889; n&agrave;y &#273;&#432;&#7907;c l&#7853;p ra b&#7903;i c&aacute;c t&#7853;p &#273;o&agrave;n c&ocirc;ng ngh&#7879; kh&ocirc;ng ph&#7843;i v&ocirc; l&yacute;.</p>\r\n\r\n<p><a href=\"https://vnexpress.net/chu-de/samsung-1606\" rel=\"dofollow\">Samsung</a>&nbsp;l&agrave; t&#7853;p &#273;o&agrave;n &#273;a qu&#7889;c gia c&#7911;a H&agrave;n Qu&#7889;c. Trong khi &#273;&oacute;&nbsp;<a href=\"https://vnexpress.net/so-hoa/toshiba-khong-con-san-xuat-may-tinh-4143977.html\" rel=\"dofollow\">Toshiba</a>&nbsp;l&agrave; h&atilde;ng c&ocirc;ng ngh&#7879; Nh&#7853;t B&#7843;n - n&#417;i &#273;&#432;&#7907;c xem l&agrave; qu&ecirc; h&#432;&#417;ng c&#7911;a Bitcoin. C&ograve;n&nbsp;<a href=\"https://vnexpress.net/so-hoa/nakamichi-my-mini-plus-loa-ti-hon-nhung-chat-2397161.html\" rel=\"dofollow\">Nakamichi</a>&nbsp;l&agrave; m&#7897;t th&#432;&#417;ng hi&#7879;u l&#7899;n v&#7873; loa c&#7911;a Nh&#7853;t B&#7843;n v&agrave; hi&#7879;n &#273;&atilde; &#273;&#432;&#7907;c b&aacute;n cho Nimble Holdings c&#7911;a Trung Qu&#7889;c.&nbsp;<a href=\"https://vnexpress.net/so-hoa/motorola-co-the-ra-smartphone-voi-camera-200-cham-4394261.html\" rel=\"dofollow\">Motorola</a>&nbsp;l&agrave; c&ocirc;ng ty vi&#7877;n th&ocirc;ng &#273;a qu&#7889;c gia c&oacute; ngu&#7891;n g&#7889;c t&#7915; M&#7929; v&agrave; hi&#7879;n thu&#7897;c v&#7873; Lenovo c&#7911;a Trung Qu&#7889;c.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&ocirc;ng lo&#7841;i tr&#7915; kh&#7843; n&#259;ng Elon Musk mu&#7889;n n&oacute;i ng&#432;&#7901;i t&#7841;o ra Bitcoin &#273;&#417;n gi&#7843;n &#273;&atilde; s&#7917; d&#7909;ng nh&#7919;ng ch&#7919; c&aacute;i &#273;&#7847;u trong c&aacute;c th&#432;&#417;ng hi&#7879;u tr&ecirc;n &#273;&#7875; gh&eacute;p l&#7841;i th&agrave;nh bi&#7879;t danh.</p>\r\n\r\n<p>&#272;&acirc;y kh&ocirc;ng ph&#7843;i l&#7847;n &#273;&#7847;u Musk nh&#7855;c &#273;&#7871;n danh t&iacute;nh cha &#273;&#7867; Bitcoin. Tr&#432;&#7899;c &#273;&oacute; v&agrave;o n&#259;m 2017, t&#7927; ph&uacute; g&#7889;c Nam Phi t&#7915;ng nhi&#7873;u l&#7847;n l&ecirc;n Twitter &#273;&#7875; b&aacute;c tin &#273;&#7891;n &ocirc;ng l&agrave; Satoshi Nakamoto. Cu&#7889;i n&#259;m ngo&aacute;i, trong bu&#7893;i ph&#7887;ng v&#7845;n v&#7899;i Lex Fridman - nh&agrave; nghi&ecirc;n c&#7913;u AI n&#7893;i ti&#7871;ng, Musk kh&#7859;ng &#273;&#7883;nh: \"T&ocirc;i bi&#7871;t ai &#273;&atilde; t&#7841;o ra Bitcoin, nh&#432;ng ch&#7855;c ch&#7855;n kh&ocirc;ng ph&#7843;i t&ocirc;i\".</p>\r\n\r\n<p>Bitcoin ra &#273;&#7901;i n&#259;m 2007 v&agrave; tr&#7903; th&agrave;nh &#273;&#7891;ng ti&#7873;n m&atilde; h&oacute;a c&oacute; gi&aacute; tr&#7883; nh&#7845;t hi&#7879;n nay. Ti&#7873;n m&atilde; h&oacute;a v&#7889;n &#273;&#432;&#7907;c &#273;&aacute;nh gi&aacute; cao nh&#7901; t&iacute;nh minh b&#7841;ch, &#7849;n danh v&agrave; phi t&#7853;p trung. Do &#273;&oacute;, n&#7871;u cha &#273;&#7867; th&#7853;t s&#7921; c&#7911;a Bitcoin l&#7897; di&#7879;n, nhi&#7873;u kh&#7843; n&#259;ng gi&aacute; tr&#7883; c&#7911;a &#273;&#7891;ng ti&#7873;n n&agrave;y s&#7869; gi&#7843;m gi&aacute; tr&#7883;.</p>', 'Admin', '/', 'posts', '8', null, '2022-05-04 02:09:31', '2022-05-04 02:09:31');
INSERT INTO `articles` VALUES ('11', 'Lóng lánh', '<p>sdfd</p>', 'Quản trị viên', 'https://demo.anthinhphatjsc.com', 'pages', '8', null, '2022-05-05 03:05:29', '2022-05-05 03:05:29');
INSERT INTO `articles` VALUES ('12', 'dfdf', '<p>dfdfdf</p>', 'Quản trị viên', 'https://demo.anthinhphatjsc.com', 'pages', '9', null, '2022-05-05 03:08:02', '2022-05-05 03:08:02');

-- ----------------------------
-- Table structure for banner_groups
-- ----------------------------
DROP TABLE IF EXISTS `banner_groups`;
CREATE TABLE `banner_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of banner_groups
-- ----------------------------
INSERT INTO `banner_groups` VALUES ('1', 'Banner đầu trang', 'banner1', null, '2022-04-25 07:09:27', '2022-04-25 07:09:27');
INSERT INTO `banner_groups` VALUES ('2', 'Banner đầu trang', 'banner1', null, '2022-04-25 07:10:23', '2022-04-25 07:10:23');
INSERT INTO `banner_groups` VALUES ('3', 'Banner đầu trang', 'banner1', null, '2022-04-25 07:11:48', '2022-04-25 07:11:48');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('1', '1', 'Banner đầu trang', 'images/FQJHMWOq9g9iAjCYch82iukdLySh7fZgGdYBBg55.jpg', '12', 'Banner đầu trang', null, null, '2022-04-25 07:19:56', '2022-04-25 07:32:25');

-- ----------------------------
-- Table structure for blocks
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint(20) NOT NULL,
  `widget_id` bigint(20) NOT NULL,
  `widget_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of blocks
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '3', '0', 'thao', '<p>Test comment cái xem nào</p>', '1', '2022-04-25 09:26:03', '2022-04-25 02:41:21');
INSERT INTO `comments` VALUES ('2', '3', '0', 'thảo', '<p>test test test</p>', '0', '2022-04-25 04:44:45', '2022-04-25 04:44:45');
INSERT INTO `comments` VALUES ('3', '2', '0', 'thảo', '<p>Bài viết hay quá xin đừng ra bài nữa ^^</p>', '0', '2022-04-25 04:47:09', '2022-04-25 04:47:09');
INSERT INTO `comments` VALUES ('4', '9', '0', 'Khách hàng', '<p>Thế danh tính cha đẻ của bitcoin là ai thế. Không thấy nói gì đến cả ???</p>', '0', '2022-05-04 04:03:50', '2022-05-04 04:03:50');

-- ----------------------------
-- Table structure for company_information
-- ----------------------------
DROP TABLE IF EXISTS `company_information`;
CREATE TABLE `company_information` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `company_information_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_information
-- ----------------------------
INSERT INTO `company_information` VALUES ('1', 'Tên công ty', 'An Thịnh Phát', '2022-04-22 14:28:28', '2022-04-22 14:28:30');
INSERT INTO `company_information` VALUES ('2', 'Mã số thuế', '1321050712', '2022-04-22 14:29:09', '2022-04-22 14:29:12');
INSERT INTO `company_information` VALUES ('3', 'Địa chỉ', 'Số 16 ngõ 18 Nguyễn Khuyến Hà Đông Hà Nội', '2022-04-22 14:33:10', '2022-04-22 14:33:12');

-- ----------------------------
-- Table structure for dynamic_table_cells
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_table_cells`;
CREATE TABLE `dynamic_table_cells` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` bigint(20) NOT NULL,
  `column_id` bigint(20) NOT NULL,
  `row_id` bigint(20) NOT NULL,
  `cell_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dynamic_table_cells
-- ----------------------------
INSERT INTO `dynamic_table_cells` VALUES ('11', '2', '6', '3', 'test', '2022-04-28 09:40:57', '2022-04-28 09:40:57');
INSERT INTO `dynamic_table_cells` VALUES ('23', '1', '2', '6', 'Nhập dữ liệu', '2022-05-06 04:05:50', '2022-05-06 04:05:50');
INSERT INTO `dynamic_table_cells` VALUES ('24', '1', '4', '6', 'Nhập dữ liệu', '2022-05-06 04:05:50', '2022-05-06 04:05:50');
INSERT INTO `dynamic_table_cells` VALUES ('25', '1', '10', '6', 'Nhập dữ liệu', '2022-05-06 04:05:50', '2022-05-06 04:06:22');
INSERT INTO `dynamic_table_cells` VALUES ('26', '2', '11', '3', 'Nhập dữ liệu', '2022-05-06 04:07:52', '2022-05-06 04:07:52');

-- ----------------------------
-- Table structure for dynamic_table_columns
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_table_columns`;
CREATE TABLE `dynamic_table_columns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dynamic_table_columns
-- ----------------------------
INSERT INTO `dynamic_table_columns` VALUES ('2', '1', 'Tên chi nhánh', null, '2022-04-28 04:28:43', '2022-04-28 09:07:22');
INSERT INTO `dynamic_table_columns` VALUES ('4', '1', 'Địa chỉ', null, '2022-04-28 04:31:52', '2022-04-28 04:31:52');
INSERT INTO `dynamic_table_columns` VALUES ('6', '2', 'test', null, '2022-04-28 09:40:06', '2022-04-28 09:40:06');
INSERT INTO `dynamic_table_columns` VALUES ('10', '1', 'Số điện thoại', null, '2022-05-06 04:05:01', '2022-05-06 04:05:01');
INSERT INTO `dynamic_table_columns` VALUES ('11', '2', '1', null, '2022-05-06 04:07:52', '2022-05-06 04:07:52');

-- ----------------------------
-- Table structure for dynamic_table_rows
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_table_rows`;
CREATE TABLE `dynamic_table_rows` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` bigint(20) NOT NULL,
  `column_id` bigint(20) DEFAULT NULL,
  `row_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dynamic_table_rows
-- ----------------------------
INSERT INTO `dynamic_table_rows` VALUES ('3', '2', null, 'test', '2022-04-28 09:40:57', '2022-04-28 09:40:57');
INSERT INTO `dynamic_table_rows` VALUES ('5', '4', null, 'test', '2022-05-06 03:59:40', '2022-05-06 03:59:40');
INSERT INTO `dynamic_table_rows` VALUES ('6', '1', null, 'test', '2022-05-06 04:05:50', '2022-05-06 04:05:50');

-- ----------------------------
-- Table structure for dynamic_tables
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_tables`;
CREATE TABLE `dynamic_tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dynamic_tables
-- ----------------------------
INSERT INTO `dynamic_tables` VALUES ('1', 'Chi nhánh', 'Bảng lưu thông tin chi nhánh', '2022-04-22 14:38:36', '2022-04-22 14:38:38');
INSERT INTO `dynamic_tables` VALUES ('2', 'Đối tác', 'Bảng lưu thông tin cộng tác viên', '2022-04-22 14:39:27', '2022-04-22 14:39:30');
INSERT INTO `dynamic_tables` VALUES ('3', 'Nhân viên', 'Bảng lưu thông tin nhân viên ', '2022-04-22 14:54:54', '2022-04-22 14:54:56');
INSERT INTO `dynamic_tables` VALUES ('4', 'Khách hàng', null, '2022-04-28 06:57:15', '2022-04-28 06:57:15');

-- ----------------------------
-- Table structure for embed_scripts
-- ----------------------------
DROP TABLE IF EXISTS `embed_scripts`;
CREATE TABLE `embed_scripts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `embed_scripts_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of embed_scripts
-- ----------------------------
INSERT INTO `embed_scripts` VALUES ('1', '1', '0', 'test', 'test', '2022-04-22 04:29:31', '2022-04-22 04:29:31');
INSERT INTO `embed_scripts` VALUES ('2', '2', '0', 'tets', 'test', '2022-04-22 04:29:46', '2022-04-22 04:29:46');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for form_attributes
-- ----------------------------
DROP TABLE IF EXISTS `form_attributes`;
CREATE TABLE `form_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of form_attributes
-- ----------------------------
INSERT INTO `form_attributes` VALUES ('1', '1', 'Tên', null, '2022-04-28 07:46:11', '2022-04-28 07:46:11');
INSERT INTO `form_attributes` VALUES ('2', '1', 'email', null, '2022-04-28 07:56:06', '2022-04-28 07:56:06');
INSERT INTO `form_attributes` VALUES ('3', '1', 'số điện thoại', null, '2022-04-28 07:56:22', '2022-04-28 07:56:22');
INSERT INTO `form_attributes` VALUES ('4', '1', 'Địa chỉ', null, '2022-04-28 07:56:30', '2022-04-28 07:56:30');
INSERT INTO `form_attributes` VALUES ('5', '2', 'địa  chỉ', null, '2022-05-06 05:11:17', '2022-05-06 05:11:17');
INSERT INTO `form_attributes` VALUES ('6', '2', 'số điện thoại', null, '2022-05-06 05:11:48', '2022-05-06 05:11:48');

-- ----------------------------
-- Table structure for form_data
-- ----------------------------
DROP TABLE IF EXISTS `form_data`;
CREATE TABLE `form_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) DEFAULT NULL,
  `form_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of form_data
-- ----------------------------
INSERT INTO `form_data` VALUES ('1', '1', null, 'Form thông tin cá nhân', '2022-04-29 11:36:01', '2022-04-29 11:36:03');
INSERT INTO `form_data` VALUES ('2', '1', null, 'Form thông tin cá nhân', '2022-04-29 16:02:49', '2022-04-29 16:02:52');

-- ----------------------------
-- Table structure for form_values
-- ----------------------------
DROP TABLE IF EXISTS `form_values`;
CREATE TABLE `form_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `data_id` bigint(20) NOT NULL,
  `form_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of form_values
-- ----------------------------
INSERT INTO `form_values` VALUES ('1', '1', '1', '1', 'Form thông tin cá nhân', 'Thảo', '2022-04-29 11:36:42', '2022-04-29 11:36:45');
INSERT INTO `form_values` VALUES ('2', '1', '2', '1', 'Form thông tin cá nhân', 'test 1', '2022-04-29 15:39:24', '2022-04-29 15:39:27');
INSERT INTO `form_values` VALUES ('3', '1', '3', '1', 'ff', 'fff', '2022-04-29 15:39:46', '2022-04-29 15:39:48');
INSERT INTO `form_values` VALUES ('4', '1', '4', '1', '11', '11', '2022-04-29 15:39:58', '2022-04-29 15:40:01');
INSERT INTO `form_values` VALUES ('5', '1', '1', '2', '1', '1', '2022-04-29 16:04:12', '2022-04-29 16:04:26');
INSERT INTO `form_values` VALUES ('6', '1', '2', '2', '2', '1', '2022-04-29 16:04:15', '2022-04-29 16:04:29');
INSERT INTO `form_values` VALUES ('7', '1', '3', '2', '3', '1', '2022-04-29 16:04:18', '2022-04-29 16:04:31');
INSERT INTO `form_values` VALUES ('8', '1', '4', '2', '1', '1', '2022-04-29 16:04:22', '2022-04-29 16:04:34');

-- ----------------------------
-- Table structure for forms
-- ----------------------------
DROP TABLE IF EXISTS `forms`;
CREATE TABLE `forms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of forms
-- ----------------------------
INSERT INTO `forms` VALUES ('1', 'Fom thông tin cá nhân', null, '2022-04-28 07:08:16', '2022-04-28 07:08:16');
INSERT INTO `forms` VALUES ('2', 'Form liên hệ', null, '2022-04-28 08:02:38', '2022-04-28 08:02:38');
INSERT INTO `forms` VALUES ('3', 'Form mua hàng', 'Lưu thông tin mua hàng', '2022-04-28 08:05:30', '2022-04-28 08:05:30');
INSERT INTO `forms` VALUES ('4', 'Thảo', null, '2022-05-06 05:10:46', '2022-05-06 05:10:46');
INSERT INTO `forms` VALUES ('5', 'địa  chỉ', 'trường chinh', '2022-05-06 05:11:29', '2022-05-06 05:11:29');

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `galleryable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleryable_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES ('1', 'Album1', 'ảnh bài viết', '1', 'posts', '3', '2022-04-25 02:55:04', '2022-04-25 02:55:04');

-- ----------------------------
-- Table structure for gallery_images
-- ----------------------------
DROP TABLE IF EXISTS `gallery_images`;
CREATE TABLE `gallery_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gallery_images
-- ----------------------------
INSERT INTO `gallery_images` VALUES ('1', '1', 'images/FG5CDMKpFmqVx9b9TaWYEy96MrCmcAvHPt9OvpwV.jpg', 'Quỳnh Lê', '0', '2022-04-25 04:04:57', '2022-04-25 04:32:24');

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `languages_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of languages
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `menuable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menuable_id` bigint(20) unsigned DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL,
  `menu_position_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `menu_menuable_type_menuable_id_index` (`menuable_type`,`menuable_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Home', null, null, null, '/home', '0', '0', '1', '2022-04-22 03:55:05', '2022-04-22 03:55:05');
INSERT INTO `menu` VALUES ('2', 'Bài viết', null, null, null, '/bai-viet', '0', '0', '1', '2022-04-22 04:03:01', '2022-05-04 08:43:52');

-- ----------------------------
-- Table structure for menu_positions
-- ----------------------------
DROP TABLE IF EXISTS `menu_positions`;
CREATE TABLE `menu_positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu_positions
-- ----------------------------
INSERT INTO `menu_positions` VALUES ('1', 'Menu đầu trang', 'menu-dau-trang', null, '2022-04-22 03:53:28', '2022-04-22 03:53:28');

-- ----------------------------
-- Table structure for menu_types
-- ----------------------------
DROP TABLE IF EXISTS `menu_types`;
CREATE TABLE `menu_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu_types
-- ----------------------------

-- ----------------------------
-- Table structure for meta_data
-- ----------------------------
DROP TABLE IF EXISTS `meta_data`;
CREATE TABLE `meta_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robots` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `more` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaable_id` bigint(20) NOT NULL,
  `metaable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of meta_data
-- ----------------------------
INSERT INTO `meta_data` VALUES ('1', 'Tag: Lamborghini', null, null, null, null, null, '4', 'post_tags', '2022-04-25 01:34:49', '2022-04-25 01:34:49');
INSERT INTO `meta_data` VALUES ('2', 'Xe', 'bbbb', null, null, null, null, '2', 'post_categories', '2022-04-25 01:49:24', '2022-05-06 04:13:30');
INSERT INTO `meta_data` VALUES ('3', 'Lamborghini Urus - siêu SUV giá từ 13,1 tỷ đồng', 'Mẫu SUV mạnh 650 mã lực của Lamborghini được phân phối chính hãng với giá bán rẻ hơn nhiều các đơn vị tư nhân (khoảng hơn 20 tỷ đồng).', null, null, null, null, '3', 'posts', '2022-04-25 02:00:06', '2022-04-25 02:00:06');
INSERT INTO `meta_data` VALUES ('4', 'Lamborghini Urus - siêu SUV giá từ 13,1 tỷ đồng', 'Mẫu SUV mạnh 650 mã lực của Lamborghini được phân phối chính hãng với giá bán rẻ hơn nhiều các đơn vị tư nhân (khoảng hơn 20 tỷ đồng).', null, null, null, null, '4', 'posts', '2022-04-25 02:00:25', '2022-04-25 02:00:25');
INSERT INTO `meta_data` VALUES ('5', 'Xe máy Honda kênh giá hàng chục triệu đồng', 'Xe máy Honda kênh giá hàng chục triệu đồng', null, null, null, null, '5', 'posts', '2022-04-25 02:04:31', '2022-04-25 02:04:31');
INSERT INTO `meta_data` VALUES ('6', 'Lamborghini', 'Tag: Lamborghini', null, null, null, null, '5', 'post_tags', '2022-04-25 02:13:14', '2022-04-25 02:13:14');
INSERT INTO `meta_data` VALUES ('7', 'Trang giới thiệu sản phẩm tới người tiêu dùng', 'test cái xem nào ', 'Đặc vụ bái thù', 'gg', 'gg', null, '3', 'pages', '2022-04-25 07:47:53', '2022-04-25 08:11:31');
INSERT INTO `meta_data` VALUES ('8', 'Công nghệ', 'cczxcx', null, null, null, null, '3', 'post_categories', '2022-05-04 02:06:36', '2022-05-06 04:23:38');
INSERT INTO `meta_data` VALUES ('9', 'Elon Musk chế nhạo Warren Buffett về Bitcoin', 'Elon Musk cho rằng dù chỉ trích và đánh giá thấp tiền điện tử, Buffett lại liên tục nhắc đến từ \"Bitcoin\" trước các cổ đông.', null, null, null, null, '6', 'posts', '2022-05-04 02:07:37', '2022-05-04 02:07:37');
INSERT INTO `meta_data` VALUES ('10', 'Elon Musk nói sẽ không bán Bitcoin', 'Tỷ phú Elon Musk nói ông vẫn giữ nguyên và sẽ không bán những đồng tiền mã hóa đang sở hữu là Bitcoin, Ethereum và Doge.', null, null, null, null, '7', 'posts', '2022-05-04 02:08:32', '2022-05-04 02:08:32');
INSERT INTO `meta_data` VALUES ('11', 'Elon Musk ám chỉ danh tính cha đẻ Bitcoin', 'Bức ảnh đề cập đến tên gọi Satoshi Nakamoto được Elon Musk đăng lên Twitter ngày 9/3 và đang lan truyền khắp mạng xã hội.', null, null, null, null, '8', 'posts', '2022-05-04 02:09:31', '2022-05-04 02:09:31');
INSERT INTO `meta_data` VALUES ('12', 'Công nghệ', 'Tag: Công nghệ', null, null, null, null, '6', 'post_tags', '2022-05-04 03:13:04', '2022-05-04 03:13:04');
INSERT INTO `meta_data` VALUES ('13', 'hoa anh đào', 'dfdkfkdfdkfdfkdlkff', null, null, null, null, '4', 'pages', '2022-05-05 01:17:40', '2022-05-05 01:17:40');
INSERT INTO `meta_data` VALUES ('14', 'Lóng lánh', 'sdfd', null, null, null, null, '8', 'pages', '2022-05-05 03:05:29', '2022-05-05 03:05:29');
INSERT INTO `meta_data` VALUES ('15', 'dfdf', 'dfdfdf', null, null, null, null, '9', 'pages', '2022-05-05 03:08:02', '2022-05-05 03:08:02');
INSERT INTO `meta_data` VALUES ('16', '@', 'dsdhjjjjjjjjjjjsjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', null, null, null, null, '12', 'pages', '2022-05-06 02:01:20', '2022-05-06 02:01:20');
INSERT INTO `meta_data` VALUES ('17', 'xe', '', null, null, null, null, '4', 'post_categories', '2022-05-06 04:16:07', '2022-05-06 04:16:07');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2022_01_22_020458_create_permission_tables', '1');
INSERT INTO `migrations` VALUES ('5', '2022_04_21_025139_create_app_settings_table', '1');
INSERT INTO `migrations` VALUES ('6', '2022_04_21_025725_create_embed_scripts_table', '1');
INSERT INTO `migrations` VALUES ('7', '2022_04_21_025937_create_languages_table', '1');
INSERT INTO `migrations` VALUES ('8', '2022_04_21_030119_create_company_information_table', '1');
INSERT INTO `migrations` VALUES ('9', '2022_04_21_030242_create_dynamic_tables_table', '1');
INSERT INTO `migrations` VALUES ('10', '2022_04_21_030429_create_dynamic_table_columns_table', '1');
INSERT INTO `migrations` VALUES ('11', '2022_04_21_030622_create_dynamic_table_rows_table', '1');
INSERT INTO `migrations` VALUES ('12', '2022_04_21_043932_create_dynamic_table_cells_table', '1');
INSERT INTO `migrations` VALUES ('13', '2022_04_21_044328_create_banner_groups_table', '1');
INSERT INTO `migrations` VALUES ('14', '2022_04_21_044559_create_banners_table', '1');
INSERT INTO `migrations` VALUES ('15', '2022_04_21_045145_create_menu_types_table', '1');
INSERT INTO `migrations` VALUES ('16', '2022_04_21_045343_create_menu_positions_table', '1');
INSERT INTO `migrations` VALUES ('17', '2022_04_21_045503_create_menu_table', '1');
INSERT INTO `migrations` VALUES ('18', '2022_04_21_064403_create_forms_table', '1');
INSERT INTO `migrations` VALUES ('19', '2022_04_21_064542_create_form_attributes_table', '1');
INSERT INTO `migrations` VALUES ('20', '2022_04_21_064623_create_form_data_table', '1');
INSERT INTO `migrations` VALUES ('21', '2022_04_21_064656_create_form_values_table', '1');
INSERT INTO `migrations` VALUES ('22', '2022_04_21_064719_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('23', '2022_04_21_064753_create_widgets_table', '1');
INSERT INTO `migrations` VALUES ('24', '2022_04_21_065846_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('25', '2022_04_21_070323_create_post_categories_table', '1');
INSERT INTO `migrations` VALUES ('26', '2022_04_21_070848_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('27', '2022_04_21_073631_create_comments_table', '1');
INSERT INTO `migrations` VALUES ('28', '2022_04_21_073945_create_post_tags_table', '1');
INSERT INTO `migrations` VALUES ('29', '2022_04_21_074053_create_post_tag_mapping_table', '1');
INSERT INTO `migrations` VALUES ('30', '2022_04_21_074206_create_meta_data_table', '1');
INSERT INTO `migrations` VALUES ('31', '2022_04_21_074620_create_structure_data_table', '1');
INSERT INTO `migrations` VALUES ('32', '2022_04_21_075213_create_related_posts_table', '1');
INSERT INTO `migrations` VALUES ('33', '2022_04_21_075443_create_blocks_table', '1');
INSERT INTO `migrations` VALUES ('34', '2022_04_21_075630_create_galleries_table', '1');
INSERT INTO `migrations` VALUES ('35', '2022_04_21_075914_create_gallery_images_table', '1');

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES ('1', 'App\\User', '1');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('3', 'Trang giới thiệu', 'gioi-thieu-san-pham', '1', '2022-04-25 07:47:53', '2022-05-05 01:09:17');
INSERT INTO `pages` VALUES ('4', 'jkdssfdlkfkdfk@vfdkfdfkfdkffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 'nhatban.com.vn', '1', '2022-05-05 01:17:40', '2022-05-05 01:18:09');
INSERT INTO `pages` VALUES ('8', 'Lung linh', 'lung-linh', '1', '2022-05-05 03:05:29', '2022-05-05 03:05:29');
INSERT INTO `pages` VALUES ('9', 'uung1', 'uung1', '1', '2022-05-05 03:08:02', '2022-05-06 04:26:28');
INSERT INTO `pages` VALUES ('12', '@@@@', 'at-at-at-at', '1', '2022-05-06 02:01:20', '2022-05-06 02:01:46');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for post_categories
-- ----------------------------
DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE `post_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of post_categories
-- ----------------------------
INSERT INTO `post_categories` VALUES ('3', 'Công nghệ', 'cong-nghe', '0', '1', null, null, null, '0', '2022-05-04 02:06:36', '2022-05-04 02:06:36');
INSERT INTO `post_categories` VALUES ('4', 'xe', 'xe', '0', '1', null, null, null, '0', '2022-05-06 04:16:07', '2022-05-06 04:16:07');

-- ----------------------------
-- Table structure for post_tag_mapping
-- ----------------------------
DROP TABLE IF EXISTS `post_tag_mapping`;
CREATE TABLE `post_tag_mapping` (
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of post_tag_mapping
-- ----------------------------
INSERT INTO `post_tag_mapping` VALUES ('3', '5');
INSERT INTO `post_tag_mapping` VALUES ('8', '6');

-- ----------------------------
-- Table structure for post_tags
-- ----------------------------
DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of post_tags
-- ----------------------------
INSERT INTO `post_tags` VALUES ('5', 'Lamborghini', 'lamborghini', '2022-04-25 02:13:14', '2022-04-25 02:13:14');
INSERT INTO `post_tags` VALUES ('6', 'Công nghệ', 'cong-nghe', '2022-05-04 03:13:04', '2022-05-04 03:13:04');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('3', 'Lamborghini Urus - siêu SUV giá từ 13,1 tỷ đồng', 'lamborghini-urus-sieu-suv-gia-tu-131-ty-dong', '2', 'xe', '1', '0', '<p>Mẫu SUV mạnh 650 mã lực của Lamborghini được phân phối chính hãng với giá bán rẻ hơn nhiều các đơn vị tư nhân (khoảng hơn 20 tỷ đồng).</p>', 'images/IeqsRUtFdf20fBzU6rbWNKK1mMP0e6ydbQLUddY6.jpg', 'Quỳnh Lê', '2022-04-25 02:00:06', '2022-04-25 02:00:06');
INSERT INTO `posts` VALUES ('4', 'Lamborghini Urus - siêu SUV giá từ 13,1 tỷ đồng', 'lamborghini-urus-sieu-suv-gia-tu-131-ty-dong', '2', 'xe', '1', '2', '<p>Mẫu SUV mạnh 650 mã lực của Lamborghini được phân phối chính hãng với giá bán rẻ hơn nhiều các đơn vị tư nhân (khoảng hơn 20 tỷ đồng).</p>', 'images/Ef4Btcy66bfMfBh18VIgRylRinFPZ1HuOSlHm0PI.jpg', 'Quỳnh Lê', '2022-04-25 02:00:25', '2022-05-06 04:19:20');
INSERT INTO `posts` VALUES ('5', 'Xe máy Honda kênh giá hàng chục triệu đồng', 'xe-may-honda-kenh-gia-hang-chuc-trieu-dong', '2', 'xe', '1', '5', '<p>Xe máy Honda kênh giá hàng chục triệu đồng<p>', 'images/RTfSDGFMtAZamFfhFiwKbnOGRnY7qBQ4T0zcyF4u.jpg', 'Quỳnh Lê', '2022-04-25 02:04:31', '2022-05-06 04:19:18');
INSERT INTO `posts` VALUES ('6', 'Elon Musk chế nhạo Warren Buffett về Bitcoin', 'elon-musk-che-nhao-warren-buffett-ve-bitcoin', '3', 'cong-nghe', '1', '2', '<p>Elon Musk cho rằng dù chỉ trích và đánh giá thấp tiền điện tử, Buffett lại liên tục nhắc đến từ &quot;Bitcoin&quot; trước các cổ đông.</p>', null, null, '2022-05-04 02:07:37', '2022-05-06 04:22:17');
INSERT INTO `posts` VALUES ('7', 'Elon Musk nói sẽ không bán Bitcoin', 'elon-musk-noi-se-khong-ban-bitcoin', '3', 'cong-nghe', '1', '1', '<p>Tỷ phú Elon Musk nói ông vẫn giữ nguyên và sẽ không bán những đồng tiền mã hóa đang sở hữu là Bitcoin, Ethereum và Doge.</p>', 'images/mxyxdGcOA4zn0ZwKNABvNg6fNlQr3hMLZR7qYNl5.jpg', 'Elon Musk nói sẽ không bán Bitcoin', '2022-05-04 02:08:32', '2022-05-06 04:18:30');
INSERT INTO `posts` VALUES ('8', 'Elon Musk ám chỉ danh tính cha đẻ Bitcoin', 'elon-musk-am-chi-danh-tinh-cha-de-bitcoin', '3', 'cong-nghe', '0', '-1', '<p>Bức ảnh đề cập đến tên gọi Satoshi Nakamoto được Elon Musk đăng lên Twitter ngày 9/3 và đang lan truyền khắp mạng xã hội.</p>', 'images/nbkcBvSguZ7Jv9qYYSJZmrD2ws1UUYioKS9D7YiN.jpg', 'Elon Musk ám chỉ danh tính cha đẻ Bitcoin', '2022-05-04 02:09:31', '2022-05-06 04:22:29');

-- ----------------------------
-- Table structure for related_posts
-- ----------------------------
DROP TABLE IF EXISTS `related_posts`;
CREATE TABLE `related_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `related_id` bigint(20) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of related_posts
-- ----------------------------
INSERT INTO `related_posts` VALUES ('1', '8', '6', '0', '2022-05-04 16:10:59', '2022-05-04 16:11:01');
INSERT INTO `related_posts` VALUES ('2', '8', '7', '0', '2022-05-04 16:11:12', '2022-05-04 16:11:14');
INSERT INTO `related_posts` VALUES ('3', '8', '5', '0', '2022-05-04 16:11:24', '2022-05-04 16:11:26');
INSERT INTO `related_posts` VALUES ('4', '8', '4', '0', '2022-05-04 16:11:41', '2022-05-04 16:11:43');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Admin', 'web', '2022-04-22 03:52:48', '2022-04-22 03:52:48');

-- ----------------------------
-- Table structure for structure_data
-- ----------------------------
DROP TABLE IF EXISTS `structure_data`;
CREATE TABLE `structure_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `structureble_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structureble_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of structure_data
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Admin', 'admin', null, '$2y$10$7sDOI4LOhdKAnz7G.o1BjeBaiDiQbAq1PLUc03D/CKHGpXzrHS06G', null, '2022-04-22 03:52:48', '2022-04-22 03:52:48');

-- ----------------------------
-- Table structure for widgets
-- ----------------------------
DROP TABLE IF EXISTS `widgets`;
CREATE TABLE `widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(4) DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `js` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of widgets
-- ----------------------------
INSERT INTO `widgets` VALUES ('1', 'form1', 'đây là widget 1 123', '<div class=\"content-comment\">\n<p><a class=\"nickname\" href=\"https://my.vnexpress.net/users/feed/1005357000\" target=\"_blank\"><strong>Messi : Vua Bóng Vàng &amp; Giày Vàng Fifa</strong> </a></p>\n\n<div class=\"info_avata_cmt\"><a class=\"avata_coment\" href=\"https://my.vnexpress.net/users/feed/1005357000\" target=\"_blank\"><img alt=\"Messi : Vua Bóng Vàng &amp; Giày Vàng Fifa\" src=\"https://a1.vnecdn.net/s71852649568883619218.jpg?w=60&amp;h=60&amp;s=ZqmaZHdYMnuIlGE3R6ZxHA\" /></a>\n\n<p><a href=\"https://my.vnexpress.net/users/feed/1005357000\" target=\"_blank\"><strong>Messi : Vua Bóng Vàng &amp; Giày Vàng Fifa</strong></a> 9,920 ý kiến</p>\n\n<p><a href=\"https://vnexpress.net/inter-gieo-sau-cho-mourinho-4455209.html?commentid=45055083\">2 thầy trò cuối mùa, người hạng 7, người hạng 6 kaka</a></p>\n\n<p><strong><a href=\"https://vnexpress.net/inter-gieo-sau-cho-mourinho-4455209.html?commentid=45055083\">Inter gieo sầu cho Mourinho</a></strong></p>\n</div>\nNgười Việt ta cần thông thái hơn, đừng để các đại lí dắt mũi nữa. Xe Su và Ya cũng ngon lành, sao phải cứ chạy theo số đông, để rùi mất thêm tiền?\n\n<p>&nbsp;</p>\n\n<p><a class=\"link_thich \" href=\"javascript:;\" id=\"45032800\" rel=\"45032800\">242</a><a class=\"link_reply\" href=\"javascript:;\" id=\"45032800\" rel=\"45032800\">Trả lời</a><a class=\"share_cmt_fb\" href=\"javascript:;\" rel=\"45032800\">Chia sẻ</a>14:36 22/4<a class=\"report-comment\" href=\"javascript:;\" rel=\"45032800\">Vi phạm</a></p>\n</div>', '0', null, null, '2022-04-25 07:40:42', '2022-04-25 07:41:09');
