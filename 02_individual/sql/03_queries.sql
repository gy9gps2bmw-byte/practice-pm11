USE autosalon_ind;

-- 1. Все продажи с деталями
SELECT s.sale_date, s.amount, c.fio AS client, car.model, b.name AS brand, e.fio AS employee
FROM sale s
JOIN client c ON s.client_id = c.id
JOIN car ON s.car_id = car.id
JOIN brand b ON car.brand_id = b.id
JOIN employee e ON s.employee_id = e.id
ORDER BY s.sale_date DESC;

-- 2. Топ-3 самых дорогих продажи
SELECT c.fio, car.model, s.amount
FROM sale s
JOIN client c ON s.client_id = c.id
JOIN car ON s.car_id = car.id
ORDER BY s.amount DESC
LIMIT 3;

-- 3. Количество продаж по маркам
SELECT b.name, COUNT(s.id) AS sales_count, SUM(s.amount) AS total_revenue
FROM brand b
JOIN car ON b.id = car.brand_id
JOIN sale s ON car.id = s.car_id
GROUP BY b.id, b.name
ORDER BY total_revenue DESC;

-- 4. Клиенты без покупок
SELECT fio, phone FROM client
WHERE id NOT IN (SELECT DISTINCT client_id FROM sale);

-- 5. Средняя цена продажи по сотрудникам
SELECT e.fio, AVG(s.amount) AS avg_sale
FROM employee e
JOIN sale s ON e.id = s.employee_id
GROUP BY e.id, e.fio;
