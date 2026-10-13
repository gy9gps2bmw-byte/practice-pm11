USE autosalon;

-- Транзакция: оформление новой продажи
START TRANSACTION;

INSERT INTO client (fio, phone, email)
VALUES ('Новиков Павел Игоревич', '+79005556677', 'novikov@mail.ru');

SET @new_client_id = LAST_INSERT_ID();

INSERT INTO sale (sale_date, amount, car_id, client_id, employee_id)
VALUES ('2024-05-01', 1500000, 4, @new_client_id, 1);

COMMIT;
