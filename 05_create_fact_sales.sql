-- FACT TABLE: SALES / VENTAS
-- Goal: Central table with metrics and foreign keys.
-- Objetivo: Tabla central con métricas y claves foráneas.
DROP TABLE IF EXISTS fact_sales;

CREATE TABLE fact_sales (
    order_item_id      INTEGER PRIMARY KEY, 
    order_id           INTEGER,             
    
    -- Foreign Keys
    product_card_id    INTEGER REFERENCES dim_products(product_card_id),
    customer_id        INTEGER REFERENCES dim_customers(customer_id),
    shipping_id        INTEGER REFERENCES dim_shipping(shipping_id),
    
    -- Dates / Fechas
    order_date         TIMESTAMP,
    shipping_date      TIMESTAMP,
	days_scheduled     INTEGER,
	
	-- Location / Ubicación del Pedido 
    order_city         VARCHAR(100),
    order_country      VARCHAR(100),
    
    -- Metrics / Métricas
    sales_amount       FLOAT,
    quantity           INTEGER,
    discount_amount    FLOAT,
    profit             FLOAT,
    
    -- Status / Estado
    order_status       VARCHAR(50)
);
	-- INSERT DATA
INSERT INTO fact_sales (
    order_item_id,
    order_id,
    product_card_id,
    customer_id,
    shipping_id,
    order_date,
    shipping_date,
	days_scheduled,
	order_city,        
    order_country,     
    sales_amount,
    quantity,
    discount_amount,
    profit,
    order_status
)
SELECT 
    s.order_item_id,
    s.order_id,
    s.product_card_id,
    s.customer_id,
    d.shipping_id,        
    s.order_date,         
    s.shipping_date,
	s.days_for_shipping_scheduled,
	s.order_city,      
    s.order_country,
    s.sales,
    s.order_item_quantity,
    s.order_item_discount,
    s.benefit_per_order,
    s.order_status
FROM staging_supply_chain s
JOIN dim_shipping d ON s.shipping_mode = d.shipping_mode;
-- Este JOIN busca el nombre del envío en la dimensión y nos devuelve su ID numérico.