USE autosalon;

-- Общая сумма продаж
SELECT SUM(amount) AS total_sales FROM sale;

-- Средняя цена автомобиля
SELECT AVG(price) AS avg_price FROM car;

-- Количество продаж
SELECT COUNT(*) AS sales_count FROM sale;

-- Максимальная продажа
SELECT MAX(amount) AS max_sale FROM sale;
