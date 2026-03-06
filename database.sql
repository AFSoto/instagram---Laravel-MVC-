CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;


CREATE TABLE roles(
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50),

    CONSTRAINT pk_roles PRIMARY KEY(id)
);


CREATE TABLE IF NOT EXISTS users(
id INT AUTO_INCREMENT NOT NULL,
role_id  INT NOT NULL,
name VARCHAR(100),
surname VARCHAR(200),
nick VARCHAR(100) UNIQUE,
email VARCHAR(255) UNIQUE,
password VARCHAR(255),
image VARCHAR(255),
create_at DATETIME,
update_at DATETIME,
remember_token VARCHAR(255),

CONSTRAINT pk_users PRIMARY KEY(id),
CONSTRAINT fk_users_roles FOREIGN KEY (role_id) REFERENCES roles(id)

)ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS images(
    id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    image_path VARCHAR(255),
    description TEXT,
    create_at DATETIME,
    update_at DATETIME,

    CONSTRAINT pk_images PRIMARY KEY(id),
    CONSTRAINT fk_images_users FOREIGN KEY(user_id) REFERENCES users(id)

)ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS comments (
    id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    image_id INT NOT NULL,
    content TEXT,
    create_at DATETIME,
    update_at DATETIME,

    CONSTRAINT pk_comments PRIMARY KEY(id),
    CONSTRAINT fk_comments_users FOREIGN KEY(user_id) REFERENCES users(id),
    CONSTRAINT fk_comments_images FOREIGN KEY(image_id) REFERENCES images(id)


)ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS likes (
    id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    image_id INT NOT NULL,
    create_at DATETIME,
    update_at DATETIME,

    CONSTRAINT pk_likes PRIMARY KEY(id),
    CONSTRAINT fk_likes_users FOREIGN KEY(user_id) REFERENCES users(id),
    CONSTRAINT fk_likes_images FOREIGN KEY(image_id) REFERENCES images(id)


)ENGINE=innoDB;



