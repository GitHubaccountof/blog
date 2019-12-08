CREATE DATABASE blog DEFAULT CHARACTER SET utf8 ;
GRANT ALL PRIVILEGES ON blog.* TO 'testuser'@'localhost';
ALTER USER 'testuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'testpass';

SET GLOBAL time_zone = '+2:00';

use blog;

select * from content;

drop database blog;