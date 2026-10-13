USE autosalon;

-- Все автомобили
SELECT * FROM car;

-- Автомобили дороже 2 000 000
SELECT model, price FROM car WHERE price > 2000000;

-- Клиенты без email
SELECT fio, phone FROM client WHERE email IS NULL;

-- Сотрудники-менеджеры
SELECT fio, position FROM employee WHERE position = 'Менеджер';
