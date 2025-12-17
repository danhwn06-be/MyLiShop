<div class="main-container">
    <div class="product-showcase">
        <div class="product-showcase__header">
            <h3 class="product-showcase__title">SẢN PHẨM MỚI</h3>
        </div>
        <div class="product-showcase__body">
            <div class="product-list">
                <?php
                $sql = "SELECT id,image,name,price FROM products WHERE category_id=3 AND status = 0";
                $result = mysqli_query($conn, $sql);
                while ($kq = mysqli_fetch_assoc($result)) {

                ?>
                    <div class="product-list__item">
                        <div class="product-card">
                            <div class="product-card__image-wrapper">
                                <img class="product-card__image" src="<?php echo $kq['image']; ?>" alt="Generic placeholder thumbnail"
                                    width="100%" height="300">
                            </div>
                            <div class="product-card__name">
                                <?php echo $kq['name']; ?>
                            </div>
                            <div class="product-card__price">
                                Giá: <?php echo $kq['price']; ?><sup> đ</sup>
                            </div>
                            <div class="product-card__actions">
                                <a href="#?id=<?php echo $kq['id']; ?>">
                                    <button type="button" class="button button--primary">
                                        <label style="color: red;">&hearts;</label> Mua hàng <label
                                            style="color: red;">&hearts;</label>
                                    </button>
                                </a>
                                <a href="#?id=<?php echo $kq['id']; ?>">
                                    <button type="button" class="button button--primary">
                                        <label style="color: red;">&hearts;</label> Chi tiết <label
                                            style="color: red;">&hearts;</label>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>

        <div class="product-showcase__header">
            <h3 class="product-showcase__title">THỜI TRANG NAM</h3>
        </div>
        <div class="product-showcase__body">
            <div class="product-list">
                <?php
                $sql = "SELECT id,image,name,price FROM products WHERE category_id=1 LIMIT 8";
                $result = mysqli_query($conn, $sql);

                while ($kq = mysqli_fetch_assoc($result)) {

                ?>
                    <div class="product-list__item">
                        <div class="product-card">
                            <div class="product-card__image-wrapper">
                                <img class="product-card__image" src="<?php echo $kq['image']; ?>" alt="Generic placeholder thumbnail"
                                    width="100%" height="300">
                            </div>
                            <div class="product-card__name">
                                <?php echo $kq['name']; ?>
                            </div>
                            <div class="product-card__price">
                                Giá: <?php echo $kq['price']; ?><sup> đ</sup>
                            </div>
                            <div class="product-card__actions">
                                <a href="#?id=<?php echo $kq['id']; ?>">
                                    <button type="button" class="button button--primary">
                                        <label style="color: red;">&hearts;</label> Mua hàng <label
                                            style="color: red;">&hearts;</label>
                                    </button>
                                </a>
                                <a href="#?id=<?php echo $kq['id'] ?>">
                                    <button type="button" class="button button--primary">
                                        <label style="color: red;">&hearts;</label> Chi tiết <label
                                            style="color: red;">&hearts;</label>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>

        <div class="product-showcase__header">
            <h3 class="product-showcase__title">THỜI TRANG NỮ</h3>
        </div>
        <div class="product-showcase__body">
            <div class="product-list">
                <?php
                $sql = "SELECT id,image,name,price FROM products WHERE category_id=2 LIMIT 8";
                $result = mysqli_query($conn, $sql);

                while ($kq = mysqli_fetch_assoc($result)) {

                ?>
                    <div class="product-list__item">
                        <div class="product-card">
                            <div class="product-card__image-wrapper">
                                <img class="product-card__image" src="<?php echo $kq['image']; ?>" alt="Generic placeholder thumbnail"
                                    width="100%" height="300">
                            </div>
                            <div class="product-card__name">
                                <?php echo $kq['name']; ?>
                            </div>
                            <div class="product-card__price">
                                Giá: <?php echo $kq['price']; ?><sup> đ</sup>
                            </div>
                            <div class="product-card__actions">
                                <a href="#?id=<?php echo $kq['id']; ?>">
                                    <button type="button" class="button button--primary">
                                        <label style="color: red;">&hearts;</label> Mua hàng <label
                                            style="color: red;">&hearts;</label>
                                    </button>
                                </a>
                                <a href="#?id=<?php echo $kq['id'] ?>">
                                    <button type="button" class="button button--primary">
                                        <label style="color: red;">&hearts;</label> Chi tiết <label
                                            style="color: red;">&hearts;</label>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>

    </div>
</div>