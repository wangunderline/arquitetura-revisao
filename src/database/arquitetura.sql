-- Active: 1691756290788@@127.0.0.1@3306

CREATE TABLE brands (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE products (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    description TEXT NOT NULL,
    brand_id TEXT NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands(id)
);

SELECT * FROM brands;

SELECT * FROM products;

INSERT INTO brands (id, name)
VALUES
('b001', 'xiaomi'),
('b002', 'nokia'),
('b003', 'microsoft'),
('b004', 'oba');

INSERT INTO products (id, name, price, description, brand_id)
VALUES 
    ("p001", 'mi: impossible', 2500, 'good phone', 'b001'),
    ("p002", 'porcophone', 4800, 'another good phone', 'b001'),
    ("p003", 'brickphone', 7000, 'hard phone', 'b002'),
    ("p004", 'windows phone', 3300, 'bad phone', 'b003'),
    ("p005", 'oldphone', 1200, 'for elders', 'b004');