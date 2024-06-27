CREATE SCHEMA IF NOT EXISTS MUSICFY;
USE MUSICFY;

CREATE TABLE IF NOT EXISTS users(
	user_id bigint NOT NULL AUTO_INCREMENT,
	username varchar(32) NOT NULL,
	user_email varchar(32) NOT NULL,
	user_bio longtext,
	premium_subscription tinyint NOT NULL,
	
	CONSTRAINT pk_user PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS playlists(
	playlist_id bigint NOT NULL AUTO_INCREMENT,
	user_id bigint,
	playlist_name varchar(32) NOT NULL,
	description longtext,
	public tinyint NOT NULL,
	saves bigint NOT NULL,
	duration time NOT NULL,
	
	CONSTRAINT pk_playlist PRIMARY KEY (playlist_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE IF NOT EXISTS artists(
	artist_id bigint NOT NULL AUTO_INCREMENT,
	name varchar(30) NOT NULL,
	artist_photo blob NULL,
	monthly_listeners bigint NOT NULL,
	
	CONSTRAINT pk_artist PRIMARY KEY (artist_id)
);


CREATE TABLE IF NOT EXISTS albums(
	album_id bigint NOT NULL AUTO_INCREMENT,
	artist_id bigint,
	album_name varchar(32) NOT NULL,
	release_date date NOT NULL,
	n_tracks smallint NOT NULL,
	thumbnail blob NOT NULL,
	duration time NOT NULL,
	
	CONSTRAINT pk_album PRIMARY KEY (album_id),
	FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE IF NOT EXISTS tracks(
	track_id bigint NOT NULL AUTO_INCREMENT,
	artist_id bigint,
	album_id bigint,
	track_name varchar(32) NOT NULL,
	release_date date NOT NULL,
	duration time NOT NULL,
	
	CONSTRAINT pk_track PRIMARY KEY (track_id),
	FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
	FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS user_tracks(
	user_id bigint NOT NULL,
	track_id bigint NOT NULL,
	date_added date NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (track_id) REFERENCES tracks(track_id)
);

CREATE TABLE IF NOT EXISTS playlist_tracks(
	playlist_id bigint NOT NULL,
	track_id bigint NOT NULL,
	
	FOREIGN KEY (playlist_id) REFERENCES playlists(playlist_id),
	FOREIGN KEY (track_id) REFERENCES tracks(track_id)
);

CREATE TABLE IF NOT EXISTS user_artists(
	user_id bigint NOT NULL,
	artist_id bigint NOT NULL,
	date_added date NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);
