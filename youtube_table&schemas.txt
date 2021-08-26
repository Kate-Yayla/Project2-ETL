CREATE TABLE combined(
	video_id VARCHAR(100) NOT NULL,
	trending_date DATE,
	video_title VARCHAR(100),
	channel_title VARCHAR(100),
	category_id INT NOT NULL,
	tags VARCHAR(100),
	views INT,
	likes INT,
	dislikes INT,
	comment_count INT,
	comments_disabled BOOLEAN,
	ratings_disabled BOOLEAN,
	video_error_or_removed BOOLEAN,
	kind VARCHAR(100),
	etag VARCHAR(100),
	items VARCHAR(100),
	category_title VARCHAR(100),
	country VARCHAR(100)
);

SELECT category_title, country, COUNT(views) AS "Views Count per Category by Country"
FROM combined
GROUP BY category_title, country
ORDER BY country, "Views Count per Category by Country" DESC

SELECT category_title, country, likes
FROM combined
GROUP BY category_title, country, likes
ORDER BY country, "Likes Count per Category by Country" DESC

SELECT category_title, country, likes
FROM combined
GROUP BY category_title, country, likes
ORDER BY country DESC

SELECT category_title, country, COUNT(views) AS "Views Count per Category by Country"
FROM combined
GROUP BY category_title, country
ORDER BY country, "Views Count per Category by Country" DESC

SELECT category_title, country, SUM(likes)
FROM combined
GROUP BY category_title, country 
ORDER BY country, SUM(likes) DESC

SELECT category_title, country, SUM(dislikes)
FROM combined
GROUP BY category_title, country 
ORDER BY country, SUM(dislikes) ASC

SELECT channel_title, country, SUM(views)
FROM combined
GROUP BY channel_title, country 
ORDER BY country, SUM(views) DESC