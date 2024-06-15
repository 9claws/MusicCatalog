CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id INTEGER PRIMARY KEY,
	name VARCHAR(40) NOT NULL
	
);


CREATE TABLE IF NOT EXISTS Genres_artists (
	genre_id INTEGER REFERENCES Genres(id),
	artist_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
	release_year INTEGER NOT NULL
		
);

CREATE TABLE IF NOT EXISTS Artists_albums (
	album_id INTEGER REFERENCES Albums(id),
	artist_id INTEGER REFERENCES Artists(id),
	CONSTRAINT Artists_albums_pk PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Albums(id),
	title VARCHAR(40) NOT NULL,
	duration INTEGER NOT NULL
		
		
);


CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
	release_year INTEGER NOT NULL
		
);

CREATE TABLE IF NOT EXISTS Collection_songs (
	collection_id INTEGER REFERENCES Collection(id),
	song_id INTEGER REFERENCES Songs(id),
	CONSTRAINT Collection_songs_pk PRIMARY KEY (collection_id, song_id)
);