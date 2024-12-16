<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beranda - Politeknik TEDC</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header>
        <div class="container">
            <div class="logo-area">
                <img src="admin/img/logo tedc.png" alt="Logo Politeknik TEDC" class="logo-img">
                <h1>POLITEKNIK TEDC</h1>
            </div>
            <nav class="navigation">
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#tentang">Profil</a></li>
                    <li><a href="#jurusan">Program Studi</a></li>
                    <li><a href="login.php">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="wrapper">
        <section id="home">
            <img src="admin/img/tedc.jpg" alt="gambar tedc" class="tedc-img">
            <div class="kolom">
                <h2>Kampus Merdeka POLITEKNIK TEDC BANDUNG</h2>
            </div>
        </section>
    </div>
    <section id="tentang">
        <div class="container text-center">
            <div class="row justify-content-center align-items-center">
                <div >
                   <h3 class="judulprofil">PROFIL POLITEKNIK TEDC BANDUNG</h3>
                </div>
                <div class="">
                    <div class="visi-misi-container">
                        <div class="visi">
                            <h4>Visi</h4>
                            <p>Menjadi perguruan tinggi vokasi yang unggul, adaptif terhadap perkembangan ilmu pengetahuan dan teknologi, serta berdaya saing internasional pada tahun 2041, dengan menghasilkan lulusan yang berkarakter, bertakwa kepada Tuhan Yang Maha Esa, dan sesuai dengan kebutuhan Industri, dan Dunia Kerja.Perguruan tinggi kami berkomitmen mencetak lulusan yang kompeten, adaptif terhadap teknologi, dan siap bersaing global melalui pendidikan berkualitas .</p>
                        </div>
                        <div class="img-container">
                            <img src="admin/img/logo tedc.png" alt="poltektedc" class="img-fluid logo1-img">
                        </div>
                        <div class="misi">
                            <h4>Misi</h4>
                            <p><li>Meyelenggarakan peningkatan kualitas dan kuantitas sumber daya manusia dan sarana prasarana untuk menunjang tridarma perguruan tinggi.</li>
                                <li>Menyelenggarakan tata kelola yang profesional dengan prinsip transparansi, pengorganisasian, partisipasi, responsivitas, akuntabilitas, dan kepemimpinan, berbasis Teknologi Informasi, serta didukung oleh kerjasama berbagai pihak baik dalam negeri maupun luar negeri.</li>
                            </p>
                        </div>
                    </div>
                    <div class="sejarah">
                        <h4>Sejarah Politeknik Tedc Bandung</h4>
                        <p>Politeknik TEDC merupakan Perguruan Tinggi
                            Vokasi Swasta yang telah berdiri sejak tahun 2002 dengan surat keputusan Direktorat Jenderal
                            Pendidikan Tinggi Departemen Pendidikan NasionalRepublik Indonesia Nomor : 1993/D/T/2002
                            tanggal 20 september 2002.Kampus ini terletak di Jalan Pesantren Km 2
                            Cibabat-Kota Cimahi. Jawa Barat.Politeknik TEDC Bandung merupakan perguruan tinggi vokasi yang profesional dalam bidang 
                            rekayasa dan bisnis sebagai upaya memenuhi tuntutan masyarakat akan tenaga ahli madya profesional yang dibutuhkan oleh dunia 
                            usaha/industri, perusahaan nasional maupun internasional baik instansi pemerintahan maupun swasta, dalam menyongsong 
                            era globalisasi.Pada saat ini Politeknik TEDC Bandung memiliki 7 (tujuh) program studi Diploma III dan 5 (lima) program studi Diploma IV.
                            Sebagai lembaga pendidikan tinggi vokasional, Politeknik TEDC Bandung mempersiapkan lulusannya untuk dapat langsung berperan dalam tugas-tugas operasional di Industri.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="jurusan"class="jurusan">
        <div class="programstudi">
            <h4>Program Studi</h4>
            <?php
        include 'koneksi.php';

        $query = "SELECT * FROM tb_dataprogramstudi";
        $result = $config->query($query);
        ?>
            <div class="row1"> 
                <table class="table table-bordered table-striped  w-100">
                    <thead>
                    <tr>
              <th>No</th>
              <th>Program Studi</th>
              <th>Jenjang</th>
              <th>Jumlah Mahasiswa </th>
            </tr>
          </thead>
          <tbody>
          <?php 
          $no=1;
          while($row = $result->fetch_assoc()) 
          { ?>
    <tr>
        <td><?php echo $no++; ?></td>
        <td><?php echo $row['program_studi']; ?></td>
        <td><?php echo $row['jenjang']; ?></td>
        <td><?php echo $row['jumlah_mahasiswa']; ?></td>

    </tr>
    <?php } ?>      
                    </tbody>
                  </table>
            </div>
        </div>
    </section>
    <footer>
        <div class="container footer-container">
            <div class="footer-info">
                <p>&copy; 2024 Politeknik TEDC Bandung. All Rights Reserved.</p>
                <p>Jl. Pesantren Km 2 Cibabat, Kota Cimahi, Jawa Barat, Indonesia</p>
                <p>Email: info@poltektedc.ac.id | Phone: (022) 665-9999</p>
            </div>
            <div class="social-media">
                <a href="https://facebook.com/poltektedc" target="_blank">Facebook</a> |
                <a href="https://instagram.com/poltektedc" target="_blank">Instagram</a> |
                <a href="https://twitter.com/poltektedc" target="_blank">Twitter</a>
            </div>
        </div>
    </footer>
</body>
</html>
