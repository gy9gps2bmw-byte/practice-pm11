-- Создание базы данных Автосалон
CREATE DATABASE IF NOT EXISTS autosalon;
USE autosalon;

-- Таблица МАРКА
CREATE TABLE brand (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100)
);

-- Таблица АВТОМОБИЛЬ
CREATE TABLE car (
    id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(100) NOT NULL,
    year INT,
    price DECIMAL(10, 2) NOT NULL,
    vin VARCHAR(17),
    brand_id INT NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand(id)
);

-- Таблица КЛИЕНТ
CREATE TABLE client (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fio VARCHAR(200) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Таблица СОТРУДНИК
CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fio VARCHAR(200) NOT NULL,
    position VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);

-- Таблица ПРОДАЖА
CREATE TABLE sale (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    car_id INT NOT NULL,
    client_id INT NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(id),
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);
