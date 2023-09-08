USE AdventureWorks2019
SELECT
    T.name AS Tabela,
    C.name AS Coluna
FROM
    sys.sysobjects    AS T
INNER JOIN sys.all_columns AS C  ON T.id = C.object_id AND T.XTYPE = 'U'
WHERE
    C.NAME LIKE '%prod%'
ORDER BY
    T.name ASC