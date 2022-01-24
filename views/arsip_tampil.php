<?php
if(!isset($_SESSION ['idsesi'])) {
    echo "<script> window.location.assign('../index.php'); </script>";
}
?>

<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><span class="fa fa-user-plus"></span> Data Siswa</h3>
                </div>
                <div class="panel-body">
                    <table id="dtskripsi" class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>No.</th><th>Nama</th><th>  NIS </th><th>NISN</th><th>Tempat Tanggal Lahir</th><th>Jenis Kelamin</th><th>Agama</th><th>Anak ke</th><th>Alamat</th><th>Nomor Telepon</th><th>Asal Madrasah</th><th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--ambil data dari database, dan tampilkan kedalam tabel-->
                            <?php
                            //buat sql untuk tampilan data, gunakan kata kunci select
                            $sql = "SELECT * FROM tb_datasiswa";
                            $query = mysqli_query($koneksi, $sql) or die("SQL Anda Salah");
                            //Baca hasil query dari databse, gunakan perulangan untuk 
                            //Menampilkan data lebh dari satu. disini akan digunakan
                            //while dan fungdi mysqli_fecth_array
                            //Membuat variabel untuk menampilkan nomor urut
                            $nomor = 0;
                            //Melakukan perulangan u/menampilkan data
                            while ($data = mysqli_fetch_array($query)) {
                                $nomor++; //Penambahan satu untuk nilai var nomor
                                ?>
                                <tr>
                                    <td><?= $nomor ?></td>
                                    <td><?= $data['nama'] ?></td>
									<td><?= $data['nis'] ?></td>
									<td><?= $data['nisn'] ?></td>
									<td><?= $data['T.tgl-lahir'] ?></td>
                                    <td><?= $data['jk'] ?></td>
                                    <td><?= $data['agama'] ?></td>
                                    <td><?= $data['anakke'] ?></td>
                                    <td><?= $data['alamat'] ?></td>
                                    <td><?= $data['nomortelp'] ?></td>
                                    <td><?= $data['asalmadrasah'] ?></td>
                                    <td><?= $data['keterangan'] ?></td>
                                    <td>
                                </tr>
                                <!--Tutup Perulangan data-->
                            <?php } ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="7">
                                    <a href="?page=arsip&actions=tambah" class="btn btn-info btn-sm">
                                        Tambah Arsip

                                    </a>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>

