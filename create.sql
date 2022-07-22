CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	id SERIAL PRIMARY KEY,
	stage_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS artistgenre (
	artist_id INTEGER REFERENCES artist(id),
	genre_id INTEGER REFERENCES genre(id),
	CONSTRAINT artistgenre_pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	release_date DATE
);

CREATE TABLE IF NOT EXISTS artistalbum (
	artist_id INTEGER REFERENCES artist(id),
	album_id INTEGER REFERENCES album(id),
	CONSTRAINT artistalbum_pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES album(id),
	title TEXT NOT NULL,
	length time
);

CREATE TABLE IF NOT EXISTS mixtape (
	id SERIAL PRIMARY KEY,
	name TEXT not NULL,
	release_date DATE
);

CREATE TABLE IF NOT EXISTS trackmixtape (
	track_id INTEGER REFERENCES track(id),
	mixtape_id INTEGER REFERENCES mixtape(id),
	CONSTRAINT trackmixtape_pk PRIMARY KEY (track_id, mixtape_id)
)
