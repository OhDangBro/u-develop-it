DROP TABLE IF EXISTS candidates;
DROP TABLE IF EXISTS parties;

CREATE TABLE parties (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT
);

CREATE TABLE candidates (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  party_id INTEGER,
  industry_connected BOOLEAN NOT NULL,
  CONSTRAINT fk_party FOREIGN KEY (party_id) REFERENCES parties(id) ON DELETE SET NULL
);




/* STOPPED AT 12.3.4 //
start mysql: mysql -u root -p 
if command not found: export PATH=${PATH}:/usr/local/mysql/bin
show databases command: SHOW DATABASES;
switch to certain database: USE ____;

(change candidates number)
 UPDATE candidates
    -> SET party_id = 13
    -> WHERE id = 38.39.40.41
    -> ;