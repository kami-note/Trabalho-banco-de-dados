use apresentacaobd2;


	INSERT INTO payment_method (created_at, updated_at, status, payment_type) VALUES
	(NOW(), NOW(), 'ACTIVE', 'CREDIT_CARD'),
	(NOW(), NOW(), 'ACTIVE', 'DEBIT_CARD'),
	(NOW(), NOW(), 'ACTIVE', 'CASH'),
	(NOW(), NOW(), 'ACTIVE', 'PIX'),
	(NOW(), NOW(), 'ACTIVE', 'BANK_TRANSFER');



	INSERT INTO address (created_at, updated_at, status, city, neighborhood, number, postal_code, state, street) VALUES
	(NOW(), NOW(), 'ACTIVE', 'São Paulo', 'Centro', '123', '01000-000', 'SP', 'Rua A'),
	(NOW(), NOW(), 'ACTIVE', 'Rio de Janeiro', 'Copacabana', '456', '22000-000', 'RJ', 'Avenida Atlântica'),
	(NOW(), NOW(), 'ACTIVE', 'Belo Horizonte', 'Savassi', '789', '30100-000', 'MG', 'Rua B'),
	(NOW(), NOW(), 'ACTIVE', 'Salvador', 'Barra', '321', '40100-000', 'BA', 'Rua C'),
	(NOW(), NOW(), 'ACTIVE', 'Curitiba', 'Centro Cívico', '654', '80000-000', 'PR', 'Avenida D');



	INSERT INTO category (created_at, updated_at, status, category_type, description, name) VALUES
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Pratos principais e refeições', 'Main Course'),
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Fast-foods como hambúrgueres e lanches rápidos', 'Fast Food'),
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Cozinha japonesa e sushi', 'Japanese'),
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Culinária mexicana como tacos e burritos', 'Mexican'),
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Massas e pratos italianos', 'Italian'),
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Sobremesas e doces', 'Desserts'),
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Sopas e caldos', 'Soups'),
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Comida saudável e fitness', 'Healthy'),
	(NOW(), NOW(), 'ACTIVE', 'FOOD', 'Carnes e churrasco', 'Grill'),
	(NOW(), NOW(), 'ACTIVE', 'DRINK', 'Bebidas alcoólicas e não alcoólicas', 'Beverages');



	INSERT INTO restaurant (created_at, updated_at, status, has_pickup_option, name, phone_number, category_id) VALUES
	(NOW(), NOW(), 'ACTIVE', 1, 'Pizza Palace', '123456789', 1),
	(NOW(), NOW(), 'ACTIVE', 1, 'Burger Barn', '987654321', 2),
	(NOW(), NOW(), 'ACTIVE', 1, 'Sushi Spot', '456123789', 3),
	(NOW(), NOW(), 'ACTIVE', 0, 'Taco Town', '789321654', 2),
	(NOW(), NOW(), 'ACTIVE', 1, 'Pasta Place', '321654987', 1),
	(NOW(), NOW(), 'ACTIVE', 1, 'Grill House', '111222333', 4),
	(NOW(), NOW(), 'ACTIVE', 1, 'Dessert Dream', '444555666', 5),
	(NOW(), NOW(), 'ACTIVE', 0, 'Soup City', '777888999', 6),
	(NOW(), NOW(), 'ACTIVE', 1, 'Healthy Bites', '555666777', 7),
	(NOW(), NOW(), 'ACTIVE', 1, 'Steakhouse Deluxe', '333444555', 4);



	INSERT INTO product (created_at, updated_at, status, description, name, price, restaurant_id) VALUES
	(NOW(), NOW(), 'ACTIVE', 'Classic Cheese Pizza', 'Cheese Pizza', 30.00, 1),
	(NOW(), NOW(), 'ACTIVE', 'Pepperoni Pizza', 'Pepperoni Pizza', 35.00, 2),
	(NOW(), NOW(), 'ACTIVE', 'Veggie Burger', 'Veggie Burger', 25.00, 3),
	(NOW(), NOW(), 'ACTIVE', 'Beef Burger', 'Beef Burger', 30.00, 4),
	(NOW(), NOW(), 'ACTIVE', 'California Roll', 'California Roll', 20.00, 5),
	(NOW(), NOW(), 'ACTIVE', 'Spicy Tuna Roll', 'Spicy Tuna Roll', 22.00, 6),
	(NOW(), NOW(), 'ACTIVE', 'Tacos al Pastor', 'Tacos', 15.00, 7),
	(NOW(), NOW(), 'ACTIVE', 'Grilled Chicken', 'Grilled Chicken', 28.00, 8),
	(NOW(), NOW(), 'ACTIVE', 'Chocolate Cake', 'Chocolate Cake', 12.00, 9),
	(NOW(), NOW(), 'ACTIVE', 'Steak Dinner', 'Steak Dinner', 50.00, 10);



INSERT INTO accompaniment (created_at, updated_at, status, description, name, price, restaurant_id) VALUES
(NOW(), NOW(), 'ACTIVE', 'Molho de tomate adicional', 'Extra Tomato Sauce', 5.00, 1),
(NOW(), NOW(), 'ACTIVE', 'Batata frita', 'French Fries', 10.00, 2),
(NOW(), NOW(), 'ACTIVE', 'Arroz especial', 'Special Rice', 8.00, 3),
(NOW(), NOW(), 'ACTIVE', 'Guacamole', 'Guacamole', 12.00, 4),
(NOW(), NOW(), 'ACTIVE', 'Pão de alho', 'Garlic Bread', 7.00, 5),
(NOW(), NOW(), 'ACTIVE', 'Molho barbecue', 'BBQ Sauce', 4.00, 6),
(NOW(), NOW(), 'ACTIVE', 'Salada de folhas', 'Green Salad', 9.00, 7),
(NOW(), NOW(), 'ACTIVE', 'Farofa crocante', 'Crunchy Farofa', 6.00, 8),
(NOW(), NOW(), 'ACTIVE', 'Sobremesa surpresa', 'Mystery Dessert', 15.00, 9),
(NOW(), NOW(), 'ACTIVE', 'Chimichurri', 'Chimichurri Sauce', 5.00, 10);



-- Pedidos de Janeiro de 2024
INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-01-01 12:00:00', NOW(), 'ACTIVE', '2024-01-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-01-03 18:30:00', NOW(), 'ACTIVE', '2024-01-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-01-05 11:15:00', NOW(), 'ACTIVE', '2024-01-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-01-07 19:00:00', NOW(), 'ACTIVE', '2024-01-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-01-10 14:45:00', NOW(), 'ACTIVE', '2024-01-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-01-15 16:20:00', NOW(), 'ACTIVE', '2024-01-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-01-18 20:10:00', NOW(), 'ACTIVE', '2024-01-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-01-20 12:50:00', NOW(), 'ACTIVE', '2024-01-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-01-25 13:30:00', NOW(), 'ACTIVE', '2024-01-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-01-30 15:40:00', NOW(), 'ACTIVE', '2024-01-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');


INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-02-01 12:00:00', NOW(), 'ACTIVE', '2024-02-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-02-03 18:30:00', NOW(), 'ACTIVE', '2024-02-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-02-05 11:15:00', NOW(), 'ACTIVE', '2024-02-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-02-07 19:00:00', NOW(), 'ACTIVE', '2024-02-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-02-10 14:45:00', NOW(), 'ACTIVE', '2024-02-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-02-15 16:20:00', NOW(), 'ACTIVE', '2024-02-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-02-18 20:10:00', NOW(), 'ACTIVE', '2024-02-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-02-20 12:50:00', NOW(), 'ACTIVE', '2024-02-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-02-25 13:30:00', NOW(), 'ACTIVE', '2024-02-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-02-28 15:40:00', NOW(), 'ACTIVE', '2024-02-28 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-03-01 12:00:00', NOW(), 'ACTIVE', '2024-03-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-03-03 18:30:00', NOW(), 'ACTIVE', '2024-03-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-03-05 11:15:00', NOW(), 'ACTIVE', '2024-03-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-03-07 19:00:00', NOW(), 'ACTIVE', '2024-03-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-03-10 14:45:00', NOW(), 'ACTIVE', '2024-03-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-03-15 16:20:00', NOW(), 'ACTIVE', '2024-03-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-03-18 20:10:00', NOW(), 'ACTIVE', '2024-03-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-03-20 12:50:00', NOW(), 'ACTIVE', '2024-03-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-03-25 13:30:00', NOW(), 'ACTIVE', '2024-03-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-03-30 15:40:00', NOW(), 'ACTIVE', '2024-03-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-04-01 12:00:00', NOW(), 'ACTIVE', '2024-04-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-04-03 18:30:00', NOW(), 'ACTIVE', '2024-04-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-04-05 11:15:00', NOW(), 'ACTIVE', '2024-04-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-04-07 19:00:00', NOW(), 'ACTIVE', '2024-04-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-04-10 14:45:00', NOW(), 'ACTIVE', '2024-04-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-04-15 16:20:00', NOW(), 'ACTIVE', '2024-04-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-04-18 20:10:00', NOW(), 'ACTIVE', '2024-04-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-04-20 12:50:00', NOW(), 'ACTIVE', '2024-04-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-04-25 13:30:00', NOW(), 'ACTIVE', '2024-04-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-04-30 15:40:00', NOW(), 'ACTIVE', '2024-04-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-05-01 12:00:00', NOW(), 'ACTIVE', '2024-05-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-05-03 18:30:00', NOW(), 'ACTIVE', '2024-05-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-05-05 11:15:00', NOW(), 'ACTIVE', '2024-05-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-05-07 19:00:00', NOW(), 'ACTIVE', '2024-05-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-05-10 14:45:00', NOW(), 'ACTIVE', '2024-05-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-05-15 16:20:00', NOW(), 'ACTIVE', '2024-05-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-05-18 20:10:00', NOW(), 'ACTIVE', '2024-05-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-05-20 12:50:00', NOW(), 'ACTIVE', '2024-05-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-05-25 13:30:00', NOW(), 'ACTIVE', '2024-05-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-05-30 15:40:00', NOW(), 'ACTIVE', '2024-05-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-06-01 12:00:00', NOW(), 'ACTIVE', '2024-06-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-06-03 18:30:00', NOW(), 'ACTIVE', '2024-06-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-06-05 11:15:00', NOW(), 'ACTIVE', '2024-06-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-06-07 19:00:00', NOW(), 'ACTIVE', '2024-06-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-06-10 14:45:00', NOW(), 'ACTIVE', '2024-06-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-06-15 16:20:00', NOW(), 'ACTIVE', '2024-06-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-06-18 20:10:00', NOW(), 'ACTIVE', '2024-06-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-06-20 12:50:00', NOW(), 'ACTIVE', '2024-06-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-06-25 13:30:00', NOW(), 'ACTIVE', '2024-06-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-06-30 15:40:00', NOW(), 'ACTIVE', '2024-06-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-08-01 12:00:00', NOW(), 'ACTIVE', '2024-07-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-08-03 18:30:00', NOW(), 'ACTIVE', '2024-07-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-08-05 11:15:00', NOW(), 'ACTIVE', '2024-07-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-08-07 19:00:00', NOW(), 'ACTIVE', '2024-07-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-08-10 14:45:00', NOW(), 'ACTIVE', '2024-07-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-08-15 16:20:00', NOW(), 'ACTIVE', '2024-07-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-08-18 20:10:00', NOW(), 'ACTIVE', '2024-07-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-08-20 12:50:00', NOW(), 'ACTIVE', '2024-07-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-08-25 13:30:00', NOW(), 'ACTIVE', '2024-07-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-08-30 15:40:00', NOW(), 'ACTIVE', '2024-07-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-12-01 12:00:00', NOW(), 'ACTIVE', '2024-08-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-12-03 18:30:00', NOW(), 'ACTIVE', '2024-08-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-12-05 11:15:00', NOW(), 'ACTIVE', '2024-08-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-12-07 19:00:00', NOW(), 'ACTIVE', '2024-08-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-12-10 14:45:00', NOW(), 'ACTIVE', '2024-08-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-12-15 16:20:00', NOW(), 'ACTIVE', '2024-08-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-12-18 20:10:00', NOW(), 'ACTIVE', '2024-08-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-12-20 12:50:00', NOW(), 'ACTIVE', '2024-08-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-12-25 13:30:00', NOW(), 'ACTIVE', '2024-08-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-12-30 15:40:00', NOW(), 'ACTIVE', '2024-08-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-09-01 12:00:00', NOW(), 'ACTIVE', '2024-09-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-09-03 18:30:00', NOW(), 'ACTIVE', '2024-09-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-09-05 11:15:00', NOW(), 'ACTIVE', '2024-09-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-09-07 19:00:00', NOW(), 'ACTIVE', '2024-09-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-09-10 14:45:00', NOW(), 'ACTIVE', '2024-09-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-09-15 16:20:00', NOW(), 'ACTIVE', '2024-09-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-09-18 20:10:00', NOW(), 'ACTIVE', '2024-09-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-09-20 12:50:00', NOW(), 'ACTIVE', '2024-09-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-09-25 13:30:00', NOW(), 'ACTIVE', '2024-09-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-09-30 15:40:00', NOW(), 'ACTIVE', '2024-09-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-10-01 12:00:00', NOW(), 'ACTIVE', '2024-10-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-10-03 18:30:00', NOW(), 'ACTIVE', '2024-10-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-10-05 11:15:00', NOW(), 'ACTIVE', '2024-10-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-10-07 19:00:00', NOW(), 'ACTIVE', '2024-10-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-10-10 14:45:00', NOW(), 'ACTIVE', '2024-10-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-10-15 16:20:00', NOW(), 'ACTIVE', '2024-10-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-10-18 20:10:00', NOW(), 'ACTIVE', '2024-10-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-10-20 12:50:00', NOW(), 'ACTIVE', '2024-10-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-10-25 13:30:00', NOW(), 'ACTIVE', '2024-10-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-10-30 15:40:00', NOW(), 'ACTIVE', '2024-10-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-11-01 12:00:00', NOW(), 'ACTIVE', '2024-11-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-11-03 18:30:00', NOW(), 'ACTIVE', '2024-11-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-11-05 11:15:00', NOW(), 'ACTIVE', '2024-11-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-11-07 19:00:00', NOW(), 'ACTIVE', '2024-11-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-11-10 14:45:00', NOW(), 'ACTIVE', '2024-11-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-11-15 16:20:00', NOW(), 'ACTIVE', '2024-11-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-11-18 20:10:00', NOW(), 'ACTIVE', '2024-11-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-11-20 12:50:00', NOW(), 'ACTIVE', '2024-11-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-11-25 13:30:00', NOW(), 'ACTIVE', '2024-11-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-11-30 15:40:00', NOW(), 'ACTIVE', '2024-11-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');

INSERT INTO customer_order (created_at, updated_at, status, order_date, total_amount, delivery_fee, notes) VALUES
('2024-12-01 12:00:00', NOW(), 'ACTIVE', '2024-12-01 12:00:00', 55.00, 5.00, 'Entregar quente'),
('2024-12-03 18:30:00', NOW(), 'ACTIVE', '2024-12-03 18:30:00', 75.00, 7.00, 'Sem cebola'),
('2024-12-05 11:15:00', NOW(), 'ACTIVE', '2024-12-05 11:15:00', 45.00, 4.50, 'Sem pressa'),
('2024-12-07 19:00:00', NOW(), 'ACTIVE', '2024-12-07 19:00:00', 60.00, 6.00, 'Priorizar embalagem'),
('2024-12-10 14:45:00', NOW(), 'ACTIVE', '2024-12-10 14:45:00', 50.00, 5.00, 'Inclua guardanapos'),
('2024-12-15 16:20:00', NOW(), 'ACTIVE', '2024-12-15 16:20:00', 85.00, 8.50, 'Entrega expressa'),
('2024-12-18 20:10:00', NOW(), 'ACTIVE', '2024-12-18 20:10:00', 40.00, 3.50, 'Pedido rápido'),
('2024-12-20 12:50:00', NOW(), 'ACTIVE', '2024-12-20 12:50:00', 95.00, 9.00, 'Especial para aniversário'),
('2024-12-25 13:30:00', NOW(), 'ACTIVE', '2024-12-25 13:30:00', 70.00, 7.50, 'Evitar atrasos'),
('2024-12-30 15:40:00', NOW(), 'ACTIVE', '2024-12-30 15:40:00', 80.00, 8.00, 'Cliente recorrente');




INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-02 00:00:00', '2024-01-02 00:00:00', 'ACTIVE', 1, 1, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-03 00:00:00', '2024-01-03 00:00:00', 'ACTIVE', 2, 2, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-04 00:00:00', '2024-01-04 00:00:00', 'ACTIVE', 3, 3, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-05 00:00:00', '2024-01-05 00:00:00', 'ACTIVE', 4, 4, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-06 00:00:00', '2024-01-06 00:00:00', 'ACTIVE', 5, 5, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-07 00:00:00', '2024-01-07 00:00:00', 'ACTIVE', 6, 6, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-08 00:00:00', '2024-01-08 00:00:00', 'ACTIVE', 7, 7, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-09 00:00:00', '2024-01-09 00:00:00', 'ACTIVE', 8, 8, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-10 00:00:00', '2024-01-10 00:00:00', 'ACTIVE', 9, 9, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-01-11 00:00:00', '2024-01-11 00:00:00', 'ACTIVE', 10, 10, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-01 00:00:00', '2024-02-01 00:00:00', 'ACTIVE', 1, 11, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-02 00:00:00', '2024-02-02 00:00:00', 'ACTIVE', 2, 12, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-03 00:00:00', '2024-02-03 00:00:00', 'ACTIVE', 3, 13, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-04 00:00:00', '2024-02-04 00:00:00', 'ACTIVE', 4, 14, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-05 00:00:00', '2024-02-05 00:00:00', 'ACTIVE', 5, 15, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-06 00:00:00', '2024-02-06 00:00:00', 'ACTIVE', 6, 16, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-07 00:00:00', '2024-02-07 00:00:00', 'ACTIVE', 7, 17, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-08 00:00:00', '2024-02-08 00:00:00', 'ACTIVE', 8, 18, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-09 00:00:00', '2024-02-09 00:00:00', 'ACTIVE', 9, 19, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-02-10 00:00:00', '2024-02-10 00:00:00', 'ACTIVE', 10, 20, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-02 00:00:00', '2024-03-02 00:00:00', 'ACTIVE', 1, 21, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-03 00:00:00', '2024-03-03 00:00:00', 'ACTIVE', 2, 22, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-04 00:00:00', '2024-03-04 00:00:00', 'ACTIVE', 3, 23, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-05 00:00:00', '2024-03-05 00:00:00', 'ACTIVE', 4, 24, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-06 00:00:00', '2024-03-06 00:00:00', 'ACTIVE', 5, 25, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-07 00:00:00', '2024-03-07 00:00:00', 'ACTIVE', 6, 26, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-08 00:00:00', '2024-03-08 00:00:00', 'ACTIVE', 7, 27, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-09 00:00:00', '2024-03-09 00:00:00', 'ACTIVE', 8, 28, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-10 00:00:00', '2024-03-10 00:00:00', 'ACTIVE', 9, 29, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-03-11 00:00:00', '2024-03-11 00:00:00', 'ACTIVE', 10, 30, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-01 00:00:00', '2024-04-01 00:00:00', 'ACTIVE', 1, 31, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-02 00:00:00', '2024-04-02 00:00:00', 'ACTIVE', 2, 32, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-03 00:00:00', '2024-04-03 00:00:00', 'ACTIVE', 3, 33, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-04 00:00:00', '2024-04-04 00:00:00', 'ACTIVE', 4, 34, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-05 00:00:00', '2024-04-05 00:00:00', 'ACTIVE', 5, 35, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-06 00:00:00', '2024-04-06 00:00:00', 'ACTIVE', 6, 36, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-07 00:00:00', '2024-04-07 00:00:00', 'ACTIVE', 7, 37, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-08 00:00:00', '2024-04-08 00:00:00', 'ACTIVE', 8, 38, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-09 00:00:00', '2024-04-09 00:00:00', 'ACTIVE', 9, 39, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-04-10 00:00:00', '2024-04-10 00:00:00', 'ACTIVE', 10, 40, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-01 00:00:00', '2024-05-01 00:00:00', 'ACTIVE', 1, 41, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-02 00:00:00', '2024-05-02 00:00:00', 'ACTIVE', 2, 42, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-03 00:00:00', '2024-05-03 00:00:00', 'ACTIVE', 3, 43, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-04 00:00:00', '2024-05-04 00:00:00', 'ACTIVE', 4, 44, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-05 00:00:00', '2024-05-05 00:00:00', 'ACTIVE', 5, 45, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-06 00:00:00', '2024-05-06 00:00:00', 'ACTIVE', 6, 46, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-07 00:00:00', '2024-05-07 00:00:00', 'ACTIVE', 7, 47, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-08 00:00:00', '2024-05-08 00:00:00', 'ACTIVE', 8, 48, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-09 00:00:00', '2024-05-09 00:00:00', 'ACTIVE', 9, 49, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-10 00:00:00', '2024-05-10 00:00:00', 'ACTIVE', 10, 50, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-05-31 00:00:00', '2024-05-31 00:00:00', 'ACTIVE', 1, 51, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-01 00:00:00', '2024-06-01 00:00:00', 'ACTIVE', 2, 52, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-02 00:00:00', '2024-06-02 00:00:00', 'ACTIVE', 3, 53, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-03 00:00:00', '2024-06-03 00:00:00', 'ACTIVE', 4, 54, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-04 00:00:00', '2024-06-04 00:00:00', 'ACTIVE', 5, 55, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-05 00:00:00', '2024-06-05 00:00:00', 'ACTIVE', 6, 56, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-06 00:00:00', '2024-06-06 00:00:00', 'ACTIVE', 7, 57, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-07 00:00:00', '2024-06-07 00:00:00', 'ACTIVE', 8, 58, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-08 00:00:00', '2024-06-08 00:00:00', 'ACTIVE', 9, 59, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-09 00:00:00', '2024-06-09 00:00:00', 'ACTIVE', 10, 60, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-06-30 00:00:00', '2024-06-30 00:00:00', 'ACTIVE', 1, 61, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-01 00:00:00', '2024-07-01 00:00:00', 'ACTIVE', 2, 62, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-02 00:00:00', '2024-07-02 00:00:00', 'ACTIVE', 3, 63, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-03 00:00:00', '2024-07-03 00:00:00', 'ACTIVE', 4, 64, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-04 00:00:00', '2024-07-04 00:00:00', 'ACTIVE', 5, 65, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-05 00:00:00', '2024-07-05 00:00:00', 'ACTIVE', 6, 66, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-06 00:00:00', '2024-07-06 00:00:00', 'ACTIVE', 7, 67, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-07 00:00:00', '2024-07-07 00:00:00', 'ACTIVE', 8, 68, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-08 00:00:00', '2024-07-08 00:00:00', 'ACTIVE', 9, 69, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-09 00:00:00', '2024-07-09 00:00:00', 'ACTIVE', 10, 70, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-30 00:00:00', '2024-07-30 00:00:00', 'ACTIVE', 1, 71, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-07-31 00:00:00', '2024-07-31 00:00:00', 'ACTIVE', 2, 72, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-01 00:00:00', '2024-08-01 00:00:00', 'ACTIVE', 3, 73, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-02 00:00:00', '2024-08-02 00:00:00', 'ACTIVE', 4, 74, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-03 00:00:00', '2024-08-03 00:00:00', 'ACTIVE', 5, 75, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-04 00:00:00', '2024-08-04 00:00:00', 'ACTIVE', 6, 76, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-05 00:00:00', '2024-08-05 00:00:00', 'ACTIVE', 7, 77, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-06 00:00:00', '2024-08-06 00:00:00', 'ACTIVE', 8, 78, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-07 00:00:00', '2024-08-07 00:00:00', 'ACTIVE', 9, 79, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-08 00:00:00', '2024-08-08 00:00:00', 'ACTIVE', 10, 80, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-29 00:00:00', '2024-08-29 00:00:00', 'ACTIVE', 1, 81, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-30 00:00:00', '2024-08-30 00:00:00', 'ACTIVE', 2, 82, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-08-31 00:00:00', '2024-08-31 00:00:00', 'ACTIVE', 3, 83, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-01 00:00:00', '2024-09-01 00:00:00', 'ACTIVE', 4, 84, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-02 00:00:00', '2024-09-02 00:00:00', 'ACTIVE', 5, 85, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-03 00:00:00', '2024-09-03 00:00:00', 'ACTIVE', 6, 86, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-04 00:00:00', '2024-09-04 00:00:00', 'ACTIVE', 7, 87, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-05 00:00:00', '2024-09-05 00:00:00', 'ACTIVE', 8, 88, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-06 00:00:00', '2024-09-06 00:00:00', 'ACTIVE', 9, 89, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-07 00:00:00', '2024-09-07 00:00:00', 'ACTIVE', 10, 90, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-28 00:00:00', '2024-09-28 00:00:00', 'ACTIVE', 1, 91, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-29 00:00:00', '2024-09-29 00:00:00', 'ACTIVE', 2, 92, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-09-30 00:00:00', '2024-09-30 00:00:00', 'ACTIVE', 3, 93, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-01 00:00:00', '2024-10-01 00:00:00', 'ACTIVE', 4, 94, 9);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-02 00:00:00', '2024-10-02 00:00:00', 'ACTIVE', 5, 95, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-03 00:00:00', '2024-10-03 00:00:00', 'ACTIVE', 6, 96, 1);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-04 00:00:00', '2024-10-04 00:00:00', 'ACTIVE', 7, 97, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-05 00:00:00', '2024-10-05 00:00:00', 'ACTIVE', 8, 98, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-06 00:00:00', '2024-10-06 00:00:00', 'ACTIVE', 9, 99, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-07 00:00:00', '2024-10-07 00:00:00', 'ACTIVE', 10, 100, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-28 00:00:00', '2024-10-28 00:00:00', 'ACTIVE', 1, 101, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-29 00:00:00', '2024-10-29 00:00:00', 'ACTIVE', 2, 102, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-30 00:00:00', '2024-10-30 00:00:00', 'ACTIVE', 3, 103, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-10-31 00:00:00', '2024-10-31 00:00:00', 'ACTIVE', 4, 104, 3);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-01 00:00:00', '2024-11-01 00:00:00', 'ACTIVE', 5, 105, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-02 00:00:00', '2024-11-02 00:00:00', 'ACTIVE', 6, 106, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-03 00:00:00', '2024-11-03 00:00:00', 'ACTIVE', 7, 107, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-04 00:00:00', '2024-11-04 00:00:00', 'ACTIVE', 8, 108, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-05 00:00:00', '2024-11-05 00:00:00', 'ACTIVE', 9, 109, 6);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-06 00:00:00', '2024-11-06 00:00:00', 'ACTIVE', 10, 110, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-27 00:00:00', '2024-11-27 00:00:00', 'ACTIVE', 1, 111, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-28 00:00:00', '2024-11-28 00:00:00', 'ACTIVE', 2, 112, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-29 00:00:00', '2024-11-29 00:00:00', 'ACTIVE', 3, 113, 2);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-11-30 00:00:00', '2024-11-30 00:00:00', 'ACTIVE', 4, 114, 5);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-12-01 00:00:00', '2024-12-01 00:00:00', 'ACTIVE', 5, 115, 8);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-12-02 00:00:00', '2024-12-02 00:00:00', 'ACTIVE', 6, 116, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-12-03 00:00:00', '2024-12-03 00:00:00', 'ACTIVE', 7, 117, 4);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-12-04 00:00:00', '2024-12-04 00:00:00', 'ACTIVE', 8, 118, 7);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-12-05 00:00:00', '2024-12-05 00:00:00', 'ACTIVE', 9, 119, 10);
INSERT INTO order_item (created_at, updated_at, status, quantity, order_id, product_id) VALUES ('2024-12-06 00:00:00', '2024-12-06 00:00:00', 'ACTIVE', 10, 120, 3);



INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-02 00:00:00', '2024-01-02 00:00:00', 'ACTIVE', 1, 1);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-03 00:00:00', '2024-01-03 00:00:00', 'ACTIVE', 2, 2);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-04 00:00:00', '2024-01-04 00:00:00', 'ACTIVE', 3, 3);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-05 00:00:00', '2024-01-05 00:00:00', 'ACTIVE', 4, 4);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-06 00:00:00', '2024-01-06 00:00:00', 'ACTIVE', 5, 5);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-07 00:00:00', '2024-01-07 00:00:00', 'ACTIVE', 6, 6);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-08 00:00:00', '2024-01-08 00:00:00', 'ACTIVE', 7, 7);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-09 00:00:00', '2024-01-09 00:00:00', 'ACTIVE', 8, 8);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-10 00:00:00', '2024-01-10 00:00:00', 'ACTIVE', 9, 9);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-01-11 00:00:00', '2024-01-11 00:00:00', 'ACTIVE', 10, 10);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-01 00:00:00', '2024-02-01 00:00:00', 'ACTIVE', 1, 11);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-02 00:00:00', '2024-02-02 00:00:00', 'ACTIVE', 2, 12);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-03 00:00:00', '2024-02-03 00:00:00', 'ACTIVE', 3, 13);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-04 00:00:00', '2024-02-04 00:00:00', 'ACTIVE', 4, 14);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-05 00:00:00', '2024-02-05 00:00:00', 'ACTIVE', 5, 15);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-06 00:00:00', '2024-02-06 00:00:00', 'ACTIVE', 6, 16);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-07 00:00:00', '2024-02-07 00:00:00', 'ACTIVE', 7, 17);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-08 00:00:00', '2024-02-08 00:00:00', 'ACTIVE', 8, 18);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-09 00:00:00', '2024-02-09 00:00:00', 'ACTIVE', 9, 19);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-02-10 00:00:00', '2024-02-10 00:00:00', 'ACTIVE', 10, 20);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-02 00:00:00', '2024-03-02 00:00:00', 'ACTIVE', 1, 21);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-03 00:00:00', '2024-03-03 00:00:00', 'ACTIVE', 2, 22);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-04 00:00:00', '2024-03-04 00:00:00', 'ACTIVE', 3, 23);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-05 00:00:00', '2024-03-05 00:00:00', 'ACTIVE', 4, 24);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-06 00:00:00', '2024-03-06 00:00:00', 'ACTIVE', 5, 25);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-07 00:00:00', '2024-03-07 00:00:00', 'ACTIVE', 6, 26);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-08 00:00:00', '2024-03-08 00:00:00', 'ACTIVE', 7, 27);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-09 00:00:00', '2024-03-09 00:00:00', 'ACTIVE', 8, 28);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-10 00:00:00', '2024-03-10 00:00:00', 'ACTIVE', 9, 29);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-03-11 00:00:00', '2024-03-11 00:00:00', 'ACTIVE', 10, 30);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-01 00:00:00', '2024-04-01 00:00:00', 'ACTIVE', 1, 31);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-02 00:00:00', '2024-04-02 00:00:00', 'ACTIVE', 2, 32);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-03 00:00:00', '2024-04-03 00:00:00', 'ACTIVE', 3, 33);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-04 00:00:00', '2024-04-04 00:00:00', 'ACTIVE', 4, 34);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-05 00:00:00', '2024-04-05 00:00:00', 'ACTIVE', 5, 35);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-06 00:00:00', '2024-04-06 00:00:00', 'ACTIVE', 6, 36);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-07 00:00:00', '2024-04-07 00:00:00', 'ACTIVE', 7, 37);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-08 00:00:00', '2024-04-08 00:00:00', 'ACTIVE', 8, 38);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-09 00:00:00', '2024-04-09 00:00:00', 'ACTIVE', 9, 39);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-04-10 00:00:00', '2024-04-10 00:00:00', 'ACTIVE', 10, 40);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-01 00:00:00', '2024-05-01 00:00:00', 'ACTIVE', 1, 41);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-02 00:00:00', '2024-05-02 00:00:00', 'ACTIVE', 2, 42);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-03 00:00:00', '2024-05-03 00:00:00', 'ACTIVE', 3, 43);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-04 00:00:00', '2024-05-04 00:00:00', 'ACTIVE', 4, 44);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-05 00:00:00', '2024-05-05 00:00:00', 'ACTIVE', 5, 45);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-06 00:00:00', '2024-05-06 00:00:00', 'ACTIVE', 6, 46);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-07 00:00:00', '2024-05-07 00:00:00', 'ACTIVE', 7, 47);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-08 00:00:00', '2024-05-08 00:00:00', 'ACTIVE', 8, 48);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-09 00:00:00', '2024-05-09 00:00:00', 'ACTIVE', 9, 49);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-10 00:00:00', '2024-05-10 00:00:00', 'ACTIVE', 10, 50);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-05-31 00:00:00', '2024-05-31 00:00:00', 'ACTIVE', 1, 51);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-01 00:00:00', '2024-06-01 00:00:00', 'ACTIVE', 2, 52);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-02 00:00:00', '2024-06-02 00:00:00', 'ACTIVE', 3, 53);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-03 00:00:00', '2024-06-03 00:00:00', 'ACTIVE', 4, 54);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-04 00:00:00', '2024-06-04 00:00:00', 'ACTIVE', 5, 55);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-05 00:00:00', '2024-06-05 00:00:00', 'ACTIVE', 6, 56);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-06 00:00:00', '2024-06-06 00:00:00', 'ACTIVE', 7, 57);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-07 00:00:00', '2024-06-07 00:00:00', 'ACTIVE', 8, 58);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-08 00:00:00', '2024-06-08 00:00:00', 'ACTIVE', 9, 59);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-09 00:00:00', '2024-06-09 00:00:00', 'ACTIVE', 10, 60);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-06-30 00:00:00', '2024-06-30 00:00:00', 'ACTIVE', 1, 61);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-01 00:00:00', '2024-07-01 00:00:00', 'ACTIVE', 2, 62);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-02 00:00:00', '2024-07-02 00:00:00', 'ACTIVE', 3, 63);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-03 00:00:00', '2024-07-03 00:00:00', 'ACTIVE', 4, 64);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-04 00:00:00', '2024-07-04 00:00:00', 'ACTIVE', 5, 65);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-05 00:00:00', '2024-07-05 00:00:00', 'ACTIVE', 6, 66);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-06 00:00:00', '2024-07-06 00:00:00', 'ACTIVE', 7, 67);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-07 00:00:00', '2024-07-07 00:00:00', 'ACTIVE', 8, 68);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-08 00:00:00', '2024-07-08 00:00:00', 'ACTIVE', 9, 69);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-09 00:00:00', '2024-07-09 00:00:00', 'ACTIVE', 10, 70);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-30 00:00:00', '2024-07-30 00:00:00', 'ACTIVE', 1, 71);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-07-31 00:00:00', '2024-07-31 00:00:00', 'ACTIVE', 2, 72);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-01 00:00:00', '2024-08-01 00:00:00', 'ACTIVE', 3, 73);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-02 00:00:00', '2024-08-02 00:00:00', 'ACTIVE', 4, 74);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-03 00:00:00', '2024-08-03 00:00:00', 'ACTIVE', 5, 75);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-04 00:00:00', '2024-08-04 00:00:00', 'ACTIVE', 6, 76);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-05 00:00:00', '2024-08-05 00:00:00', 'ACTIVE', 7, 77);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-06 00:00:00', '2024-08-06 00:00:00', 'ACTIVE', 8, 78);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-07 00:00:00', '2024-08-07 00:00:00', 'ACTIVE', 9, 79);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-08 00:00:00', '2024-08-08 00:00:00', 'ACTIVE', 10, 80);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-29 00:00:00', '2024-08-29 00:00:00', 'ACTIVE', 1, 81);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-30 00:00:00', '2024-08-30 00:00:00', 'ACTIVE', 2, 82);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-08-31 00:00:00', '2024-08-31 00:00:00', 'ACTIVE', 3, 83);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-01 00:00:00', '2024-09-01 00:00:00', 'ACTIVE', 4, 84);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-02 00:00:00', '2024-09-02 00:00:00', 'ACTIVE', 5, 85);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-03 00:00:00', '2024-09-03 00:00:00', 'ACTIVE', 6, 86);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-04 00:00:00', '2024-09-04 00:00:00', 'ACTIVE', 7, 87);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-05 00:00:00', '2024-09-05 00:00:00', 'ACTIVE', 8, 88);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-06 00:00:00', '2024-09-06 00:00:00', 'ACTIVE', 9, 89);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-07 00:00:00', '2024-09-07 00:00:00', 'ACTIVE', 10, 90);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-28 00:00:00', '2024-09-28 00:00:00', 'ACTIVE', 1, 91);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-29 00:00:00', '2024-09-29 00:00:00', 'ACTIVE', 2, 92);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-09-30 00:00:00', '2024-09-30 00:00:00', 'ACTIVE', 3, 93);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-01 00:00:00', '2024-10-01 00:00:00', 'ACTIVE', 4, 94);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-02 00:00:00', '2024-10-02 00:00:00', 'ACTIVE', 5, 95);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-03 00:00:00', '2024-10-03 00:00:00', 'ACTIVE', 6, 96);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-04 00:00:00', '2024-10-04 00:00:00', 'ACTIVE', 7, 97);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-05 00:00:00', '2024-10-05 00:00:00', 'ACTIVE', 8, 98);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-06 00:00:00', '2024-10-06 00:00:00', 'ACTIVE', 9, 99);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-07 00:00:00', '2024-10-07 00:00:00', 'ACTIVE', 10, 100);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-28 00:00:00', '2024-10-28 00:00:00', 'ACTIVE', 1, 101);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-29 00:00:00', '2024-10-29 00:00:00', 'ACTIVE', 2, 102);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-30 00:00:00', '2024-10-30 00:00:00', 'ACTIVE', 3, 103);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-10-31 00:00:00', '2024-10-31 00:00:00', 'ACTIVE', 4, 104);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-01 00:00:00', '2024-11-01 00:00:00', 'ACTIVE', 5, 105);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-02 00:00:00', '2024-11-02 00:00:00', 'ACTIVE', 6, 106);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-03 00:00:00', '2024-11-03 00:00:00', 'ACTIVE', 7, 107);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-04 00:00:00', '2024-11-04 00:00:00', 'ACTIVE', 8, 108);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-05 00:00:00', '2024-11-05 00:00:00', 'ACTIVE', 9, 109);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-06 00:00:00', '2024-11-06 00:00:00', 'ACTIVE', 10, 110);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-27 00:00:00', '2024-11-27 00:00:00', 'ACTIVE', 1, 111);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-28 00:00:00', '2024-11-28 00:00:00', 'ACTIVE', 2, 112);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-29 00:00:00', '2024-11-29 00:00:00', 'ACTIVE', 3, 113);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-11-30 00:00:00', '2024-11-30 00:00:00', 'ACTIVE', 4, 114);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-12-01 00:00:00', '2024-12-01 00:00:00', 'ACTIVE', 5, 115);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-12-02 00:00:00', '2024-12-02 00:00:00', 'ACTIVE', 6, 116);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-12-03 00:00:00', '2024-12-03 00:00:00', 'ACTIVE', 7, 117);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-12-04 00:00:00', '2024-12-04 00:00:00', 'ACTIVE', 8, 118);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-12-05 00:00:00', '2024-12-05 00:00:00', 'ACTIVE', 9, 119);
INSERT INTO order_product_accompaniment (created_at, updated_at, status, accompaniment_id, order_item_id) VALUES ('2024-12-06 00:00:00', '2024-12-06 00:00:00', 'ACTIVE', 10, 120);



INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-02 00:00:00', '2024-01-02 00:00:00', 'ACTIVE', 55.0, '2024-01-02 00:00:00', 1, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-03 00:00:00', '2024-01-03 00:00:00', 'ACTIVE', 75.0, '2024-01-03 00:00:00', 2, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-04 00:00:00', '2024-01-04 00:00:00', 'ACTIVE', 45.0, '2024-01-04 00:00:00', 3, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-05 00:00:00', '2024-01-05 00:00:00', 'ACTIVE', 60.0, '2024-01-05 00:00:00', 4, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-06 00:00:00', '2024-01-06 00:00:00', 'ACTIVE', 50.0, '2024-01-06 00:00:00', 5, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-07 00:00:00', '2024-01-07 00:00:00', 'ACTIVE', 85.0, '2024-01-07 00:00:00', 6, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-08 00:00:00', '2024-01-08 00:00:00', 'ACTIVE', 40.0, '2024-01-08 00:00:00', 7, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-09 00:00:00', '2024-01-09 00:00:00', 'ACTIVE', 95.0, '2024-01-09 00:00:00', 8, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-10 00:00:00', '2024-01-10 00:00:00', 'ACTIVE', 70.0, '2024-01-10 00:00:00', 9, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-01-11 00:00:00', '2024-01-11 00:00:00', 'ACTIVE', 80.0, '2024-01-11 00:00:00', 10, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-01 00:00:00', '2024-02-01 00:00:00', 'ACTIVE', 55.0, '2024-02-01 00:00:00', 11, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-02 00:00:00', '2024-02-02 00:00:00', 'ACTIVE', 75.0, '2024-02-02 00:00:00', 12, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-03 00:00:00', '2024-02-03 00:00:00', 'ACTIVE', 45.0, '2024-02-03 00:00:00', 13, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-04 00:00:00', '2024-02-04 00:00:00', 'ACTIVE', 60.0, '2024-02-04 00:00:00', 14, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-05 00:00:00', '2024-02-05 00:00:00', 'ACTIVE', 50.0, '2024-02-05 00:00:00', 15, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-06 00:00:00', '2024-02-06 00:00:00', 'ACTIVE', 85.0, '2024-02-06 00:00:00', 16, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-07 00:00:00', '2024-02-07 00:00:00', 'ACTIVE', 40.0, '2024-02-07 00:00:00', 17, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-08 00:00:00', '2024-02-08 00:00:00', 'ACTIVE', 95.0, '2024-02-08 00:00:00', 18, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-09 00:00:00', '2024-02-09 00:00:00', 'ACTIVE', 70.0, '2024-02-09 00:00:00', 19, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-02-10 00:00:00', '2024-02-10 00:00:00', 'ACTIVE', 80.0, '2024-02-10 00:00:00', 20, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-02 00:00:00', '2024-03-02 00:00:00', 'ACTIVE', 55.0, '2024-03-02 00:00:00', 21, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-03 00:00:00', '2024-03-03 00:00:00', 'ACTIVE', 75.0, '2024-03-03 00:00:00', 22, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-04 00:00:00', '2024-03-04 00:00:00', 'ACTIVE', 45.0, '2024-03-04 00:00:00', 23, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-05 00:00:00', '2024-03-05 00:00:00', 'ACTIVE', 60.0, '2024-03-05 00:00:00', 24, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-06 00:00:00', '2024-03-06 00:00:00', 'ACTIVE', 50.0, '2024-03-06 00:00:00', 25, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-07 00:00:00', '2024-03-07 00:00:00', 'ACTIVE', 85.0, '2024-03-07 00:00:00', 26, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-08 00:00:00', '2024-03-08 00:00:00', 'ACTIVE', 40.0, '2024-03-08 00:00:00', 27, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-09 00:00:00', '2024-03-09 00:00:00', 'ACTIVE', 95.0, '2024-03-09 00:00:00', 28, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-10 00:00:00', '2024-03-10 00:00:00', 'ACTIVE', 70.0, '2024-03-10 00:00:00', 29, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-03-11 00:00:00', '2024-03-11 00:00:00', 'ACTIVE', 80.0, '2024-03-11 00:00:00', 30, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-01 00:00:00', '2024-04-01 00:00:00', 'ACTIVE', 55.0, '2024-04-01 00:00:00', 31, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-02 00:00:00', '2024-04-02 00:00:00', 'ACTIVE', 75.0, '2024-04-02 00:00:00', 32, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-03 00:00:00', '2024-04-03 00:00:00', 'ACTIVE', 45.0, '2024-04-03 00:00:00', 33, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-04 00:00:00', '2024-04-04 00:00:00', 'ACTIVE', 60.0, '2024-04-04 00:00:00', 34, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-05 00:00:00', '2024-04-05 00:00:00', 'ACTIVE', 50.0, '2024-04-05 00:00:00', 35, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-06 00:00:00', '2024-04-06 00:00:00', 'ACTIVE', 85.0, '2024-04-06 00:00:00', 36, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-07 00:00:00', '2024-04-07 00:00:00', 'ACTIVE', 40.0, '2024-04-07 00:00:00', 37, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-08 00:00:00', '2024-04-08 00:00:00', 'ACTIVE', 95.0, '2024-04-08 00:00:00', 38, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-09 00:00:00', '2024-04-09 00:00:00', 'ACTIVE', 70.0, '2024-04-09 00:00:00', 39, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-04-10 00:00:00', '2024-04-10 00:00:00', 'ACTIVE', 80.0, '2024-04-10 00:00:00', 40, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-01 00:00:00', '2024-05-01 00:00:00', 'ACTIVE', 55.0, '2024-05-01 00:00:00', 41, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-02 00:00:00', '2024-05-02 00:00:00', 'ACTIVE', 75.0, '2024-05-02 00:00:00', 42, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-03 00:00:00', '2024-05-03 00:00:00', 'ACTIVE', 45.0, '2024-05-03 00:00:00', 43, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-04 00:00:00', '2024-05-04 00:00:00', 'ACTIVE', 60.0, '2024-05-04 00:00:00', 44, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-05 00:00:00', '2024-05-05 00:00:00', 'ACTIVE', 50.0, '2024-05-05 00:00:00', 45, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-06 00:00:00', '2024-05-06 00:00:00', 'ACTIVE', 85.0, '2024-05-06 00:00:00', 46, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-07 00:00:00', '2024-05-07 00:00:00', 'ACTIVE', 40.0, '2024-05-07 00:00:00', 47, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-08 00:00:00', '2024-05-08 00:00:00', 'ACTIVE', 95.0, '2024-05-08 00:00:00', 48, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-09 00:00:00', '2024-05-09 00:00:00', 'ACTIVE', 70.0, '2024-05-09 00:00:00', 49, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-10 00:00:00', '2024-05-10 00:00:00', 'ACTIVE', 80.0, '2024-05-10 00:00:00', 50, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-05-31 00:00:00', '2024-05-31 00:00:00', 'ACTIVE', 55.0, '2024-05-31 00:00:00', 51, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-01 00:00:00', '2024-06-01 00:00:00', 'ACTIVE', 75.0, '2024-06-01 00:00:00', 52, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-02 00:00:00', '2024-06-02 00:00:00', 'ACTIVE', 45.0, '2024-06-02 00:00:00', 53, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-03 00:00:00', '2024-06-03 00:00:00', 'ACTIVE', 60.0, '2024-06-03 00:00:00', 54, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-04 00:00:00', '2024-06-04 00:00:00', 'ACTIVE', 50.0, '2024-06-04 00:00:00', 55, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-05 00:00:00', '2024-06-05 00:00:00', 'ACTIVE', 85.0, '2024-06-05 00:00:00', 56, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-06 00:00:00', '2024-06-06 00:00:00', 'ACTIVE', 40.0, '2024-06-06 00:00:00', 57, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-07 00:00:00', '2024-06-07 00:00:00', 'ACTIVE', 95.0, '2024-06-07 00:00:00', 58, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-08 00:00:00', '2024-06-08 00:00:00', 'ACTIVE', 70.0, '2024-06-08 00:00:00', 59, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-09 00:00:00', '2024-06-09 00:00:00', 'ACTIVE', 80.0, '2024-06-09 00:00:00', 60, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-06-30 00:00:00', '2024-06-30 00:00:00', 'ACTIVE', 55.0, '2024-06-30 00:00:00', 61, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-01 00:00:00', '2024-07-01 00:00:00', 'ACTIVE', 75.0, '2024-07-01 00:00:00', 62, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-02 00:00:00', '2024-07-02 00:00:00', 'ACTIVE', 45.0, '2024-07-02 00:00:00', 63, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-03 00:00:00', '2024-07-03 00:00:00', 'ACTIVE', 60.0, '2024-07-03 00:00:00', 64, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-04 00:00:00', '2024-07-04 00:00:00', 'ACTIVE', 50.0, '2024-07-04 00:00:00', 65, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-05 00:00:00', '2024-07-05 00:00:00', 'ACTIVE', 85.0, '2024-07-05 00:00:00', 66, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-06 00:00:00', '2024-07-06 00:00:00', 'ACTIVE', 40.0, '2024-07-06 00:00:00', 67, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-07 00:00:00', '2024-07-07 00:00:00', 'ACTIVE', 95.0, '2024-07-07 00:00:00', 68, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-08 00:00:00', '2024-07-08 00:00:00', 'ACTIVE', 70.0, '2024-07-08 00:00:00', 69, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-09 00:00:00', '2024-07-09 00:00:00', 'ACTIVE', 80.0, '2024-07-09 00:00:00', 70, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-30 00:00:00', '2024-07-30 00:00:00', 'ACTIVE', 55.0, '2024-07-30 00:00:00', 71, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-07-31 00:00:00', '2024-07-31 00:00:00', 'ACTIVE', 75.0, '2024-07-31 00:00:00', 72, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-01 00:00:00', '2024-08-01 00:00:00', 'ACTIVE', 45.0, '2024-08-01 00:00:00', 73, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-02 00:00:00', '2024-08-02 00:00:00', 'ACTIVE', 60.0, '2024-08-02 00:00:00', 74, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-03 00:00:00', '2024-08-03 00:00:00', 'ACTIVE', 50.0, '2024-08-03 00:00:00', 75, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-04 00:00:00', '2024-08-04 00:00:00', 'ACTIVE', 85.0, '2024-08-04 00:00:00', 76, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-05 00:00:00', '2024-08-05 00:00:00', 'ACTIVE', 40.0, '2024-08-05 00:00:00', 77, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-06 00:00:00', '2024-08-06 00:00:00', 'ACTIVE', 95.0, '2024-08-06 00:00:00', 78, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-07 00:00:00', '2024-08-07 00:00:00', 'ACTIVE', 70.0, '2024-08-07 00:00:00', 79, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-08 00:00:00', '2024-08-08 00:00:00', 'ACTIVE', 80.0, '2024-08-08 00:00:00', 80, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-29 00:00:00', '2024-08-29 00:00:00', 'ACTIVE', 55.0, '2024-08-29 00:00:00', 81, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-30 00:00:00', '2024-08-30 00:00:00', 'ACTIVE', 75.0, '2024-08-30 00:00:00', 82, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-08-31 00:00:00', '2024-08-31 00:00:00', 'ACTIVE', 45.0, '2024-08-31 00:00:00', 83, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-01 00:00:00', '2024-09-01 00:00:00', 'ACTIVE', 60.0, '2024-09-01 00:00:00', 84, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-02 00:00:00', '2024-09-02 00:00:00', 'ACTIVE', 50.0, '2024-09-02 00:00:00', 85, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-03 00:00:00', '2024-09-03 00:00:00', 'ACTIVE', 85.0, '2024-09-03 00:00:00', 86, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-04 00:00:00', '2024-09-04 00:00:00', 'ACTIVE', 40.0, '2024-09-04 00:00:00', 87, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-05 00:00:00', '2024-09-05 00:00:00', 'ACTIVE', 95.0, '2024-09-05 00:00:00', 88, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-06 00:00:00', '2024-09-06 00:00:00', 'ACTIVE', 70.0, '2024-09-06 00:00:00', 89, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-07 00:00:00', '2024-09-07 00:00:00', 'ACTIVE', 80.0, '2024-09-07 00:00:00', 90, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-28 00:00:00', '2024-09-28 00:00:00', 'ACTIVE', 55.0, '2024-09-28 00:00:00', 91, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-29 00:00:00', '2024-09-29 00:00:00', 'ACTIVE', 75.0, '2024-09-29 00:00:00', 92, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-09-30 00:00:00', '2024-09-30 00:00:00', 'ACTIVE', 45.0, '2024-09-30 00:00:00', 93, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-01 00:00:00', '2024-10-01 00:00:00', 'ACTIVE', 60.0, '2024-10-01 00:00:00', 94, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-02 00:00:00', '2024-10-02 00:00:00', 'ACTIVE', 50.0, '2024-10-02 00:00:00', 95, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-03 00:00:00', '2024-10-03 00:00:00', 'ACTIVE', 85.0, '2024-10-03 00:00:00', 96, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-04 00:00:00', '2024-10-04 00:00:00', 'ACTIVE', 40.0, '2024-10-04 00:00:00', 97, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-05 00:00:00', '2024-10-05 00:00:00', 'ACTIVE', 95.0, '2024-10-05 00:00:00', 98, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-06 00:00:00', '2024-10-06 00:00:00', 'ACTIVE', 70.0, '2024-10-06 00:00:00', 99, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-07 00:00:00', '2024-10-07 00:00:00', 'ACTIVE', 80.0, '2024-10-07 00:00:00', 100, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-28 00:00:00', '2024-10-28 00:00:00', 'ACTIVE', 55.0, '2024-10-28 00:00:00', 101, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-29 00:00:00', '2024-10-29 00:00:00', 'ACTIVE', 75.0, '2024-10-29 00:00:00', 102, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-30 00:00:00', '2024-10-30 00:00:00', 'ACTIVE', 45.0, '2024-10-30 00:00:00', 103, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-10-31 00:00:00', '2024-10-31 00:00:00', 'ACTIVE', 60.0, '2024-10-31 00:00:00', 104, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-01 00:00:00', '2024-11-01 00:00:00', 'ACTIVE', 50.0, '2024-11-01 00:00:00', 105, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-02 00:00:00', '2024-11-02 00:00:00', 'ACTIVE', 85.0, '2024-11-02 00:00:00', 106, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-03 00:00:00', '2024-11-03 00:00:00', 'ACTIVE', 40.0, '2024-11-03 00:00:00', 107, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-04 00:00:00', '2024-11-04 00:00:00', 'ACTIVE', 95.0, '2024-11-04 00:00:00', 108, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-05 00:00:00', '2024-11-05 00:00:00', 'ACTIVE', 70.0, '2024-11-05 00:00:00', 109, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-06 00:00:00', '2024-11-06 00:00:00', 'ACTIVE', 80.0, '2024-11-06 00:00:00', 110, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-27 00:00:00', '2024-11-27 00:00:00', 'ACTIVE', 55.0, '2024-11-27 00:00:00', 111, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-28 00:00:00', '2024-11-28 00:00:00', 'ACTIVE', 75.0, '2024-11-28 00:00:00', 112, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-29 00:00:00', '2024-11-29 00:00:00', 'ACTIVE', 45.0, '2024-11-29 00:00:00', 113, 4);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-11-30 00:00:00', '2024-11-30 00:00:00', 'ACTIVE', 60.0, '2024-11-30 00:00:00', 114, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-12-01 00:00:00', '2024-12-01 00:00:00', 'ACTIVE', 50.0, '2024-12-01 00:00:00', 115, 1);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-12-02 00:00:00', '2024-12-02 00:00:00', 'ACTIVE', 85.0, '2024-12-02 00:00:00', 116, 3);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-12-03 00:00:00', '2024-12-03 00:00:00', 'ACTIVE', 40.0, '2024-12-03 00:00:00', 117, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-12-04 00:00:00', '2024-12-04 00:00:00', 'ACTIVE', 95.0, '2024-12-04 00:00:00', 118, 5);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-12-05 00:00:00', '2024-12-05 00:00:00', 'ACTIVE', 70.0, '2024-12-05 00:00:00', 119, 2);
INSERT INTO payment_history (created_at, updated_at, status, amount, payment_date, order_id, payment_method_id) VALUES ('2024-12-06 00:00:00', '2024-12-06 00:00:00', 'ACTIVE', 80.0, '2024-12-06 00:00:00', 120, 2);


INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-02 00:00:00', '2024-01-02 00:00:00', 'ACTIVE', '2024-01-02 00:00:00', 1, 'PENDING', 1);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-03 00:00:00', '2024-01-03 00:00:00', 'ACTIVE', '2024-01-03 00:00:00', 2, 'CANCELED', 2);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-04 00:00:00', '2024-01-04 00:00:00', 'ACTIVE', '2024-01-04 00:00:00', 3, 'IN_TRANSIT', 3);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-05 00:00:00', '2024-01-05 00:00:00', 'ACTIVE', '2024-01-05 00:00:00', 4, 'PENDING', 4);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-06 00:00:00', '2024-01-06 00:00:00', 'ACTIVE', '2024-01-06 00:00:00', 5, 'PENDING', 5);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-07 00:00:00', '2024-01-07 00:00:00', 'ACTIVE', '2024-01-07 00:00:00', 1, 'CANCELED', 6);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-08 00:00:00', '2024-01-08 00:00:00', 'ACTIVE', '2024-01-08 00:00:00', 2, 'IN_TRANSIT', 7);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-09 00:00:00', '2024-01-09 00:00:00', 'ACTIVE', '2024-01-09 00:00:00', 3, 'PENDING', 8);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-10 00:00:00', '2024-01-10 00:00:00', 'ACTIVE', '2024-01-10 00:00:00', 4, 'CANCELED', 9);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-01-11 00:00:00', '2024-01-11 00:00:00', 'ACTIVE', '2024-01-11 00:00:00', 5, 'CANCELED', 10);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-01 00:00:00', '2024-02-01 00:00:00', 'ACTIVE', '2024-02-01 00:00:00', 1, 'IN_TRANSIT', 11);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-02 00:00:00', '2024-02-02 00:00:00', 'ACTIVE', '2024-02-02 00:00:00', 2, 'IN_TRANSIT', 12);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-03 00:00:00', '2024-02-03 00:00:00', 'ACTIVE', '2024-02-03 00:00:00', 3, 'DELIVERED', 13);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-04 00:00:00', '2024-02-04 00:00:00', 'ACTIVE', '2024-02-04 00:00:00', 4, 'PENDING', 14);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-05 00:00:00', '2024-02-05 00:00:00', 'ACTIVE', '2024-02-05 00:00:00', 5, 'DELIVERED', 15);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-06 00:00:00', '2024-02-06 00:00:00', 'ACTIVE', '2024-02-06 00:00:00', 1, 'DELIVERED', 16);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-07 00:00:00', '2024-02-07 00:00:00', 'ACTIVE', '2024-02-07 00:00:00', 2, 'CANCELED', 17);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-08 00:00:00', '2024-02-08 00:00:00', 'ACTIVE', '2024-02-08 00:00:00', 3, 'CANCELED', 18);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-09 00:00:00', '2024-02-09 00:00:00', 'ACTIVE', '2024-02-09 00:00:00', 4, 'IN_TRANSIT', 19);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-02-10 00:00:00', '2024-02-10 00:00:00', 'ACTIVE', '2024-02-10 00:00:00', 5, 'CANCELED', 20);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-02 00:00:00', '2024-03-02 00:00:00', 'ACTIVE', '2024-03-02 00:00:00', 1, 'PENDING', 21);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-03 00:00:00', '2024-03-03 00:00:00', 'ACTIVE', '2024-03-03 00:00:00', 2, 'CANCELED', 22);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-04 00:00:00', '2024-03-04 00:00:00', 'ACTIVE', '2024-03-04 00:00:00', 3, 'CANCELED', 23);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-05 00:00:00', '2024-03-05 00:00:00', 'ACTIVE', '2024-03-05 00:00:00', 4, 'CANCELED', 24);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-06 00:00:00', '2024-03-06 00:00:00', 'ACTIVE', '2024-03-06 00:00:00', 5, 'DELIVERED', 25);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-07 00:00:00', '2024-03-07 00:00:00', 'ACTIVE', '2024-03-07 00:00:00', 1, 'DELIVERED', 26);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-08 00:00:00', '2024-03-08 00:00:00', 'ACTIVE', '2024-03-08 00:00:00', 2, 'CANCELED', 27);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-09 00:00:00', '2024-03-09 00:00:00', 'ACTIVE', '2024-03-09 00:00:00', 3, 'DELIVERED', 28);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-10 00:00:00', '2024-03-10 00:00:00', 'ACTIVE', '2024-03-10 00:00:00', 4, 'DELIVERED', 29);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-03-11 00:00:00', '2024-03-11 00:00:00', 'ACTIVE', '2024-03-11 00:00:00', 5, 'DELIVERED', 30);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-01 00:00:00', '2024-04-01 00:00:00', 'ACTIVE', '2024-04-01 00:00:00', 1, 'DELIVERED', 31);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-02 00:00:00', '2024-04-02 00:00:00', 'ACTIVE', '2024-04-02 00:00:00', 2, 'DELIVERED', 32);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-03 00:00:00', '2024-04-03 00:00:00', 'ACTIVE', '2024-04-03 00:00:00', 3, 'PENDING', 33);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-04 00:00:00', '2024-04-04 00:00:00', 'ACTIVE', '2024-04-04 00:00:00', 4, 'PENDING', 34);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-05 00:00:00', '2024-04-05 00:00:00', 'ACTIVE', '2024-04-05 00:00:00', 5, 'DELIVERED', 35);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-06 00:00:00', '2024-04-06 00:00:00', 'ACTIVE', '2024-04-06 00:00:00', 1, 'PENDING', 36);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-07 00:00:00', '2024-04-07 00:00:00', 'ACTIVE', '2024-04-07 00:00:00', 2, 'DELIVERED', 37);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-08 00:00:00', '2024-04-08 00:00:00', 'ACTIVE', '2024-04-08 00:00:00', 3, 'PENDING', 38);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-09 00:00:00', '2024-04-09 00:00:00', 'ACTIVE', '2024-04-09 00:00:00', 4, 'PENDING', 39);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-04-10 00:00:00', '2024-04-10 00:00:00', 'ACTIVE', '2024-04-10 00:00:00', 5, 'IN_TRANSIT', 40);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-01 00:00:00', '2024-05-01 00:00:00', 'ACTIVE', '2024-05-01 00:00:00', 1, 'PENDING', 41);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-02 00:00:00', '2024-05-02 00:00:00', 'ACTIVE', '2024-05-02 00:00:00', 2, 'CANCELED', 42);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-03 00:00:00', '2024-05-03 00:00:00', 'ACTIVE', '2024-05-03 00:00:00', 3, 'IN_TRANSIT', 43);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-04 00:00:00', '2024-05-04 00:00:00', 'ACTIVE', '2024-05-04 00:00:00', 4, 'IN_TRANSIT', 44);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-05 00:00:00', '2024-05-05 00:00:00', 'ACTIVE', '2024-05-05 00:00:00', 5, 'IN_TRANSIT', 45);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-06 00:00:00', '2024-05-06 00:00:00', 'ACTIVE', '2024-05-06 00:00:00', 1, 'PENDING', 46);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-07 00:00:00', '2024-05-07 00:00:00', 'ACTIVE', '2024-05-07 00:00:00', 2, 'CANCELED', 47);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-08 00:00:00', '2024-05-08 00:00:00', 'ACTIVE', '2024-05-08 00:00:00', 3, 'IN_TRANSIT', 48);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-09 00:00:00', '2024-05-09 00:00:00', 'ACTIVE', '2024-05-09 00:00:00', 4, 'CANCELED', 49);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-10 00:00:00', '2024-05-10 00:00:00', 'ACTIVE', '2024-05-10 00:00:00', 5, 'CANCELED', 50);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-05-31 00:00:00', '2024-05-31 00:00:00', 'ACTIVE', '2024-05-31 00:00:00', 1, 'PENDING', 51);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-01 00:00:00', '2024-06-01 00:00:00', 'ACTIVE', '2024-06-01 00:00:00', 2, 'IN_TRANSIT', 52);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-02 00:00:00', '2024-06-02 00:00:00', 'ACTIVE', '2024-06-02 00:00:00', 3, 'PENDING', 53);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-03 00:00:00', '2024-06-03 00:00:00', 'ACTIVE', '2024-06-03 00:00:00', 4, 'CANCELED', 54);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-04 00:00:00', '2024-06-04 00:00:00', 'ACTIVE', '2024-06-04 00:00:00', 5, 'DELIVERED', 55);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-05 00:00:00', '2024-06-05 00:00:00', 'ACTIVE', '2024-06-05 00:00:00', 1, 'IN_TRANSIT', 56);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-06 00:00:00', '2024-06-06 00:00:00', 'ACTIVE', '2024-06-06 00:00:00', 2, 'IN_TRANSIT', 57);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-07 00:00:00', '2024-06-07 00:00:00', 'ACTIVE', '2024-06-07 00:00:00', 3, 'DELIVERED', 58);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-08 00:00:00', '2024-06-08 00:00:00', 'ACTIVE', '2024-06-08 00:00:00', 4, 'IN_TRANSIT', 59);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-09 00:00:00', '2024-06-09 00:00:00', 'ACTIVE', '2024-06-09 00:00:00', 5, 'DELIVERED', 60);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-06-30 00:00:00', '2024-06-30 00:00:00', 'ACTIVE', '2024-06-30 00:00:00', 1, 'DELIVERED', 61);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-01 00:00:00', '2024-07-01 00:00:00', 'ACTIVE', '2024-07-01 00:00:00', 2, 'IN_TRANSIT', 62);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-02 00:00:00', '2024-07-02 00:00:00', 'ACTIVE', '2024-07-02 00:00:00', 3, 'CANCELED', 63);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-03 00:00:00', '2024-07-03 00:00:00', 'ACTIVE', '2024-07-03 00:00:00', 4, 'IN_TRANSIT', 64);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-04 00:00:00', '2024-07-04 00:00:00', 'ACTIVE', '2024-07-04 00:00:00', 5, 'PENDING', 65);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-05 00:00:00', '2024-07-05 00:00:00', 'ACTIVE', '2024-07-05 00:00:00', 1, 'DELIVERED', 66);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-06 00:00:00', '2024-07-06 00:00:00', 'ACTIVE', '2024-07-06 00:00:00', 2, 'PENDING', 67);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-07 00:00:00', '2024-07-07 00:00:00', 'ACTIVE', '2024-07-07 00:00:00', 3, 'CANCELED', 68);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-08 00:00:00', '2024-07-08 00:00:00', 'ACTIVE', '2024-07-08 00:00:00', 4, 'IN_TRANSIT', 69);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-09 00:00:00', '2024-07-09 00:00:00', 'ACTIVE', '2024-07-09 00:00:00', 5, 'CANCELED', 70);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-30 00:00:00', '2024-07-30 00:00:00', 'ACTIVE', '2024-07-30 00:00:00', 1, 'PENDING', 71);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-07-31 00:00:00', '2024-07-31 00:00:00', 'ACTIVE', '2024-07-31 00:00:00', 2, 'DELIVERED', 72);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-01 00:00:00', '2024-08-01 00:00:00', 'ACTIVE', '2024-08-01 00:00:00', 3, 'IN_TRANSIT', 73);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-02 00:00:00', '2024-08-02 00:00:00', 'ACTIVE', '2024-08-02 00:00:00', 4, 'CANCELED', 74);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-03 00:00:00', '2024-08-03 00:00:00', 'ACTIVE', '2024-08-03 00:00:00', 5, 'DELIVERED', 75);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-04 00:00:00', '2024-08-04 00:00:00', 'ACTIVE', '2024-08-04 00:00:00', 1, 'DELIVERED', 76);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-05 00:00:00', '2024-08-05 00:00:00', 'ACTIVE', '2024-08-05 00:00:00', 2, 'PENDING', 77);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-06 00:00:00', '2024-08-06 00:00:00', 'ACTIVE', '2024-08-06 00:00:00', 3, 'IN_TRANSIT', 78);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-07 00:00:00', '2024-08-07 00:00:00', 'ACTIVE', '2024-08-07 00:00:00', 4, 'DELIVERED', 79);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-08 00:00:00', '2024-08-08 00:00:00', 'ACTIVE', '2024-08-08 00:00:00', 5, 'IN_TRANSIT', 80);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-29 00:00:00', '2024-08-29 00:00:00', 'ACTIVE', '2024-08-29 00:00:00', 1, 'PENDING', 81);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-30 00:00:00', '2024-08-30 00:00:00', 'ACTIVE', '2024-08-30 00:00:00', 2, 'PENDING', 82);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-08-31 00:00:00', '2024-08-31 00:00:00', 'ACTIVE', '2024-08-31 00:00:00', 3, 'DELIVERED', 83);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-01 00:00:00', '2024-09-01 00:00:00', 'ACTIVE', '2024-09-01 00:00:00', 4, 'DELIVERED', 84);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-02 00:00:00', '2024-09-02 00:00:00', 'ACTIVE', '2024-09-02 00:00:00', 5, 'IN_TRANSIT', 85);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-03 00:00:00', '2024-09-03 00:00:00', 'ACTIVE', '2024-09-03 00:00:00', 1, 'DELIVERED', 86);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-04 00:00:00', '2024-09-04 00:00:00', 'ACTIVE', '2024-09-04 00:00:00', 2, 'IN_TRANSIT', 87);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-05 00:00:00', '2024-09-05 00:00:00', 'ACTIVE', '2024-09-05 00:00:00', 3, 'CANCELED', 88);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-06 00:00:00', '2024-09-06 00:00:00', 'ACTIVE', '2024-09-06 00:00:00', 4, 'DELIVERED', 89);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-07 00:00:00', '2024-09-07 00:00:00', 'ACTIVE', '2024-09-07 00:00:00', 5, 'DELIVERED', 90);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-28 00:00:00', '2024-09-28 00:00:00', 'ACTIVE', '2024-09-28 00:00:00', 1, 'IN_TRANSIT', 91);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-29 00:00:00', '2024-09-29 00:00:00', 'ACTIVE', '2024-09-29 00:00:00', 2, 'CANCELED', 92);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-09-30 00:00:00', '2024-09-30 00:00:00', 'ACTIVE', '2024-09-30 00:00:00', 3, 'IN_TRANSIT', 93);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-01 00:00:00', '2024-10-01 00:00:00', 'ACTIVE', '2024-10-01 00:00:00', 4, 'IN_TRANSIT', 94);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-02 00:00:00', '2024-10-02 00:00:00', 'ACTIVE', '2024-10-02 00:00:00', 5, 'CANCELED', 95);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-03 00:00:00', '2024-10-03 00:00:00', 'ACTIVE', '2024-10-03 00:00:00', 1, 'IN_TRANSIT', 96);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-04 00:00:00', '2024-10-04 00:00:00', 'ACTIVE', '2024-10-04 00:00:00', 2, 'IN_TRANSIT', 97);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-05 00:00:00', '2024-10-05 00:00:00', 'ACTIVE', '2024-10-05 00:00:00', 3, 'IN_TRANSIT', 98);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-06 00:00:00', '2024-10-06 00:00:00', 'ACTIVE', '2024-10-06 00:00:00', 4, 'IN_TRANSIT', 99);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-07 00:00:00', '2024-10-07 00:00:00', 'ACTIVE', '2024-10-07 00:00:00', 5, 'DELIVERED', 100);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-28 00:00:00', '2024-10-28 00:00:00', 'ACTIVE', '2024-10-28 00:00:00', 1, 'CANCELED', 101);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-29 00:00:00', '2024-10-29 00:00:00', 'ACTIVE', '2024-10-29 00:00:00', 2, 'DELIVERED', 102);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-30 00:00:00', '2024-10-30 00:00:00', 'ACTIVE', '2024-10-30 00:00:00', 3, 'IN_TRANSIT', 103);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-10-31 00:00:00', '2024-10-31 00:00:00', 'ACTIVE', '2024-10-31 00:00:00', 4, 'DELIVERED', 104);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-01 00:00:00', '2024-11-01 00:00:00', 'ACTIVE', '2024-11-01 00:00:00', 5, 'CANCELED', 105);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-02 00:00:00', '2024-11-02 00:00:00', 'ACTIVE', '2024-11-02 00:00:00', 1, 'CANCELED', 106);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-03 00:00:00', '2024-11-03 00:00:00', 'ACTIVE', '2024-11-03 00:00:00', 2, 'PENDING', 107);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-04 00:00:00', '2024-11-04 00:00:00', 'ACTIVE', '2024-11-04 00:00:00', 3, 'IN_TRANSIT', 108);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-05 00:00:00', '2024-11-05 00:00:00', 'ACTIVE', '2024-11-05 00:00:00', 4, 'IN_TRANSIT', 109);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-06 00:00:00', '2024-11-06 00:00:00', 'ACTIVE', '2024-11-06 00:00:00', 5, 'PENDING', 110);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-27 00:00:00', '2024-11-27 00:00:00', 'ACTIVE', '2024-11-27 00:00:00', 1, 'IN_TRANSIT', 111);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-28 00:00:00', '2024-11-28 00:00:00', 'ACTIVE', '2024-11-28 00:00:00', 2, 'IN_TRANSIT', 112);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-29 00:00:00', '2024-11-29 00:00:00', 'ACTIVE', '2024-11-29 00:00:00', 3, 'DELIVERED', 113);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-11-30 00:00:00', '2024-11-30 00:00:00', 'ACTIVE', '2024-11-30 00:00:00', 4, 'CANCELED', 114);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-12-01 00:00:00', '2024-12-01 00:00:00', 'ACTIVE', '2024-12-01 00:00:00', 5, 'IN_TRANSIT', 115);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-12-02 00:00:00', '2024-12-02 00:00:00', 'ACTIVE', '2024-12-02 00:00:00', 1, 'IN_TRANSIT', 116);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-12-03 00:00:00', '2024-12-03 00:00:00', 'ACTIVE', '2024-12-03 00:00:00', 2, 'PENDING', 117);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-12-04 00:00:00', '2024-12-04 00:00:00', 'ACTIVE', '2024-12-04 00:00:00', 3, 'IN_TRANSIT', 118);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-12-05 00:00:00', '2024-12-05 00:00:00', 'ACTIVE', '2024-12-05 00:00:00', 4, 'IN_TRANSIT', 119);
INSERT INTO delivery_history (created_at, updated_at, status, date, address_id, current_status, customerorder_id) VALUES ('2024-12-06 00:00:00', '2024-12-06 00:00:00', 'ACTIVE', '2024-12-06 00:00:00', 5, 'PENDING', 120);
