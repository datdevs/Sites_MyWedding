-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th4 05, 2021 lúc 04:24 PM
-- Phiên bản máy phục vụ: 5.7.26
-- Phiên bản PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Cơ sở dữ liệu: `vuj_cddt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors`
--

CREATE TABLE `vuj_authors` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `pre_check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pre_last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_authors`
--

INSERT INTO `vuj_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'images|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '32ea7a526b5b1eb78812b4ac1553316d', 1617614499, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors_config`
--

CREATE TABLE `vuj_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `begintime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors_module`
--

CREATE TABLE `vuj_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_authors_module`
--

INSERT INTO `vuj_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '634392609dcefc4fe05237dd650533c8'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, 'cb9fab0a1baee6cd22004117972875e5'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'c89b593873d1c1cb0e79541353b6453d'),
(4, 'database', 'mod_database', 4, 1, 0, 0, 'd759d156fdee932dea25792542ef67fd'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, 'ac337633e126b25f15c3c312ad5a0145'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, '9fa813e8f3ec42104f7ffacd15113204'),
(7, 'language', 'mod_language', 7, 1, 1, 0, 'aa788782e3ccce044d457a44ec4e4106'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '9ae4bd513c4e1f972ea4610f9697dd2e'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '016c0d11c9c1804fe8d56c64fa9fa520'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '2ac1d8ccf4ec0fd8ac5146a867e27744'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '5f00fdbf87d6617f9e29fc249762ae22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors_oauth`
--

CREATE TABLE `vuj_authors_oauth` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_banners_click`
--

CREATE TABLE `vuj_banners_click` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_banners_plans`
--

CREATE TABLE `vuj_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_banners_plans`
--

INSERT INTO `vuj_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1, 1, 'images', '', 0),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1, 1, 'images', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_banners_rows`
--

CREATE TABLE `vuj_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_banners_rows`
--

INSERT INTO `vuj_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1617006242, 1617006242, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 1, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', '', 1617006242, 1617006242, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_config`
--

CREATE TABLE `vuj_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_config`
--

INSERT INTO `vuj_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'define', 'nv_gfx_num', '5'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '7'),
('sys', 'global', 'file_allowed_ext', 'images'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '8388608'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1617088133'),
('sys', 'global', 'captcha_type', '0'),
('sys', 'global', 'version', '4.4.02'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', '6LfQ4tIZAAAAAFOuc15TBjSKSPHxoLkvmoAfd-3B'),
('sys', 'global', 'recaptcha_secretkey', 'Did3Neu8FktWYcDm9YCAQioqubLBYvwEFmODkVeYG7-9NSmOJ5SCAm8RrMJg4I35'),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'define', 'nv_gfx_width', '100'),
('sys', 'define', 'nv_gfx_height', '26'),
('sys', 'define', 'nv_max_width', '5000'),
('sys', 'define', 'nv_max_height', '5000'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '1'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Chi Dat &amp; Dieu Trang - Wedding Day'),
('vi', 'global', 'site_logo', ''),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', ''),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r'),
('vi', 'global', 'site_theme', 'Wedding'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', ''),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'home'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1617614715'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'contact', 'bodytext', ''),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'slider', 'next_execute', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'you@example.com'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'you@example.com'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'cddt'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_n1013s'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'NCGNWKEfTGRmBwI-KeTpyA,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_cookies`
--

CREATE TABLE `vuj_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_counter`
--

CREATE TABLE `vuj_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_counter`
--

INSERT INTO `vuj_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1617614097, 0),
('total', 'hits', 1617614097, 79, 79),
('year', '2021', 1617614097, 79, 79),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('year', '2029', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 1617186462, 47, 47),
('month', 'Apr', 1617614097, 32, 32),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 1617271923, 10, 10),
('day', '02', 1617359446, 12, 12),
('day', '03', 0, 0, 0),
('day', '04', 0, 0, 0),
('day', '05', 1617614097, 10, 10),
('day', '06', 0, 0, 0),
('day', '07', 0, 0, 0),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 0, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 0, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 1617024429, 0, 0),
('day', '30', 1617099730, 0, 0),
('day', '31', 1617186462, 0, 0),
('dayofweek', 'Sunday', 0, 0, 0),
('dayofweek', 'Monday', 1617614097, 25, 25),
('dayofweek', 'Tuesday', 1617099730, 16, 16),
('dayofweek', 'Wednesday', 1617186462, 16, 16),
('dayofweek', 'Thursday', 1617271923, 10, 10),
('dayofweek', 'Friday', 1617359446, 12, 12),
('dayofweek', 'Saturday', 0, 0, 0),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 1617587646, 1, 1),
('hour', '09', 1617589893, 1, 1),
('hour', '10', 1617593537, 2, 2),
('hour', '11', 1617597196, 2, 2),
('hour', '12', 1617253270, 0, 0),
('hour', '13', 1617346484, 0, 0),
('hour', '14', 1617608663, 2, 2),
('hour', '15', 1617610538, 1, 1),
('hour', '16', 1617614097, 1, 1),
('hour', '17', 1617359446, 0, 0),
('hour', '18', 0, 0, 0),
('hour', '19', 1617022449, 0, 0),
('hour', '20', 1617024429, 0, 0),
('hour', '21', 0, 0, 0),
('hour', '22', 0, 0, 0),
('hour', '23', 0, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1617614097, 79, 79),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 0, 0, 0),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 1617614097, 72, 72),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 1617339345, 7, 7),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1617614097, 79, 79),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_cronjobs`
--

CREATE TABLE `vuj_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_cronjobs`
--

INSERT INTO `vuj_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1617006242, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1617614415, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1617006242, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1617587648, 1, 'Tự động lưu CSDL'),
(3, 1617006242, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1617614098, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1617006242, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1617614098, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1617006242, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1617587648, 1, 'Xóa các file error_log quá hạn'),
(6, 1617006242, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1617006242, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1617614098, 1, 'Xóa các referer quá hạn'),
(8, 1617006242, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1617614098, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1617006242, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1617587648, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_extension_files`
--

CREATE TABLE `vuj_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_ips`
--

CREATE TABLE `vuj_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_ips`
--

INSERT INTO `vuj_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '::1', 0, 1, 1617006311, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_language`
--

CREATE TABLE `vuj_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_language_file`
--

CREATE TABLE `vuj_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_logs`
--

CREATE TABLE `vuj_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_logs`
--

INSERT INTO `vuj_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617006968),
(2, 'vi', 'modules', 'Xóa module \"about\"', '', '', 1, 1617006978),
(3, 'vi', 'modules', 'Thiết lập module mới home', '', '', 1, 1617007036),
(4, 'vi', 'modules', 'Sửa module &ldquo;home&rdquo;', '', '', 1, 1617007044),
(5, 'vi', 'language', 'Xóa ngôn ngữ giao diện', 'en --> English', '', 1, 1617007208),
(6, 'vi', 'language', 'Xóa ngôn ngữ giao diện', 'fr --> Français', '', 1, 1617007212),
(7, 'vi', 'modules', 'Thứ tự module: home', '15 -> 1', '', 1, 1617007337),
(8, 'vi', 'modules', 'Xóa module \"news\"', '', '', 1, 1617007347),
(9, 'vi', 'modules', 'Xóa module \"statistics\"', '', '', 1, 1617007351),
(10, 'vi', 'modules', 'Xóa module \"voting\"', '', '', 1, 1617007354),
(11, 'vi', 'modules', 'Kích hoạt module \"banners\"', 'Không', '', 1, 1617007358),
(12, 'vi', 'modules', 'Kích hoạt module \"seek\"', 'Không', '', 1, 1617007362),
(13, 'vi', 'modules', 'Kích hoạt module \"comment\"', 'Không', '', 1, 1617007378),
(14, 'vi', 'modules', 'Xóa module \"siteterms\"', '', '', 1, 1617007380),
(15, 'vi', 'modules', 'Xóa module \"freecontent\"', '', '', 1, 1617007383),
(16, 'vi', 'modules', 'Thứ tự module: page', '10 -> 3', '', 1, 1617007392),
(17, 'vi', 'themes', 'Thiết lập giao diện theme: \"Wedding\"', '', '', 1, 1617007745),
(18, 'vi', 'themes', 'Kích hoạt theme: \"Wedding\"', '', '', 1, 1617007748),
(19, 'vi', 'themes', 'Thiết lập layout theme: \"Wedding\"', '', '', 1, 1617007847),
(20, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617086884),
(21, 'vi', 'modules', 'Cài lại module \"contact\"', '', '', 1, 1617086911),
(22, 'vi', 'modules', 'Kích hoạt module \"menu\"', 'Không', '', 1, 1617086940),
(23, 'vi', 'modules', 'Xóa module \"menu\"', '', '', 1, 1617086945),
(24, 'vi', 'contact', 'log_add_row', 'Main', '', 1, 1617087004),
(25, 'vi', 'themes', 'Thêm block', 'Name : Form gửi lời chúc', '', 1, 1617087054),
(26, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1617088133),
(27, 'vi', 'login', '[dattrang] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1617089036),
(28, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617089050),
(29, 'vi', 'login', '[dattrang] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1617089700),
(30, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617156637),
(31, 'vi', 'modules', 'Thiết lập module mới slider', '', '', 1, 1617156661),
(32, 'vi', 'modules', 'Sửa module &ldquo;slider&rdquo;', '', '', 1, 1617156716),
(33, 'vi', 'users', 'Thay đổi tình trạng nhóm', 'group_id: 10', '', 1, 1617156725),
(34, 'vi', 'users', 'Thay đổi tình trạng nhóm', 'group_id: 11', '', 1, 1617156726),
(35, 'vi', 'users', 'Thay đổi tình trạng nhóm', 'group_id: 12', '', 1, 1617156727),
(36, 'vi', 'users', 'Xóa các nhóm ngưng hiệu lực', 'Num: 3', '', 1, 1617156729),
(37, 'vi', 'modules', 'Thứ tự module: slider', '10 -> 4', '', 1, 1617156750),
(38, 'vi', 'modules', 'Sửa module &ldquo;page&rdquo;', '', '', 1, 1617156764),
(39, 'vi', 'modules', 'Kích hoạt module \"two-step-verification\"', 'Không', '', 1, 1617156803),
(40, 'vi', 'modules', 'Thứ tự module: feeds', '10 -> 6', '', 1, 1617156807),
(41, 'vi', 'slider', 'Add Block', 'Header Slideshow', '', 1, 1617156838),
(42, 'vi', 'upload', 'Xóa Thư mục', 'uploads/banners', '', 1, 1617157487),
(43, 'vi', 'upload', 'Xóa Thư mục', 'uploads/comment', '', 1, 1617157490),
(44, 'vi', 'upload', 'Upload file', 'uploads/slider/image/slider.jpg', '', 1, 1617157543),
(45, 'vi', 'upload', 'Upload file', 'uploads/slider/image/slider2.jpeg', '', 1, 1617157552),
(46, 'vi', 'upload', 'Upload file', 'uploads/slider/image/slider3.jpeg', '', 1, 1617157552),
(47, 'vi', 'upload', 'Upload file', 'uploads/slider/image/slider4.jpeg', '', 1, 1617157552),
(48, 'vi', 'slider', 'Add Content', 'Slide 1', '', 1, 1617157557),
(49, 'vi', 'slider', 'Add Content', 'Slide 2', '', 1, 1617157570),
(50, 'vi', 'slider', 'Add Content', 'Slide 3', '', 1, 1617157582),
(51, 'vi', 'slider', 'Add Content', 'Slide 4', '', 1, 1617157596),
(52, 'vi', 'themes', 'Thêm block', 'Name : Slideshow', '', 1, 1617158112),
(53, 'vi', 'themes', 'Sửa block', 'Name : Slideshow', '', 1, 1617158129),
(54, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617248071),
(55, 'vi', 'upload', 'Tạo Thư mục', 'uploads/gallery', '', 1, 1617248093),
(56, 'vi', 'upload', 'Upload file', 'uploads/gallery/1.jpg', '', 1, 1617248107),
(57, 'vi', 'upload', 'Upload file', 'uploads/gallery/2.jpg', '', 1, 1617248107),
(58, 'vi', 'upload', 'Upload file', 'uploads/gallery/3.jpg', '', 1, 1617248107),
(59, 'vi', 'upload', 'Upload file', 'uploads/gallery/4.jpg', '', 1, 1617248107),
(60, 'vi', 'upload', 'Upload file', 'uploads/gallery/5.jpg', '', 1, 1617248108),
(61, 'vi', 'upload', 'Upload file', 'uploads/gallery/6.jpg', '', 1, 1617248108),
(62, 'vi', 'login', '[dattrang] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1617248967),
(63, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617357813),
(64, 'vi', 'contact', 'log_del', 'id 3', '', 1, 1617358108),
(65, 'vi', 'login', '[dattrang] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1617358110),
(66, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617358328),
(67, 'vi', 'contact', 'log_del', 'id 3', '', 1, 1617358335),
(68, 'vi', 'login', '[dattrang] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1617359443),
(69, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617593596),
(70, 'vi', 'contact', 'log_del', 'id 3', '', 1, 1617593610),
(71, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617609268),
(72, 'vi', 'modules', 'Kích hoạt module \"page\"', 'Không', '', 1, 1617609275),
(73, 'vi', 'modules', 'Kích hoạt module \"feeds\"', 'Không', '', 1, 1617609285),
(74, 'vi', 'modules', 'Kích hoạt module \"users\"', 'Không', '', 1, 1617609287),
(75, 'vi', 'upload', 'Upload file', 'uploads/img_8953.jpeg', '', 1, 1617609569),
(76, 'vi', 'upload', 'Xóa file', 'uploads/img_8953.jpeg', '', 1, 1617609906),
(77, 'vi', 'upload', 'Upload file', 'uploads/img_8953.jpeg', '', 1, 1617609909),
(78, 'vi', 'upload', 'Xóa file', 'uploads/img_8953.jpeg', '', 1, 1617609952),
(79, 'vi', 'upload', 'Upload file', 'uploads/banner_1.jpeg', '', 1, 1617609972),
(80, 'vi', 'login', '[dattrang] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1617610628),
(81, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617614272),
(82, 'vi', 'login', '[dattrang] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1617614489),
(83, 'vi', 'login', '[dattrang] Đăng nhập', ' Client IP:::1', '', 0, 1617614499);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_notification`
--

CREATE TABLE `vuj_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_plugin`
--

CREATE TABLE `vuj_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_plugin`
--

INSERT INTO `vuj_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_sessions`
--

CREATE TABLE `vuj_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_sessions`
--

INSERT INTO `vuj_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('jo0nlqt5h7a6icuhtld82dkl8l', 0, 'guest', 1617614490);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_setup_extensions`
--

CREATE TABLE `vuj_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_setup_extensions`
--

INSERT INTO `vuj_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'home', 0, 0, 'home', 'home', '4.0.24 1453075200', 1617007034, 'Phan Tan Dung (phantandung92@gmail.com)', ''),
(0, 'module', 'slider', 0, 1, 'slider', 'slider', '4.3.01 1524070799', 1617156648, 'Việt Tí (quocvietposcovn@gmail.com)', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.4.02 1592816400', 1617006242, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'litespeedcache', 0, 0, 'litespeedcache', 'litespeedcache', '1.0.01 1503654523', 1617614659, '123HOST.VN (tanviet@123host.vn)', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_setup_language`
--

CREATE TABLE `vuj_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_setup_language`
--

INSERT INTO `vuj_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_upload_dir`
--

CREATE TABLE `vuj_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_upload_dir`
--

INSERT INTO `vuj_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 1, 320, 0, 99),
(1, 'uploads', 1617157374, 0, 0, 0, 0),
(2, 'uploads/page', 1617157493, 0, 0, 0, 0),
(3, 'uploads/contact', 1617157491, 0, 0, 0, 0),
(19, 'uploads/gallery', 1617248093, 0, 0, 0, 0),
(12, 'uploads/users', 1617157496, 0, 0, 0, 0),
(13, 'uploads/users/groups', 0, 0, 0, 0, 0),
(17, 'uploads/slider', 1617157495, 0, 0, 0, 0),
(18, 'uploads/slider/image', 1617157498, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_upload_file`
--

CREATE TABLE `vuj_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_upload_file`
--

INSERT INTO `vuj_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('slider2.jpeg', 'jpeg', 'image', 187662, 'assets/slider/image/slider2.jpeg', 80, 54, '1920|1280', 1, 1617157552, 18, 'slider2.jpeg', 'slider2'),
('slider.jpg', 'jpg', 'image', 191678, 'assets/slider/image/slider.jpg', 80, 54, '1920|1280', 1, 1617157544, 18, 'slider.jpg', 'slider'),
('slider3.jpeg', 'jpeg', 'image', 167218, 'assets/slider/image/slider3.jpeg', 80, 54, '1920|1280', 1, 1617157552, 18, 'slider3.jpeg', 'slider3'),
('slider4.jpeg', 'jpeg', 'image', 145191, 'assets/slider/image/slider4.jpeg', 80, 54, '1920|1280', 1, 1617157552, 18, 'slider4.jpeg', 'slider4'),
('1.jpg', 'jpg', 'image', 45053, 'assets/gallery/1.jpg', 80, 54, '600|400', 1, 1617248107, 19, '1.jpg', '1'),
('2.jpg', 'jpg', 'image', 35552, 'assets/gallery/2.jpg', 80, 54, '600|400', 1, 1617248107, 19, '2.jpg', '2'),
('3.jpg', 'jpg', 'image', 37561, 'assets/gallery/3.jpg', 80, 54, '600|400', 1, 1617248107, 19, '3.jpg', '3'),
('4.jpg', 'jpg', 'image', 48540, 'assets/gallery/4.jpg', 80, 54, '600|400', 1, 1617248108, 19, '4.jpg', '4'),
('5.jpg', 'jpg', 'image', 46099, 'assets/gallery/5.jpg', 80, 54, '600|400', 1, 1617248108, 19, '5.jpg', '5'),
('6.jpg', 'jpg', 'image', 42131, 'assets/gallery/6.jpg', 80, 54, '600|400', 1, 1617248108, 19, '6.jpg', '6'),
('banner_1.jpeg', 'jpeg', 'image', 225423, 'assets/banner_1.jpeg', 80, 57, '2126|1500', 1, 1617609972, 1, 'banner_1.jpeg', 'banner 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users`
--

CREATE TABLE `vuj_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT '-1' COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users`
--

INSERT INTO `vuj_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'dattrang', 'e3e540f02e6678100590d79007748cb5', '{SSHA512}hogZ9EwhWOfJvSQCGSDtLfSoHuYLuR9JbhlpdY7vo9hxIUXjABwUraw/ruV7ZOvhi/SBLrueiRWj7x895lXv+jU3ZWI=', 'datdevsx@gmail.com', 'dattrang', '', '', '', 0, '', 1617006311, 'Cau hoi bao mat cua ban', 'ban ten gi', '', 0, 1, '1', 1, 0, '', '', 1617006311, '', '', '', 0, 0, 0, '', -3, 'SYSTEM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_backupcodes`
--

CREATE TABLE `vuj_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_config`
--

CREATE TABLE `vuj_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_config`
--

INSERT INTO `vuj_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:\"access_viewlist\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1617006242),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1617006242),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1617006242),
('avatar_width', '80', 1617006242),
('avatar_height', '80', 1617006242),
('active_group_newusers', '0', 1617006242),
('active_editinfo_censor', '0', 1617006242),
('active_user_logs', '1', 1617006242),
('min_old_user', '16', 1617006242),
('register_active_time', '86400', 1617006242),
('auto_assign_oauthuser', '0', 1617006242),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_edit`
--

CREATE TABLE `vuj_users_edit` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `lastedit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_field`
--

CREATE TABLE `vuj_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_field`
--

INSERT INTO `vuj_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_groups`
--

CREATE TABLE `vuj_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_groups`
--

INSERT INTO `vuj_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 0, 0, 1617006242, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 0, 0, 1617006242, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 0, 0, 1617006242, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 0, 0, 1617006242, 0, 4, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 0, 0, 1617006242, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 0, 0, 1617006242, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 0, 0, 1617006242, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_groups_users`
--

CREATE TABLE `vuj_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_groups_users`
--

INSERT INTO `vuj_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1617006311, 1617006311);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_info`
--

CREATE TABLE `vuj_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_info`
--

INSERT INTO `vuj_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_openid`
--

CREATE TABLE `vuj_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_question`
--

CREATE TABLE `vuj_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_question`
--

INSERT INTO `vuj_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_reg`
--

CREATE TABLE `vuj_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci,
  `idsite` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_blocks_groups`
--

CREATE TABLE `vuj_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_blocks_groups`
--

INSERT INTO `vuj_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(31, 'Wedding', 'contact', 'global.contact_form.php', 'Form gửi lời chúc', '', 'no_title', '[FORM]', 0, '1', 1, '6', 0, 1, ''),
(32, 'Wedding', 'slider', 'global.slider.php', 'Slideshow', '', 'no_title', '[SLIDESHOW]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:4;s:6:\"plugin\";s:5:\"vegas\";}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_blocks_weight`
--

CREATE TABLE `vuj_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_blocks_weight`
--

INSERT INTO `vuj_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(16, 1, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(16, 41, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 50, 1),
(16, 51, 1),
(16, 61, 1),
(16, 64, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 52, 1),
(16, 63, 1),
(16, 55, 1),
(16, 56, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 37, 1),
(16, 58, 1),
(16, 59, 1),
(16, 60, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 29, 1),
(16, 62, 1),
(18, 1, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 41, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 50, 1),
(18, 51, 1),
(18, 61, 1),
(18, 64, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 52, 1),
(18, 63, 1),
(18, 55, 1),
(18, 56, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 37, 1),
(18, 58, 1),
(18, 59, 1),
(18, 60, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 29, 1),
(18, 62, 1),
(11, 1, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 50, 1),
(11, 51, 1),
(11, 61, 1),
(11, 64, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 52, 1),
(11, 63, 1),
(11, 55, 1),
(11, 56, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 58, 1),
(11, 59, 1),
(11, 60, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 29, 1),
(11, 62, 1),
(12, 1, 2),
(12, 38, 2),
(12, 39, 2),
(12, 40, 2),
(12, 41, 2),
(12, 47, 2),
(12, 48, 2),
(12, 49, 2),
(12, 50, 2),
(12, 51, 2),
(12, 61, 2),
(12, 64, 2),
(12, 4, 2),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(12, 9, 2),
(12, 10, 2),
(12, 11, 2),
(12, 12, 2),
(12, 52, 2),
(12, 63, 2),
(12, 55, 2),
(12, 56, 2),
(12, 31, 2),
(12, 32, 2),
(12, 33, 2),
(12, 34, 2),
(12, 35, 2),
(12, 36, 2),
(12, 37, 2),
(12, 58, 2),
(12, 59, 2),
(12, 60, 2),
(12, 19, 2),
(12, 20, 2),
(12, 21, 2),
(12, 22, 2),
(12, 23, 2),
(12, 24, 2),
(12, 25, 2),
(12, 26, 2),
(12, 27, 2),
(12, 28, 2),
(12, 29, 2),
(12, 62, 2),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(5, 1, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 41, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 51, 1),
(5, 61, 1),
(5, 64, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 52, 1),
(5, 63, 1),
(5, 55, 1),
(5, 56, 1),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 58, 1),
(5, 59, 1),
(5, 60, 1),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 2),
(5, 29, 1),
(5, 62, 1),
(20, 1, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 41, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 51, 1),
(20, 61, 1),
(20, 64, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 52, 1),
(20, 63, 1),
(20, 55, 1),
(20, 56, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 58, 1),
(20, 59, 1),
(20, 60, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 29, 1),
(20, 62, 1),
(15, 1, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 61, 1),
(15, 64, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 52, 1),
(15, 63, 1),
(15, 55, 1),
(15, 56, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 62, 1),
(13, 1, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 61, 1),
(13, 64, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 52, 1),
(13, 63, 1),
(13, 55, 1),
(13, 56, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 62, 1),
(27, 65, 4),
(26, 65, 3),
(25, 65, 2),
(24, 65, 1),
(23, 65, 2),
(29, 65, 1),
(28, 65, 1),
(30, 65, 1),
(19, 65, 1),
(8, 65, 1),
(13, 65, 1),
(15, 65, 1),
(20, 65, 1),
(5, 65, 1),
(12, 65, 2),
(11, 65, 1),
(18, 65, 1),
(16, 65, 1),
(8, 1, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 41, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 50, 2),
(8, 51, 2),
(8, 61, 2),
(8, 64, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 52, 2),
(8, 63, 2),
(8, 55, 2),
(8, 56, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 37, 2),
(8, 58, 2),
(8, 59, 2),
(8, 60, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 29, 2),
(8, 62, 2),
(19, 1, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 41, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 51, 1),
(19, 61, 1),
(19, 64, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 52, 1),
(19, 63, 1),
(19, 55, 1),
(19, 56, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 58, 1),
(19, 59, 1),
(19, 60, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 29, 1),
(19, 62, 1),
(2, 4, 2),
(30, 1, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 41, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 61, 1),
(30, 64, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 52, 1),
(30, 63, 1),
(30, 55, 1),
(30, 56, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 29, 1),
(30, 62, 1),
(28, 1, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 41, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 61, 1),
(28, 64, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 52, 1),
(28, 63, 1),
(28, 55, 1),
(28, 56, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 29, 1),
(28, 62, 1),
(29, 1, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 41, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 61, 1),
(29, 64, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 52, 1),
(29, 63, 1),
(29, 55, 1),
(29, 56, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 29, 1),
(29, 62, 1),
(32, 65, 1),
(31, 65, 1),
(23, 1, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 41, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 61, 2),
(23, 64, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 52, 2),
(23, 63, 2),
(23, 55, 2),
(23, 56, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 29, 2),
(23, 62, 2),
(24, 1, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 41, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 50, 1),
(24, 51, 1),
(24, 61, 1),
(24, 64, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 52, 1),
(24, 63, 1),
(24, 55, 1),
(24, 56, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 37, 1),
(24, 58, 1),
(24, 59, 1),
(24, 60, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 29, 1),
(24, 62, 1),
(25, 1, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 41, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 50, 2),
(25, 51, 2),
(25, 61, 2),
(25, 64, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 52, 2),
(25, 63, 2),
(25, 55, 2),
(25, 56, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 37, 2),
(25, 58, 2),
(25, 59, 2),
(25, 60, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 29, 2),
(25, 62, 2),
(26, 1, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 41, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 61, 3),
(26, 64, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 52, 3),
(26, 63, 3),
(26, 55, 3),
(26, 56, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 29, 3),
(26, 62, 3),
(27, 1, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 41, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 61, 4),
(27, 64, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 52, 4),
(27, 63, 4),
(27, 55, 4),
(27, 56, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 29, 4),
(27, 62, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_comment`
--

CREATE TABLE `vuj_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_contact_department`
--

CREATE TABLE `vuj_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_contact_department`
--

INSERT INTO `vuj_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Main', 'Main', '', '', '', '', '', '', '[]', '', '1/1/1/0', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_contact_reply`
--

CREATE TABLE `vuj_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_contact_send`
--

CREATE TABLE `vuj_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_contact_supporter`
--

CREATE TABLE `vuj_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_modfuncs`
--

CREATE TABLE `vuj_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_modfuncs`
--

INSERT INTO `vuj_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(65, 'main', 'main', 'Main', '', 'home', 1, 0, 1, ''),
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(20, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(21, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(22, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(23, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(25, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(26, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''),
(28, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 10, ''),
(29, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 0, 11, ''),
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''),
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''),
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(51, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(58, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(59, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(60, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(61, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(63, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(64, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_modthemes`
--

CREATE TABLE `vuj_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_modthemes`
--

INSERT INTO `vuj_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(0, 'main', 'Wedding'),
(19, 'left-main-right', 'default'),
(19, 'main', 'mobile_default'),
(19, 'main', 'Wedding'),
(20, 'left-main-right', 'default'),
(20, 'main', 'mobile_default'),
(20, 'main', 'Wedding'),
(21, 'left-main-right', 'default'),
(21, 'main', 'mobile_default'),
(21, 'main', 'Wedding'),
(22, 'left-main-right', 'default'),
(22, 'main', 'mobile_default'),
(22, 'main', 'Wedding'),
(23, 'left-main-right', 'default'),
(23, 'main', 'mobile_default'),
(23, 'main', 'Wedding'),
(24, 'left-main-right', 'default'),
(24, 'main', 'mobile_default'),
(24, 'main', 'Wedding'),
(25, 'left-main', 'default'),
(25, 'main', 'mobile_default'),
(25, 'main', 'Wedding'),
(26, 'left-main-right', 'default'),
(26, 'main', 'mobile_default'),
(26, 'main', 'Wedding'),
(27, 'left-main-right', 'default'),
(27, 'main', 'Wedding'),
(28, 'left-main-right', 'default'),
(28, 'main', 'mobile_default'),
(28, 'main', 'Wedding'),
(29, 'left-main', 'default'),
(29, 'main', 'mobile_default'),
(29, 'main', 'Wedding'),
(38, 'left-main-right', 'default'),
(38, 'main', 'mobile_default'),
(38, 'main', 'Wedding'),
(39, 'left-main-right', 'default'),
(39, 'main', 'mobile_default'),
(39, 'main', 'Wedding'),
(40, 'left-main-right', 'default'),
(40, 'main', 'mobile_default'),
(40, 'main', 'Wedding'),
(41, 'left-main-right', 'default'),
(41, 'main', 'mobile_default'),
(41, 'main', 'Wedding'),
(47, 'left-main-right', 'default'),
(47, 'main', 'mobile_default'),
(47, 'main', 'Wedding'),
(48, 'left-main-right', 'default'),
(48, 'main', 'mobile_default'),
(48, 'main', 'Wedding'),
(49, 'left-main-right', 'default'),
(49, 'main', 'mobile_default'),
(49, 'main', 'Wedding'),
(50, 'left-main-right', 'default'),
(50, 'main', 'mobile_default'),
(50, 'main', 'Wedding'),
(51, 'main', 'Wedding'),
(52, 'left-main', 'default'),
(52, 'main', 'mobile_default'),
(52, 'main', 'Wedding'),
(58, 'left-main-right', 'default'),
(58, 'main', 'mobile_default'),
(58, 'main', 'Wedding'),
(59, 'left-main-right', 'default'),
(59, 'main', 'mobile_default'),
(59, 'main', 'Wedding'),
(60, 'left-main-right', 'default'),
(60, 'main', 'mobile_default'),
(60, 'main', 'Wedding'),
(61, 'left-main', 'default'),
(61, 'main', 'mobile_default'),
(61, 'main', 'Wedding'),
(63, 'left-main-right', 'default'),
(63, 'main', 'mobile_default'),
(63, 'main', 'Wedding'),
(64, 'left-main-right', 'default'),
(64, 'main', 'mobile_default'),
(64, 'main', 'Wedding'),
(65, 'home', 'Wedding'),
(65, 'left-main-right', 'default'),
(65, 'main', 'mobile_default');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_modules`
--

CREATE TABLE `vuj_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `sitemap` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_modules`
--

INSERT INTO `vuj_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('home', 'home', 'home', 'home', 'home', 'Trang chủ', '', '', 1617007036, 1, 0, '', '', '', '', '6', 1, 1, '', 0, 0),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1617006242, 1, 1, '', '', '', '', '6', 2, 0, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1617006242, 1, 1, '', '', '', '', '6', 5, 1, '', 0, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1617006242, 1, 1, '', '', '', '', '6', 7, 0, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1617006242, 1, 0, '', '', '', '', '6', 8, 0, '', 0, 1),
('slider', 'slider', 'slider', 'slider', 'slider', 'Slideshow', '', 'Trình chiếu', 1617156661, 0, 1, '', '', '', '', '6', 4, 1, '', 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1617006242, 1, 1, '', '', '', '', '6', 6, 0, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Trang', '', '', 1617006242, 1, 1, '', '', '', '', '6', 3, 0, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1617006242, 0, 1, '', '', '', '', '6', 9, 0, '', 0, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1617006242, 1, 0, '', '', '', '', '6', 10, 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_page`
--

CREATE TABLE `vuj_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_page_config`
--

CREATE TABLE `vuj_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_page_config`
--

INSERT INTO `vuj_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_referer_stats`
--

CREATE TABLE `vuj_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_searchkeys`
--

CREATE TABLE `vuj_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_slider_blocks`
--

CREATE TABLE `vuj_vi_slider_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_slider_blocks`
--

INSERT INTO `vuj_vi_slider_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Header Slideshow', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_slider_rows`
--

CREATE TABLE `vuj_vi_slider_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_slider_rows`
--

INSERT INTO `vuj_vi_slider_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Slide 1', '', '', '', 'image/slider.jpg', 1617157557, 0, 1),
(2, 1, 'Slide 2', '', '', '', 'image/slider2.jpeg', 1617157570, 0, 1),
(3, 1, 'Slide 3', '', '', '', 'image/slider3.jpeg', 1617157582, 0, 1),
(4, 1, 'Slide 4', '', '', '', 'image/slider4.jpeg', 1617157596, 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `vuj_authors`
--
ALTER TABLE `vuj_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `vuj_authors_config`
--
ALTER TABLE `vuj_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Chỉ mục cho bảng `vuj_authors_module`
--
ALTER TABLE `vuj_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Chỉ mục cho bảng `vuj_authors_oauth`
--
ALTER TABLE `vuj_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Chỉ mục cho bảng `vuj_banners_click`
--
ALTER TABLE `vuj_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Chỉ mục cho bảng `vuj_banners_plans`
--
ALTER TABLE `vuj_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Chỉ mục cho bảng `vuj_banners_rows`
--
ALTER TABLE `vuj_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Chỉ mục cho bảng `vuj_config`
--
ALTER TABLE `vuj_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Chỉ mục cho bảng `vuj_cookies`
--
ALTER TABLE `vuj_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `vuj_counter`
--
ALTER TABLE `vuj_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Chỉ mục cho bảng `vuj_cronjobs`
--
ALTER TABLE `vuj_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Chỉ mục cho bảng `vuj_extension_files`
--
ALTER TABLE `vuj_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Chỉ mục cho bảng `vuj_ips`
--
ALTER TABLE `vuj_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Chỉ mục cho bảng `vuj_language`
--
ALTER TABLE `vuj_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Chỉ mục cho bảng `vuj_language_file`
--
ALTER TABLE `vuj_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Chỉ mục cho bảng `vuj_logs`
--
ALTER TABLE `vuj_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_notification`
--
ALTER TABLE `vuj_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Chỉ mục cho bảng `vuj_plugin`
--
ALTER TABLE `vuj_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Chỉ mục cho bảng `vuj_sessions`
--
ALTER TABLE `vuj_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Chỉ mục cho bảng `vuj_setup_extensions`
--
ALTER TABLE `vuj_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `vuj_setup_language`
--
ALTER TABLE `vuj_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Chỉ mục cho bảng `vuj_upload_dir`
--
ALTER TABLE `vuj_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Chỉ mục cho bảng `vuj_upload_file`
--
ALTER TABLE `vuj_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `vuj_users`
--
ALTER TABLE `vuj_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Chỉ mục cho bảng `vuj_users_backupcodes`
--
ALTER TABLE `vuj_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Chỉ mục cho bảng `vuj_users_config`
--
ALTER TABLE `vuj_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Chỉ mục cho bảng `vuj_users_edit`
--
ALTER TABLE `vuj_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `vuj_users_field`
--
ALTER TABLE `vuj_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Chỉ mục cho bảng `vuj_users_groups`
--
ALTER TABLE `vuj_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `vuj_users_groups_users`
--
ALTER TABLE `vuj_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Chỉ mục cho bảng `vuj_users_info`
--
ALTER TABLE `vuj_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `vuj_users_openid`
--
ALTER TABLE `vuj_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `vuj_users_question`
--
ALTER TABLE `vuj_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Chỉ mục cho bảng `vuj_users_reg`
--
ALTER TABLE `vuj_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `vuj_vi_blocks_groups`
--
ALTER TABLE `vuj_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `vuj_vi_blocks_weight`
--
ALTER TABLE `vuj_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Chỉ mục cho bảng `vuj_vi_comment`
--
ALTER TABLE `vuj_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Chỉ mục cho bảng `vuj_vi_contact_department`
--
ALTER TABLE `vuj_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_contact_reply`
--
ALTER TABLE `vuj_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `vuj_vi_contact_send`
--
ALTER TABLE `vuj_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Chỉ mục cho bảng `vuj_vi_contact_supporter`
--
ALTER TABLE `vuj_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_vi_modfuncs`
--
ALTER TABLE `vuj_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Chỉ mục cho bảng `vuj_vi_modthemes`
--
ALTER TABLE `vuj_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Chỉ mục cho bảng `vuj_vi_modules`
--
ALTER TABLE `vuj_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Chỉ mục cho bảng `vuj_vi_page`
--
ALTER TABLE `vuj_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_page_config`
--
ALTER TABLE `vuj_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `vuj_vi_referer_stats`
--
ALTER TABLE `vuj_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Chỉ mục cho bảng `vuj_vi_searchkeys`
--
ALTER TABLE `vuj_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Chỉ mục cho bảng `vuj_vi_slider_blocks`
--
ALTER TABLE `vuj_vi_slider_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Chỉ mục cho bảng `vuj_vi_slider_rows`
--
ALTER TABLE `vuj_vi_slider_rows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `vuj_authors_config`
--
ALTER TABLE `vuj_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_authors_module`
--
ALTER TABLE `vuj_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `vuj_authors_oauth`
--
ALTER TABLE `vuj_authors_oauth`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_banners_click`
--
ALTER TABLE `vuj_banners_click`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_banners_plans`
--
ALTER TABLE `vuj_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vuj_banners_rows`
--
ALTER TABLE `vuj_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vuj_cronjobs`
--
ALTER TABLE `vuj_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `vuj_extension_files`
--
ALTER TABLE `vuj_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_ips`
--
ALTER TABLE `vuj_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_language`
--
ALTER TABLE `vuj_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_language_file`
--
ALTER TABLE `vuj_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_logs`
--
ALTER TABLE `vuj_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `vuj_notification`
--
ALTER TABLE `vuj_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vuj_plugin`
--
ALTER TABLE `vuj_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_upload_dir`
--
ALTER TABLE `vuj_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `vuj_users`
--
ALTER TABLE `vuj_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_users_backupcodes`
--
ALTER TABLE `vuj_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_users_field`
--
ALTER TABLE `vuj_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `vuj_users_groups`
--
ALTER TABLE `vuj_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `vuj_users_question`
--
ALTER TABLE `vuj_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `vuj_users_reg`
--
ALTER TABLE `vuj_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_blocks_groups`
--
ALTER TABLE `vuj_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_comment`
--
ALTER TABLE `vuj_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_contact_department`
--
ALTER TABLE `vuj_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_contact_reply`
--
ALTER TABLE `vuj_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_contact_send`
--
ALTER TABLE `vuj_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_contact_supporter`
--
ALTER TABLE `vuj_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_modfuncs`
--
ALTER TABLE `vuj_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_page`
--
ALTER TABLE `vuj_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_slider_blocks`
--
ALTER TABLE `vuj_vi_slider_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_slider_rows`
--
ALTER TABLE `vuj_vi_slider_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
