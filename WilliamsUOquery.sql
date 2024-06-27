USE `MUSICFY`;

INSERT INTO `users` (`username`, `user_email`, `user_bio`, `premium_subscription`)
VALUES 
('hxwilliam', 'wfresh.wo@gmail.com', 'always leanring', 1),
('lionel_messi','lionel@messi.com', 'always winning', 1),
('eden_hazard','eden10@haz.bg', 'always dribbling', 0),
('ronaldinho','brazil@icon.br', 'always smiling', 0),
('iniesta','andres@bar.es', 'always thinking', 1);


INSERT INTO `playlists` (`playlist_name`, `public`, `saves`, `duration` )
VALUES
('summer2022', 1, 45, 01:32:12),
('gym playlist', 0, 45, 01:52:12),
('top 30', 1, 13, 00:42:12),
('rave2012', 0, 0, 01:32:19);

INSERT INTO `artists` (`name`, `monthly_listeners`)
VALUES
('Kendrick Lamar', 8929292),
('Kanye West', 2330933),
('The weeknd', 87390000),
('Arctic monkeys', 322227),
('System of a down', 896665);

INSERT INTO `albums` (`album_name`, `realease_date`, `duration`)
VALUES
(`DAMN`, 2017-05-05, 02:15:34),
(`Gradution`, 2004-05-05, 01:15:34),
(`After hours`, 2022-12-05, 02:15:34),
(`AM`, 2013-07-06, 02:15:34),
(`Toxicity`, 1997-08-05, 00:55:34);

INSERT INTO `tracks`(`track_name`, `release_date`,`duration` )
VALUES
()
