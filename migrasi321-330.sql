-- Upgrade
ALTER TABLE publications ADD COLUMN locale VARCHAR(14) DEFAULT 'en_US' NOT NULL;

ALTER TABLE event_log_settings DROP INDEX event_log_settings_name_value;

ALTER TABLE event_log_settings ADD COLUMN locale VARCHAR(5) DEFAULT NULL;


ALTER TABLE navigation_menu_items ADD COLUMN url VARCHAR(255) DEFAULT NULL;

ALTER TABLE submission_files ADD COLUMN revision BIGINT NOT NULL DEFAULT 1;

-- event_log_settings
-- submission_files
-- publications
-- review_round_files
-- submission_file_settings
-- review_files  //615
-- drop table submission_file_revisions
-- plugin_settings

-- PKPv3_3_0UpgradeMigration

-- 609 ERROR: Upgrade failed: DB: SQLSTATE[42000]: Syntax error or access violation: 1072 Key column 'revision' doesn't exist in table (SQL: alter table `review_round_files` drop `revision`)

-- 613 ERROR: Upgrade failed: DB: SQLSTATE[42000]: Syntax error or access violation: 1061 Duplicate key name 'review_round_files_pkey' (SQL: alter table `review_round_files` add unique `review_round_files_pkey`(`submission_id`, `review_round_id`, `submission_file_id`))

-- ERROR: Upgrade failed: DB: SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry 'template-1-blockTitle' for key 'plugin_settings_pkey' (SQL: insert into `plugin_settings` (`context_id`, `plugin_name`, `setting_name`, `setting_type`, `setting_value`) values (1, template,blockTitle, object, a:1:{s:5:"en_US";s:8:"template";}), (1, flagcounter, blockTitle, object, a:1:{s:5:"en_US";s:11:"flagcounter";}), (1, menulogin, blockTitle, object, a:1:{s:5:"en_US";s:9:"menulogin";}), (1, gs, blockTitle, object, a:1:{s:5:"en_US";s:2:"gs";}), (1, wa, blockTitle, object, a:1:{s:5:"en_US";s:2:"wa";}), (1, mainmenu, blockTitle, object, a:1:{s:5:"en_US";s:8:"mainmenu";}), (1, new_menu, blockTitle, object, a:1:{s:5:"en_US";s:8:"new_menu";}), (1, new_temp, blockTitle, object, a:1:{s:5:"en_US";s:8:"new_temp";}), (1, info, blockTitle, object, a:1:{s:5:"en_US";s:4:"info";}), (2, wa, blockTitle, object, a:1:{s:5:"en_US";s:2:"wa";}), (2, visitor, blockTitle, object, a:1:{s:5:"en_US";s:7:"visitor";}), (2, addmenu, blockTitle, object, a:1:{s:5:"en_US";s:7:"addmenu";}), (2, template, blockTitle, object, a:1:{s:5:"en_US";s:8:"template";}), (2, sidebarmenu, blockTitle, object, a:1:{s:5:"en_US";s:11:"sidebarmenu";}), (5, wa, blockTitle, object, a:1:{s:5:"en_US";s:2:"wa";}), (5, gscitations, blockTitle, object, a:1:{s:5:"en_US";s:11:"gscitations";}), (5, mainmenu, blockTitle, object, a:1:{s:5:"en_US";s:8:"mainmenu";}), (5, statistics, blockTitle, object, a:1:{s:5:"en_US";s:10:"statistics";}), (5, download, blockTitle, object, a:1:{s:5:"en_US";s:8:"download";}), (5, infomations, blockTitle, object, a:1:{s:5:"en_US";s:11:"infomations";}), (4, mainmenu, blockTitle, object, a:1:{s:5:"en_US";s:8:"mainmenu";}))



-- OJSv3_3_0UpgradeMigration

-- ERROR: Upgrade failed: DB: SQLSTATE[42S21]: Column already exists: 1060 Duplicate column name 'is_inactive' (SQL: alter table `sections` add `is_inactive` smallint not null default '0')

-- ERROR: Upgrade failed: DB: SQLSTATE[42S22]: Column not found: 1054 Unknown column 'locale' in 'WHERE' (SQL: update `event_log_settings` set `setting_value` = {} where `setting_name` = originalFileName and `locale` is null and `log_id` = 11)