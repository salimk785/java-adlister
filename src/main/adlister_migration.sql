USE adlister_db;
CREATE TABLE users (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        username VARCHAR(50),
                        email  VARCHAR(20) NOT NULL,
                        password VARCHAR(50) NOT NULL,
                        PRIMARY KEY (id)
);
CREATE TABLE ads (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       user_id INT UNSIGNED NOT NULL,
                       title  VARCHAR(20) NOT NULL,
                       description TEXT NOT NULL,
                       PRIMARY KEY (id),
                       foreign KEY (user_id) references users (id)

);
