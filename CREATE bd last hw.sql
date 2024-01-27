INSERT INTO genres (genre_name)
	VALUES ('Rock'), ('Hip hop'), ('Pop music');

-- В последующих запросах порядок Артистов остается таким же.
INSERT INTO artists (artist_name)
	VALUES ('Eminem'), ('Rihanna'), ('Imagine dragons'), ('The Weeknd');

INSERT INTO genres_artists (genres_id, artists_id) 	
	VALUES (2,1), (3,1),
		(1,2), (3,2),
		(1,3), (3,3),
		(1,4), (3,4);

INSERT INTO albums (album_name, album_release_date) 
	VALUES ('Music to Be Murdered By', 2020), ('Kamikaze', 2018), ('Revival', 2017),
		('Anti', 2016), ('Unapologetic', 2012), ('Talk That Talk', 2011),
		('Ragged Insomnia',2021), ('Deep Cuts', 2021), ('Origins', 2018),
		('Dawn FM', 2022), ('After Hours', 2020), ('Starboy', 2016);
	
INSERT INTO albums_artists (albums_id, artists_id) 
	values (1,1), (2,1), (3,1),
        (4,2), (5,2), (6,2),
        (7,3), (8,3), (9,3),
        (10,4), (11,4), (12,4);
	
INSERT INTO tracks(track_name, track_duration, album_id) 
	values ('Stepdad', 213, 1), ('Kamikaze', 216, 2), ('Fall', 262, 2), ('Believe', 315, 3),
		('Work (feat. Drake)', 219, 4), ('Diamonds', 226, 5), 
		('Natural', 189, 9), ('West Coast', 217, 9), ('Bullet In A Gun', 204, 9), 
		('Dawn FM', 96, 10), ('Gasoline', 212, 10), ('Starry Eyes', 179, 10), ('Starboy', 230, 12);	

INSERT INTO collections (collection_name, collection_release_date) 
	values ('Collection_1', 2018), ('Collection_2', 2020),
		('Collection_3', 2016), ('Collection_4', 2022);

INSERT INTO tracks_collections (track_id, collection_id) 
	values (1,2), (2,1), (3,1), (7,1), (8,1),
		(9,4), (10,4), (11,4), (12,2) (13,3);