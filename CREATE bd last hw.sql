INSERT INTO genres (genre_name)
	VALUES ('Rock'), ('Hip hop'), ('Pop music');

INSERT INTO artists (artist_name)
	VALUES('Eminem'),
        ('Rihanna'),
		('Imagine dragons'),
        ('The Weeknd');

INSERT INTO genres_artists (genres_id, artists_id) 	
	VALUES(1,2), (1,3),
		(2,2), (2,3),
		(3,1), (3,3),
		(4,1), (4,3);

INSERT INTO albums (album_name, album_date) 
	VALUES('Music to Be Murdered By',2020), ('Kamikaze',2018), ('Revival',2017),
		('Anti',2016), ('Unapologetic',2012), ('Talk That Talk',2011),
		('Ragged Insomnia',2021), ('Deep Cuts',2021), ('Origins',2018),
		('Dawn FM',2022), ('After Hours',2020), ('Starboy',2016);
	
INSERT INTO albums_artists (albums_id, artists_id) 
	values(1,1), (2,1), (3,1),
        (4,2), (5,2), (6,2),
        (7,3), (8,3), (9,3),
        (10,4), (11,4), (12,4);
	
INSERT INTO tracks(track_name, track_duration, album_id) 
	values('Stepdad', 3:33, 1), ('Kamikaze', 3:36, 2), ('Fall', 4:22, 2), ('Believe', 5:15, 3),
		('Work (feat. Drake)', 3:39, 4), ('Diamonds', 3:46, 5), 
		('Natural', 3:09, 9), ('West Coast', 3:37, 9), ('Bullet In A Gun', 3:24, 9), 
		('Dawn FM', 1:36, 10), ('Gasoline', 3:32, 10), ('Starry Eyes', 259, 10), ('Starboy', 3:50, 12);	

INSERT INTO collections (collection_name, collection_date) 
	values('Collection_1', 2018), ('Collection_2', 2020),
		('Collection_3', 2021), ('Collection_4', 2022);

INSERT INTO tracks_collections (track_id, collection_id) 
	values(1,2), (2,1), (3,1), (7,1), (8,1),
		(9,4), (10,4), (11,4), (12,2);