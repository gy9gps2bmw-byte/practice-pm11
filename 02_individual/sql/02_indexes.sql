USE autosalon_ind;

CREATE INDEX idx_car_brand ON car(brand_id);
CREATE INDEX idx_sale_date ON sale(sale_date);
CREATE INDEX idx_sale_client ON sale(client_id);
CREATE UNIQUE INDEX idx_car_vin ON car(vin);
