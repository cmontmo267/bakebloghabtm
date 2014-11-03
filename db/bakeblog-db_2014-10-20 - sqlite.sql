

CREATE TABLE `articles` (
`id` INTEGER PRIMARY KEY ASC,
  `title` TEXT,
  `content` TEXT,
  `user_id` INTEGER,
  `category_id` INTEGER,
  `created` TEXT,
  `modified` TEXT
);

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `user_id`, `category_id`, `created`, `modified`) VALUES
(1, 'Un message de l''admin', 'Voici un message de l''admin', 2, 1, '2014-09-29 14:56:36', '2014-09-29 14:56:36'),
(2, 'Un autre message de l''admin en session', 'Voici un autre message de l''admin en session', 2, 1, '2014-09-29 15:50:44', '2014-10-06 13:56:06'),
(4, 'Un message de l''auteur1', 'Voici un message de l''auteur1', 3, 2, '2014-09-29 15:58:01', '2014-09-29 15:58:01');

-- --------------------------------------------------------

--
-- Structure de la table `articles_tags`
--

CREATE TABLE `articles_tags` (
`id` INTEGER PRIMARY KEY ASC,
  `article_id` INTEGER,
  `tag_id` INTEGER
);

--
-- Contenu de la table `articles_tags`
--

INSERT INTO `articles_tags` (`id`, `article_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 4, 2),
(3, 1, 3),
(4, 4, 4),
(5, 2, 1),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
`id` INTEGER PRIMARY KEY ASC,
  `title` TEXT
);

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Public'),
(2, 'Family'),
(3, 'Friends');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
`id` INTEGER PRIMARY KEY ASC,
  `article_id` INTEGER,
  `name` TEXT,
  `email` TEXT,
  `content` TEXT,
  `created` TEXT
);

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `name`, `email`, `content`, `created`) VALUES
(1, 1, 'Un visiteur', 'visiteur1@cmontmo.ca', 'Ça marche!', '2014-09-29 14:58:44');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
`id` INTEGER PRIMARY KEY ASC,
  `title` TEXT
);

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `title`) VALUES
(1, 'Politics'),
(2, 'Sports'),
(3, 'local'),
(4, 'national');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
`id` INTEGER PRIMARY KEY ASC,
  `username` TEXT,
  `password` TEXT,
  `role` TEXT,
  `email` TEXT,
  `created` TEXT,
  `modified` TEXT
);

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `email`, `created`, `modified`) VALUES
(2, 'admin', '$2a$10$Iiil4mXZbwyhXKaGYzs5dO3WvEeCEO9gqgg8nqsX5Dq7bO3safN1i', 'admin', 'admin@cmontmo.ca', '2014-09-29 15:47:03', '2014-09-29 15:47:03'),
(3, 'auteur1', '$2a$10$Dz0mAUeyKw/WVJzQ7XcewOG5ekKKIP4WfJqjOvwMIrh3TQvQi25P.', 'author', 'auteur1@cmontmo.ca', '2014-09-29 15:54:11', '2014-09-29 15:54:11'),
(4, 'auteur2', '$2a$10$vJUj3Tt8Txhmy2hDY7lnoeDmzuoJ/kcXxIJ3kuMm83sXdiCKaj/rm', 'author', 'auteur2@cmontmo.ca', '2014-09-29 15:54:27', '2014-09-29 15:54:27');
