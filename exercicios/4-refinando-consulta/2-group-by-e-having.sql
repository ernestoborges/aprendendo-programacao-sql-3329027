-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente

SELECT DISTINCT
FirstName,
SUM(Total) AS total_gastos
FROM invoices
JOIN customers ON invoices.CustomerId = customers.CustomerId
GROUP BY FirstName;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30


SELECT DISTINCT
FirstName,
SUM(Total) AS total_gastos
FROM invoices
JOIN customers ON invoices.CustomerId = customers.CustomerId
GROUP BY FirstName
HAVING total_gastos > 30;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente

SELECT DISTINCT
FirstName,
MAX(Total) AS maior_gasto,
SUM(Total) AS total_gastos
FROM invoices
JOIN customers ON invoices.CustomerId = customers.CustomerId
GROUP BY FirstName
HAVING total_gastos > 30;
