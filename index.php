<?php
$host = "localhost";
$user = "root";
$pass = "";
$data = "data_senjata";
$koneksi = mysqli_connect($host, $user, $pass, $data);
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WeaponStore - Skenser</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- HEADER -->
    <header class="header">
        <div class="container navbar">
            <a href="#" class="logo">Weapon<span>Store</span></a>
            <nav class="menu">
                <a href="#home">Home</a>
                <a href="#produk">Produk</a>
                <a href="#tentang">Tentang</a>
                <a href="#kontak">Kontak</a>
                <a href="index.html">Profil</a>
            </nav>
        </div>
    </header>

    <!-- PRODUK -->
    <section class="produk-section" id="produk">
        <div class="container">
            <div class="section-title">
                <h2>Produk Terbaru</h2>
                <span>Pilih senjata favoritmu</span>
            </div>
            <div class="produk-grid">
                <?php
                $q = mysqli_query($koneksi, "SELECT * FROM produk");
                while($produk = mysqli_fetch_array($q)){
                ?>
                <div class="produk-card">
                    <div class="produk-image">
                        <img src="produk/<?php echo $produk['gambar']; ?>" alt="<?php echo $produk['nama']; ?>">
                    </div>
                    <div class="produk-info">
                        <p class="kategori"><?php echo $produk['kategori']; ?></p>
                        <h3><?php echo $produk['nama']; ?></h3>
                        
                        <!-- RATING BINTANG -->
                        <div class="rating" style="color: #ffc107; font-size: 14px; margin: 4px 0;">
                            ★★★★★ <span style="color: #888; font-size: 12px;">(4.5)</span>
                        </div>

                        <div class="produk-bottom">
                            <strong>Rp <?php echo number_format($produk['harga'], 0, ',', '.'); ?></strong>
                            <button>+</button>
                        </div>
                    </div>
                </div>
                <?php
                }
                ?>
            </div>
        </div>
    </section>

    <!-- TENTANG -->
    <section class="tentang" id="tentang">
        <div class="container tentang-content">
            <div>
                <p class="subtitle">TENTANG KAMI</p>
                <h2>Koleksi Senjata Berkualitas Tinggi</h2>
            </div>
            <p>
                WeaponStore menyediakan berbagai macam koleksi senjata taktis dan replika dengan
                desain detail, presisi, dan berkualitas. Kami percaya
                bahwa koleksi yang tepat dapat memberikan kepuasan tersendiri bagi para kolektor.
            </p>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="footer" id="kontak">
        <div class="container footer-content">
            <div class="footer-brand">
                <h2>Weapon<span>Store</span></h2>
                <p>
                    Temukan senjata favoritmu dan lengkapi koleksi taktis milikmu.
                </p>
            </div>
            <div class="footer-menu">
                <h3>Menu</h3>
                <a href="#home">Home</a>
                <a href="#produk">Produk</a>
                <a href="#tentang">Tentang</a>
                <a href="#kontak">Kontak</a>
                <a href="index.html">Profil</a> <!-- TOMBOL PROFIL JUGA DITAMBAHKAN DI FOOTER -->
            </div>
            <div class="footer-contact">
                <h3>Kontak</h3>
                <p>Wonogiri, Indonesia</p>
                <p>+62 812-3456-7890</p>
                <p>joewesker@gmail.com</p>
            </div>
        </div>
        <div class="copyright">
            <p>&copy; 2026 WeaponStore. All Rights Reserved.</p>
        </div>
    </footer>

</body>
</html>