create database project;
use project;

create table Artist(
artist_id SMALLINT not NULL PRIMARY KEY,
artist_name char(128)
);
INSERT INTO Artist (artist_id,artist_name)values
	(1, 'Maroon 5'),
	(2, 'Adele'),
	(3, 'Ed Sheeran'),
	(4, 'Coldplay'),
    (5, 'Post Malone'),
  (6, 'Sidhu Moose Wala'),
  (7, 'Diljit Dosanjh');

Create table Album(
artist_id smallint,
album_id smallint NOT NULL PRIMARY KEY,
album_name char(128),
foreign key (artist_id) references Artist(artist_id)
);

INSERT INTO Album (artist_id , album_id , album_name) VALUES
-- Maroon 5 albums
  (1, 1, 'Songs About Jane'),
  (1, 2, 'It Won''t Be Soon Before Long'),
  (1, 3, 'Hands All Over'),
  (1, 4, 'Overexposed'),
  (1, 5, 'V'),
  (2, 6, '19'),
  (2, 7, '21'),
  (2, 8, '25'),
  (2, 9, '30'),
  (2, 10, 'Unreleased'),
  (3, 11, 'Plus'),
  (3, 12, 'Multiply'),
  (3, 13, 'Divide'),
  (3, 14, 'No.6 Collaborations Project'),
  (3, 15, 'Unreleased'),
  (4, 16, 'Parachutes'),
  (4, 17, 'A Rush of Blood to the Head'),
  (4, 18, 'X&Y'),
  (4, 19, 'Viva la Vida or Death and All His Friends'),
  (4, 20, 'Everyday Life'),
  (5, 21, 'stoney(delux)'),
  (5, 22, 'Hollywood\'s Bleeding'),
  (6, 23, 'No Name'),
  (6, 24, 'Pbx 1'),
  (7, 25, 'confidential'),
  (7, 26, 'Goat');
  
  CREATE TABLE Track(
  Track_id smallint NOT NULL PRIMARY KEY,
  track_name char(128),
  artist_id smallint,
  album_id smallint,
  Time_t decimal,
  FOREIGN KEY (artist_id) references Artist(artist_id),
  FOREIGN KEY (album_id) references Album(album_id)
  );
  
  INSERT INTO Track(Track_id , track_name, artist_id , album_id , time_t) VALUES 
	-- Maroon 5 tracks
  (1, 'Sugar', 1, 1, 3.45),
  (2, 'Makes Me Wonder', 1, 2, 4.10),
  (3, 'Misery', 1, 3, 2.58),
  (4, 'One More Night', 1, 4, 3.15),
  (5, 'Maps', 1, 5, 4.05),
  (6, 'Chasing Pavements', 2, 6, 3.30),
  (7, 'Rolling in the Deep', 2, 7, 4.20),
  (8, 'Hello', 2, 8, 3.55),
  (9, 'Someone Like You', 2, 9, 4.40),
  (10, 'Skyfall', 2, 10, 3.20),
  (11, 'The A Team', 3, 11, 2.50),
  (12, 'Thinking Out Loud', 3, 12, 3.05),
  (13, 'Shape of You', 3, 13, 4.15),
  (14, 'Beautiful People', 3, 14, 3.30),
  (15, 'Castle on the Hill', 3, 15, 4.25),
  (16, 'Yellow', 4, 16, 4.29),
  (17, 'Clocks', 4, 17, 5.07),
  (18, 'Viva la Vida', 4, 18, 4.02),
  (19, 'Paradise', 4, 19, 4.38),
  (20, 'Orphans', 4, 20, 3.17),
  (21, 'Big lie', 5, 21, 3.53),
  (22, 'Deja Vu', 5, 21, 3.54),
  (23, 'No option', 5, 21, 3.54),
  (24, 'Cold', 5, 21, 4.28),
  (25, 'White Iverson', 5, 21, 4.16),
  (26, 'Saint-Tropez', 5, 22, 2.36),
  (27, 'Circles', 5, 22, 3.35),
  (28, 'Die for Me', 5, 22, 3.35),
  (29, 'On The Road', 5, 22, 3.38),
  (30, 'Wow.', 5, 22, 2.29),
  (31, 'Never Fold', 6, 23, 3.03),
  (32, 'Love Sick', 6, 23, 3.52),
  (33, 'Everybody Hurts', 6, 23, 2.53),
  (34, '0 to 100', 6, 23, 1.48),
  (35, 'Bloodlust', 6, 23, 2.39),
  (36, 'Dawood', 6, 24, 3.21),
  (37, 'Trend', 6, 24, 3.44),
  (38, 'Selfmade', 6, 24, 3.13),
  (39, 'I\'m Better Now', 6, 24, 4.28),
  (40, 'Devil', 6, 24, 4.07),
  (41, 'high end', 7, 25, 3.30),
  (42, 'future', 7, 25, 2.50),
  (43, 'big seen', 7, 25, 3.20),
  (44, 'drive', 7, 25, 2.50),
  (45, 'sorry', 7, 25, 3.40),
  (46, 'taare', 7, 26, 3.20),
  (47, 'clash', 7, 26, 2.20),
  (48, 'whiskey', 7, 26, 2.21),
  (49, 'born to shine', 7, 26, 3.12);
  
  CREATE TABLE Played(
  artist_id smallint ,
  album_id smallint ,
  Track_id smallint,
  played timestamp,
  foreign key(artist_id) references Artist(artist_id),
  foreign key(album_id) references Album(album_id),
  foreign key(Track_id) references Track(Track_id)
  );
 
  
INSERT INTO Played (artist_id, album_id , Track_id , played) VALUES
(1, 1, 1, '2023-06-14 10:30:00'),
(1, 2, 2, '2023-06-14 11:15:00'),
(1, 3, 3, '2023-06-14 12:00:00'),
(1, 4, 4, '2023-06-14 13:45:00'),
(1, 5, 5, '2023-06-14 14:30:00'),
(2, 6, 6, '2023-06-14 15:45:00'),
(2, 7, 7, '2023-06-14 16:15:00'),
(2, 8, 8, '2023-06-14 17:00:00'),
(2, 9, 9, '2023-06-14 18:30:00'),
(2, 10, 10, '2023-06-14 19:45:00'),
(3, 11, 11, '2023-06-15 09:30:00'),
(3, 12, 12, '2023-06-15 10:15:00'),
(3, 13, 13, '2023-06-15 11:00:00'),
(3, 14, 14, '2023-06-15 12:45:00'),
(3, 15, 15, '2023-06-15 13:30:00'),
(4, 16, 16, '2023-06-15 14:45:00'),
(4, 17, 17, '2023-06-15 15:15:00'),
(4, 18, 18, '2023-06-15 16:00:00'),
(4, 19, 19, '2023-06-15 17:30:00'),
(4, 20, 20, '2023-06-15 18:45:00'),
(1, 1, 1, '2023-06-15 10:30:00'),
(1, 2, 2, '2023-06-15 11:15:00'),
(1, 3, 3, '2023-06-15 12:00:00'),
(1, 4, 4, '2023-06-15 13:45:00'),
(1, 5, 5, '2023-06-15 14:30:00'),
(2, 6, 6, '2023-06-15 15:45:00'),
(2, 7, 7, '2023-06-15 16:15:00'),
(2, 8, 8, '2023-06-15 17:00:00'),
(2, 9, 9, '2023-06-15 18:30:00'),
(2, 10, 10, '2023-06-15 19:45:00'),
(3, 11, 11, '2023-06-15 09:30:00'),
(3, 12, 12, '2023-06-15 10:15:00'),
(3, 13, 13, '2023-06-15 11:00:00'),
(3, 14, 14, '2023-06-15 12:45:00'),
(3, 15, 15, '2023-06-15 13:30:00'),
(4, 16, 16, '2023-06-15 14:45:00'),
(4, 17, 17, '2023-06-15 15:15:00'),
(4, 18, 18, '2023-06-15 16:00:00'),
(4, 19, 19, '2023-06-15 17:30:00'),
(4, 20, 20, '2023-06-15 18:45:00'),
(5, 21, 21, '2023-06-15 10:30:25'),
(5, 21, 22, '2023-06-15 12:13:25'),
(5, 21, 23, '2023-06-15 12:30:25'),
(5, 21, 24, '2023-06-15 11:30:25'),
(5, 21, 25, '2023-06-15 14:30:25'),
(5, 22, 26, '2023-06-15 15:15:25'),
(5, 22, 27, '2023-06-15 15:55:25'),
(5, 22, 28, '2023-06-15 11:22:20'),
(5, 22, 29, '2023-06-15 13:11:55'),
(5, 22, 30, '2023-06-15 10:30:25'),
(6, 23, 31, '2023-06-15 11:20:11'),
(6, 23, 32, '2023-06-15 11:20:15'),
(6, 23, 33, '2023-06-15 18:15:25'),
(6, 23, 34, '2023-06-15 19:30:25'),
(6, 23, 35, '2023-06-15 10:30:25'),
(6, 24, 36, '2023-06-15 11:30:25'),
(6, 24, 37, '2023-06-15 13:30:25'),
(6, 24, 38, '2023-06-15 16:30:25'),
(6, 24, 39, '2023-06-15 19:30:25'),
(6, 24, 40, '2023-06-15 20:30:25'),
(7, 25, 41, '2023-06-15 20:22:25'),
(7, 25, 42, '2023-06-15 10:30:25'),
(7, 25, 43, '2023-06-15 19:39:25'),
(7, 25, 44, '2023-06-15 11:45:25'),
(7, 25, 45, '2023-06-15 18:20:25'),
(7, 26, 46, '2023-06-15 12:30:25'),
(7, 26, 47, '2023-06-15 21:32:25'),
(7, 26, 48, '2023-06-15 12:13:22'),
(7, 26, 49, '2023-06-15 16:32:29');


SELECT artist.artist_id , artist.artist_name , album.album_id , album.album_name , track.track_id , track.track_name , played.played 
FROM Artist
join Album ON Artist.artist_id = album.artist_id
join Track ON Album.album_id = track.album_id
join played ON  Track.track_id = played.track_id;

SELECT Artist.artist_id, Artist.artist_name, DATE(played) AS play_date , SEC_TO_TIME(SUM(TIME_TO_SEC(played.played))) AS total_plays
FROM Artist
JOIN played ON Artist.artist_id = played.artist_id
GROUP BY Artist.artist_id, Artist.artist_name, play_date
ORDER BY total_plays DESC;

SELECT artist.artist_id , artist_name , album.album_id , album_name , track.track_id ,track_name, played
FROM Artist
JOIN Album ON artist.artist_id = album.artist_id
JOIN Track ON album.album_id = track.album_id
join played ON  Artist.artist_id = played.track_id
WHERE artist.artist_id = 1;

SELECT artist.artist_id , artist_name , album.album_id , album_name , track.track_id , track_name , played
FROM artist 
JOIN Album ON Artist.artist_id = album.artist_id
JOIN Track ON Album.album_id = track.album_id
JOIN played ON  Track.track_id = played.track_id
WHERE album.album_name = "Songs About Jane";

select album_name from album;
