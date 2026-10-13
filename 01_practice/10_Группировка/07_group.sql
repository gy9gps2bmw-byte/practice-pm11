USE autosalon;

-- Количество продаж по каждому клиенту
SELECT c.fio, COUNT(s.id) AS sales_count
FROM client c
LEFT JOIN sale s ON c.id = s.client_id
GROUP BY c.id, c.fio;

-- Сумма продаж по каждому сотруднику
SELECT e.fio, SUM(s.amount) AS total
FROM employee e
JOIN sale s ON e.id = s.employee_id
GROUP BY e.id, e.fio;

-- Количество автомобилей каждой марки
SELECT b.name, COUNT(car.id) AS car_count
FROM brand b
LEFT JOIN car ON b.id = car.brand_id
GROUP BY b.id, b.name;
