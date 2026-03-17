CREATE TABLE IF NOT EXISTS `#__cdsenquete_enquetes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `created` datetime NOT NULL,
  `created_by` int(11),
  `modified` datetime,
  `modified_by` int(11),
  `published` int(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `#__cdsenquete_questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enquete_id` int(11) unsigned NOT NULL,
  `question_text` text NOT NULL,
  `type` varchar(50) DEFAULT 'text',
  `options` text,
  `required` int(1) DEFAULT 0,
  `ordering` int(11) DEFAULT 0,
  `published` int(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`enquete_id`) REFERENCES `#__cdsenquete_enquetes`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `#__cdsenquete_responses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enquete_id` int(11) unsigned NOT NULL,
  `user_id` int(11),
  `data` longtext NOT NULL,
  `created` datetime NOT NULL,
  `ip_address` varchar(15),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`enquete_id`) REFERENCES `#__cdsenquete_enquetes`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;