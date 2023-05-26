-- 코드를 입력하세요
SELECT
    OUTS.ANIMAL_ID, 
    OUTS.NAME
FROM
    ANIMAL_OUTS OUTS
LEFT JOIN
    ANIMAL_INS  INS
ON
    OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE
    INS.DATETIME - OUTS.DATETIME > 0
ORDER BY
    INS.DATETIME ASC;