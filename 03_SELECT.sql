
-- 1. название и год выхода альбомов, вышедших в 2018 году;
SELECT album_name, album_realase_year FROM album
WHERE album_realase_year = 2018;

-- 2. название и продолжительность самого длительного трека;
SELECT track_name, track_duration FROM track
WHERE  track_duration = (SELECT MAX(track_duration) FROM track);

-- 3. название треков, продолжительность которых не менее 3,5 минуты;
SELECT track_name FROM track
WHERE track_duration > 3.5*60;

-- 4. названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT digest_name FROM digest
WHERE 2018 <= digest_realase_year AND digest_realase_year <= 2020;

-- 5. исполнители, чье имя состоит из 1 слова;
SELECT artist_name FROM artist
WHERE artist_name NOT LIKE '% %';

-- 6. название треков, которые содержат слово мой/my;
SELECT track_name FROM track
WHERE track_name LIKE '%My%';