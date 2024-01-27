-- Количество исполнителей в каждом жанре.
SELECT g.genre_name, count(ga.artists_id) FROM genres g
   JOIN genres_artists ga ON g.id = ga.genres_id
   GROUP BY g.genre_name;

 -- Количество треков, вошедших в альбомы 2019–2020 годов. 
SELECT al.album_name, al.album_release_date , count(t.id) FROM albums al
   JOIN tracks t ON al.id = t.album_id
   WHERE al.album_release_date BETWEEN 2019 and 2020
   GROUP BY al.album_name, al.album_release_date;

-- Средняя продолжительность треков по каждому альбому.   
SELECT al.album_name, AVG(t.track_duration) FROM albums al
	JOIN tracks t ON al.id = t.album_id
	GROUP BY al.album_name;

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT ar.artist_name FROM artists ar
   JOIN albums_artists aa ON ar.id = aa.artists_id
   JOIN albums a ON a.id = aa.albums_id
   WHERE a.album_release_date < 2020; 

 -- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами). 
SELECT c.collection_name FROM collections c
   JOIN tracks_collections tc ON c.id = tc.collection_id
   JOIN tracks t ON t.id = tc.track_id
   JOIN albums a ON a.id = t.album_id
   JOIN albums_artists aa ON a.id = aa.albums_id
   JOIN artists ar ON ar.id = aa.artists_id 
   WHERE ar.artist_name LIKE '%Eminem%';