-- 코드를 입력하세요
SELECT A.PRODUCT_ID, A.PRODUCT_NAME, ROUND(A.PRICE * SUM(B.AMOUNT)) AS TOTAL_SALES
FROM FOOD_PRODUCT A JOIN FOOD_ORDER B USING(PRODUCT_ID)
WHERE DATE_FORMAT(B.PRODUCE_DATE, '%Y-%m') = '2022-05'
GROUP BY A.PRODUCT_ID, A.PRODUCT_NAME
ORDER BY TOTAL_SALES DESC, A.PRODUCT_ID ASC; 


