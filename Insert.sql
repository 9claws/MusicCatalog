INSERT INTO genres VALUES(1, 'rock');
INSERT INTO genres VALUES(2, 'jazz');
INSERT INTO genres VALUES(3, 'pop');


INSERT INTO artists VALUES(1, 'The Beatles');
INSERT INTO artists VALUES(2, 'Queen');
INSERT INTO artists VALUES(3, 'Louis Armstrong');
INSERT INTO artists VALUES(4, 'Rihanna');
INSERT INTO artists VALUES(5, 'Lady Gaga');
INSERT INTO artists VALUES(6, 'Nina Simone');

INSERT INTO albums VALUES(1, 'Abbey Road', 1969);
INSERT INTO albums VALUES(2, 'Hot Space', 1982);
INSERT INTO albums VALUES(3, 'Porgy and Bess', 1959);
INSERT INTO albums VALUES(4, 'Good Girl Gone Bad', 2007);
INSERT INTO albums VALUES(5, 'The Fame', 2008);
INSERT INTO albums VALUES(6, 'Help!', 1965);
INSERT INTO albums VALUES(7, 'Born This Way', 2011);
INSERT INTO albums VALUES(8, 'I Put a Spell on You', 1965);

INSERT INTO songs VALUES(1, 1, 'Come Together', 258);
INSERT INTO songs VALUES(2, 1, 'Sun King', 147);
INSERT INTO songs VALUES(3, 2, 'Staying Power', 260);
INSERT INTO songs VALUES(4, 2, 'Put Out the Fire', 195);
INSERT INTO songs VALUES(5, 3, 'Oh Bess, Oh Where''s My Bess', 155);
INSERT INTO songs VALUES(6, 4, 'Umbrella', 275);
INSERT INTO songs VALUES(7, 4, 'Don''t Stop The Music', 267);
INSERT INTO songs VALUES(8, 5, 'Just Dance', 242);
INSERT INTO songs VALUES(9, 6, 'Help!', 140);
INSERT INTO songs VALUES(10, 7, 'Judas', 248);
INSERT INTO songs VALUES(11, 8, 'Feeling Good', 174);

INSERT INTO genres_artists VALUES(1,1);
INSERT INTO genres_artists VALUES(1,2);
INSERT INTO genres_artists VALUES(2,3);
INSERT INTO genres_artists VALUES(3,4);
INSERT INTO genres_artists VALUES(3,5);
INSERT INTO genres_artists VALUES(2,6);

INSERT INTO artists_albums VALUES(1, 1);
INSERT INTO artists_albums VALUES(6, 1);
INSERT INTO artists_albums VALUES(2, 2);
INSERT INTO artists_albums VALUES(3, 3);
INSERT INTO artists_albums VALUES(4, 4);
INSERT INTO artists_albums VALUES(5, 5);
INSERT INTO artists_albums VALUES(7, 5);
INSERT INTO artists_albums VALUES(8, 6);


INSERT INTO collection VALUES(1, 'Best rock', 1990);
INSERT INTO collection VALUES(2, 'Best pop', 2015);
INSERT INTO collection VALUES(3, 'Golden Gaga', 2020);
INSERT INTO collection VALUES(4, 'Great Jazz', 1970);



INSERT INTO collection_songs VALUES(1, 1);
INSERT INTO collection_songs VALUES(1, 2);
INSERT INTO collection_songs VALUES(1, 3);
INSERT INTO collection_songs VALUES(1, 4);
INSERT INTO collection_songs VALUES(2, 6);
INSERT INTO collection_songs VALUES(2, 7);
INSERT INTO collection_songs VALUES(2, 10);
INSERT INTO collection_songs VALUES(3, 8);
INSERT INTO collection_songs VALUES(3, 10);
INSERT INTO collection_songs VALUES(4, 5);
INSERT INTO collection_songs VALUES(4, 11);
