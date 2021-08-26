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



 