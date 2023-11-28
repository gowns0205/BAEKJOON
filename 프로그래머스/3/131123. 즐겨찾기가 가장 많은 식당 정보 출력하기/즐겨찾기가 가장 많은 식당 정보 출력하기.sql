SELECT r.FOOD_TYPE, r.REST_ID, r.REST_NAME, r.FAVORITES
FROM REST_INFO AS r 
INNER JOIN (
    SELECT FOOD_TYPE, MAX(FAVORITES) AS MAX_FAVORITES
    FROM REST_INFO
    GROUP BY FOOD_TYPE
) AS grp
ON r.FOOD_TYPE = grp.FOOD_TYPE AND r.FAVORITES = grp.MAX_FAVORITES
ORDER BY r.FOOD_TYPE DESC;
