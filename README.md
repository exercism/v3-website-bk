# Exercism

This is the WIP website for Exercism v3.

### Configure the database

Something like this will then get a working database setup:

```bash
mysql -e "CREATE USER 'exercism_v3'@'localhost' IDENTIFIED BY 'exercism_v3'" -u root -p
mysql -e "create database exercism_v3_development" -u root -p
mysql -e "create database exercism_v3_test" -u root -p
mysql -e "ALTER DATABASE exercism_v3_development CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" -u root -p
mysql -e "ALTER DATABASE exercism_v3_test CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" -u root -p
mysql -e "GRANT ALL PRIVILEGES ON exercism_v3_development.* TO 'exercism_v3'@'localhost'" -u root -p
mysql -e "GRANT ALL PRIVILEGES ON exercism_v3_test.* TO 'exercism_v3'@'localhost'" -u root -p
```


