-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros

SELECT
Country as pais,
State as estado_sigla,
CASE
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'DF' THEN 'Distrito Federal'
END as estado
FROM customers
WHERE pais = 'Brazil';