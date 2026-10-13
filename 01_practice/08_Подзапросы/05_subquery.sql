USE autosalon;

-- Автомобили дороже среднего
SELECT model, price FROM car
WHERE price > (SELECT AVG(price) FROM car);

-- Клиенты, совершившие покупки
SELECT DISTINCT fio FROM client
WHERE id IN (SELECT client_id FROM sale);
