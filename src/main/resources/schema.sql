-- =====================================================
-- RESET DATABASE
-- =====================================================

DROP TABLE IF EXISTS product_sizes;
DROP TABLE IF EXISTS product_variants;
DROP TABLE IF EXISTS products;


-- =====================================================
-- PRODUCTS
-- Một record = một mẫu sản phẩm
-- =====================================================

CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    name TEXT NOT NULL UNIQUE,

    category TEXT NOT NULL,
    subcategory TEXT,
    collection TEXT,
    gender TEXT,

    price REAL NOT NULL,
    old_price REAL,

    description TEXT,

    is_new INTEGER NOT NULL DEFAULT 0,
    is_sale INTEGER NOT NULL DEFAULT 0
);


-- =====================================================
-- PRODUCT VARIANTS
-- Một product có thể có nhiều màu
-- Mỗi màu có ảnh riêng
-- =====================================================

CREATE TABLE product_variants (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    product_id INTEGER NOT NULL,

    color_name TEXT NOT NULL,
    color_code TEXT,

    image TEXT NOT NULL,

    FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE,

    UNIQUE(product_id, color_name)
);


-- =====================================================
-- PRODUCT SIZES
-- Size + stock thuộc từng màu
-- =====================================================

CREATE TABLE product_sizes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    variant_id INTEGER NOT NULL,

    size TEXT NOT NULL,
    stock INTEGER NOT NULL DEFAULT 0,

    FOREIGN KEY (variant_id)
        REFERENCES product_variants(id)
        ON DELETE CASCADE,

    UNIQUE(variant_id, size)
);