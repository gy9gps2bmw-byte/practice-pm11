USE autosalon;

-- Индекс по марке автомобиля
CREATE INDEX idx_brand ON car(brand_id);

-- Индекс по дате продажи
CREATE INDEX idx_sale_date ON sale(sale_date);

-- Индекс по ФИО клиента
CREATE INDEX idx_client_fio ON client(fio);

-- Уникальный индекс по VIN
CREATE UNIQUE INDEX idx_vin ON car(vin);
