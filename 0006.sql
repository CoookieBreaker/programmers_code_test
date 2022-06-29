-- programmers
-- SUM, MAX, MIN 최대값 구하기
SELECT MAX(DATETIME) FROM ANIMAL_INS;

-- programmers
-- SUM, MAX, MIN 최솟값 구하기
SELECT MIN(DATETIME) FROM ANIMAL_INS;

-- programmers
-- SUM, MAX, MIN 동물 수 구하기
SELECT COUNT(ANIMAL_ID) FROM ANIMAL_INS;

-- programmers
-- SUM, MAX, MIN 중복 제거하기
SELECT COUNT(B.NAME) FROM (SELECT A.* FROM (SELECT DISTINCT NAME FROM ANIMAL_INS)A WHERE NAME IS NOT NULL)B;

-- programmers
-- GROUP BY 고양이와 개는 몇 마리 있을까
SELECT ANIMAL_TYPE, COUNT(ANIMAL_ID) FROM ANIMAL_INS GROUP BY ANIMAL_TYPE ORDER BY ANIMAL_TYPE ASC;

-- programmers
-- GROUP BY 동명 동물 수 찾기
SELECT NAME, COUNT(NAME) FROM ANIMAL_INS GROUP BY NAME HAVING COUNT(NAME) > 1 ORDER BY NAME ASC;

-- programmers
-- GROUP BY 입양 시각 구하기(1) (미완)
SELECT EXTRACT(HOUR FROM CAST(DATETIME AS TIMESTAMP)) AS HOUR, COUNT(DATETIME) FROM ANIMAL_OUTS
GROUP BY EXTRACT(HOUR FROM CAST(DATETIME AS TIMESTAMP)), DATETIME
ORDER BY HOUR;