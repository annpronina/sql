SELECT * FROM mysql.user;

create user php_app@localhost identified by '1234';
-- DROP USER php_app@localhost;

GRANT ALL privileges on sql_store.* to php_app@localhost;
FLUSH privileges; -- parliecinamies ka nebus nekadas problemas datubazee 