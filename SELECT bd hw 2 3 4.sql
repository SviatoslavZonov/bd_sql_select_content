-- Название и продолжительность самого длительного трека.
SELECT track_name, track_duration FROM tracks t    
	ORDER BY track_duration DESC
	LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name FROM tracks 
	WHERE track_duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name FROM collections 
	WHERE collection_release_date BETWEEN 2018 and 2020;

-- Исполнители, чьё имя состоит из одного слова.
SELECT artist_name FROM artists
	WHERE artist_name NOT LIKE '%% %%';

-- Название треков, которые содержат слово «мой» или «my».
SELECT track_name FROM tracks
	WHERE track_name LIKE '%%My%%';