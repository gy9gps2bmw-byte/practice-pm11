USE autosalon;

INSERT INTO brand (id, name, country) VALUES
(1, 'Toyota', 'Japan'),
(2, 'BMW', 'Germany'),
(3, 'Lada', 'Russia'),
(4, 'Ford', 'USA'),
(5, 'Hyundai', 'South Korea');

INSERT INTO car (id, model, year, price, vin, brand_id) VALUES
(1, 'Camry', 2023, 2500000, 'XTA12345678901234', 1),
(2, 'X5', 2022, 5500000, 'XTA23456789012345', 2),
(3, 'Vesta', 2023, 1200000, 'XTA34567890123456', 3),
(4, 'Focus', 2021, 1500000, 'XTA45678901234567', 4),
(5, 'Solaris', 2023, 1100000, 'XTA56789012345678', 5);

INSERT INTO client (id, fio, phone, email) VALUES
(1, 'Иванов Иван Иванович', '+79001112233', 'ivanov@mail.ru'),
(2, 'Петрова Мария Сергеевна', '+79002223344', 'petrova@mail.ru'),
(3, 'Сидоров Алексей Петрович', NULL, 'sidorov@gmail.com');

INSERT INTO employee (id, fio, position, phone) VALUES
(1, 'Смирнов Олег Васильевич', 'Менеджер', '+79003334455'),
(2, 'Козлова Анна Дмитриевна', 'Старший менеджер', '+79004445566');

INSERT INTO sale (id, sale_date, amount, car_id, client_id, employee_id) VALUES
(1, '2024-01-15', 2500000, 1, 1, 1),
(2, '2024-02-20', 5500000, 2, 2, 2),
(3, '2024-03-10', 1200000, 3, 1, 1),
(4, '2024-04-05', 1100000, 5, 3, 2);
