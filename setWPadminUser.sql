SET
    SQL_SAFE_UPDATES = 0;
INSERT INTO `wordpress`.`wp_users`(
    `ID`,
    `user_login`,
    `user_pass`,
    `user_nicename`,
    `user_email`,
    `user_url`,
    `user_registered`,
    `user_activation_key`,
    `user_status`,
    `display_name`
)
VALUES(

`ID`,
    `user_login`,
    MD5('`user_pass`),
    `user_nicename`,
    `user_email`,
    `user_url`,
    `user_registered`,
    `user_activation_key`,
    `user_status`,
    `display_name`
 );

INSERT INTO `wordpress`.`wp_usermeta`(
    `umeta_id`,
    `user_id`,
    `meta_key`,
    `meta_value`
)
VALUES(
    NULL,
    'ID',
    'wp_capabilities',
    'a:1:{s:13:"administrator";s:1:"1";}'
);
INSERT INTO `wordpress`.`wp_usermeta`(
    `umeta_id`,
    `user_id`,
    `meta_key`,
    `meta_value`
)
VALUES(NULL, 'ID', 'wp_user_level', '10');
