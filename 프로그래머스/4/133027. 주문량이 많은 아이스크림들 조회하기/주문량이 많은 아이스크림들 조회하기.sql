-- 코드를 입력하세요
SELECT T.FLAVOR
FROM (
        SELECT FLAVOR, SUM(a.TOTAL_ORDER) AS TOTAL_ORDER_SUM
        FROM FIRST_HALF a
        GROUP BY FLAVOR
        UNION ALL
        SELECT FLAVOR, SUM(b.TOTAL_ORDER) AS TOTAL_ORDER_SUM
        FROM JULY b
        GROUP BY FLAVOR) T
GROUP BY FLAVOR
ORDER BY SUM(T.TOTAL_ORDER_SUM) DESC
FETCH FIRST 3 ROWS ONLY;