--ЗАДАНИЕ 2

--название и продолжительность самого длительного трека;

SELECT title, duration FROM songs
WHERE  duration = (SELECT max(duration) FROM songs);

--название треков, продолжительность которых не менее 3,5 минуты;
SELECT title FROM songs
    WHERE duration > 210;

--названия сборников, вышедших в период с 2018 по 2020 год включительно;   
SELECT title FROM collection
    WHERE release_year BETWEEN 2018 AND 2020;  
 
--исполнители, чье имя состоит из 1 слова;
SELECT name FROM artists 
    WHERE name NOT LIKE '%% %%';
    
--название треков, которые содержат слово "мой"/"my".
SELECT title FROM songs
    WHERE title ILIKE '%%my%%' OR title ILIKE '%%мой%%';
    
   
--ЗАДАНИЕ 3
   
-- количество исполнителей в каждом жанре;

SELECT genres.name, count(genres_artists.artist_id)
  FROM genres 
  JOIN genres_artists ON genres.id = genres_artists.genre_id 
  GROUP BY genres.name;
  
 -- количество треков, вошедших в альбомы 2000-2020 годов;
SELECT albums.title, albums.release_year, count(songs.album_id) 
  FROM albums
  JOIN songs ON albums.id = songs.album_id
  WHERE albums.release_year BETWEEN 2000 AND 2020
  GROUP BY albums.title, albums.release_year;
  
 --средняя продолжительность треков по каждому альбому;
SELECT albums.title, AVG(songs.duration)
  FROM albums
  JOIN songs ON albums.id = songs.album_id
  GROUP BY albums.title
  ORDER BY  AVG(songs.duration);
 
 --все исполнители, которые не выпустили альбомы в 2020 году;
SELECT name FROM artists a 
  JOIN artists_albums a2 on a.id = a2.artist_id
  JOIN albums a3 on a2.album_id = a3.id
  WHERE name NOT IN (SELECT name FROM artists_albums WHERE release_year >= 2020 AND release_year < 2021);

 --названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT collection.title FROM collection
  JOIN collection_songs ON collection.id = collection_songs.collection_id
  JOIN songs ON collection_songs.song_id = songs.id
  JOIN albums ON songs.album_id = albums.id
  JOIN artists_albums ON albums.id = artists_albums.album_id
  JOIN artists ON artists.id = artists_albums.artist_id
  WHERE artists.name = 'Rihanna'

