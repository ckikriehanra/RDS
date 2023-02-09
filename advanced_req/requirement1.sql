SELECT Category, SUM(Sentiment_Subjectivity) AS Sum_Sentiment_Subjectivity, SUM(Sentiment_Polarity) AS Sum_Sentiment_Polarity
FROM asm2_db.review_info AS R
INNER JOIN asm2_db.app_info AS A
ON R.App = A.App
GROUP BY Category;