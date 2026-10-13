USE autosalon;

-- Добавление ограничения CHECK
ALTER TABLE car ADD CONSTRAINT chk_price CHECK (price > 0);
ALTER TABLE car ADD CONSTRAINT chk_year CHECK (year >= 1900 AND year <= 2030);

-- CASE в запросе
SELECT model, price,
    CASE
        WHEN price < 1500000 THEN 'Бюджетный'
        WHEN price < 3000000 THEN 'Средний'
        ELSE 'Премиум'
    END AS category
FROM car;
