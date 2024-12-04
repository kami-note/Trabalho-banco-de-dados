use apresentacaobd2;

CREATE TABLE IF NOT EXISTS `category` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(6) NOT NULL,
    `status` ENUM('ACTIVE', 'DELETED', 'INACTIVE') NOT NULL,
    `updated_at` DATETIME(6) NOT NULL,
    `category_type` ENUM('DRINK', 'FOOD', 'RESTAURANT') DEFAULT NULL,
    `description` VARCHAR(255) DEFAULT NULL,
    `name` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `payment_method` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `city` varchar(255) NOT NULL,
  `neighborhood` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `state` varchar(2) NOT NULL,
  `street` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `has_pickup_option` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8jj0ghjhpw9xiue5pkqxb67s7` (`category_id`),
  CONSTRAINT `FK8jj0ghjhpw9xiue5pkqxb67s7` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
);

CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `restaurant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp4b7e36gck7975p51raud8juk` (`restaurant_id`),
  CONSTRAINT `FKp4b7e36gck7975p51raud8juk` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`)
);

CREATE TABLE IF NOT EXISTS `accompaniment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `restaurant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK9irp3l2g89nlc5qbfvgluoca0` (`restaurant_id`),
  CONSTRAINT `FK1rrm9vsy6fy8vww5hnv5gpnst` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`)
);

CREATE TABLE IF NOT EXISTS `customer_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `delivery_fee` double DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `delivery_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `address_id` bigint DEFAULT NULL,
  `current_status` enum('CANCELED','DELIVERED','IN_TRANSIT','PENDING') DEFAULT NULL,
  `customerorder_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK844qeejr6i1hulx8w2uup4y2s` (`customerorder_id`),
  CONSTRAINT `FK844qeejr6i1hulx8w2uup4y2s` FOREIGN KEY (`customerorder_id`) REFERENCES `customer_order` (`id`),
  KEY `3quKz1Pv59V6o6axszo1ub81ZIK2xjqP` (`address_id`),
  CONSTRAINT `3quKz1Pv59V6o6axszo1ub81ZIK2xjqP` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
);

CREATE TABLE IF NOT EXISTS `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `quantity` int DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgv4bnmo7cbib2nh0b2rw9yvir` (`order_id`),
  KEY `FK551losx9j75ss5d6bfsqvijna` (`product_id`),
  CONSTRAINT `FK551losx9j75ss5d6bfsqvijna` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKgv4bnmo7cbib2nh0b2rw9yvir` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`id`)
);

CREATE TABLE IF NOT EXISTS `order_product_accompaniment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `accompaniment_id` bigint DEFAULT NULL,
  `order_item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKckk77leg19ypm8jevk2jn398q` (`accompaniment_id`),
  KEY `FK1s5xl7759c7djeu6t46gi2uks` (`order_item_id`),
  CONSTRAINT `FK1s5xl7759c7djeu6t46gi2uks` FOREIGN KEY (`order_item_id`) REFERENCES `order_item` (`id`),
  CONSTRAINT `FKckk77leg19ypm8jevk2jn398q` FOREIGN KEY (`accompaniment_id`) REFERENCES `accompaniment` (`id`)
);

CREATE TABLE IF NOT EXISTS `payment_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE') NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `amount` double DEFAULT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `payment_method_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl4dptsry9d3wh525y8lkkxy08` (`order_id`),
  KEY `FKcxpi9bsdcjdr0imxhe9g4hoik` (`payment_method_id`),
  CONSTRAINT `FKcxpi9bsdcjdr0imxhe9g4hoik` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  CONSTRAINT `FKl4dptsry9d3wh525y8lkkxy08` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`id`)
);