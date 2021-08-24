--  creating new user for EnLearn project
CREATE USER 'enlearn'@'localhost' IDENTIFIED BY 'enlearn';

--  grant privileges to new user
GRANT ALL PRIVILEGES ON * . * TO 'enlearn'@'localhost';

--  for MySQL 8.0.4 onwards
ALTER USER 'enlearn'@'localhost' IDENTIFIED WITH mysql_native_password BY 'enlearn';
