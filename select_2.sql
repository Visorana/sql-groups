SELECT title FROM album
	WHERE EXTRACT(YEAR FROM release_date) = 2018;


SELECT title, length FROM track
	WHERE length = (SELECT max(length) FROM track);


SELECT title, length FROM track
	WHERE length >= '00:3:30';
	
	
SELECT name, release_date FROM mixtape
	WHERE EXTRACT(YEAR FROM release_date) <= 2020 AND EXTRACT(YEAR FROM release_date) >= 2018;


SELECT stage_name FROM artist
	WHERE ARRAY_LENGTH(REGEXP_SPLIT_TO_ARRAY(stage_name, '\s+'), 1) = 1;
	

SELECT title FROM track
	WHERE title ILIKE '%my%'
	
SELECT g.name, COUNT(a.stage_name) FROM genre AS g
	LEFT JOIN artistgenre AS ag ON g.id = ag.genre_id
	LEFT JOIN artist AS a ON ag.artist_id = a.id
	GROUP BY g.name
	ORDER BY COUNT(a.id)


SELECT a.title, EXTRACT(YEAR FROM a.release_date), COUNT(t.title) FROM album AS a
	LEFT JOIN track AS t ON a.id = t.album_id
	WHERE EXTRACT(YEAR FROM a.release_date) = 2019 OR EXTRACT(YEAR FROM a.release_date) = 2020
	GROUP BY a.title, EXTRACT(YEAR FROM a.release_date)
	ORDER BY EXTRACT(YEAR FROM a.release_date)
	

SELECT a.title, AVG(t.length) FROM album AS a
	LEFT JOIN track AS t ON a.id = t.album_id
	GROUP BY a.title
	ORDER BY AVG(t.length)
	

SELECT DISTINCT a.stage_name FROM artist AS a
	WHERE a.stage_name NOT IN (
		SELECT DISTINCT a.stage_name FROM artist AS a
		LEFT JOIN artistalbum AS aa ON a.id = aa.artist_id 
		LEFT JOIN album AS al ON aa.album_id = al.id
		WHERE EXTRACT(YEAR FROM al.release_date) = 2020
	)
	GROUP BY a.stage_name
	
	
SELECT DISTINCT m.name FROM mixtape AS m
	LEFT JOIN trackmixtape AS tm ON m.id = tm.mixtape_id
	LEFT JOIN track AS t ON t.id = tm.track_id
	LEFT JOIN album AS al ON al.id = t.album_id
	LEFT JOIN artistalbum AS aa ON aa.album_id = al.id
	LEFT JOIN artist AS a ON a.id = aa.artist_id
	WHERE a.stage_name ilike 'Ariana Grande'
	ORDER BY m.name


SELECT al.title FROM album AS al
	LEFT JOIN artistalbum AS aa ON al.id = aa.album_id 
	LEFT JOIN artist AS a ON aa.artist_id = a.id 
	LEFT JOIN artistgenre AS ag ON a.id = ag.artist_id
	LEFT JOIN genre AS g ON ag.genre_id = g.id 
	GROUP BY al.title
	HAVING COUNT(DISTINCT g.name) > 1
	ORDER BY al.title


SELECT t.title FROM track AS t
	LEFT JOIN trackmixtape AS tm ON t.id = tm.track_id 
	WHERE tm.track_id IS NULL 
	ORDER BY t.title
	

SELECT a.stage_name, t.length FROM artist AS a
	LEFT JOIN artistalbum AS aa ON a.id = aa.artist_id 
	LEFT JOIN album AS al ON aa.album_id = al.id 
	LEFT JOIN track AS t ON al.id = t.album_id 
	GROUP BY a.stage_name, t.length
	HAVING t.length = (SELECT min(length) FROM track)
	ORDER BY a.stage_name
	

SELECT DISTINCT a.title, COUNT(t.title) FROM album AS a
	LEFT JOIN track AS t ON a.id = t.album_id 
	WHERE t.album_id IN (
		SELECT album_id FROM track
		GROUP BY album_id
		HAVING COUNT(id) = (
			SELECT count(id) FROM track 
            GROUP BY album_id
			ORDER BY count
			LIMIT 1
		)
	)
	GROUP BY a.title
	
	
	
	
	
	


	
