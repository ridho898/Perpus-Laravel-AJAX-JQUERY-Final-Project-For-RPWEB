<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', function () {
    return redirect()->route('home');
});
Route::get('dashboard', 'AdminController@dashboard')->name('admin.dashboard');

Route::middleware(['auth'])->group(function (){
    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/bukuapi/list','BukuController@getAllBuku')->name('buku.list');
    Route::get('/transaksi/siswa','SiswaController@transaksisiswa')->name('transaksi.index');
    Route::get('/siswa/buku','SiswaController@siswabuku')->name('siswa.buku');
    Route::middleware(['admin'])->group(function (){
        Route::get('/adminapi/list','AdminController@getAllAdmin')->name('admin.list');
        Route::resource('admin', 'AdminController');
        Route::get('/siswaapi/list','SiswaController@getAllSiswa')->name('siswa.list');
        Route::resource('siswa', 'SiswaController');
        Route::resource('buku', 'BukuController');
        Route::get('/kategoriapi/list','KategoriController@getAllKategori')->name('kategori.list');
        Route::resource('kategori', 'KategoriController');

        //route transaksi peminjaman dan pengembalian
        Route::get('/peminjaman/create','TransaksiController@peminjamanCreate')->name('peminjaman.create');
        Route::post('/peminjaman/store','TransaksiController@peminjamanStore')->name('peminjaman.store');
        Route::get('/peminjaman','TransaksiController@indexPeminjaman')->name('peminjaman.index');
        Route::get('/peminjaman/list','TransaksiController@getAllPeminjaman')->name('peminjaman.list');
        Route::get('/peminjaman/perpanjang','TransaksiController@perpanjangpeminjaman')->name('peminjaman.perpanjang');
        Route::get('/peminjaman/cetak','TransaksiController@cetakpeminjaman')->name('peminjaman.cetak');
        
        Route::get('/pengembalian/create','TransaksiController@pengembaliancreate')->name('pengembalian.create');
        Route::get('/pengembalian/proses','TransaksiController@pengembalianproses')->name('pengembalian.proses');
        Route::get('/pengembalian','TransaksiController@indexpengembalian')->name('pengembalian.index');
        Route::get('/pengembalian/list','TransaksiController@getAllPengembalian')->name('pengembalian.list');
        Route::get('/pengembalian/cetak','TransaksiController@cetakpengembalian')->name('pengembalian.cetak');
    });
});


