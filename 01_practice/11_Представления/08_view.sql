USE autosalon;

-- Представление: полные данные о продажах
CREATE VIEW v_full_sales AS
SELECT s.id AS sale_id, s.sale_date, s.amount,
       c.fio AS client, car.model AS car_model, b.name AS brand,
       e.fio AS employee
FROM sale s
JOIN client c ON s.client_id = c.id
JOIN car ON s.car_id = car.id
JOIN brand b ON car.brand_id = b.id
JOIN employee e ON s.employee_id = e.id;

-- Использование представления
SELECT * FROM v_full_sales;
