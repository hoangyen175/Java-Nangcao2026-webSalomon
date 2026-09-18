-- =====================================================
-- FOOTWEAR - SPORTSTYLE
-- =====================================================


-- ACS PRO
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'ACS Pro',
    'Footwear',
    'Sportstyle',
    'ACS',
    'Unisex',
    5800000,
    NULL,
    'Technical footwear designed for everyday exploration.',
    1,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'ACS Pro'),
    'Silver',
    '#C0C0C0',
    '/images/acs-pro.jpg'
);


-- XT-4
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'XT-4',
    'Footwear',
    'Sportstyle',
    'XT',
    'Unisex',
    4990000,
    6799000,
    'Iconic technical footwear with a trail-inspired design.',
    0,
    1
);

-- XT-4 Vanilla
INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'XT-4'),
    'Vanilla',
    '#E8E1D5',
    '/images/xt4.jpg'
);

-- XT-4 Black
INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'XT-4'),
    'Black',
    '#111111',
    '/images/xt4-black.png'
);

-- XT-4 White
INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'XT-4'),
    'White',
    '#F5F5F5',
    '/images/xt4-white.webp'
);


-- XT-6
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'XT-6',
    'Footwear',
    'Sportstyle',
    'XT',
    'Unisex',
    5200000,
    NULL,
    'Technical footwear inspired by trail running.',
    1,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'XT-6'),
    'Pink',
    '#D8A7B1',
    '/images/xt6-pink.jpg'
);


-- =====================================================
-- FOOTWEAR - TRAIL RUNNING
-- =====================================================


-- GENESIS
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Genesis',
    'Footwear',
    'Trail Running',
    'Genesis',
    'Unisex',
    4590000,
    NULL,
    'Trail running footwear built for technical terrain.',
    1,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Genesis'),
    'Default',
    '#D9D9D9',
    '/images/genesis.jpg'
);


-- SPEEDCROSS 6
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Speedcross 6',
    'Footwear',
    'Trail Running',
    'Speedcross',
    'Men',
    3900000,
    NULL,
    'Trail running footwear for challenging terrain.',
    0,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Speedcross 6'),
    'Default',
    '#333333',
    '/images/speedcross6.webp'
);


-- SENSE RIDE 5
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Sense Ride 5',
    'Footwear',
    'Trail Running',
    'Sense Ride',
    'Women',
    3290000,
    3890000,
    'Versatile trail running footwear for everyday adventures.',
    0,
    1
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Sense Ride 5'),
    'Default',
    '#D6D6D6',
    '/images/sense-ride-5.jpg'
);


-- =====================================================
-- FOOTWEAR - HIKING
-- =====================================================


-- XA PRO 3D
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'XA Pro 3D',
    'Footwear',
    'Hiking',
    'XA Pro',
    'Unisex',
    4200000,
    NULL,
    'Outdoor footwear designed for stability and adventure.',
    0,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'XA Pro 3D'),
    'Default',
    '#B8B8B8',
    '/images/xa-pro-3d.jpg'
);


-- X ULTRA 5
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'X Ultra 5',
    'Footwear',
    'Hiking',
    'X Ultra',
    'Men',
    4390000,
    NULL,
    'Hiking footwear designed for grip, stability and comfort.',
    1,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'X Ultra 5'),
    'Default',
    '#777777',
    '/images/x-ultra-5.jpg'
);


-- =====================================================
-- HYDRATION
-- =====================================================


-- ACTIVE SKIN 4
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Active Skin 4',
    'Hydration',
    'Hydration Vest',
    'Active Skin',
    'Unisex',
    3599000,
    NULL,
    'Lightweight hydration vest designed for trail running.',
    0,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Active Skin 4'),
    'Default',
    '#333333',
    '/images/active-skin-4.jpg'
);


-- ACTIVE SKIN 12
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Active Skin 12',
    'Hydration',
    'Hydration Vest',
    'Active Skin',
    'Unisex',
    5399000,
    NULL,
    'High-capacity hydration vest for longer adventures.',
    1,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Active Skin 12'),
    'Default',
    '#222222',
    '/images/active-skin-12.jpg'
);


-- SOFT FLASK
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Soft Flask 500ml',
    'Hydration',
    'Flask',
    'Soft Flask',
    'Unisex',
    699000,
    799000,
    'Compact soft flask designed for easy hydration on the move.',
    0,
    1
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Soft Flask 500ml'),
    'Clear',
    '#E5E5E5',
    '/images/soft-flask-500.jpg'
);


-- =====================================================
-- BAGS
-- =====================================================


-- TRAILBLAZER 20
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Trailblazer 20',
    'Bags',
    'Backpack',
    'Trailblazer',
    'Unisex',
    2490000,
    NULL,
    'Versatile backpack for hiking and everyday outdoor use.',
    0,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Trailblazer 20'),
    'Default',
    '#333333',
    '/images/trailblazer-20.jpg'
);


-- CROSS 12
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Cross 12',
    'Bags',
    'Backpack',
    'Cross',
    'Unisex',
    2159000,
    2399000,
    'Compact backpack designed for active outdoor adventures.',
    0,
    1
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Cross 12'),
    'Default',
    '#555555',
    '/images/cross-12.jpg'
);


-- CROSS 4
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Cross 4',
    'Bags',
    'Running Bag',
    'Cross',
    'Unisex',
    1790000,
    NULL,
    'Compact running pack designed for lightweight outdoor use.',
    1,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Cross 4'),
    'Default',
    '#222222',
    '/images/cross-4.png'
);


-- =====================================================
-- APPAREL
-- =====================================================


-- BONATTI WATERPROOF JACKET
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Bonatti Waterproof Jacket',
    'Apparel',
    'Jackets',
    'Bonatti',
    'Men',
    4990000,
    NULL,
    'Lightweight waterproof jacket for outdoor activities.',
    1,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Bonatti Waterproof Jacket'),
    'Default',
    '#333333',
    '/images/bonatti-jacket.jpg'
);


-- =====================================================
-- ACCESSORIES
-- =====================================================


-- CROSS CAP
INSERT INTO products
(name, category, subcategory, collection, gender,
 price, old_price, description, is_new, is_sale)
VALUES
(
    'Cross Cap',
    'Accessories',
    'Caps',
    'Cross',
    'Unisex',
    890000,
    NULL,
    'Lightweight sports cap for running and outdoor use.',
    0,
    0
);

INSERT INTO product_variants
(product_id, color_name, color_code, image)
VALUES
(
    (SELECT id FROM products WHERE name = 'Cross Cap'),
    'Default',
    '#111111',
    '/images/cross-cap.jpg'
);


-- =====================================================
-- FOOTWEAR SIZES
-- Áp dụng size cho TẤT CẢ màu của tất cả footwear
-- =====================================================

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, '38', 5
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Footwear';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, '39', 7
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Footwear';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, '40', 10
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Footwear';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, '41', 8
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Footwear';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, '42', 5
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Footwear';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, '43', 3
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Footwear';


-- =====================================================
-- APPAREL SIZES
-- =====================================================

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, 'S', 5
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Apparel';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, 'M', 8
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Apparel';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, 'L', 6
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Apparel';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, 'XL', 3
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category = 'Apparel';


-- =====================================================
-- HYDRATION VEST SIZES
-- =====================================================

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, 'S', 5
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.subcategory = 'Hydration Vest';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, 'M', 8
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.subcategory = 'Hydration Vest';

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, 'L', 5
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.subcategory = 'Hydration Vest';


-- =====================================================
-- ONE SIZE
-- Bags + Accessories + Flask
-- =====================================================

INSERT INTO product_sizes (variant_id, size, stock)
SELECT pv.id, 'ONE SIZE', 10
FROM product_variants pv
JOIN products p ON p.id = pv.product_id
WHERE p.category IN ('Bags', 'Accessories')
   OR p.subcategory = 'Flask';


-- =====================================================
-- DEMO STOCK
-- Một vài size hết hàng để test giao diện
-- =====================================================

UPDATE product_sizes
SET stock = 0
WHERE variant_id = (
    SELECT pv.id
    FROM product_variants pv
    JOIN products p ON p.id = pv.product_id
    WHERE p.name = 'XT-4'
      AND pv.color_name = 'Black'
)
AND size = '38';

UPDATE product_sizes
SET stock = 0
WHERE variant_id = (
    SELECT pv.id
    FROM product_variants pv
    JOIN products p ON p.id = pv.product_id
    WHERE p.name = 'XT-4'
      AND pv.color_name = 'White'
)
AND size = '42';