SELECT Category,
       SUM(CASE
            WHEN Sentiment='Negative' THEN 1
            ELSE 0
        END) AS Count_Negative,
        SUM(CASE
            WHEN Sentiment='Positive' THEN 1
            ELSE 0
        END) AS Count_Positive,
        SUM(CASE
            WHEN Sentiment='Neutral' THEN 1
            ELSE 0
        END) AS Count_Neutral
FROM asm2_db.review_info AS R
INNER JOIN asm2_db.app_info AS A
ON R.App = A.App
GROUP BY Category;