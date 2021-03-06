CREATE TABLE features (
	id MEDIUMINT NOT NULL AUTO_INCREMENT, 
	name CHAR(30) NOT NULL, 
	globally_enabled BOOLEAN NOT NULL,
	PRIMARY KEY (id)) ENGINE=INNODB;
	
CREATE TABLE users (
	id MEDIUMINT NOT NULL AUTO_INCREMENT, 
	first_name CHAR(30),
	last_name CHAR(30),
	PRIMARY KEY (id)) ENGINE=INNODB;
	
CREATE TABLE users_features (
	user_id MEDIUMINT NOT NULL,
	feature_id MEDIUMINT NOT NULL, 
	PRIMARY KEY (user_id, feature_id),
	FOREIGN KEY (user_id)
        REFERENCES users(id),
	FOREIGN KEY (feature_id)
        REFERENCES features(id)) ENGINE=INNODB;

INSERT INTO users(first_name, last_name) VALUES ('John', 'Smith');
INSERT INTO users(first_name, last_name) VALUES ('Michael', 'Jones');
INSERT INTO users(first_name, last_name) VALUES ('Ben', 'Jones');
INSERT INTO features(name, globally_enabled) VALUES ('xero', 1);
INSERT INTO features(name, globally_enabled) VALUES ('credit', 1);
INSERT INTO users_features(feature_id, user_id) VALUES (1, 1);
INSERT INTO users_features(feature_id, user_id) VALUES (2, 1);
INSERT INTO users_features(feature_id, user_id) VALUES (1, 2);
INSERT INTO users_features(feature_id, user_id) VALUES (2, 2);
INSERT INTO users_features(feature_id, user_id) VALUES (1, 3);
INSERT INTO users_features(feature_id, user_id) VALUES (2, 3);