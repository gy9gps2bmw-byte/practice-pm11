USE autosalon;

-- Продажа с именем клиента и моделью автомобиля
SELECT s.id, s.sale_date, s.amount, c.fio AS client, car.model, e.fio AS employee
FROM sale s
JOIN client c ON s.client_id = c.id
JOIN car car ON s.car_id = car.id
JOIN employee e ON s.employee_id = e.id;

-- Все автомобили с марками
SELECT car.model, car.price, b.name AS brand, b.country
FROM car
JOIN brand b ON car.brand_id = b.id;
