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
Route::get('dashboard', function () {
   return view('dashboard'); 
});

Route::get('/kategoriapi/list','KategoriController@getAllKategori')->name('kategori.list');
Route::resource('kategori', 'KategoriController');
Route::get('/bukuapi/list','BukuController@getAllBuku')->name('buku.list');
Route::resource('buku', 'BukuController');
Route::get('/siswaapi/list','SiswaController@getAllSiswa')->name('siswa.list');
Route::resource('siswa', 'SiswaController');
