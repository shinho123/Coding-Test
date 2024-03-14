-- 코드를 입력하세요
SELECT B.USER_ID, 
       B.NICKNAME, 
       B.CITY || ' ' || B.STREET_ADDRESS1 || ' ' || B.STREET_ADDRESS2 AS "전체주소", 
       SUBSTR(B.TLNO, 1, 3) || '-' || SUBSTR(B.TLNO, 4, 4) || '-' || SUBSTR(B.TLNO, 8) AS "전화번호"
FROM USED_GOODS_USER B
WHERE B.USER_ID IN (SELECT WRITER_ID
                    FROM USED_GOODS_BOARD
                    GROUP BY WRITER_ID
                    HAVING COUNT(*) >= 3)
ORDER BY B.USER_ID DESC;