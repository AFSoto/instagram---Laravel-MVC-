CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;


CREATE TABLE roles(
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50),

    CONSTRAINT pk_roles PRIMARY KEY(id)
);

INSERT INTO roles (name) VALUES
('admin'),
('user'),
('moderator');


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

INSERT INTO users
(role_id, name, surname, nick, email, password, image, create_at, update_at, remember_token)
VALUES
(1, 'Andres', 'Soto', 'thesoto', 'andres@email.com', '123456', 'user1.jpg', NOW(), NOW(), NULL),
(2, 'Maria', 'Lopez', 'marial', 'maria@email.com', '123456', 'user2.jpg', NOW(), NOW(), NULL),
(2, 'Carlos', 'Perez', 'carlosp', 'carlos@email.com', '123456', 'user3.jpg', NOW(), NOW(), NULL),
(2, 'Laura', 'Gomez', 'laurag', 'laura@email.com', '123456', 'user4.jpg', NOW(), NOW(), NULL);

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

INSERT INTO images
(user_id, image_path, description, create_at, update_at)
VALUES
(1, 'foto1.jpg', 'Atardecer en la playa', NOW(), NOW()),
(2, 'foto2.jpg', 'Mi desayuno hoy', NOW(), NOW()),
(3, 'foto3.jpg', 'Paseo por la montaña', NOW(), NOW()),
(1, 'foto4.jpg', 'Programando toda la noche', NOW(), NOW());

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

INSERT INTO comments
(user_id, image_id, content, create_at, update_at)
VALUES
(2, 1, 'Que bonito lugar!', NOW(), NOW()),
(3, 1, 'Me gusta esa vista', NOW(), NOW()),
(1, 2, 'Se ve delicioso', NOW(), NOW()),
(4, 3, 'Quiero ir a ese lugar', NOW(), NOW()),
(2, 4, 'Mucho código jajaja', NOW(), NOW());

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



INSERT INTO likes
(user_id, image_id, create_at, update_at)
VALUES
(2, 1, NOW(), NOW()),
(3, 1, NOW(), NOW()),
(4, 1, NOW(), NOW()),
(1, 2, NOW(), NOW()),
(3, 2, NOW(), NOW()),
(1, 3, NOW(), NOW()),
(2, 3, NOW(), NOW()),
(4, 4, NOW(), NOW());

