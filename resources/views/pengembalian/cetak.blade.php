<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <div class="container">
        <div class="row text-center" style="margin-top:20px">
            <h1>Perpustakaan sekolah XXX</h1>
            <h3>Data Pengembalian Buku</h3>
        </div>
        <br>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <table class="table table-striped">
                    <tr>
                        <th>No</th>
                        <th>nama</th>
                        <th>judul</th>
                        <th>jumlah</th>
                        <th>tanggal peminjaman</th>
                        <th>tanggal pengembalian buku</th>
                    </tr>
            
                    @foreach ($transaksiall as $key =>  $transaksi)
                        <tr>
                            <td>{{ $key+1 }}</td>
                            <td>{{ $transaksi->siswa->nama }}</td>
                            <td>{{ $transaksi->buku->judul }}</td>
                            <td>{{ $transaksi->jumlah }}</td>
                            <td>{{ $transaksi->tgl_pinjam->isoFormat('dddd D MMM Y') }}</td>
                            <td>{{ $transaksi->updated_at->isoFormat('dddd D MMM Y') }}</td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
</body>
</html>