CREATE TABLE US_data (
	video_id VARCHAR(100) NOT NULL,
	trending_date VARCHAR,
	video_title VARCHAR,
	channel_title VARCHAR,
	category_id INT NOT NULL,
	tags VARCHAR,
	views INT,
	likes INT,
	dislikes INT,
	comment_count INT,
	comments_disabled BOOLEAN,
	ratings_disabled BOOLEAN,
	video_error_or_removed BOOLEAN,
	kind VARCHAR,
	etag VARCHAR,
	items VARCHAR,
	category_title VARCHAR,
	country VARCHAR(100)
);

CREATE TABLE MX_data (
	video_id VARCHAR(100) NOT NULL,
	trending_date VARCHAR,
	video_title VARCHAR,
	channel_title VARCHAR,
	category_id INT NOT NULL,
	tags VARCHAR,
	views INT,
	likes INT,
	dislikes INT,
	comment_count INT,
	comments_disabled BOOLEAN,
	ratings_disabled BOOLEAN,
	video_error_or_removed BOOLEAN,
	kind VARCHAR,
	etag VARCHAR,
	items VARCHAR,
	category_title VARCHAR,
	country VARCHAR(100)
);

CREATE TABLE CA_data (
	video_id VARCHAR(100) NOT NULL,
	trending_date VARCHAR,
	video_title VARCHAR,
	channel_title VARCHAR,
	category_id INT NOT NULL,
	tags VARCHAR,
	views INT,
	likes INT,
	dislikes INT,
	comment_count INT,
	comments_disabled BOOLEAN,
	ratings_disabled BOOLEAN,
	video_error_or_removed BOOLEAN,
	kind VARCHAR,
	etag VARCHAR,
	items VARCHAR,
	category_title VARCHAR,
	country VARCHAR(100)
);

SELECT * FROM US_data

SELECT channel_title, SUM(views)
FROM US_data
GROUP BY channel_title
ORDER BY SUM(views) DESC
LIMIT 5

SELECT channel_title, SUM(views)
FROM MX_data
GROUP BY channel_title
ORDER BY SUM(views) DESC
LIMIT 5

SELECT channel_title, SUM(views)
FROM CA_data
GROUP BY channel_title
ORDER BY SUM(views) DESC
LIMIT 5
