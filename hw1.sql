USE gb;

-- создание таблицы
DROP TABLE IF EXISTS mobile_phones;
CREATE TABLE mobile_phones(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	product_name VARCHAR(45) NOT NULL, 
	manufacturer VARCHAR(45) NOT NULL,
	product_count BIGINT UNSIGNED,
    price FLOAT 
);

-- заполнение таблицы
INSERT INTO mobile_phones(product_name, manufacturer, product_count, price)
VALUES 
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT
	product_name,
    manufacturer,
    price
FROM mobile_phones
WHERE product_count > 2;


-- 3.  Выведите весь ассортимент товаров марки “Samsung”
SELECT
	*
FROM mobile_phones
WHERE manufacturer = 'Samsung';


-- 4. (по желанию)* С помощью регулярных выражений найти:
-- 4.1. Товары, в которых есть упоминание "Iphone"
SELECT
	*
FROM mobile_phones
WHERE REGEXP_LIKE(CONCAT(product_name, manufacturer), 'iphone', 'i');


-- 4.2. Товары, в которых есть упоминание "Samsung"
SELECT
	*
FROM mobile_phones
WHERE REGEXP_LIKE(CONCAT(product_name, manufacturer), 'samsung', 'i');


-- 4.3.  Товары, в которых есть ЦИФРЫ
SELECT
	*
FROM mobile_phones
WHERE product_name REGEXP '[0-9]';


-- 4.4.  Товары, в которых есть ЦИФРА "8"
SELECT
	*
FROM mobile_phones
WHERE product_name REGEXP '8+';