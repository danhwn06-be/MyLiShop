-- Active: 1758338882349@@127.0.0.1@3306@mylishop
CREATE DATABASE IF NOT EXISTS mylishop;

USE mylishop;

CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    categories (id, name)
VALUES (1, 'Thời trang Nam'),
    (2, 'Thời trang Nữ'),
    (3, 'Hàng mới về');

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    keyword VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 0) NOT NULL,
    sale_price DECIMAL(10, 0) DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

INSERT INTO
    products (
        category_id,
        name,
        keyword,
        image,
        quantity,
        price,
        sale_price,
        description
    )
VALUES

-- ================================================================
-- 1. THỜI TRANG NAM
-- ================================================================

-- --- SHIRTS (Áo sơ mi & Thun) ---
(
    1,
    'Áo thun nam cổ tim xanh rêu',
    'ao-thun, t-shirt, men',
    'assets/images/products/men/shirts/men-tshirt-vneck-green.jpg',
    100,
    150000,
    129000,
    'Áo thun cotton co giãn 4 chiều, màu xanh rêu nam tính.'
),
(
    1,
    'Áo thun nam cổ tròn trắng basic',
    'ao-thun, t-shirt, men',
    'assets/images/products/men/shirts/men-tshirt-round-white.jpg',
    150,
    120000,
    0,
    'Áo thun trắng trơn đơn giản, dễ phối với mọi loại quần.'
),
(
    1,
    'Áo thun nam Polo xám',
    'ao-polo, t-shirt, men',
    'assets/images/products/men/shirts/men-polo-gray.jpg',
    80,
    250000,
    0,
    'Áo Polo màu xám chuột lịch sự, viền cổ tinh tế.'
),
(
    1,
    'Áo sơ mi nam đen họa tiết chìm',
    'ao-so-mi, shirt, men',
    'assets/images/products/men/shirts/men-shirt-black-pattern.jpg',
    50,
    320000,
    0,
    'Sơ mi đen huyền bí với họa tiết in chìm sang trọng.'
),
(
    1,
    'Áo sơ mi nam đen chấm bi',
    'ao-so-mi, shirt, men',
    'assets/images/products/men/shirts/men-shirt-black-dot.jpg',
    45,
    330000,
    299000,
    'Sơ mi công sở chấm bi nhỏ, phong cách Hàn Quốc.'
),
(
    1,
    'Áo sơ mi nam trắng Oxford',
    'ao-so-mi, shirt, men',
    'assets/images/products/men/shirts/men-shirt-white-oxford.jpg',
    60,
    350000,
    0,
    'Áo sơ mi trắng vải Oxford dày dặn, đứng form.'
),
(
    1,
    'Áo sơ mi nam kẻ caro đỏ đen',
    'ao-so-mi, shirt, men',
    'assets/images/products/men/shirts/men-shirt-plaid-red.jpg',
    40,
    310000,
    0,
    'Sơ mi Flannel kẻ caro đỏ đen bụi bặm, phong cách Streetwear.'
),
(
    1,
    'Áo Henley dài tay kẻ sọc',
    'ao-henley, t-shirt, men',
    'assets/images/products/men/shirts/men-shirt-henley-striped.jpg',
    30,
    280000,
    0,
    'Áo thun dài tay cổ nút (Henley) kẻ sọc ngang trẻ trung.'
),

-- --- SUITS (Vest & Blazer) ---
(
    1,
    'Bộ Vest nam xanh Navy (Full set)',
    'vest, suit, men',
    'assets/images/products/men/suits/men-suit-navy-blue.png',
    20,
    1850000,
    1650000,
    'Bộ Suit xanh than cao cấp, bao gồm áo vest và quần âu.'
),
(
    1,
    'Bộ Vest nam xám ghi kẻ sọc',
    'vest, suit, men',
    'assets/images/products/men/suits/men-suit-gray-striped.jpg',
    15,
    1950000,
    0,
    'Vest xám kẻ sọc dọc giúp tôn dáng và tăng chiều cao.'
),
(
    1,
    'Áo Blazer nam màu be',
    'vest, blazer, men',
    'assets/images/products/men/suits/men-blazer-beige.jpg',
    25,
    850000,
    0,
    'Áo khoác Blazer màu be trẻ trung, phối Jeans cực đẹp.'
),
(
    1,
    'Bộ Vest nam đen Tuxedo',
    'vest, suit, men',
    'assets/images/products/men/suits/men-suit-black-tuxedo.jpg',
    10,
    2500000,
    0,
    'Bộ Tuxedo đen lịch lãm dành cho các sự kiện trang trọng.'
),

-- --- PANTS (Quần) ---
(
    1,
    'Quần Jeans nam xanh rách gối',
    'quan-jeans, pants, men',
    'assets/images/products/men/pants/men-jeans-blue-ripped.jpg',
    60,
    450000,
    399000,
    'Quần Jeans form Slimfit, wash rách gối cá tính.'
),
(
    1,
    'Quần âu nam đen công sở',
    'quan-au, trousers, men',
    'assets/images/products/men/pants/men-trousers-black.jpg',
    80,
    400000,
    0,
    'Quần tây đen vải tuyết mưa, không nhăn, giữ ly tốt.'
),
(
    1,
    'Quần Jogger Kaki túi hộp',
    'quan-jogger, pants, men',
    'assets/images/products/men/pants/men-jogger-khaki.jpg',
    50,
    380000,
    0,
    'Quần Jogger màu rêu túi hộp phong cách quân đội.'
),
(
    1,
    'Quần Short Kaki màu kem',
    'quan-short, pants, men',
    'assets/images/products/men/pants/men-short-cream.jpg',
    70,
    250000,
    0,
    'Quần ngố Kaki thoáng mát cho mùa hè.'
),

-- --- SHOES (Giày) ---
(
    1,
    'Giày Sneaker Alphabounce Đen',
    'giay-the-thao, sneaker, men',
    'assets/images/products/men/shoes/shoes-sneaker-alphabounce-black.jpg',
    30,
    950000,
    850000,
    'Giày chạy bộ êm ái, đế Bounce hỗ trợ lực.'
),
(
    1,
    'Giày Tây nam da bò nâu',
    'giay-tay, shoes, men',
    'assets/images/products/men/shoes/shoes-oxford-brown.jpg',
    40,
    1200000,
    0,
    'Giày Oxford da bò thật, đánh màu Patina thủ công.'
),
(
    1,
    'Giày Slip-on vải Canvas xám',
    'giay-luoi, shoes, men',
    'assets/images/products/men/shoes/shoes-slipon-gray.jpg',
    50,
    350000,
    0,
    'Giày lười vải xám tiện lợi, đế cao su đúc.'
),

-- ================================================================
-- 2. THỜI TRANG NỮ
-- ================================================================

-- --- TOPS (Áo & Khoác) ---
(
    2,
    'Áo khoác da nữ biker hồng',
    'ao-khoac, coat, women',
    'assets/images/products/women/tops/women-coat-pink-leather.jpg',
    30,
    750000,
    699000,
    'Áo khoác da PU dáng Biker cá tính, màu hồng pastel.'
),
(
    2,
    'Áo khoác Mangto Kaki Be',
    'ao-mang-to, coat, women',
    'assets/images/products/women/tops/women-coat-kaki-beige.jpg',
    25,
    850000,
    0,
    'Áo khoác dáng dài thắt đai eo, phong cách Hàn Quốc.'
),
(
    2,
    'Áo Hoodie nữ tím pastel',
    'ao-hoodie, top, women',
    'assets/images/products/women/tops/women-hoodie-purple.jpg',
    60,
    320000,
    0,
    'Áo nỉ có mũ màu tím nhạt dễ thương, form rộng.'
),
(
    2,
    'Áo Croptop thun ôm body',
    'ao-thun, top, women',
    'assets/images/products/women/tops/women-top-crop-black.jpg',
    80,
    150000,
    0,
    'Áo thun ngắn ôm sát khoe eo thon, chất thun gân.'
),
(
    2,
    'Áo sơ mi nữ lụa trắng',
    'ao-so-mi, top, women',
    'assets/images/products/women/tops/women-shirt-silk-white.jpg',
    45,
    450000,
    0,
    'Sơ mi lụa mềm mại, cổ nơ nữ tính.'
),

-- --- DRESSES (Váy & Đầm) ---
(
    2,
    'Váy dự tiệc trễ vai hồng cam',
    'vay-du-tiec, dress, women',
    'assets/images/products/women/dresses/women-dress-peach-party.jpg',
    35,
    550000,
    499000,
    'Đầm dự tiệc chất liệu Voan kính, thiết kế trễ vai quyến rũ.'
),
(
    2,
    'Váy Maxi đi biển đỏ rực',
    'vay-maxi, dress, women',
    'assets/images/products/women/dresses/women-dress-maxi-red.jpg',
    40,
    480000,
    420000,
    'Váy Maxi hai dây hở lưng, tùng váy xòe rộng.'
),
(
    2,
    'Váy suông đen hoa cúc họa mi',
    'vay-hoa, dress, women',
    'assets/images/products/women/dresses/women-dress-black-floral.jpg',
    50,
    390000,
    0,
    'Váy dáng suông che khuyết điểm, họa tiết hoa nhí.'
),
(
    2,
    'Váy Bodycon len tăm xám',
    'vay-body, dress, women',
    'assets/images/products/women/dresses/women-dress-body-gray.jpg',
    30,
    350000,
    0,
    'Váy len ôm sát tôn dáng, chất len tăm co giãn.'
),
(
    2,
    'Chân váy xếp ly ngắn caro',
    'chan-vay, skirt, women',
    'assets/images/products/women/dresses/women-skirt-plaid.jpg',
    60,
    220000,
    0,
    'Chân váy Tennis xếp ly họa tiết kẻ caro năng động.'
),

-- --- SETS (Đồ bộ) ---
(
    2,
    'Set Vest nữ công sở màu Kem',
    'set-bo, suit, women',
    'assets/images/products/women/sets/women-set-suit-cream.jpg',
    20,
    950000,
    0,
    'Bộ Vest nữ gồm áo Blazer và quần âu ống suông.'
),
(
    2,
    'Set váy tím kèm áo khoác lửng',
    'set-bo, dress, women',
    'assets/images/products/women/sets/women-dress-purple-jacket.jpg',
    15,
    850000,
    0,
    'Thiết kế sang trọng với tông màu tím mộng mơ.'
),
(
    2,
    'Set đồ tập Gym màu xanh',
    'set-the-thao, sport, women',
    'assets/images/products/women/sets/women-set-gym-blue.jpg',
    40,
    350000,
    0,
    'Bộ đồ tập Bra và Legging co giãn tốt, thấm hút mồ hôi.'
),

-- --- SHOES (Giày Nữ) ---
(
    2,
    'Giày cao gót mũi nhọn màu Nude',
    'giay-cao-got, heels, women',
    'assets/images/products/women/shoes/women-heels-nude.jpg',
    50,
    550000,
    0,
    'Giày cao gót 7cm tôn dáng, màu da dễ phối đồ.'
),
(
    2,
    'Giày lười Slip-on caro xanh',
    'giay-luoi, slip-on, women',
    'assets/images/products/women/shoes/shoes-slipon-blue-plaid.jpg',
    60,
    290000,
    250000,
    'Giày vải tiện lợi, họa tiết trẻ trung.'
),
(
    2,
    'Sandal chiến binh dây mảnh',
    'sandal, shoes, women',
    'assets/images/products/women/shoes/women-sandal-black.jpg',
    45,
    320000,
    0,
    'Sandal dây buộc cá tính, đế bệt thoải mái.'
),
(
    2,
    'Bốt cổ ngắn da lộn nâu',
    'giay-boot, boots, women',
    'assets/images/products/women/shoes/women-boot-suede-brown.jpg',
    25,
    650000,
    0,
    'Ankle Boot chất liệu da lộn, khóa kéo bên hông.'
),

-- ================================================================
-- 3. HÀNG MỚI VỀ
-- ================================================================

(
    3,
    'Áo sơ mi nam Linen cổ trụ (New)',
    'ao-so-mi, shirt, new',
    'assets/images/products/men/shirts/new-shirt-linen-white.jpg',
    50,
    380000,
    0,
    'Chất liệu vải đũi (Linen) thoáng mát, cổ tàu hiện đại.'
),
(
    3,
    'Quần Jeans nữ ống loe (New)',
    'quan-jeans, pants, new',
    'assets/images/products/women/dresses/new-jeans-flare.jpg',
    40,
    550000,
    0,
    'Quần Jeans ống loe phong cách Retro thập niên 90.'
),
(
    3,
    'Giày Sneaker Chunky trắng (New)',
    'giay-the-thao, sneaker, new',
    'assets/images/products/women/shoes/new-sneaker-chunky.jpg',
    30,
    850000,
    0,
    'Giày thể thao đế độn, phong cách hầm hố đang hot.'
),
(
    3,
    'Túi xách da đeo chéo (New)',
    'phu-kien, bag, new',
    'assets/images/products/women/sets/new-bag-crossbody.jpg',
    20,
    600000,
    0,
    'Túi xách da mini, phụ kiện không thể thiếu khi dạo phố.'
);

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'user') DEFAULT 'user',
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    total_money DECIMAL(10, 0) NOT NULL,
    status ENUM(
        'pending',
        'completed',
        'cancelled'
    ) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE order_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    price DECIMAL(10, 0) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);