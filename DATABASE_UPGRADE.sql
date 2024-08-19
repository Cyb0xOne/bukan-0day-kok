DELETE FROM `settings` WHERE setting_group = 'mail_server';
INSERT INTO `settings` (id, setting_group, setting_variable, setting_value, setting_default_value, setting_access_group, setting_description) VALUES (NULL, 'mail_server', 'smtp_host', '', '', 'private', 'SMTP Server Address');
INSERT INTO `settings` (id, setting_group, setting_variable, setting_value, setting_default_value, setting_access_group, setting_description) VALUES (NULL, 'mail_server', 'smtp_user', '', '', 'private', 'SMTP Username');
INSERT INTO `settings` (id, setting_group, setting_variable, setting_value, setting_default_value, setting_access_group, setting_description) VALUES (NULL, 'mail_server', 'smtp_pass', '', '', 'private', 'SMTP Password');
INSERT INTO `settings` (id, setting_group, setting_variable, setting_value, setting_default_value, setting_access_group, setting_description) VALUES (NULL, 'mail_server', 'smtp_port', '', '', 'private', 'SMTP Port');
