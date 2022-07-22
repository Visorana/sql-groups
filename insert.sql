INSERT INTO artist(stage_name) VALUES
	('Ariana Grande'), 
	('Ed Sheeran'), 
	('Eminem'), 
	('The Weeknd'), 
	('Doja Cat'), 
	('Post Malone'), 
	('Bruno Mars'), 
	('Justin Bieber');
	

INSERT INTO genre(name) VALUES	
	('pop'), ('hip-hop'), ('R&B'), ('funk'), ('soul');
	

INSERT INTO artistgenre VALUES
	(1, 1), (2, 1), (3, 2), (4, 3), (4, 5), (5, 1), (5, 2), (5, 3), (6, 2), (7, 1), (7, 3), (7, 4), (7, 5), (8, 1), (8, 3)
	

INSERT INTO album(title, release_date) VALUES
	('Yours Truly', '2013-08-30'),
	('My Everything', '2014-08-25'),
	('Positions', '2020-10-30'), 
	('No.6 Collaborations Project', '2019-07-12'), 
	('The Marshall Mathers LP', '2000-05-23'),
	('The Slim Shady LP', '1999-02-23'),
	('The Eminem Show', '2002-05-29'),
	('Encore', '2004-11-12'),
	('Revival', '2018-12-15'), 
	('House of Balloons', '2011-03-21'),
	('Thursday', '2011-08-18'),
	('Beauty Behind the Madness', '2015-08-28'),
	('Starboy', '2016-11-25'),
	('After Hours', '2020-03-20'),
	('Planet Her', '2021-06-25'), 
	('Stoney', '2016-12-09'),
	('24K Magic', '2016-11-18'),
	('My World', '2009-11-17'),
	('My World 2.0', '2010-03-19'),
	('Dangerous Woman', '2016-05-20'),
	('Purpose', '2015-11-13'),
	('Believe', '2012-06-15')
	
	
INSERT INTO artistalbum(artist_id, album_id) VALUES
	(1, 1), (1, 2), (4, 2),
	(1, 3), (5, 3), (4, 3),
	(2, 4), (3, 4), (8, 4),
	(3, 5), (3, 6), (3, 7), 
	(3, 8), (3, 9), (2, 9),
	(4, 10), (4, 11), (4, 12), (2, 12), 
	(4, 13), (4, 14), (1, 14),
	(5, 15), (1, 15), (4, 15),
	(6, 16), (8, 16), (7, 17),
	(8, 18), (8, 19), (1, 20),
	(8, 21), (1, 21), (8, 22)
	

INSERT INTO track(album_id, title, length) VALUES
	(1, 'The Way', '00:3:10'), (1, 'Right There', '00:4:07'), (1, 'Baby I', '00:3:17'),
	(2, 'Problem', '00:3:14'), (2, 'Break Free', '00:3:34'), (2, 'Bang Bang', '00:3:19'), (2, 'Love Me Harder','00:3:56'), (2, 'One Last Time', '00:3:17'), (2, 'Best Mistake', '00:3:53'),
	(3, '34+35', '00:2:53'), (3, 'Motive', '00:2:47'), (3, 'Positions', '00:2:28'), (3, 'Obvious', '00:2:26'),
	(4, 'Beautiful People', '00:3:17'), (4, 'South of the Border', '00:3:24'), (4, 'I Don''t Care', '00:3:39'),
	(5, 'The Way I Am', '00:4:50'), (5, 'Stan', '00:6:44'), (5, 'The Real Slim Shady', '00:4:44'),
	(6, 'My Name Is', '00:4:26'), (6, 'Guilty Conscience', '00:3:19'),
	(7, 'Cleanin'' Out My Closet', '00:4:57'), (7, 'Sing for the Moment', '00:5:40'), (7, 'Without Me', '00:4:50'),
	(8, 'Like Toy Soldiers', '00:4:56'), (8, 'Mockingbird', '00:4:11'), (8, 'Just Lose It', '00:4:08'),
	(9, 'Walk On Water', '00:5:04'), (9, 'River', '00:3:41'), (9, 'Like Home', '00:4:05'),
	(10, 'Wicked Games', '00:5:24'), (10, 'Twenty Eight', '00:4:18'),
	(11, 'The Zone', '00:6:58'),
	(12, 'The Hills', '00:4:02'), (12, 'Can''t Feel My Face', '00:3:35'), (12, 'In the Night', '00:3:55'), (12, 'Acquainted', '00:5:49'), (12, 'Often', '00:4:10'),
	(13, 'Starboy', '00:3:50'), (13, 'I Feel It Coming', '00:4:29'), (13, 'Party Monster', '00:4:09'), (13, 'Secrets', '00:4:26'),
	(14, 'Save Your Tears', '00:3:35'), (14, 'Blinding Lights', '00:3:22'), (14, 'In Your Eyes', '00:3:57'),
	(15, 'Woman', '00:2:52'), (15, 'I Don''t Do Drugs"', '00:3:09'), (15, 'You right', '00:3:06'), (15, 'Kiss Me More', '00:3:28'),
	(16, 'Broken Whiskey Glass', '00:3:53'), (16, 'Deja Vu', '00:3:54'), (16, 'I Fall Apart', '00:3:43'), (16, 'Congratulations', '00:3:40'),
	(17, '24K Magic', '00:3:46'), (17, 'Chunky', '00:3:06'), (17, 'That''s What I Like', '00:3:26'), (17, 'Finesse', '00:3:10'),
	(18, 'One Time', '00:3:35'), (18, 'Baby', '00:3:36'), (18, 'One Less Lonely Girl', '00:3:48'), (18, 'Favorite Girl', '00:4:15'),
	(19, 'U Smile', '00:3:16'), (19, 'That Should Be Me', '00:3:52'), (19, 'Somebody to Love', '00:3:40'),
	(20, 'Into You', '00:4:04'), (20, 'Side to Side', '00:3:46'), (20, 'Be Alright', '00:2:57'), (20, 'Everyday', '00:3:14'), (20, 'Greedy', '00:3:34'), (20, 'Dangerous Woman', '00:3:55'),
	(21, 'What Do You Mean?', '00:3:25'), (21, 'Sorry', '00:3:20'), (21, 'I''ll Show You', '00:3:19'), (21, 'Love Yourself', '00:3:53'), (21, 'Company', '00:3:28'),
	(22, 'Boyfriend', '00:2:51'), (22, 'As Long As You Love Me', '00:3:49'), (22, 'Beauty and a Beat', '00:3:48'), (22, 'Right Here', '00:3:24'), (22, 'All Around the World', '00:4:04')
	

INSERT INTO mixtape (name, release_date) VALUES
	('The Remix', '2015-05-25'),
	('Curtain Call: The Hits', '2005-12-06'),
	('Trilogy', '2012-11-13'),
	('The Weeknd in Japan', '2018-11-21'),
	('The Highlights', '2021-02-05'),
	('My Worlds: The Collection', '2010-09-19'),
	('The Best', '2017-09-27'),
	('The Best', '2019-02-27')
	

INSERT INTO trackmixtape(track_id, mixtape_id) VALUES
	(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1),
	(16, 2), (17, 2), (18, 2), (19, 2), (20, 2), (21, 2), (22, 2), (23, 2), (24, 2), (25, 2), (26, 2),
	(27, 3), (28, 3), (29, 3), (30, 3), (31, 3), (32, 3),
	(30, 4), (33, 4), (34, 4), (35, 4), (36, 4), (37, 4), (38, 4), (39, 4), (40, 4), (41, 4),
	(42, 5), (43,5), (44, 5), (34, 5), (39, 5), (38, 5), (37, 5), (33, 5), (30, 5),
	(57, 6), (58, 6), (59, 6), (60, 6), (61, 6), (62, 6), (63, 6),
	(5, 7), (4, 7), (3, 7), (64, 7), (6, 7), (65, 7), (8, 7), (1, 7), (66, 7), (7, 7), (67, 7), (2, 7), (68, 7), (69, 7), (9, 7),
	(70, 8), (71, 8), (57, 8), (59, 8), (58, 8), (75, 8), (76, 8), (77, 8), (78, 8), (79, 8), (72, 8), (73, 8), (74, 8)