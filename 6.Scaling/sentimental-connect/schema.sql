CREATE TABLE
    IF NOT EXISTS `users` (
        `id` INT UNSIGNED AUTO_INCREMENT,
        `first_name` VARCHAR(255) NOT NULL,
        `last_name` VARCHAR(255) NOT NULL,
        `user_name` VARCHAR(255) NOT NULL UNIQUE,
        `password` CHAR(128) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    IF NOT EXISTS `school_and_university` (
        `id` INT UNSIGNED AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        `type` ENUM ('Primary', 'Secondary', 'Higher Education') NOT NULL,
        `location` VARCHAR(255) NOT NULL,
        `found` VARCHAR(255) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    IF NOT EXISTS `company` (
        `id` INT UNSIGNED AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        `industry` ENUM ('Technology', 'Education', 'Business') NOT NULL,
        `location` VARCHAR(255) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    IF NOT EXISTS `connections_with_people` (
        `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `user_id` INT UNSIGNED NOT NULL,
        `friends_id` INT UNSIGNED NOT NULL,
        PRIMARY KEY (id),
        FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
        FOREIGN KEY (`friends_id`) REFERENCES `users` (`id`)
    );

CREATE TABLE
    IF NOT EXISTS `connections_with_schools` (
        `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `user_id` INT UNSIGNED NOT NULL,
        `school_id` INT UNSIGNED NOT NULL,
        `start_date` DATE NOT NULL,
        `end_date` DATE,
        `degree` VARCHAR(255),
        PRIMARY KEY (id),
        FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
        FOREIGN KEY (`school_id`) REFERENCES `school_and_university` (`id`)
    );

CREATE TABLE
    IF NOT EXISTS `connections_with_companies` (
        `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `user_id` INT UNSIGNED NOT NULL,
        `company_id` INT UNSIGNED NOT NULL,
        `start_date` DATE NOT NULL,
        `end_date` DATE,
        PRIMARY KEY (id),
        FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
        FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
    );
