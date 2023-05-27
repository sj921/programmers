SELECT *
FROM ( SELECT
            INS.NAME,
            INS.DATETIME
        FROM 
            ANIMAL_INS INS
        LEFT JOIN
            ANIMAL_OUTS OUTS
        ON
            INS.ANIMAL_ID = OUTS.ANIMAL_ID
        WHERE
            OUTS.DATETIME IS NULL
        ORDER BY
            INS.DATETIME ASC )
WHERE ROWNUM <= 3;

