$ mysql -u admin -h localhost -p <pass>

CREATE DATABASE retail_db;
USE retail_db;
CREATE USER 'retail_dba'@'%' IDENTIFIED BY 'retail_dba';
GRANT ALL PRIVILEGES ON retail_db.* TO 'retail_dba'@'%';
GRANT SELECT ON retail_db.* TO 'retail_dba'@'localhost';


$ mysql -u retail_dba -h database-1.cx1zhd0msuws.us-east-1.rds.amazonaws.com -p retail_db < ./retail_db-data.sql

// https:
//www.cyberciti.biz/faq/how-to-delete-remove-user-account-in-mysql-mariadb/
