CREATE DATABASE `TODO_website`;

CREATE TABLE `users` (
	`id_user` bigint NOT NULL AUTO_INCREMENT,
	`name_user` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL UNIQUE,
	`password` varchar(255) NOT NULL,
	`date_creation_user` DATE NOT NULL,
	`activation_user` BOOLEAN NOT NULL,
	PRIMARY KEY (`id_user`)
);

CREATE TABLE `todos` (
	`id_todo` bigint NOT NULL AUTO_INCREMENT,
	`id_user` bigint NOT NULL,
	`name_todo` varchar(255) NOT NULL,
	`date_creation_todo` DATE NOT NULL,
	`date_limite_todo` DATE NOT NULL,
	`description` varchar(255) NOT NULL,
	`general_todo` BOOLEAN NOT NULL,
	`finished_todo` BOOLEAN NOT NULL,
	`record_path` varchar(255) NOT NULL,
	PRIMARY KEY (`id_todo`)
);

CREATE TABLE `images` (
	`id_todo` bigint NOT NULL,
	`path` varchar(255) NOT NULL UNIQUE
);

CREATE TABLE `attached files` (
	`id_todo` bigint NOT NULL,
	`path` varchar(255) NOT NULL
);

ALTER TABLE `todos` ADD CONSTRAINT `todos_fk0` FOREIGN KEY (`id_user`) REFERENCES `users`(`id_user`);

ALTER TABLE `images` ADD CONSTRAINT `images_fk0` FOREIGN KEY (`id_todo`) REFERENCES `todos`(`id_todo`);

ALTER TABLE `attached files` ADD CONSTRAINT `attached files_fk0` FOREIGN KEY (`id_todo`) REFERENCES `todos`(`id_todo`);
