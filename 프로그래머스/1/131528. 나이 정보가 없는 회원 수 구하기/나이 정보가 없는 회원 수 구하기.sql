-- 코드를 입력하세요
SELECT COUNT(USER_ID) AS USERS # COUNT(*)가 아닌 특정 속성을 지정한 COUNT(속성)일 경우 NULL값을 제외하고 카운트 하기 때문에 주의
FROM USER_INFO
WHERE AGE IS NULL;