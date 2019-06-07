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

Route::get('/', function () {
    return view('welcome');
});
Route::get('dashboard', 'AdminController@dashboard')->name('admin.dashboard');

Route::get('/kategoriapi/list','KategoriController@getAllKategori')->name('kategori.list');
Route::resource('kategori', 'KategoriController');
Route::get('/bukuapi/list','BukuController@getAllBuku')->name('buku.list');
Route::resource('buku', 'BukuController');
Route::get('/siswaapi/list','SiswaController@getAllSiswa')->name('siswa.list');
Route::resource('siswa', 'SiswaController');

Route::get('/adminapi/list','AdminController@getAllAdmin')->name('admin.list');
Route::resource('admin', 'AdminController');

//route transaksi peminjaman dan pengembalian
Route::get('/peminjaman/create','TransaksiController@peminjamanCreate')->name('peminjaman.create');
Route::post('/peminjaman/store','TransaksiController@peminjamanStore')->name('peminjaman.store');
Route::get('/peminjaman','TransaksiController@indexPeminjaman')->name('peminjaman.index');
Route::get('/peminjaman/list','TransaksiController@getAllPeminjaman')->name('peminjaman.list');
Route::get('/peminjaman/perpanjang','TransaksiController@perpanjangpeminjaman')->name('peminjaman.perpanjang');

Route::get('/pengembalian/create','TransaksiController@pengembaliancreate')->name('pengembalian.create');
Route::get('/pengembalian/proses','TransaksiController@pengembalianproses')->name('pengembalian.proses');
Route::get('/pengembalian','TransaksiController@indexpengembalian')->name('pengembalian.index');
Route::get('/pengembalian/list','TransaksiController@getAllPengembalian')->name('pengembalian.list');

