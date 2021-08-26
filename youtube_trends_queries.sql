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

SELECT *
FROM
	(SELECT usa.country, usa.category_title, SUM(usa.likes)
	 FROM combined usa
	 WHERE usa.country='US'
GROUP BY usa.country, usa.category_title
ORDER BY SUM(usa.likes) DESC
FETCH FIRST 5 ROWS ONLY) usa
UNION ALL
SELECT *
FROM
	(SELECT mx.country, mx.category_title, SUM(mx.likes)
	 FROM combined mx
	 WHERE mx.country='MX'
GROUP BY mx.country, mx.category_title
ORDER BY SUM(mx.likes) DESC
FETCH FIRST 5 ROWS ONLY) mx
UNION ALL
SELECT *
FROM
	(SELECT ca.country, ca.category_title, SUM(ca.likes)
	 FROM combined ca
	 WHERE ca.country='CA'
GROUP BY ca.country, ca.category_title
ORDER BY SUM(ca.likes) DESC
FETCH FIRST 5 ROWS ONLY) ca

SELECT *
FROM
	(SELECT usa.country, usa.channel_title, SUM(usa.likes)
	 FROM combined usa
	 WHERE usa.country='US'
GROUP BY usa.country, usa.channel_title
ORDER BY SUM(usa.likes) DESC
FETCH FIRST 5 ROWS ONLY) usa
UNION ALL
SELECT *
FROM
	(SELECT mx.country, mx.channel_title, SUM(mx.likes)
	 FROM combined mx
	 WHERE mx.country='MX'
GROUP BY mx.country, mx.channel_title
ORDER BY SUM(mx.likes) DESC
FETCH FIRST 5 ROWS ONLY) mx
UNION ALL
SELECT *
FROM
	(SELECT ca.country, ca.channel_title, SUM(ca.likes)
	 FROM combined ca
	 WHERE ca.country='CA'
GROUP BY ca.country, ca.channel_title
ORDER BY SUM(ca.likes) DESC
FETCH FIRST 5 ROWS ONLY) ca

SELECT *
FROM
	(SELECT usa.country, usa.channel_title, SUM(usa.dislikes)
	 FROM combined usa
	 WHERE usa.country='US'
GROUP BY usa.country, usa.channel_title
ORDER BY SUM(usa.dislikes) DESC
FETCH FIRST 3 ROWS ONLY) usa
UNION ALL
SELECT *
FROM
	(SELECT mx.country, mx.channel_title, SUM(mx.dislikes)
	 FROM combined mx
	 WHERE mx.country='MX'
GROUP BY mx.country, mx.channel_title
ORDER BY SUM(mx.dislikes) DESC
FETCH FIRST 3 ROWS ONLY) mx
UNION ALL
SELECT *
FROM
	(SELECT ca.country, ca.channel_title, SUM(ca.dislikes)
	 FROM combined ca
	 WHERE ca.country='CA'
GROUP BY ca.country, ca.channel_title
ORDER BY SUM(ca.dislikes) DESC
FETCH FIRST 3 ROWS ONLY) ca

SELECT *
FROM
	(SELECT usa.country, usa.channel_title, SUM(usa.views)
	 FROM combined usa
	 WHERE usa.country='US'
GROUP BY usa.country, usa.channel_title
ORDER BY SUM(usa.views) ASC
FETCH FIRST 3 ROWS ONLY) usa
UNION ALL
SELECT *
FROM
	(SELECT mx.country, mx.channel_title, SUM(mx.views)
	 FROM combined mx
	 WHERE mx.country='MX'
GROUP BY mx.country, mx.channel_title
ORDER BY SUM(mx.views) ASC
FETCH FIRST 3 ROWS ONLY) mx
UNION ALL
SELECT *
FROM
	(SELECT ca.country, ca.channel_title, SUM(ca.views)
	 FROM combined ca
	 WHERE ca.country='CA'
GROUP BY ca.country, ca.channel_title
ORDER BY SUM(ca.views) ASC
FETCH FIRST 3 ROWS ONLY) ca