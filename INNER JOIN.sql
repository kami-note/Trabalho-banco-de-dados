use apresentacaobd2;

-- 1. Produto que mais vendeu

SELECT 
    p.name AS produto, SUM(oi.quantity) AS total_vendido
FROM
    order_item oi
        JOIN
    product p ON oi.product_id = p.id
GROUP BY p.name
ORDER BY total_vendido DESC
LIMIT 1;

-- 2. Produtos que menos vendeu.

SELECT 
    p.name AS produto, 
    SUM(oi.quantity) AS total_vendido
FROM 
    order_item oi
JOIN 
    product p ON oi.product_id = p.id
GROUP BY 
    p.name
ORDER BY 
    total_vendido ASC
LIMIT 1;


-- 3. Mes com mais vendas

SELECT 
    MONTH(co.order_date) AS mes, 
    YEAR(co.order_date) AS ano, 
    COUNT(co.id) AS total_vendas
FROM 
    customer_order co
GROUP BY 
    YEAR(co.order_date), MONTH(co.order_date)
ORDER BY 
    total_vendas DESC
LIMIT 1;



-- 4. Os metodos de pagamentos mais usados

SELECT 
    pm.payment_type AS forma_pagamento, 
    COUNT(ph.id) AS total_vezes_usada
FROM 
    payment_history ph
JOIN 
    payment_method pm ON ph.payment_method_id = pm.id
GROUP BY 
    pm.payment_type
ORDER BY 
    total_vezes_usada DESC
LIMIT 1;


-- 5. Endereço com mais entregas

SELECT 
    CONCAT(a.street, ', ', a.city, ' - ', a.state) AS endereco, 
    COUNT(dh.id) AS total_entregas
FROM 
    delivery_history dh
JOIN 
    address a ON dh.address_id = a.id
GROUP BY 
    a.id
ORDER BY 
    total_entregas DESC
LIMIT 1;



-- 6. Pedidos com mais produtos.

SELECT 
    co.id AS venda_id, 
    SUM(oi.quantity) AS total_produtos
FROM 
    customer_order co
JOIN 
    order_item oi ON co.id = oi.order_id
GROUP BY 
    co.id
ORDER BY 
    total_produtos DESC
LIMIT 1;



-- 7. Metodos de pagamento dos pedidos desse mes.
SELECT 
    pm.payment_type AS forma_pagamento, 
    COUNT(ph.id) AS total_vendas
FROM 
    payment_history ph
JOIN 
    payment_method pm ON ph.payment_method_id = pm.id
WHERE 
    MONTH(ph.payment_date) = MONTH(CURRENT_DATE())
    AND YEAR(ph.payment_date) = YEAR(CURRENT_DATE())
GROUP BY 
    pm.payment_type;

-- 8. Metodos de pagamentos usados mes anterior.

SELECT 
    pm.payment_type AS forma_pagamento, 
    COUNT(ph.id) AS total_vendas
FROM 
    payment_history ph
JOIN 
    payment_method pm ON ph.payment_method_id = pm.id
WHERE 
    MONTH(ph.payment_date) = MONTH(CURRENT_DATE() - INTERVAL 1 MONTH)
    AND YEAR(ph.payment_date) = YEAR(CURRENT_DATE() - INTERVAL 1 MONTH)
GROUP BY 
    pm.payment_type;